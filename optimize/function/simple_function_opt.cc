#include "../../include/ir.h"
#include <functional>

/**
 * this function will make function only has one return block.
 * if the function has multiple return block and the return type is not void,
 * you will generate a new alloca Instruction in bb0.
 * then replace all the ret instruction with store instruction and br uncond instruction
 * then create a new bb for ret instruction.(this bb is the target of the new br uncond instruction)
 * you should set CFG::max_reg correctly
 * @param C the control flow graph of the function */
void MakeFunctionOneExit(CFG *C) {
    std::queue<LLVMBlock> OneExitqueue;
    enum LLVMType ret_type = VOID;
    int ret_cnt = 0;
    for (auto [id, bb] : *C->block_map) {
        auto I = bb->Instruction_list.back();
        if (I->GetOpcode() != RET) {
            continue;
        }
        ret_cnt++;
        auto RetI = (RetInstruction *)I;
        ret_type = RetI->GetType();
        OneExitqueue.push(bb);
    }
    if (ret_cnt == 0) {
        // if no return, this indicates that the function has infinite loop and we will definitely arrive this loop
        // because most programs do not have infinite loop, we make the function only have one ret instructions
        // though it is wrong in some real-world programs.
        // TODO(): fix this problem. (now if the function has no ret_block, the pass after will cause SegmentFault)
        C->block_map->clear();
        C->max_label = -1;
        C->max_reg = -1;
        auto bb = C->NewBlock();
        if (C->function_def->GetReturnType() == VOID) {
            bb->InsertInstruction(1, new RetInstruction(VOID, nullptr));
        } else if (C->function_def->GetReturnType() == I32) {
            bb->InsertInstruction(1, new RetInstruction(I32, new ImmI32Operand(0)));
        } else if (C->function_def->GetReturnType() == FLOAT32) {
            bb->InsertInstruction(1, new RetInstruction(FLOAT32, new ImmF32Operand(0)));
        } else {
            ERROR("Unexpected Type");
        }
        C->ret_block = bb;
        C->BuildCFG();
        return;
    }
    if (ret_cnt == 1) {
        C->ret_block = OneExitqueue.front();
        if (!OneExitqueue.empty()) {
            OneExitqueue.pop();
        }
        return;
    }
    auto B = C->NewBlock();
    if (ret_type != VOID) {
        /*
        ret type value -->
        store type value pointer
        br uncond newblock
        */
        /*
        load reg_type pointer reg
        ret reg
        */
        auto ret_ptr = GetNewRegOperand(++C->max_reg);
        auto B_Retreg = GetNewRegOperand(++C->max_reg);
        auto bb0 = C->block_map->begin()->second;
        auto AllocaI = new AllocaInstruction(ret_type, ret_ptr);
        bb0->InsertInstruction(0, AllocaI);
        while (!OneExitqueue.empty()) {
            auto bb = OneExitqueue.front();
            OneExitqueue.pop();
            auto RetI = (RetInstruction *)bb->Instruction_list.back();
            bb->Instruction_list.pop_back();
            bb->InsertInstruction(1, new StoreInstruction(ret_type, ret_ptr, RetI->GetRetVal()));
            bb->InsertInstruction(1, new BrUncondInstruction(GetNewLabelOperand(B->block_id)));
        }
        B->InsertInstruction(1, new LoadInstruction(ret_type, ret_ptr, B_Retreg));
        B->InsertInstruction(1, new RetInstruction(ret_type, B_Retreg));
    } else {
        while (!OneExitqueue.empty()) {
            auto bb = OneExitqueue.front();
            OneExitqueue.pop();
            bb->Instruction_list.pop_back();
            bb->InsertInstruction(1, new BrUncondInstruction(GetNewLabelOperand(B->block_id)));
        }
        B->InsertInstruction(1, new RetInstruction(VOID, nullptr));
    }

    C->ret_block = B;
    C->BuildCFG();
}

