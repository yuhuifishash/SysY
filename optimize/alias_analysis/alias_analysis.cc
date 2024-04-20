#include "alias_analysis.h"
#include <queue>

extern std::map<std::string, CFG *> CFGMap;
AliasAnalyser alias_analyser;

AliasAnalyser::AliasResult AliasAnalyser::QueryAlias(Operand op1, Operand op2, CFG *C) {
    // TODO()
    return AliasResult::MustAlias;
}

AliasAnalyser::ModRefResult AliasAnalyser::QueryInstModRef(Instruction I, Operand op, CFG *C) {
    // TODO()
    return ModRefResult::ModRef;
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

//----------------------------------------
// implementation of alias analysis
void AliasAnalyser::AliasAnalysis() {
    PtrRegMemMap.clear();
    CFGMemRWMap.clear();
    for (auto [defI, cfg] : IR->llvm_cfg) {
        AliasAnalysis(cfg);
    }
    // then we should consider call inst(we need to do global R/W analysis)
    bool changed = true;
    while (changed) {
        changed = false;
    }
    PrintAAResult(false);
}

// analysis all the ptr operand in CFG* C
// it will also analysis the read/write info of inst in C(but we do not consider call inst)
void AliasAnalyser::AliasAnalysis(CFG *C) {
    std::map<int, PtrRegMemInfo> ptrmap;
    FunctionMemRWInfo rwinfo;

    // first consider the args(type ptr) of the function
    for (int i = 0; i < C->function_def->formals.size(); ++i) {
        auto param = C->function_def->formals[i];
        if (param == LLVMType::PTR) {
            ptrmap[i].is_fullmem = true;
            ptrmap[i].is_local = false;
            ptrmap[i].PossiblePtrs.push_back(new RegOperand(i));
        }
    }
    // add local array define
    for (auto I : (*C->block_map)[0]->Instruction_list) {
        if (I->GetOpcode() == ALLOCA) {
            auto AllocaI = (AllocaInstruction *)I;
            int DimSize = AllocaI->GetAllocaSize();

            int defreg = AllocaI->GetResultRegNo();
            ptrmap[defreg].PossiblePtrs.push_back(new RegOperand(defreg));
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
                    auto GEPI = (GetElementprtInstruction *)I;
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

void AliasAnalysis(LLVMIR *IR) {
    alias_analyser.SetLLVMIR(IR);
    alias_analyser.AliasAnalysis();
}

void AliasAnalyser::PrintAAResult(bool is_printptr) {
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
