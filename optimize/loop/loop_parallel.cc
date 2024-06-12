#include "../../include/cfg.h"
#include "../../include/ir.h"
#include "../alias_analysis/alias_analysis.h"
#include <functional>

extern std::map<std::string, CFG *> CFGMap;
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
    assert(I1->GetOpcode() == GETELEMENTPTR);
    assert(I2->GetOpcode() == GETELEMENTPTR);

    auto GEPI1 = (GetElementptrInstruction*)I1;
    auto GEPI2 = (GetElementptrInstruction*)I2;

    auto ptr1 = GEPI1->GetPtrVal(), ptr2 = GEPI2->GetPtrVal();
    if(ptr1 != ptr2){
        return ANY;
    }
    auto idxes1 = GEPI1->GetIndexes();
    auto idxes2 = GEPI2->GetIndexes();
    if(idxes1.size() != idxes2.size()){
        return ANY;
    }

    for(int i = 0; i < idxes1.size(); ++i){
        auto idx1 = idxes1[i];
        auto idx2 = idxes2[i];
        if(idx1->GetOperandType() == BasicOperand::REG && idx2->GetOperandType() == BasicOperand::REG){
            auto r1 = ((RegOperand*)idx1)->GetRegNo();
            auto r2 = ((RegOperand*)idx2)->GetRegNo();
            if(scev.SCEVMap.find(r1) == scev.SCEVMap.end()){
                continue;
            }
            if(scev.SCEVMap.find(r2) == scev.SCEVMap.end()){
                continue;
            }
            auto scev1 = scev.SCEVMap[r1];
            auto scev2 = scev.SCEVMap[r2];

            if(scev1->len != 2 || scev2->len !=2 ){
                continue;
            }
            auto step1 = scev1->RecurExpr->st, step2 = scev2->RecurExpr->st;
            auto st1 = scev1->st, st2 = scev2->st;
            if(st1 == st2 && step1 == step2){
                return NONE;
            }
        }
    }
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
            }else if(I->GetOpcode() == CALL){
                auto CallI = (CallInstruction *)I;
                if (CFGMap.find(CallI->GetFunctionName()) == CFGMap.end()) {
                    return false;    // external call
                }
                auto targetcfg = CFGMap[CallI->GetFunctionName()];
                if (!alias_analyser->CFG_isIndependent(targetcfg)) {
                    return false;   // may r/w memory, we can not parallel
                }
            }
        }
    }

    for(auto LoadI:LoadList){
        for(auto StoreI:StoreList){
            auto ptr1 = LoadI->GetPointer();
            auto ptr2 = StoreI->GetPointer();
            if(alias_analyser->QueryAlias(ptr1,ptr2,C) != AliasAnalyser::NoAlias){
                //alias, may generate dependency
                if(ptr1->GetOperandType() == BasicOperand::GLOBAL || ptr2->GetOperandType() == BasicOperand::GLOBAL){
                    return false;
                }
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
    // no data dependence

    // now check the phi cnt in header
    int phi_cnt = 0;
    for(auto I:header->Instruction_list){
        if(I->GetOpcode() == PHI){
            ++phi_cnt;
        }else{
            break;
        }
    }
    if(phi_cnt > 1){
        // TODO(): reduction operator (+,min,max)
        return false;
    }

    //now we can parallel the loop
    std::cerr<<"loop header: "<<header->block_id<<"  can parallel\n";

    //add dynamic parallel check
    

    //transform loop to function


    //add parallel function


    return false;
}