void RetMotion(CFG *C) {
    if (C->function_def->GetResultType() != VOID) {
        return;
    }
    auto blockmap = *C->block_map;
    std::function<int(int)> GetRetBB = [&](int ubbid) {
        if (C->G[ubbid].empty()) {
            return -1;
        }
        while (!C->G[ubbid].empty()) {
            if (C->G[ubbid].size() >= 2) {
                return -1;
            }
            ubbid = C->G[ubbid][0]->block_id;
            auto bb = blockmap[ubbid];
            if (bb->Instruction_list.size() > 1) {
                return -1;
            }
        }
        return ubbid;
    };

    for (auto [id, bb] : blockmap) {
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() == CALL) {
                auto callI = (CallInstruction *)I;
                auto function_name = callI->GetFunctionName();
                if (function_name != C->function_def->GetFunctionName()) {
                    continue;
                }
                auto retbbid = GetRetBB(id);
                if (retbbid == -1) {
                    continue;
                }
                bb->Instruction_list.pop_back();
                bb->InsertInstruction(1, new RetInstruction(VOID, nullptr));
                break;
            }
        }
    }
}

/**
 * this function will elimate tailrecursive
 * you can use testcase 087_gcd.sy to check
 * you should set CFG::max_reg correctly
 * @param C the control flow graph of the function
 * First,you should check if ptr's params would be changed in call.
 * If yes,create AllocaInstruction and StoreInstruction for the changed ptrs
 * Next,add load ptr before using the changed ptrs
 * Finally,deal with non-ptr params
 * */
