#include "../../include/cfg.h"
#include "../alias_analysis/alias_analysis.h"

extern std::map<std::string, CFG *> CFGMap;

static std::map<int, bool> InvariantMap;    //<RegNo, is_invariant>
static std::map<int, Instruction> ResultMap;
extern AliasAnalyser *alias_analyser;

bool IsDomAllExitBB(CFG *cfg, LLVMBlock BB, NaturalLoop *L) {
    for (auto ExitBB : L->exit_nodes) {
        if (!cfg->IsDominate(BB->block_id, ExitBB->block_id)) {
            return false;
        }
    }
    return true;
}

/*
Moving loop invariant loads and calls out of loops.  If we can determine
that a load or call inside of a loop never aliases anything stored to,
we can hoist it or sink it like any other instruction.
*/
bool isCallInvariant(CFG *C, Instruction I, NaturalLoop *L, std::vector<Instruction> WriteInsts) {
    auto CallI = (CallInstruction *)I;
    if (CFGMap.find(CallI->GetFunctionName()) == CFGMap.end()) {
        return false;    // external call
    }
    auto targetcfg = CFGMap[CallI->GetFunctionName()];
    if (!alias_analyser->CFG_isNoSideEffect(targetcfg)) {
        return false;    // write memory or IO, we can not motion
    }

    // TODO(): if the call instructions may throw exceptions, it must dominate all the exitBB

    auto ReadPtrs = alias_analyser->GetReadPtrs(targetcfg);

    // Get real read pointers
    std::vector<Operand> real_ReadPtrs;
    for (auto ptr : ReadPtrs) {
        if (ptr->GetOperandType() == BasicOperand::GLOBAL) {
            real_ReadPtrs.push_back(ptr);
        } else if (ptr->GetOperandType() == BasicOperand::REG) {
            int ptr_regno = ((RegOperand *)ptr)->GetRegNo();

            assert(ptr_regno < CallI->GetParameterList().size());

            auto [type, real_ptr2] = CallI->GetParameterList()[ptr_regno];
            real_ReadPtrs.push_back(real_ptr2);
        } else {    // should not reach here
            assert(false);
        }
    }

    for (auto WI : WriteInsts) {
        for (auto wptr : real_ReadPtrs) {
            auto result = alias_analyser->QueryInstModRef(WI, wptr, C);
            if (result == AliasAnalyser::Mod || result == AliasAnalyser::ModRef) {
                return false;
            }
        }
    }
    return true;
}

bool isLoadInvariant(CFG *C, Instruction I, NaturalLoop *L, std::vector<Instruction> WriteInsts) {
    auto ptr = ((LoadInstruction *)I)->GetPointer();
    for (auto WI : WriteInsts) {
        auto result = alias_analyser->QueryInstModRef(WI, ptr, C);
        if (result == AliasAnalyser::Mod || result == AliasAnalyser::ModRef) {
            return false;
        }
    }
    return true;
}

