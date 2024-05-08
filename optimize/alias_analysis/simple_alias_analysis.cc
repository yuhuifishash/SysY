#include "simple_alias_analysis.h"
#include <queue>

extern std::map<std::string, CFG *> CFGMap;
AliasAnalyser *alias_analyser;

PtrRegMemInfo GetPtrInfo(Operand ptr, std::map<int, PtrRegMemInfo> &ptrmap) {
    if (ptr->GetOperandType() == BasicOperand::REG) {
        assert(ptrmap.find(((RegOperand *)ptr)->GetRegNo()) != ptrmap.end());
        return ptrmap[((RegOperand *)ptr)->GetRegNo()];
    } else if (ptr->GetOperandType() == BasicOperand::GLOBAL) {
        PtrRegMemInfo tmp;
        tmp.PossiblePtrs.push_back(ptr);
        return tmp;
    } else {    // should not reach here
        assert(false);
    }
}

bool IsAlias(PtrRegMemInfo ptrinfo1, PtrRegMemInfo ptrinfo2) {
    if (ptrinfo1.is_fullmem || ptrinfo2.is_fullmem) {
        return true;
    }
    for (auto p1 : ptrinfo1.PossiblePtrs) {
        for (auto p2 : ptrinfo2.PossiblePtrs) {
            if (p1->GetFullName() == p2->GetFullName()) {
                return true;
            }
        }
    }
    return false;
}

AliasAnalyser::AliasResult SimpleAliasAnalyser::QueryAlias(Operand op1, Operand op2, CFG *C) {
    auto ptrmap = PtrRegMemMap[C];

    auto ptrinfo1 = GetPtrInfo(op1, ptrmap);
    auto ptrinfo2 = GetPtrInfo(op2, ptrmap);

    if (IsAlias(ptrinfo1, ptrinfo2)) {
        return MustAlias;
    }
    return NoAlias;
}

AliasAnalyser::ModRefResult SimpleAliasAnalyser::QueryInstModRef(Instruction I, Operand op, CFG *C) {
    auto ptrmap = PtrRegMemMap[C];

    if (I->GetOpcode() == LOAD) {
        auto ptr = ((LoadInstruction *)I)->GetPointer();
        auto ptrinfo1 = GetPtrInfo(ptr, ptrmap);
        auto ptrinfo2 = GetPtrInfo(op, ptrmap);
        if (IsAlias(ptrinfo1, ptrinfo2)) {
            return ModRefResult::Ref;
        }
    } else if (I->GetOpcode() == STORE) {
        auto ptr = ((LoadInstruction *)I)->GetPointer();
        auto ptrinfo1 = GetPtrInfo(ptr, ptrmap);
        auto ptrinfo2 = GetPtrInfo(op, ptrmap);
        if (IsAlias(ptrinfo1, ptrinfo2)) {
            return ModRefResult::Mod;
        }
    } else if (I->GetOpcode() == CALL) {
        auto CallI = (CallInstruction *)I;
        auto call_name = CallI->GetFunctionName();
        if (CFGMap.find(call_name) == CFGMap.end()) {
            return ModRefResult::ModRef;
        }
        auto rwinfo = CFGMemRWMap[CFGMap[call_name]];
        if (rwinfo.have_external_call) {
            return ModRefResult::ModRef;
        }
        if (rwinfo.isIndependent()) {
            return ModRefResult::NoModRef;
        }

        bool is_mod = false, is_ref = false;
        auto ptrinfo1 = GetPtrInfo(op, ptrmap);

        for (auto ptr2 : rwinfo.ReadPtrs) {
            PtrRegMemInfo real_ptrinfo2;
            if (ptr2->GetOperandType() == BasicOperand::GLOBAL) {
                real_ptrinfo2 = GetPtrInfo(ptr2, ptrmap);
            }
            if (ptr2->GetOperandType() == BasicOperand::REG) {
                int ptr2_regno = ((RegOperand *)ptr2)->GetRegNo();
                auto [type, real_ptr2] = CallI->GetParameterList()[ptr2_regno];
                real_ptrinfo2 = GetPtrInfo(real_ptr2, ptrmap);
            }
            is_ref |= IsAlias(ptrinfo1, real_ptrinfo2);
            if (is_ref) {
                break;
            }
        }
        for (auto ptr2 : rwinfo.WritePtrs) {
            PtrRegMemInfo real_ptrinfo2;
            if (ptr2->GetOperandType() == BasicOperand::GLOBAL) {
                real_ptrinfo2 = GetPtrInfo(ptr2, ptrmap);
            }
            if (ptr2->GetOperandType() == BasicOperand::REG) {
                int ptr2_regno = ((RegOperand *)ptr2)->GetRegNo();
                auto [type, real_ptr2] = CallI->GetParameterList()[ptr2_regno];
                real_ptrinfo2 = GetPtrInfo(real_ptr2, ptrmap);
            }
            is_mod |= IsAlias(ptrinfo1, real_ptrinfo2);
            if (is_mod) {
                break;
            }
        }
        if (is_mod && is_ref) {
            return ModRefResult::ModRef;
        } else if (is_mod) {
            return ModRefResult::Mod;
        } else if (is_ref) {
            return ModRefResult::Ref;
        }
    }
    return ModRefResult::NoModRef;
}

