#include "../../include/cfg.h"
#include "../../include/ir.h"
#include "../alias_analysis/alias_analysis.h"
#include <functional>

#define LOOP_PARALLEL_DEBUG

extern std::map<std::string, CFG *> CFGMap;
extern AliasAnalyser *alias_analyser;

void AddParallelLib(LLVMIR *IR) {
    auto ThreadCreateI_111 = new FunctionDeclareInstruction(VOID, "___parallel_loop_constant_111", true);
    auto ThreadCreateI_101 = new FunctionDeclareInstruction(VOID, "___parallel_loop_constant_101", true);
    auto ThreadCreateI_000 = new FunctionDeclareInstruction(VOID, "___parallel_loop_constant_000", true);

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

NaturalLoop::LoopDepResult NaturalLoop::CheckDependenceResult(Instruction I1, Instruction I2) {
    assert(I1->GetOpcode() == GETELEMENTPTR);
    assert(I2->GetOpcode() == GETELEMENTPTR);

    auto GEPI1 = (GetElementptrInstruction *)I1;
    auto GEPI2 = (GetElementptrInstruction *)I2;

    auto ptr1 = GEPI1->GetPtrVal(), ptr2 = GEPI2->GetPtrVal();
    if (ptr1 != ptr2) {
        return ANY;
    }
    auto idxes1 = GEPI1->GetIndexes();
    auto idxes2 = GEPI2->GetIndexes();
    if (idxes1.size() != idxes2.size()) {
        return ANY;
    }

    for (int i = 0; i < idxes1.size(); ++i) {
        auto idx1 = idxes1[i];
        auto idx2 = idxes2[i];
        if (idx1->GetOperandType() == BasicOperand::REG && idx2->GetOperandType() == BasicOperand::REG) {
            auto r1 = ((RegOperand *)idx1)->GetRegNo();
            auto r2 = ((RegOperand *)idx2)->GetRegNo();
            if (scev.SCEVMap.find(r1) == scev.SCEVMap.end()) {
                continue;
            }
            if (scev.SCEVMap.find(r2) == scev.SCEVMap.end()) {
                continue;
            }
            auto scev1 = scev.SCEVMap[r1];
            auto scev2 = scev.SCEVMap[r2];

            if (scev1->len != 2 || scev2->len != 2) {
                continue;
            }
            auto step1 = scev1->RecurExpr->st, step2 = scev2->RecurExpr->st;
            auto st1 = scev1->st, st2 = scev2->st;
            if (st1 == st2 && step1 == step2) {
                return NONE;
            }
        }
    }
    return ANY;
}

// if the loop can be parallel, return true
bool NaturalLoop::LoopCarriedDependenceTest(CFG *C) {
    if (scev.is_simpleloop == false) {
        return false;
    }

    std::map<int, Instruction> ResultMap;
    std::vector<LoadInstruction *> LoadList;
    std::vector<StoreInstruction *> StoreList;

    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            int v = I->GetResultRegNo();
            if (v != -1) {    // result exists
                ResultMap[v] = I;
            }
        }
    }

    for (auto n : loop_nodes) {
        for (auto I : n->Instruction_list) {
            if (I->GetOpcode() == LOAD) {
                LoadList.push_back((LoadInstruction *)I);
            } else if (I->GetOpcode() == STORE) {
                StoreList.push_back((StoreInstruction *)I);
            } else if (I->GetOpcode() == CALL) {
                auto CallI = (CallInstruction *)I;
                if (CFGMap.find(CallI->GetFunctionName()) == CFGMap.end()) {
                    return false;    // external call
                }
                auto targetcfg = CFGMap[CallI->GetFunctionName()];
                if (!alias_analyser->CFG_isIndependent(targetcfg)) {
                    return false;    // may r/w memory, we can not parallel
                }
            }
        }
    }

    for (auto LoadI : LoadList) {
        for (auto StoreI : StoreList) {
            auto ptr1 = LoadI->GetPointer();
            auto ptr2 = StoreI->GetPointer();
            if (alias_analyser->QueryAlias(ptr1, ptr2, C) != AliasAnalyser::NoAlias) {
                // alias, may generate dependency
                if (ptr1->GetOperandType() == BasicOperand::GLOBAL || ptr2->GetOperandType() == BasicOperand::GLOBAL) {
                    return false;
                }
                auto GEPI1 = ResultMap[((RegOperand *)ptr1)->GetRegNo()];
                auto GEPI2 = ResultMap[((RegOperand *)ptr2)->GetRegNo()];
                auto result = CheckDependenceResult(GEPI1, GEPI2);
                if (result != NONE) {
                    return false;
                }
            }
        }
    }

    return true;
}