bool isInvariant(CFG *C, Instruction I, NaturalLoop *L, std::vector<Instruction> WriteInsts) {
    if (I->GetOpcode() == STORE) {
        return false;
    }
    if (I->GetOpcode() == PHI) {
        return false;
    }
    if (I->GetOpcode() == ICMP) {
        return false;
    }
    if (I->GetOpcode() == FCMP) {
        return false;
    }
    if (I->GetOpcode() == BR_COND || I->GetOpcode() == BR_UNCOND) {
        return false;
    }
    for (auto op : I->GetNonResultOperands()) {
        if (op->GetOperandType() == op->IMMI32 || op->GetOperandType() == op->IMMF32) {
            continue;
        }
        if (op->GetOperandType() == op->GLOBAL) {
            continue;
        }
        if (op->GetOperandType() == op->REG) {
            int op_reg = ((RegOperand *)op)->GetRegNo();
            if (InvariantMap[op_reg] == 1) {
                continue;
            }    // reg operand is invariant
            Instruction resultI = ResultMap[op_reg];
            int I_BB_id = resultI->GetBlockID();
            auto I_BB = (*(C->block_map))[I_BB_id];
            // the reg operand is def in the loop, the reg operand is not invariant
            if (L->loop_nodes.find(I_BB) != L->loop_nodes.end()) {
                return false;
            } else {    // def instruction is out of loop, the reg operand is invariant
                InvariantMap[op_reg] = 1;
                continue;
            }
            continue;
        }
        return false;
    }
    /*
    The instruction needs to dominate all loop exits.

    It's possible to relax this condition if:

    The assigned-to variable is dead after the loop, and
    The instruction can't have side effects,
    including exceptions—generally ruling out division because it might divide by zero.
    //TODO(): we need range analysis to judge whether the instructions may throw exceptions
    */
    if (I->GetOpcode() == LOAD) {
        if (!isLoadInvariant(C, I, L, WriteInsts)) {
            return false;
        }
    } else if (I->GetOpcode() == CALL) {
        if (!isCallInvariant(C, I, L, WriteInsts)) {
            return false;
        }
    } else if (I->GetOpcode() == DIV || I->GetOpcode() == MOD) {
        // TODO(): the instructions may throw exceptions because it might divide by zero
        // so the instruction needs to dominate all loop exits.

        // if (!IsDomAllExitBB(C, (*(C->block_map))[I->GetBlockID()], L)) {
        //     return false;
        // }
    }
    // I->PrintIR(std::cerr);
    if (I->GetResultRegNo() != -1) {    // mark the reg operand to be invariant
        InvariantMap[I->GetResultRegNo()] = 1;
    }
    return true;
}

std::vector<Instruction> GetLoopMemWriteInsts(CFG *C, NaturalLoop *L) {
    std::vector<Instruction> res;
    for (auto BB : L->loop_nodes) {
        for (auto I : BB->Instruction_list) {
            if (I->GetOpcode() == STORE) {
                res.push_back(I);
            } else if (I->GetOpcode() == CALL) {
                auto CallI = (CallInstruction *)I;
                if (CFGMap.find(CallI->GetFunctionName()) == CFGMap.end()) {
                    res.push_back(I);    // external call
                    continue;
                }
                auto targetcfg = CFGMap[CallI->GetFunctionName()];
                if (alias_analyser->CFG_isWriteMem(targetcfg)) {
                    res.push_back(I);
                }
            }
        }
    }
    return res;
}

std::vector<Instruction> CalculateInvariant(CFG *C, NaturalLoop *L) {
    // std::cerr<<"loop ";for(auto lx:L->loop_nodes){std::cerr<<lx->block_id<<" ";}std::cerr<<"\n";
    // std::cerr<<"exit nodes ";for(auto lx:L->exit_nodes){std::cerr<<lx->block_id<<" ";}std::cerr<<"\n";

    InvariantMap.clear();
    auto LoopMemWriteInsts = GetLoopMemWriteInsts(C, L);

    std::vector<Instruction> InvariantInsList;
    std::set<Instruction> InsVisited;

    int change_flag = 1;
    while (change_flag) {
        change_flag = 0;

        for (auto LBB : L->loop_nodes) {
            for (auto I : LBB->Instruction_list) {
                if (InsVisited.find(I) == InsVisited.end() && isInvariant(C, I, L, LoopMemWriteInsts)) {
                    change_flag = true;
                    InsVisited.insert(I);
                    InvariantInsList.push_back(I);
                }
            }
        }
    }
    return InvariantInsList;
}