bool isFunctionArgs(CFG *C, Operand op) {
    if (op->GetOperandType() == BasicOperand::REG) {
        int siz = C->function_def->formals.size();
        int regno = ((RegOperand *)op)->GetRegNo();
        return regno < siz;
    }
    return false;
}

bool PtrRegMemInfo::PushPossiblePtr(Operand op) {
    for (auto ptr : PossiblePtrs) {
        if (ptr->GetFullName() == op->GetFullName()) {
            return false;
        }
    }
    PossiblePtrs.push_back(op);
    return true;
}

bool PtrRegMemInfo::InsertNewPtrs(Operand op, std::map<int, PtrRegMemInfo> &ptrmap, CFG *C) {
    if (op->GetOperandType() == BasicOperand::GLOBAL) {
        is_local = false;
        return PushPossiblePtr(op);
    } else if (op->GetOperandType() == BasicOperand::REG) {
        if (isFunctionArgs(C, op)) {
            is_local = false;
            is_fullmem = true;
            return PushPossiblePtr(op);
        } else {
            int regno = ((RegOperand *)op)->GetRegNo();
            auto ptrinfo = ptrmap[regno];
            bool changed = false;
            for (auto ptr : ptrinfo.PossiblePtrs) {
                changed |= PushPossiblePtr(ptr);
            }
            is_fullmem |= ptrinfo.is_fullmem;
            is_local &= ptrinfo.is_local;
            return changed;
        }
    }
    return false;
}

bool FunctionMemRWInfo::InsertNewReadPtrs(Operand op) {
    for (auto ptr : ReadPtrs) {
        if (ptr->GetFullName() == op->GetFullName()) {
            return false;
        }
    }
    ReadPtrs.push_back(op);
    return true;
}

bool FunctionMemRWInfo::InsertNewWritePtrs(Operand op) {
    for (auto ptr : WritePtrs) {
        if (ptr->GetFullName() == op->GetFullName()) {
            return false;
        }
    }
    WritePtrs.push_back(op);
    return true;
}

bool FunctionMemRWInfo::InsertNewReadPtrs(std::vector<Operand> ops) {
    bool changed = false;
    for (auto ptr : ops) {
        changed |= InsertNewReadPtrs(ptr);
    }
    return changed;
}

bool FunctionMemRWInfo::InsertNewWritePtrs(std::vector<Operand> ops) {
    bool changed = false;
    for (auto ptr : ops) {
        changed |= InsertNewWritePtrs(ptr);
    }
    return changed;
}

bool FunctionMemRWInfo::MergeCall(CallInstruction *CallI, FunctionMemRWInfo rwinfo,
                                  std::map<int, PtrRegMemInfo> &ptrmap) {
    bool changed = false;
    for (auto op : rwinfo.ReadPtrs) {
        if (op->GetOperandType() == BasicOperand::GLOBAL) {
            changed |= InsertNewReadPtrs(op);
        } else if (op->GetOperandType() == BasicOperand::REG) {
            int regno = ((RegOperand *)op)->GetRegNo();
            assert(regno < CallI->GetParameterList().size());

            auto [type, ptr] = (CallI->GetParameterList())[regno];
            assert(ptr->GetOperandType() == BasicOperand::REG);

            auto ptr_regno = ((RegOperand *)ptr)->GetRegNo();
            if (ptrmap[ptr_regno].is_local) {
                continue;
            }
            changed |= InsertNewReadPtrs(ptrmap[ptr_regno].PossiblePtrs);
        }
    }

    for (auto op : rwinfo.WritePtrs) {
        if (op->GetOperandType() == BasicOperand::GLOBAL) {
            changed |= InsertNewWritePtrs(op);
        } else if (op->GetOperandType() == BasicOperand::REG) {
            int regno = ((RegOperand *)op)->GetRegNo();
            assert(regno < CallI->GetParameterList().size());

            auto [type, ptr] = (CallI->GetParameterList())[regno];
            assert(ptr->GetOperandType() == BasicOperand::REG);

            auto ptr_regno = ((RegOperand *)ptr)->GetRegNo();
            if (ptrmap[ptr_regno].is_local) {
                continue;
            }
            changed |= InsertNewWritePtrs(ptrmap[ptr_regno].PossiblePtrs);
        }
    }
    return changed;
}