bool TailRecursiveEliminateCheck(CFG *C) {
    auto FuncdefI = C->function_def;
    if (FuncdefI->GetFormalSize() > 5) {
        return false;
    }
    // AllocaReg can't be use in call
    auto bb0 = (*C->block_map->begin()).second;
    int AllocaRegCnt = 0;
    std::unordered_map<int, int> AllocaReg;
    std::unordered_map<int, int> GEPMap;
    for (auto I : bb0->Instruction_list) {
        if (I->GetOpcode() != ALLOCA) {
            continue;
        }
        auto AllocaI = (AllocaInstruction *)I;
        if (AllocaI->GetDims().empty()) {
            continue;
        }
        AllocaReg[AllocaI->GetResultRegNo()] = ++AllocaRegCnt;
        // std::cout<<"asdads "<<AllocaI->GetResultRegNo()<<'\n';
    }

    // GETELEMENTPTR
    if (!AllocaRegCnt) {
        return true;
    }
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() != GETELEMENTPTR && I->GetOpcode() != CALL) {
                continue;
            }

            if (I->GetOpcode() == GETELEMENTPTR) {
                auto GetelementptrI = (GetElementptrInstruction *)I;
                auto PtrReg = ((RegOperand *)GetelementptrI->GetPtrVal())->GetRegNo();
                auto ResultReg = GetelementptrI->GetResultRegNo();
                if (PtrReg == 0 || AllocaReg.find(PtrReg) == AllocaReg.end()) {
                    continue;
                }
                GEPMap[ResultReg] = PtrReg;
            } else {
                auto CallI = (CallInstruction *)I;
                for (auto args : CallI->GetParameterList()) {
                    auto args_regno = ((RegOperand *)args.second)->GetRegNo();
                    // std::cout<<args_regno<<'\n';
                    if (GEPMap.find(args_regno) != GEPMap.end()) {
                        return false;
                    }
                }
            }
        }
    }
    return true;
}
void TailRecursiveEliminate(CFG *C) {

    bool TRECheck = TailRecursiveEliminateCheck(C);
    if (!TRECheck) {
        return;
    }
    auto FuncdefI = C->function_def;
    auto bb0 = (*C->block_map->begin()).second;
    bool NeedtoInsertPTR = 0;
    std::deque<Instruction> StoreDeque;
    std::deque<Instruction> AllocaDeque;
    std::set<Instruction> EraseSet;
    std::unordered_map<int, RegOperand *> PtrUsed;
    // when exist call ptr, ret
    // FuncdefI->PrintIR(std::cout);
    //@NeedtoInsertPTR:check if ptr in function params need to be insert
    for (auto [id, bb] : *C->block_map) {
        if (bb->Instruction_list.back()->GetOpcode() != RET) {
            continue;
        }
        auto retI = (RetInstruction *)bb->Instruction_list.back();
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() != CALL) {
                continue;
            }
            auto callI = (CallInstruction *)I;
            if (callI->GetFunctionName() != FuncdefI->GetFunctionName()) {
                continue;
            }
            bool opt1 =
            callI->GetResult() != NULL && callI->GetResult()->GetFullName() == retI->GetRetVal()->GetFullName();
            bool opt2 = callI->GetResult() == NULL && retI->GetType() == VOID;
            if (opt1 || opt2) {
                auto list_size = callI->GetParameterList().size();
                for (auto i = 0; i < list_size; i++) {
                    auto callI_reg = (RegOperand *)(callI->GetParameterList()[i].second);
                    if (callI_reg->GetRegNo() == i) {
                        continue;
                    }    // funtion params id stand by i
                    if (FuncdefI->formals[i] == PTR) {
                        NeedtoInsertPTR = 1;
                        if (PtrUsed.find(i) == PtrUsed.end()) {
                            auto PtrReg = GetNewRegOperand(++C->max_reg);
                            PtrUsed[i] = PtrReg;
                            // std::cout<<PtrReg->GetFullName()<<'\n';
                            // AllocaDeque.push_back(new AllocaInstruction(PTR, PtrReg));
                            // StoreDeque.push_back(new StoreInstruction(PTR, PtrReg, FuncdefI->formals_reg[i]));
                        }
                        // break;
                    }
                }
            }
        }
    }
    if (NeedtoInsertPTR) {
        // insert alloca and store instruction of ptr
        for (u_int32_t i = 0; i < FuncdefI->GetFormalSize(); ++i) {
            if (FuncdefI->formals[i] == PTR && PtrUsed.find(i) != PtrUsed.end()) {
                auto PtrReg = PtrUsed[i];
                // std::cout<<PtrReg->GetFullName()<<'\n';
                // std::cout<<i<<" "<<FuncdefI->formals_reg[i]<<'\n';
                AllocaDeque.push_back(new AllocaInstruction(PTR, PtrReg));
                StoreDeque.push_back(new StoreInstruction(PTR, PtrReg, FuncdefI->formals_reg[i]));
            }
        }
        // insert load before new ptr
        for (auto [id, bb] : *C->block_map) {
            auto tmp_Instruction_list = bb->Instruction_list;
            bb->Instruction_list.clear();
            for (auto I : tmp_Instruction_list) {
                auto ResultOperands = I->GetNonResultOperands();
                bool NeedtoUpdate = 0;
                // jump call self() ret
                if (id != 0 && NeedtoInsertPTR && !ResultOperands.empty()) {
                    for (u_int32_t i = 0; i < ResultOperands.size(); ++i) {
                        auto ResultReg = ResultOperands[i];
                        for (u_int32_t j = 0; j < FuncdefI->formals_reg.size(); ++j) {
                            if (PtrUsed.find(j) == PtrUsed.end()) {
                                continue;
                            }
                            auto DefReg = FuncdefI->formals_reg[j];
                            if (ResultReg->GetFullName() == DefReg->GetFullName()) {
                                NeedtoUpdate = 1;
                                auto PtrReg = GetNewRegOperand(++C->max_reg);
                                bb->InsertInstruction(1, new LoadInstruction(PTR, PtrUsed[j], PtrReg));
                                ResultOperands[i] = PtrReg;
                                break;
                            }
                        }
                    }
                    if (NeedtoUpdate) {
                        I->SetNonResultOperands(ResultOperands);
                    }
                }
                bb->InsertInstruction(1, I);
            }
        }
    }

    while (!StoreDeque.empty()) {
        auto I = StoreDeque.back();
        // I->PrintIR(std::cout);
        bb0->InsertInstruction(0, I);
        StoreDeque.pop_back();
    }
    while (!StoreDeque.empty()) {
        StoreDeque.pop_back();
    }
    for (auto *it : AllocaDeque) {
        // it->PrintIR(std::cout);
        bb0->InsertInstruction(0, it);
    }
    while (!AllocaDeque.empty()) {
        AllocaDeque.pop_back();
    }
    for (auto [id, bb] : *C->block_map) {
        if (bb->Instruction_list.back()->GetOpcode() != RET || bb->Instruction_list.size() <= 1) {
            continue;
        }
        auto retI = (RetInstruction *)bb->Instruction_list.back();
        // for (auto I : bb->Instruction_list) {
        auto I = *(--(--bb->Instruction_list.end()));
        if (I->GetOpcode() != CALL) {
            continue;
        }
        auto callI = (CallInstruction *)I;
        if (callI->GetFunctionName() != FuncdefI->GetFunctionName()) {
            continue;
        }
        bool opt1 = callI->GetResult() != NULL && callI->GetResult()->GetFullName() == retI->GetRetVal()->GetFullName();
        bool opt2 = callI->GetResult() == NULL && retI->GetType() == VOID;
        if (opt1 || opt2) {
            // std::cout<<id<<'\n';
            // bb->printIR(std::cout);
            EraseSet.insert(callI);
            EraseSet.insert(retI);
            auto list_size = callI->GetParameterList().size();
            auto bb0_it = --bb0->Instruction_list.end();
            auto bb0_ptr_it = bb0->Instruction_list.begin();
            while ((*bb0_ptr_it)->GetOpcode() == ALLOCA) {
                bb0_ptr_it++;
            }
            // if exist alloca ptr,bb0_ptr_it=the end of alloca ptr
            for (auto i = 0; i < list_size; i++) {
                // std::cout<<i<<'\n';
                auto callI_type = callI->GetParameterList()[i].first;
                auto callI_reg = (RegOperand *)(callI->GetParameterList()[i].second);
                if (callI_reg->GetRegNo() == i || (callI_type == PTR && PtrUsed.find(i) == PtrUsed.end())) {
                    continue;
                }    // funtion params id stand by i
                Instruction allocaI;
                if (callI->GetParameterList()[i].first == PTR) {
                    bb0_ptr_it--;
                    allocaI = *bb0_ptr_it;
                } else {
                    bb0_it--;
                    allocaI = *bb0_it;
                    while (allocaI->GetOpcode() != ALLOCA) {
                        bb0_it--;
                        allocaI = *bb0_it;
                    }
                }
                // callI->PrintIR(std::cout);
                // allocaI->PrintIR(std::cout);
                auto storeI = new StoreInstruction(callI->GetParameterList()[i].first, allocaI->GetResultReg(),
                                                   callI->GetParameterList()[i].second);
                bb->InsertInstruction(1, storeI);
            }
            bb->InsertInstruction(1, new BrUncondInstruction(GetNewLabelOperand(1)));
        }
    }
    // std::cout<<"HERE FUNCTION "<<FuncdefI->GetFunctionName()<<'\n';
    for (auto [id, bb] : *C->block_map) {
        auto tmp_Instruction_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for (auto I : tmp_Instruction_list) {
            if (EraseSet.find(I) != EraseSet.end()) {
                continue;
            }
            bb->InsertInstruction(1, I);
        }
        // bb->printIR(std::cout);
    }
    EraseSet.clear();
    PtrUsed.clear();
    C->BuildCFG();
    // std::cerr<<"TailRecursiveElimate is not implemented now\n";
}

extern std::map<std::string, CFG *> CFGMap;
void EliminateUselessFunction(LLVMIR *IR) {
    std::set<std::string> CallStrSet;
    for (auto [defI, cfg] : IR->llvm_cfg) {
        for (auto [id, bb] : *(cfg->block_map)) {
            for (auto I : bb->Instruction_list) {
                if (I->GetOpcode() == CALL) {
                    auto CallI = (CallInstruction *)I;
                    CallStrSet.insert(CallI->GetFunctionName());
                }
            }
        }
    }
    std::set<FuncDefInstruction> EraseFuncDefSet;
    for (auto [defI, cfg] : IR->llvm_cfg) {
        auto func_name = defI->GetFunctionName();
        if (func_name == "main") {
            continue;
        }
        if (CallStrSet.find(func_name) == CallStrSet.end()) {
            EraseFuncDefSet.insert(defI);
        }
    }

    for (auto I : EraseFuncDefSet) {
        // std::cerr<<"Erase Function "<<I->GetFunctionName()<<"\n";
        IR->llvm_cfg.erase(I);
        IR->function_block_map.erase(I);
    }
}