void SingleLoopLICM(CFG *C, NaturalLoopForest &loop_forest, NaturalLoop *L) {
    auto InvariantInsList = CalculateInvariant(C, L);
    std::set<Instruction> EraseSet;
    // remove end instructions temporarily to accelerate instruction inserting
    auto endI = *(L->preheader->Instruction_list.end() - 1);
    assert(endI->GetOpcode() == BR_UNCOND);
    L->preheader->Instruction_list.pop_back();

    for (auto it = InvariantInsList.begin(); it != InvariantInsList.end();) {
        auto I = *it;
        // move to preheader
        EraseSet.insert(I);
        I->SetBlockID(L->preheader->block_id);
        L->preheader->InsertInstruction(1, I);
        it = InvariantInsList.erase(it);    // erase this Instruction
        // std::cerr<<"code motion ";I->PrintIR(std::cerr);
    }

    // erase instructions
    if (!EraseSet.empty()) {
        for (auto bb : L->loop_nodes) {
            auto tmp_Instruction_list = bb->Instruction_list;
            bb->Instruction_list.clear();
            for (auto I : tmp_Instruction_list) {
                if (EraseSet.find(I) != EraseSet.end()) {
                    continue;
                }
                bb->InsertInstruction(1, I);
            }
        }
    }

    L->preheader->InsertInstruction(1, endI);
}

/*
Scalar Promotion of Memory - If there is a store instruction inside of
the loop, we try to move the store to happen AFTER the loop instead of
inside of the loop.  This can only happen if a few conditions are true:
A. The pointer stored through is loop invariant
B. There are no stores or loads in the loop which _may_ alias the
pointer.  There are no calls in the loop which mod/ref the pointer.
If these conditions are true, we can promote the loads and stores in the
loop of the pointer to use a temporary alloca'd variable.
reference: LLVM   LICM.cpp
*/

void SimpleCSE(CFG *C);
void Mem2Reg(CFG *C);

