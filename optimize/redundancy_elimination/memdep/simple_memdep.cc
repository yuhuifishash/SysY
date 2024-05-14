#include "simple_memdep.h"
#include "../../../include/ir.h"
#include "../../alias_analysis/alias_analysis.h"
#include <assert.h>
#include <queue>

extern AliasAnalyser *alias_analyser;
extern std::map<std::string, CFG *> CFGMap;
MemoryDependenceAnalyser *memdep_analyser;

std::set<Instruction> SimpleMemDepAnalyser::GetLoadClobbers(Instruction I, CFG *C) {
    std::set<Instruction> res;

    Operand ptr;
    assert(I->GetOpcode() == LOAD || I->GetOpcode() == STORE);
    if (I->GetOpcode() == LOAD) {
        ptr = ((LoadInstruction *)I)->GetPointer();
    } else if (I->GetOpcode() == STORE) {
        ptr = ((StoreInstruction *)I)->GetPointer();
    }
    // first search all the Instructions before I in I's block
    auto IBB = (*C->block_map)[I->GetBlockID()];

    int Iindex = -1;
    for (int i = IBB->Instruction_list.size() - 1; i >= 0; --i) {
        auto tmpI = IBB->Instruction_list[i];
        if (tmpI == I) {
            Iindex = i;
            break;
        }
    }
    assert(Iindex != -1);

    for (int i = Iindex; i >= 0; --i) {
        auto tmpI = IBB->Instruction_list[i];
        if (tmpI->GetOpcode() == STORE) {
            auto StoreI = (StoreInstruction *)tmpI;
            if (alias_analyser->QueryAlias(ptr, StoreI->GetPointer(), C) == AliasAnalyser::MustAlias) {
                res.insert(StoreI);
                return res;
            }
        } else if (tmpI->GetOpcode() == CALL) {
            auto CallI = (CallInstruction *)tmpI;
            auto call_name = CallI->GetFunctionName();

            if (CFGMap.find(call_name) == CFGMap.end()) {    // external call
                res.insert(CallI);
                return res;
            }

            auto target_cfg = CFGMap[call_name];
            if (!alias_analyser->CFG_isNoSideEffect(target_cfg)) {    // may def memory
                res.insert(CallI);
                return res;
            }
        }
    }

    std::queue<LLVMBlock> q;
    for (auto bb : C->GetPredecessor(IBB)) {
        q.push(bb);
    }

    // then BFS the CFG in reverse order
    std::map<LLVMBlock, bool> vis_map;
    while (!q.empty()) {
        auto x = q.front();
        q.pop();
        if (vis_map[x]) {
            continue;
        }
        vis_map[x] = true;

        bool is_find = false;
        for (int i = x->Instruction_list.size() - 1; i >= 0; --i) {
            auto tmpI = x->Instruction_list[i];
            if (tmpI->GetOpcode() == STORE) {
                auto StoreI = (StoreInstruction *)tmpI;
                if (alias_analyser->QueryAlias(ptr, StoreI->GetPointer(), C) == AliasAnalyser::MustAlias) {
                    res.insert(StoreI);
                    is_find = true;
                    break;
                }
            } else if (tmpI->GetOpcode() == CALL) {
                auto CallI = (CallInstruction *)tmpI;
                auto call_name = CallI->GetFunctionName();

                if (CFGMap.find(call_name) == CFGMap.end()) {    // external call
                    res.insert(CallI);
                    is_find = true;
                    break;
                }

                auto target_cfg = CFGMap[call_name];
                if (!alias_analyser->CFG_isNoSideEffect(target_cfg)) {    // may def memory
                    res.insert(CallI);
                    is_find = true;
                    break;
                }
            }
        }
        if (!is_find) {
            for (auto bb : C->GetPredecessor(x)) {
                q.push(bb);
            }
        }

        // if reach BB0,  insert functiondef
        if (x->block_id == 0 && !is_find) {
            res.insert(C->function_def);
        }
    }

    return res;
}

std::set<Instruction> SimpleMemDepAnalyser::GetStorePostClobbers(Instruction I, CFG *C) {

    return std::set<Instruction>{};
}

bool SimpleMemDepAnalyser::isLoadSameMemory(Instruction a, Instruction b, CFG *C) {
    auto mem1 = GetLoadClobbers(a, C);
    auto mem2 = GetLoadClobbers(b, C);

    if (mem1.size() != mem2.size()) {
        return false;
    }
    for (auto I : mem1) {
        if (mem2.find(I) == mem2.end()) {
            return false;
        }
    }
    return true;
}

bool SimpleMemDepAnalyser::isStoreDead(Instruction a, Instruction b) { return false; }

void SimpleMemDepAnalyser::MemDepTest() {
    for (auto [defI, cfg] : IR->llvm_cfg) {
        for (auto [id, bb] : *cfg->block_map) {
            for (auto I : bb->Instruction_list) {
                I->SetBlockID(bb->block_id);
            }
        }
    }

    std::set<Instruction> LoadSet;
    for (auto [defI, cfg] : IR->llvm_cfg) {
        defI->PrintIR(std::cerr);
        for (auto [id, bb] : *cfg->block_map) {
            for (auto I : bb->Instruction_list) {
                if (I->GetOpcode() == LOAD) {
                    LoadSet.insert(I);
                    I->PrintIR(std::cerr);
                    auto res = GetLoadClobbers(I, cfg);
                    for (auto resI : res) {
                        resI->PrintIR(std::cerr);
                    }
                    std::cerr << "-----------------------------------\n";
                } else if (I->GetOpcode() == STORE) {
                    I->PrintIR(std::cerr);
                    auto res = GetLoadClobbers(I, cfg);
                    for (auto resI : res) {
                        resI->PrintIR(std::cerr);
                    }
                    std::cerr << "-----------------------------------\n";
                }
            }
        }
        for (auto I1 : LoadSet) {
            for (auto I2 : LoadSet) {
                I1->PrintIR(std::cerr);
                I2->PrintIR(std::cerr);
                std::cerr << isLoadSameMemory(I1, I2, cfg) << "\n";
            }
        }
    }
}

void SimpleMemoryDependenceAnalysis(LLVMIR *IR) {
    memdep_analyser = new SimpleMemDepAnalyser();
    memdep_analyser->SetIR(IR);

    memdep_analyser->MemoryDependenceAnalysis();

    // memdep_analyser->MemDepTest();
}