void LoopParallel(CFG *C, LLVMIR* IR) {
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *, NaturalLoopForest &loop_forest,
                                                                             NaturalLoop *L) {
        if (L->LoopParallel(C, IR)) {    // if parallel, stop the dfs
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

static LLVMType GetResultType(Instruction I) {
    if(I->GetOpcode() == GETELEMENTPTR || I->GetOpcode() == ALLOCA){
        return PTR;
    }else{ // in sysy, we assume other instruction's results are all I32
        return I32;
    }
}

bool NaturalLoop::LoopParallel(CFG *C, LLVMIR* IR) {
    if (!LoopCarriedDependenceTest(C)) {
        return false;
    }
    // no data dependence

    // now check the phi cnt in header
    int phi_cnt = 0;
    for (auto I : header->Instruction_list) {
        if (I->GetOpcode() == PHI) {
            ++phi_cnt;
        } else {
            break;
        }
    }
    if (phi_cnt > 1) {
        // TODO(): reduction operator (+,min,max)
        return false;
    }
    assert(exit_nodes.size() == 1);
    auto exit = *exit_nodes.begin();

    // can not have lcssa
    for (auto I : exit->Instruction_list){
        if(I->GetOpcode() == PHI){
            return false;
        }
    }
    // now we only consider loop with step 1 (TODO: parallel more loops)


    // now we can parallel the loop
    std::cerr<<"loop header: "<<header->block_id<<"  can parallel\n";

    // add dynamic parallel check

    // transform loop to function
    auto defI = new FunctionDefineInstruction(VOID,"___D86D10319A84A67B_" + std::to_string(header->block_id));
    int parallel_label = -1;
    int parallel_reg = -1;
    defI->InsertFormal(PTR);
    IR->NewFunction(defI);
    auto entry = IR->NewBlock(defI, parallel_label);

    auto LoadThreadIdI = new LoadInstruction(I32,GetNewRegOperand(0),GetNewRegOperand(++parallel_reg));
    entry->InsertInstruction(1,LoadThreadIdI);

    auto GEP1I = new GetElementptrInstruction(I32,GetNewRegOperand(++parallel_reg),GetNewRegOperand(0));
    GEP1I->push_idx_imm32(4);
    entry->InsertInstruction(1,GEP1I);
    auto LoadStI = new LoadInstruction(I32,GEP1I->GetResultReg(),GetNewRegOperand(++parallel_reg));
    entry->InsertInstruction(1,LoadStI);

    auto GEP2I = new GetElementptrInstruction(I32,GetNewRegOperand(++parallel_reg),GetNewRegOperand(0));
    GEP2I->push_idx_imm32(8);
    entry->InsertInstruction(1,GEP2I);
    auto LoadEdI = new LoadInstruction(I32,GEP2I->GetResultReg(),GetNewRegOperand(++parallel_reg));
    entry->InsertInstruction(1,LoadEdI);

    // get the reg use in loop but def out of the loop

    std::map<int, Instruction> ResultMap;
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            I->SetBlockID(id);
            int v = I->GetResultRegNo();
            if (v != -1) {    // result exists
                ResultMap[v] = I;
            }
        }
    }
    std::set<int> i32set, i64set;
    std::map<int,int> regreplace_map;

    for(auto bb:loop_nodes){
        for(auto I:bb->Instruction_list){
            for(auto op:I->GetNonResultOperands()){
                if(op->GetOperandType() == BasicOperand::REG){
                    auto r = (RegOperand*)op;
                    int regno = r->GetRegNo();
                    if(ResultMap[regno]){
                        auto defI = ResultMap[regno];
                        auto def_bbid = ResultMap[regno]->GetBlockID();
                        auto def_bb = (*C->block_map)[def_bbid];
                        if(loop_nodes.find(def_bb) == loop_nodes.end()) {
                            auto type = GetResultType(defI);
                            if(type == I32){
                                i32set.insert(regno);
                            }else if(type == PTR){
                                i64set.insert(regno);
                            }else{
                                assert(false);
                            }
                        }
                    }else{
                        assert(regno < C->function_def->formals.size());
                        auto type = C->function_def->formals[regno];
                        if(type == I32){
                            i32set.insert(regno);
                        }else if(type == PTR){
                            i64set.insert(regno);
                        }else{
                            assert(false);
                        }
                    }
                }
            }
        }
    }

    #ifdef LOOP_PARALLEL_DEBUG
        std::cerr<<"variable use in loop but define out of loop: \n";
        std::cerr<<"i32 ";
        for(auto regno:i32set){
            std::cerr<<regno<<" ";
        }
        std::cerr<<"\n";
        std::cerr<<"i64 ";
        for(auto regno:i64set){
            std::cerr<<regno<<" ";
        }
        std::cerr<<"\n";
    #endif

    int bias = 8;
    for(auto regno:i32set){
        bias += 4;
        auto reg = GetNewRegOperand(regno);
        auto GEP3I = new GetElementptrInstruction(I32,GetNewRegOperand(++parallel_reg),GetNewRegOperand(0));
        GEP3I->push_idx_imm32(bias);
        entry->InsertInstruction(1,GEP3I);
        auto LoadvalI = new LoadInstruction(I32,GEP3I->GetResultReg(),GetNewRegOperand(++parallel_reg));
        entry->InsertInstruction(1,LoadvalI);
        regreplace_map[regno] = LoadvalI->GetResultRegNo();
    }

    for(auto regno:i64set){
        bias += 8;
        auto reg = GetNewRegOperand(regno);
        auto GEP3I = new GetElementptrInstruction(I32,GetNewRegOperand(++parallel_reg),GetNewRegOperand(0));
        GEP3I->push_idx_imm32(bias);
        entry->InsertInstruction(1,GEP3I);
        auto LoadvalI = new LoadInstruction(I32,GEP3I->GetResultReg(),GetNewRegOperand(++parallel_reg));
        entry->InsertInstruction(1,LoadvalI);
        regreplace_map[regno] = LoadvalI->GetResultRegNo();
    }

    // calculate the initval and endval of the loop
    


    
    // add parallel function

    return true;
}