void SingleLoopStoreLICM(CFG *C, NaturalLoopForest &loop_forest, NaturalLoop *L) {
    if (L->exit_nodes.size() > 1) {
        return;
    }
    auto exit = *L->exit_nodes.begin();

    std::map<int, std::set<Instruction>> InvariantPtrInstsMap;
    std::map<int, LLVMType> ptrTypeMap;

    std::map<std::string, std::set<Instruction>> GlobalPtrInstMap;
    std::map<std::string, LLVMType> GlobalTypeMap;

    // cache the memory read/write instructions
    std::set<Instruction> MemRwInsts;
    for (auto BB : L->loop_nodes) {
        for (auto I : BB->Instruction_list) {
            Operand ptr;
            LLVMType type;
            if (I->GetOpcode() == STORE) {
                auto StoreI = (StoreInstruction *)I;
                ptr = StoreI->GetPointer();
                type = StoreI->GetDataType();
                MemRwInsts.insert(I);
            } else if (I->GetOpcode() == LOAD) {
                auto LoadI = (LoadInstruction *)I;
                ptr = LoadI->GetPointer();
                type = LoadI->GetDataType();
                MemRwInsts.insert(I);
            } else if (I->GetOpcode() == CALL) {
                MemRwInsts.insert(I);
                continue;
            } else {
                continue;
            }

            if (ptr->GetOperandType() == BasicOperand::GLOBAL) {
                GlobalPtrInstMap[((GlobalOperand *)ptr)->GetName()].insert(I);
                GlobalTypeMap[((GlobalOperand *)ptr)->GetName()] = type;
            } else if (ptr->GetOperandType() == BasicOperand::REG) {
                auto reg_ptr = (RegOperand *)ptr;
                auto resultI = ResultMap[reg_ptr->GetRegNo()];
                auto resultBB = (*C->block_map)[resultI->GetBlockID()];
                if (L->loop_nodes.find(resultBB) == L->loop_nodes.end()) {
                    InvariantPtrInstsMap[reg_ptr->GetRegNo()].insert(I);
                    ptrTypeMap[reg_ptr->GetRegNo()] = type;
                }
            } else {    // should not reach here
                assert(false);
            }
        }
    }

    bool is_motion_store = false;
    // try to licm store instructions
    // first we consider invariant Reg ptrs
    for (auto [ptr_regno, Insts] : InvariantPtrInstsMap) {
        // check if other instructions will read/write ptr_regno
        bool can_licm = true;
        auto ptr = new RegOperand(ptr_regno);
        for (auto rwI : MemRwInsts) {
            if (Insts.find(rwI) != Insts.end()) {
                continue;
            }
            auto res = alias_analyser->QueryInstModRef(rwI, ptr, C);
            if (res != AliasAnalyser::NoModRef) {
                can_licm = false;
                break;
            }
        }
        if (!can_licm) {
            break;
        }

        is_motion_store = true;
        // now we can do the licm
        // std::cerr << ptr << "\n";
        // for (auto I : Insts) {
        //     I->PrintIR(std::cerr);
        // }
        // Get Type;
        int d = ++C->max_reg;
        auto AllocaI = new AllocaInstruction(ptrTypeMap[ptr_regno], new RegOperand(d));
        (*C->block_map)[0]->InsertInstruction(0, AllocaI);
        for (auto I : Insts) {
            if (I->GetOpcode() == LOAD) {
                auto LoadI = (LoadInstruction *)I;
                LoadI->SetPointer(new RegOperand(d));
                MemRwInsts.erase(I);
            } else if (I->GetOpcode() == STORE) {
                auto StoreI = (StoreInstruction *)I;
                StoreI->SetPointer(new RegOperand(d));
                MemRwInsts.erase(I);
            }
        }
        // insert load in preheader;
        // remove end instructions temporarily to accelerate instruction inserting
        auto endI = *(L->preheader->Instruction_list.end() - 1);
        assert(endI->GetOpcode() == BR_UNCOND);
        L->preheader->Instruction_list.pop_back();
        auto I1 = new LoadInstruction(ptrTypeMap[ptr_regno], new RegOperand(ptr_regno), new RegOperand(++C->max_reg));
        L->preheader->InsertInstruction(1, I1);
        auto I2 = new StoreInstruction(ptrTypeMap[ptr_regno], new RegOperand(d), new RegOperand(C->max_reg));
        L->preheader->InsertInstruction(1, I2);
        L->preheader->InsertInstruction(1, endI);

        // insert store in exits;
        for (auto it = exit->Instruction_list.begin(); it != exit->Instruction_list.end(); ++it) {
            auto I = *it;
            if (I->GetOpcode() == PHI) {
                continue;
            }

            auto I3 = new LoadInstruction(ptrTypeMap[ptr_regno], new RegOperand(d), new RegOperand(++C->max_reg));
            it = exit->Instruction_list.insert(it, I3);
            ++it;

            auto I4 =
            new StoreInstruction(ptrTypeMap[ptr_regno], new RegOperand(ptr_regno), new RegOperand(C->max_reg));
            it = exit->Instruction_list.insert(it, I4);
            break;
        }
    }
    // then we consider GlobalVar
    for (auto [global_name, Insts] : GlobalPtrInstMap) {
        // check if other instructions will read/write ptr_regno
        bool can_licm = true;

        auto ptr = new GlobalOperand(global_name);
        for (auto rwI : MemRwInsts) {
            if (Insts.find(rwI) != Insts.end()) {
                continue;
            }
            auto res = alias_analyser->QueryInstModRef(rwI, ptr, C);
            if (res != AliasAnalyser::NoModRef) {
                can_licm = false;
                break;
            }
        }
        if (!can_licm) {
            break;
        }

        is_motion_store = true;
        // now we can do the licm
        // std::cerr << ptr << "\n";
        // for (auto I : Insts) {
        //     I->PrintIR(std::cerr);
        // }
        // Get Type;
        int d = ++C->max_reg;
        auto AllocaI = new AllocaInstruction(GlobalTypeMap[global_name], new RegOperand(d));
        (*C->block_map)[0]->InsertInstruction(0, AllocaI);
        for (auto I : Insts) {
            if (I->GetOpcode() == LOAD) {
                auto LoadI = (LoadInstruction *)I;
                LoadI->SetPointer(new RegOperand(d));
                MemRwInsts.erase(I);
            } else if (I->GetOpcode() == STORE) {
                auto StoreI = (StoreInstruction *)I;
                StoreI->SetPointer(new RegOperand(d));
                MemRwInsts.erase(I);
            }
        }

        // insert load in preheader;
        // remove end instructions temporarily to accelerate instruction inserting
        auto endI = *(L->preheader->Instruction_list.end() - 1);
        L->preheader->Instruction_list.pop_back();
        auto I1 =
        new LoadInstruction(GlobalTypeMap[global_name], new GlobalOperand(global_name), new RegOperand(++C->max_reg));
        L->preheader->InsertInstruction(1, I1);
        auto I2 = new StoreInstruction(GlobalTypeMap[global_name], new RegOperand(d), new RegOperand(C->max_reg));
        L->preheader->InsertInstruction(1, I2);
        L->preheader->InsertInstruction(1, endI);

        // insert store in exits;
        for (auto it = exit->Instruction_list.begin(); it != exit->Instruction_list.end(); ++it) {
            auto I = *it;
            if (I->GetOpcode() == PHI) {
                continue;
            }

            auto I3 = new LoadInstruction(GlobalTypeMap[global_name], new RegOperand(d), new RegOperand(++C->max_reg));
            it = exit->Instruction_list.insert(it, I3);
            ++it;

            auto I4 = new StoreInstruction(GlobalTypeMap[global_name], new GlobalOperand(global_name),
                                           new RegOperand(C->max_reg));
            it = exit->Instruction_list.insert(it, I4);
            break;
        }
    }
    if (is_motion_store) {
        Mem2Reg(C);

        // rebuild ResultMap
        ResultMap.clear();
        for (auto formal_reg : C->function_def->formals_reg) {
            ResultMap[((RegOperand *)formal_reg)->GetRegNo()] = C->function_def;
        }

        for (auto [id, bb] : *C->block_map) {
            for (auto I : bb->Instruction_list) {
                I->SetBlockID(bb->block_id);    // set block id
                int v = I->GetResultRegNo();
                if (v != -1) {    // result exists
                    ResultMap[v] = I;
                }
            }
        }
    }
}

