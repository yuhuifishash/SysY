#include "../../include/cfg.h"
#include "../alias_analysis/alias_analysis.h"
#include "memdep/memdep.h"
#include <functional>

extern AliasAnalyser *alias_analyser;
extern MemoryDependenceAnalyser *memdep_analyser;

// dead store elimination, only considers basic-block local redundant stores
void BasicBlockDSE(CFG *C) {
    std::set<Instruction> EraseSet;
    for (auto [id, bb] : *C->block_map) {
        std::map<Operand, std::vector<Instruction>> storeptrs_map;

        for (int i = bb->Instruction_list.size() - 1; i >= 0; --i) {
            auto I = bb->Instruction_list[i];
            if (I->GetOpcode() == STORE) {
                auto StoreI = (StoreInstruction *)I;
                auto ptr = StoreI->GetPointer();
                if (storeptrs_map.find(ptr) != storeptrs_map.end()) {
                    for (auto oldI : storeptrs_map[ptr]) {
                        if (memdep_analyser->isStoreBeUsedSame(I, oldI, C)) {
                            EraseSet.insert(I);
                            I->PrintIR(std::cerr);
                            break;
                        }
                    }
                } else {
                    storeptrs_map[ptr].push_back(StoreI);
                }
            }
        }
    }

    for (auto [id, bb] : *C->block_map) {
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

// I1 Post-dom I2
// if after execute I1, may execute I2, return true;
bool CanReach(Instruction I1, Instruction I2, CFG *C) {
    auto bb1_id = I1->GetBlockID();
    auto bb2_id = I2->GetBlockID();
    if (bb1_id == bb2_id) {
        return false;
    }

    std::vector<int> vis;
    std::queue<int> q;

    vis.resize(C->max_label + 1);
    q.push(bb1_id);

    while (!q.empty()) {
        auto x = q.front();
        q.pop();
        if (x == bb2_id) {
            // std::cerr<<"Can Reach \n";
            return true;
        }
        if (vis[x]) {
            continue;
        }
        vis[x] = true;

        for (auto bb : C->GetSuccessor(x)) {
            q.push(bb->block_id);
        }
    }
    return false;
}

// dead store elimination, post-dominator tree traversal
void PostDomTreeWalkDSE(CFG *C) {
    std::set<Instruction> EraseSet;
    std::map<Operand, std::vector<Instruction>> storeptrs_map;

    std::function<void(int)> dfs = [&](int bbid) {
        std::map<Operand, int> tmp_map;
        LLVMBlock now = (*C->block_map)[bbid];
        for (int i = now->Instruction_list.size() - 1; i >= 0; --i) {
            auto I = now->Instruction_list[i];
            if (I->GetOpcode() == STORE) {
                bool is_dse = false;
                auto StoreI = (StoreInstruction *)I;
                auto ptr = StoreI->GetPointer();
                if (storeptrs_map.find(ptr) != storeptrs_map.end()) {
                    for (auto oldI : storeptrs_map[ptr]) {
                        if (memdep_analyser->isStoreBeUsedSame(I, oldI, C) && !CanReach(I, oldI, C)) {
                            EraseSet.insert(I);
                            is_dse = true;
                            // std::cerr<<"post dom-tree DSE  "; I->PrintIR(std::cerr);
                            break;
                        }
                    }
                }
                if (is_dse) {
                    continue;
                }
                tmp_map[ptr] += 1;
                storeptrs_map[ptr].push_back(StoreI);
            }
        }

        for (auto v : C->PostDomTree.dom_tree[bbid]) {
            dfs(v->block_id);
        }

        for (auto [op, num] : tmp_map) {
            for (int i = 0; i < num; ++i) {
                storeptrs_map[op].pop_back();
            }
        }
    };

    dfs(C->ret_block->block_id);

    for (auto [id, bb] : *C->block_map) {
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

void EliminateNotUsedStore(CFG *C) {
    std::set<Instruction> EraseSet;

    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() != STORE) {
                continue;
            }
            auto StoreI = (StoreInstruction *)I;
            auto ptr = StoreI->GetPointer();
            if (alias_analyser->is_localptrs(C, ptr)) {
                if (memdep_analyser->isStoreNotUsed(I, C)) {
                    // std::cerr<<"not used local store "; I->PrintIR(std::cerr);
                    EraseSet.insert(I);
                }
            }
        }
    }

    for (auto [id, bb] : *C->block_map) {
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

void SimpleDSE(CFG *C) {
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            I->SetBlockID(id);
        }
    }

    BasicBlockDSE(C);
    PostDomTreeWalkDSE(C);
    EliminateNotUsedStore(C);
}