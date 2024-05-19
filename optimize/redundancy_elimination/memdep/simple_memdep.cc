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

    if (IBB->block_id == 0 && q.empty()) {
        res.insert(C->function_def);
        return res;
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

std::set<int> SimpleMemDepAnalyser::GetAllBlockInPath(int id1, int id2, CFG* C) {
    std::set<int> ans;
    assert(id1 != id2);
    std::set<int> id1_tos, to_id2s;

    std::queue<int> q;
    std::vector<int> vis;
    vis.resize(C->max_label + 1);
    q.push(id1);

    while(!q.empty()){
        int x = q.front();
        q.pop();
        if(vis[x]){
            continue;
        }
        id1_tos.insert(x);
        vis[x] = 1;
        for(auto v:C->GetSuccessor(x)){
            q.push(v->block_id);
        }
    }

    vis.clear();
    vis.resize(C->max_label + 1);
    q.push(id2);

    while(!q.empty()){
        int x = q.front();
        q.pop();
        if(vis[x]){
            continue;
        }
        to_id2s.insert(x);
        vis[x] = 1;
        if(x == id1){
            continue;
        }
        for(auto v:C->GetPredecessor(x)){
            q.push(v->block_id);
        }
    }

    for(int i = 0; i <= C->max_label; ++i){
        if(id1_tos.find(i) != id1_tos.end() && to_id2s.find(i) != to_id2s.end()){
            ans.insert(i);
        }
    }
    return ans;
}

std::set<Instruction> SimpleMemDepAnalyser::GetStorePostClobbers(Instruction I, CFG *C) {

    std::set<Instruction> res;

    assert(I->GetOpcode() == STORE);
    Operand ptr = ((StoreInstruction *)I)->GetPointer();

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

    for (int i = Iindex; i < IBB->Instruction_list.size(); ++i) {
        auto tmpI = IBB->Instruction_list[i];
        if (tmpI->GetOpcode() == LOAD) {
            auto LoadI = (LoadInstruction *)tmpI;
            if (alias_analyser->QueryAlias(ptr, LoadI->GetPointer(), C) == AliasAnalyser::MustAlias) {
                res.insert(LoadI);
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
            if (!alias_analyser->CFG_isIndependent(target_cfg)) {    // may use memory
                res.insert(CallI);
                return res;
            }
        }
    }

    std::queue<LLVMBlock> q;
    for (auto bb : C->GetSuccessor(IBB)) {
        q.push(bb);
    }

    if (IBB->block_id == C->ret_block->block_id && q.empty()) {
        res.insert(*(C->ret_block->Instruction_list.end() - 1));
        return res;
    }

    // then BFS the CFG
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
            if (tmpI->GetOpcode() == LOAD) {
                auto LoadI = (LoadInstruction *)tmpI;
                if (alias_analyser->QueryAlias(ptr, LoadI->GetPointer(), C) == AliasAnalyser::MustAlias) {
                    res.insert(LoadI);
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
                if (!alias_analyser->CFG_isIndependent(target_cfg)) {    // may use memory
                    res.insert(CallI);
                    is_find = true;
                    break;
                }
            }
        }
        if (!is_find) {
            for (auto bb : C->GetSuccessor(x)) {
                q.push(bb);
            }
        }

        // if reach ret_block, insert
        if (x->block_id == C->ret_block->block_id && !is_find) {
            res.insert(*(C->ret_block->Instruction_list.end() - 1));
        }
    }

    return res;
}



bool SimpleMemDepAnalyser::IsNoStore(Instruction I1, Instruction I2, CFG *C) {
    Operand ptr;
    if (I1->GetOpcode() == LOAD) {
        ptr = ((LoadInstruction *)I1)->GetPointer();
    } else if (I1->GetOpcode() == STORE) {
        ptr = ((StoreInstruction *)I1)->GetPointer();
    }
    auto blocks = GetAllBlockInPath(I1->GetBlockID(), I2->GetBlockID(), C);
    if(blocks.size() == 0){
        return false;
    }
    for(auto id:blocks){
        auto bb = (*C->block_map)[id];
        int st = 0, ed = bb->Instruction_list.size();
        if(id == I1->GetBlockID()){
            int Iindex = -1;
            auto IBB = (*C->block_map)[I1->GetBlockID()];
            for (int i = IBB->Instruction_list.size() - 1; i >= 0; --i) {
                auto tmpI = IBB->Instruction_list[i];
                if (tmpI == I1) {
                    Iindex = i;
                    break;
                }
            }
            assert(Iindex != -1);
            st = Iindex + 1;
        }else if(id == I2->GetBlockID()){
            int Iindex = -1;
            auto IBB = (*C->block_map)[I2->GetBlockID()];
            for (int i = IBB->Instruction_list.size() - 1; i >= 0; --i) {
                auto tmpI = IBB->Instruction_list[i];
                if (tmpI == I2) {
                    Iindex = i;
                    break;
                }
            }
            assert(Iindex != -1);
            ed = Iindex;
        }

        for(int i = st; i < ed; ++i){
            auto I = bb->Instruction_list[i];
            if (I->GetOpcode() == STORE) {
                auto StoreI = (StoreInstruction *)I;
                if (alias_analyser->QueryAlias(ptr, StoreI->GetPointer(), C) == AliasAnalyser::MustAlias) {
                    return false;
                }
            } else if (I->GetOpcode() == CALL) {
                auto CallI = (CallInstruction *)I;
                auto call_name = CallI->GetFunctionName();

                if (CFGMap.find(call_name) == CFGMap.end()) {    // external call
                    return false;
                }

                auto target_cfg = CFGMap[call_name];
                if (!alias_analyser->CFG_isNoSideEffect(target_cfg)) {    // may def memory
                    return false;
                }
            }
        }
    }
    // std::cerr<<"NoStore\n";
    return true;
}

bool SimpleMemDepAnalyser::isLoadSameMemory(Instruction a, Instruction b, CFG *C) {
    auto mem1 = GetLoadClobbers(a, C);
    auto mem2 = GetLoadClobbers(b, C);;

    if (mem1.size() != mem2.size()) {
        return false;
    }

    for (auto I : mem1) {
        if (mem2.find(I) == mem2.end()) {
            return false;
        }
    }

    int id1 = a->GetBlockID();
    int id2 = b->GetBlockID();
    if (mem1.size() > 1 && id1 != id2) {
        
        if(C->DomTree.IsDominate(id1,id2)){
            if(IsNoStore(a,b,C)){
                return true;
            }
        }else if(C->DomTree.IsDominate(id2,id1)){
            if(IsNoStore(b,a,C)){
                return true;
            }
        }
        return false;
    }

    return true;
}

bool SimpleMemDepAnalyser::CanReach(Instruction I1, Instruction I2, CFG *C) {
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

bool SimpleMemDepAnalyser::isStoreBeUsedSame(Instruction a, Instruction b, CFG *C) {
    auto mem1 = GetStorePostClobbers(a, C);
    auto mem2 = GetStorePostClobbers(b, C);

    if (mem1.size() != mem2.size()) {
        return false;
    }

    for (auto I : mem1) {
        if (mem2.find(I) == mem2.end()) {
            return false;
        }
    }

    int id1 = a->GetBlockID();
    int id2 = b->GetBlockID();
    if(id1 != id2){
        if(C->PostDomTree.IsDominate(id1,id2)){
            if(CanReach(a,b,C)){
                return false;
            }
        }else if(C->PostDomTree.IsDominate(id2,id1)){
            if(CanReach(b,a,C)){
                return false;
            }
        }else if(CanReach(a,b,C) || CanReach(b,a,C)){
            return false;
        }
    }

    return true;
}

bool SimpleMemDepAnalyser::isStoreNotUsed(Instruction a, CFG *C) {

    auto mem1 = GetStorePostClobbers(a, C);
    if (mem1.size() != 1) {
        return false;
    }
    auto ClobberI = *mem1.begin();
    if (ClobberI->GetOpcode() == RET) {
        return true;
    }
    return false;
}

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

    std::set<Instruction> StoreSet;
    for (auto [defI, cfg] : IR->llvm_cfg) {
        defI->PrintIR(std::cerr);
        for (auto [id, bb] : *cfg->block_map) {
            for (auto I : bb->Instruction_list) {
                if (I->GetOpcode() == STORE) {
                    StoreSet.insert(I);
                    I->PrintIR(std::cerr);
                    auto res = GetStorePostClobbers(I, cfg);
                    for (auto resI : res) {
                        resI->PrintIR(std::cerr);
                    }
                    std::cerr << "-----------------------------------\n";
                }
            }
        }
        for (auto I1 : StoreSet) {
            for (auto I2 : StoreSet) {
                I1->PrintIR(std::cerr);
                I2->PrintIR(std::cerr);
                std::cerr << isStoreBeUsedSame(I1, I2, cfg) << "\n";
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