void DFSLoopForest4LICM(CFG *C, NaturalLoopForest &loop_forest, NaturalLoop *L) {
    SingleLoopLICM(C, loop_forest, L);
    for (auto lv : loop_forest.loopG[L->loop_id]) {
        DFSLoopForest4LICM(C, loop_forest, lv);
    }
}

void DFSLoopForest4StoreLICM(CFG *C, NaturalLoopForest &loop_forest, NaturalLoop *L) {
    SingleLoopStoreLICM(C, loop_forest, L);
    for (auto lv : loop_forest.loopG[L->loop_id]) {
        DFSLoopForest4StoreLICM(C, loop_forest, lv);
    }
}

void LoopInvariantCodeMotion(CFG *C) {
    ResultMap.clear();

    for (auto formal_reg : C->function_def->formals_reg) {
        ResultMap[((RegOperand *)formal_reg)->GetRegNo()] = C->function_def;
    }

    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            I->SetBlockID(bb->block_id);    // set block id
            int v = I->GetResultRegNo();
            if (v != -1) {    // result exists
                ResultMap[v] = I;
            }
        }
    }
    for (auto l : C->LoopForest.loop_set) {
        if (l->fa_loop == nullptr) {
            DFSLoopForest4LICM(C, C->LoopForest, l);
        }
    }

    SimpleCSE(C);

    for (auto l : C->LoopForest.loop_set) {
        if (l->fa_loop == nullptr) {
            DFSLoopForest4StoreLICM(C, C->LoopForest, l);
        }
    }
}