//----------------------------------------
// implementation of alias analysis
void SimpleAliasAnalyser::AliasAnalysis() {
    PtrRegMemMap.clear();
    CFGMemRWMap.clear();
    for (auto [defI, cfg] : IR->llvm_cfg) {
        AliasAnalysis(cfg);
    }

    // cache all the call inst of cfg
    std::map<CFG *, std::vector<CallInstruction *>> CallMap;
    for (auto [defI, cfg] : IR->llvm_cfg) {
        for (auto [id, bb] : *(cfg->block_map)) {
            for (auto I : bb->Instruction_list) {
                if (I->GetOpcode() == CALL) {
                    CallMap[cfg].push_back((CallInstruction *)I);
                }
            }
        }
    }

    // then we should consider call inst(we need to do global R/W analysis)
    bool changed = true;
    while (changed) {
        changed = false;
        for (auto [defI, cfg] : IR->llvm_cfg) {
            if (CFGMemRWMap[cfg].have_external_call) {
                continue;
            }
            auto ptrmap = PtrRegMemMap[cfg];

            for (auto CallI : CallMap[cfg]) {
                std::string call_name = CallI->GetFunctionName();
                if (CFGMap.find(call_name) == CFGMap.end()) {
                    CFGMemRWMap[cfg].have_external_call = true;
                    changed = true;
                    continue;
                }
                auto call_cfg = CFGMap[call_name];
                auto call_info = CFGMemRWMap[call_cfg];
                if (call_info.have_external_call) {
                    CFGMemRWMap[cfg].have_external_call = true;
                    changed = true;
                    continue;
                }
                changed |= CFGMemRWMap[cfg].MergeCall(CallI, call_info, ptrmap);
            }
        }
    }
    // PrintAAResult(false);
}

// analysis all the ptr operand in CFG* C
// it will also analysis the read/write info of inst in C(but we do not consider call inst)
void SimpleAliasAnalyser::AliasAnalysis(CFG *C) {
    std::map<int, PtrRegMemInfo> ptrmap;
    FunctionMemRWInfo rwinfo;

    // first consider the args(type ptr) of the function
    for (int i = 0; i < C->function_def->formals.size(); ++i) {
        auto param = C->function_def->formals[i];
        if (param == LLVMType::PTR) {
            ptrmap[i].is_fullmem = true;
            ptrmap[i].is_local = false;
            ptrmap[i].PossiblePtrs.push_back(GetNewRegOperand(i));
        }
    }
    // add local array define
    for (auto I : (*C->block_map)[0]->Instruction_list) {
        if (I->GetOpcode() == ALLOCA) {
            auto AllocaI = (AllocaInstruction *)I;
            int DimSize = AllocaI->GetAllocaSize();

            int defreg = AllocaI->GetResultRegNo();
            ptrmap[defreg].PossiblePtrs.push_back(GetNewRegOperand(defreg));
        }
    }

    bool changed = true;
    while (changed) {
        changed = false;
        std::queue<LLVMBlock> q;
        std::map<LLVMBlock, bool> vis;
        q.push((*C->block_map)[0]);
        while (!q.empty()) {
            auto BB = q.front();
            q.pop();
            if (vis[BB]) {
                continue;
            }
            vis[BB] = true;

            for (auto I : BB->Instruction_list) {
                // in SysY2022, only gep and phi will generate new phi operand
                if (I->GetOpcode() == GETELEMENTPTR) {
                    auto GEPI = (GetElementptrInstruction *)I;
                    auto addr = GEPI->GetPtrVal();
                    auto result_regno = GEPI->GetResultRegNo();
                    auto ptrop = addr->CopyOperand();

                    changed |= ptrmap[result_regno].InsertNewPtrs(ptrop, ptrmap, C);
                } else if (I->GetOpcode() == PHI) {
                    auto PhiI = (PhiInstruction *)I;
                    auto result_regno = PhiI->GetResultRegNo();
                    if (PhiI->GetDataType() == PTR) {
                        for (auto [label, ptr] : PhiI->GetPhiList()) {
                            changed |= ptrmap[result_regno].InsertNewPtrs(ptr, ptrmap, C);
                        }
                    }
                }
            }
            for (auto bb : C->GetSuccessor(BB)) {
                q.push(bb);
            }
        }
    }

    // get function's read/write infomation
    // we do not consider call inst here.
    // we should ignore is_local ptr
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() == STORE) {
                auto StoreI = (StoreInstruction *)I;
                auto ptr = StoreI->GetPointer();
                if (ptr->GetOperandType() == BasicOperand::GLOBAL) {
                    rwinfo.InsertNewWritePtrs(ptr);
                } else if (ptr->GetOperandType() == BasicOperand::REG) {
                    auto ptr_regno = ((RegOperand *)ptr)->GetRegNo();
                    if (ptrmap[ptr_regno].is_local) {
                        continue;
                    }
                    rwinfo.InsertNewWritePtrs(ptrmap[ptr_regno].PossiblePtrs);
                } else {    // should not reach here
                    assert(false);
                }
            } else if (I->GetOpcode() == LOAD) {
                auto LoadI = (LoadInstruction *)I;
                auto ptr = LoadI->GetPointer();
                if (ptr->GetOperandType() == BasicOperand::GLOBAL) {
                    rwinfo.InsertNewReadPtrs(ptr);
                } else if (ptr->GetOperandType() == BasicOperand::REG) {
                    auto ptr_regno = ((RegOperand *)ptr)->GetRegNo();
                    if (ptrmap[ptr_regno].is_local) {
                        continue;
                    }
                    rwinfo.InsertNewReadPtrs(ptrmap[ptr_regno].PossiblePtrs);
                } else {    // should not reach here
                    assert(false);
                }
            }
        }
    }

    PtrRegMemMap[C] = ptrmap;
    CFGMemRWMap[C] = rwinfo;
}

