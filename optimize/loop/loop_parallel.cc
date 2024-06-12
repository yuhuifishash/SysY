#include "../../include/cfg.h"
#include "../../include/ir.h"
#include "../alias_analysis/alias_analysis.h"
#include <functional>

extern AliasAnalyser *alias_analyser;

void AddParallelLib(LLVMIR* IR) {
    auto ThreadCreateI_111 = new FunctionDeclareInstruction(VOID,"___parallel_loop_constant_111",true);
    auto ThreadCreateI_101 = new FunctionDeclareInstruction(VOID,"___parallel_loop_constant_101",true);
    auto ThreadCreateI_000 = new FunctionDeclareInstruction(VOID,"___parallel_loop_constant_000",true);

    ThreadCreateI_111->InsertFormal(PTR);
    ThreadCreateI_111->InsertFormal(PTR);
    ThreadCreateI_111->InsertFormal(PTR);
    ThreadCreateI_111->InsertFormal(PTR);
    ThreadCreateI_111->InsertFormal(I32);
    ThreadCreateI_111->InsertFormal(I32);

    ThreadCreateI_101->InsertFormal(PTR);
    ThreadCreateI_101->InsertFormal(I32);
    ThreadCreateI_101->InsertFormal(I32);
    ThreadCreateI_101->InsertFormal(I32);
    ThreadCreateI_101->InsertFormal(I32);

    ThreadCreateI_000->InsertFormal(PTR);
    ThreadCreateI_000->InsertFormal(I32);
    ThreadCreateI_000->InsertFormal(I32);
    ThreadCreateI_000->InsertFormal(I32);
    ThreadCreateI_000->InsertFormal(I32);
    ThreadCreateI_000->InsertFormal(I32);

    IR->function_declare.push_back(ThreadCreateI_111);
    IR->function_declare.push_back(ThreadCreateI_101);
    IR->function_declare.push_back(ThreadCreateI_000);
}

NaturalLoop::LoopDepResult NaturalLoop::CheckDependenceResult(Instruction I1, Instruction I2){ 
    return ANY;
}


//if the loop can be parallel, return true
bool NaturalLoop::LoopCarriedDependenceTest(CFG *C) {
    if(scev.is_simpleloop == false){
        return false;
    }
    std::map<int, Instruction> ResultMap;
    std::vector<LoadInstruction*> LoadList;
    std::vector<StoreInstruction*> StoreList;

    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            int v = I->GetResultRegNo();
            if (v != -1) {    // result exists
                ResultMap[v] = I;
            }
        }
    }

    for(auto n : loop_nodes){
        for(auto I : n->Instruction_list){
            if(I->GetOpcode() == LOAD){
                LoadList.push_back((LoadInstruction*)I);
            }else if(I->GetOpcode() == STORE){
                StoreList.push_back((StoreInstruction*)I);
            }
        }
    }

    for(auto LoadI:LoadList){
        for(auto StoreI:StoreList){
            auto ptr1 = LoadI->GetPointer();
            auto ptr2 = StoreI->GetPointer();
            if(alias_analyser->QueryAlias(ptr1,ptr2,C) != AliasAnalyser::NoAlias){
                //alias, may generate dependency
                auto GEPI1 = ResultMap[((RegOperand*)ptr1)->GetRegNo()];
                auto GEPI2 = ResultMap[((RegOperand*)ptr2)->GetRegNo()];
                auto result = CheckDependenceResult(GEPI1,GEPI2);
                if(result != NONE){
                    return false;
                }
            }
        }
    }

    return true; 
}

void LoopParallel(CFG *C) {
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *, NaturalLoopForest &loop_forest,
                                                                             NaturalLoop *L) {
        if (L->LoopParallel(C)) {    // if parallel, stop the dfs
            return;
        }
        for (auto lv : loop_forest.loopG[L->loop_id]) {
            dfs(C, loop_forest, lv);
        }
    };

    for (auto l : C->LoopForest.loop_set) {
        if (l->fa_loop == nullptr) {
            dfs(C, C->LoopForest, l);
        }
    }
}

bool NaturalLoop::LoopParallel(CFG *C) {
    if (!LoopCarriedDependenceTest(C)) {
        return false;
    }

    // no data dependence, now we can parallel


    return false;
}