void SimpleAliasAnalysis(LLVMIR *IR) {
    alias_analyser = new SimpleAliasAnalyser();
    alias_analyser->SetLLVMIR(IR);
    alias_analyser->AliasAnalysis();

    //------------------------test
    // alias_analyser.PrintAAResult(true);
    // alias_analyser.AAtest();
}

void SimpleAliasAnalyser::PrintAAResult(bool is_printptr) {
    if (is_printptr) {
        for (auto [defI, cfg] : IR->llvm_cfg) {
            defI->PrintIR(std::cerr);
            auto ptrmap = PtrRegMemMap[cfg];
            for (auto [regno, info] : ptrmap) {
                std::cerr << "REG:" << regno << "\n";
                info.PrintDebugInfo();
            }
        }
    }
    for (auto [defI, cfg] : IR->llvm_cfg) {
        defI->PrintIR(std::cerr);
        auto cfgrwinfo = CFGMemRWMap[cfg];
        if (cfgrwinfo.have_external_call) {
            std::cerr << "enternal call\n";
            continue;
        }
        std::cerr << "read    ";
        for (auto op : cfgrwinfo.ReadPtrs) {
            std::cerr << op << " ";
        }
        std::cerr << "\n";

        std::cerr << "write    ";
        for (auto op : cfgrwinfo.WritePtrs) {
            std::cerr << op << " ";
        }
        std::cerr << "\n";
    }
}

void PtrRegMemInfo::PrintDebugInfo() {
    std::cerr << "is_fullmem " << is_fullmem << "\n";
    std::cerr << "is_local " << is_local << "\n";
    for (auto op : PossiblePtrs) {
        std::cerr << op << "\n";
    }
    std::cerr << "------------------------------\n";
}

std::string alias_status[4] = {"ERROR", "NoAlias", "MayAlias", "MustAlias"};
std::string modref_status[4] = {"NoModRef", "Ref", "Mod", "ModRef"};

void SimpleAliasAnalyser::AAtest() {
    for (auto [defI, cfg] : IR->llvm_cfg) {
        defI->PrintIR(std::cerr);
        std::set<Operand> ptrset;
        for (auto [id, bb] : *(cfg->block_map)) {
            for (auto I : bb->Instruction_list) {
                if (I->GetOpcode() == GETELEMENTPTR) {
                    ptrset.insert(I->GetResultReg());
                } else if (I->GetOpcode() == LOAD) {
                    ptrset.insert(((LoadInstruction *)I)->GetPointer());
                } else if (I->GetOpcode() == STORE) {
                    ptrset.insert(((StoreInstruction *)I)->GetPointer());
                }
            }
        }
        for (auto ptr1 : ptrset) {
            for (auto ptr2 : ptrset) {
                std::cout << ptr1 << " " << ptr2 << " " << alias_status[QueryAlias(ptr1, ptr2, cfg)] << "\n";
            }
        }

        for (auto ptr : ptrset) {
            for (auto [id, bb] : *(cfg->block_map)) {
                for (auto I : bb->Instruction_list) {
                    if (I->GetOpcode() == CALL) {
                        I->PrintIR(std::cerr);
                        std::cerr << ptr << " " << modref_status[QueryInstModRef(I, ptr, cfg)] << "\n";
                    } else if (I->GetOpcode() == LOAD) {
                        I->PrintIR(std::cerr);
                        std::cerr << ptr << " " << modref_status[QueryInstModRef(I, ptr, cfg)] << "\n";
                    } else if (I->GetOpcode() == STORE) {
                        I->PrintIR(std::cerr);
                        std::cerr << ptr << " " << modref_status[QueryInstModRef(I, ptr, cfg)] << "\n";
                    }
                }
            }
        }
    }
}