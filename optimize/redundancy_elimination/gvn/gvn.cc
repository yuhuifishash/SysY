#include "hash_table.h"

void SparseConditionalConstantPropagation(CFG *C);
// void InstSimplify(CFG *C);
// void InstCombine(CFG *C);
void SimplifyCFG(CFG *C);

HashTable hashtable;
//TODO():GVN
void GlobalValueNumber(CFG *C){
    std::cerr<<C->function_def->GetFunctionName()<<'\n';
    C->BuildCFG();
    C->BuildDominatorTree();
    auto DomTree = C->DomTree;
    auto G = DomTree.dom_tree;
    auto blockmap = *C->block_map;
    std::map<Instruction,Instruction> EraseMap;
    std::function<void(int)> DFS = [&](int ubbid) {
        auto ubb = blockmap[ubbid];
        auto it = ubb->Instruction_list.end();
        do{
            it--;
            auto I = *it;
            auto check = hashtable.lookupOrAdd(I);
            if(check != -1 && hashtable.valuevetor[check].front()->GetFullName() != I->GetResultReg()->GetFullName()){
                auto resulttype = I->GetResultType();
                auto op = hashtable.valuevetor[check].front();
                if (resulttype == I32) {
                    auto newI = new ArithmeticInstruction(ADD, I32, new ImmI32Operand(0), op,
                                                  I->GetResultReg());
                    EraseMap[I] = newI;
                } else if (resulttype == FLOAT32) {
                    auto newI = new ArithmeticInstruction(FADD, FLOAT32, new ImmF32Operand(0),
                                                  op, I->GetResultReg());
                    EraseMap[I] = newI;
                }
            }
        }while(it != ubb->Instruction_list.begin());
        
        for(int i = 0; i < G[ubbid].size(); ++i){
            auto vbb = G[ubbid][i];
            auto vbbid = vbb->block_id;
            DFS(vbbid);
        }
        for(auto I : ubb->Instruction_list){
            auto check = hashtable.lookupOrAdd(I);
            if(check != -1){
                auto op = hashtable.valuevetor[check].front();
                auto str = hashtable.stringmap[check];
                hashtable.valuevetor[check].pop_back();
                if(hashtable.valuevetor.empty()){
                    hashtable.stringmap.erase(check);
                    hashtable.valuemap.erase(str);
                }
            }
        }
    };
    DFS(0);
    for (auto [id, bb] : *C->block_map) {
        auto tmp_Instruction_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for (auto I : tmp_Instruction_list) {
            if (EraseMap.find(I) != EraseMap.end()) {
                I = EraseMap[I];
            }
            bb->InsertInstruction(1, I);
        }
    }
    C->BuildCFG();
    C->BuildDominatorTree();
    SparseConditionalConstantPropagation(C);
    SimplifyCFG(C);
    // for (auto [id, bb] : *uCFG->block_map) {
    //     for (auto I : bb->Instruction_list) {
    //         I->SetBlockID(id);
    //     }
    // }
}

void ElimateGVNPhi(CFG *C){
    //TODO:ElimateGVNPhi
    // std::cerr<<C->function_def->GetFunctionName()<<'\n';
    C->BuildCFG();
    C->BuildDominatorTree();
    hashtable.defineDFS(C);
    auto DomTree = C->DomTree;
    auto G = DomTree.dom_tree;
    auto blockmap = *C->block_map;
    std::function<void(int)> DFS1 = [&](int ubbid) {
        auto ubb = blockmap[ubbid];
        auto it = ubb->Instruction_list.end();
        do{
            it--;
            auto I = *it;
            auto check = hashtable.lookupOrAdd(I);
            // I->PrintIR(std::cerr);
            // if(I->GetResultReg() != nullptr && I->GetResultReg()->GetFullName() == "%r25"){
            //     std::cerr<<"25:"<<hashtable.resultmap[25]<<" "<<check<<'\n';
            // }
            // if(I->GetResultReg() != nullptr && I->GetResultReg()->GetFullName() == "%r56"){
            //     std::cerr<<"56:"<<hashtable.resultmap[56]<<" "<<check<<'\n';
            // }
        }while(it != ubb->Instruction_list.begin());
        
        for(int i = 0; i < G[ubbid].size(); ++i){
            auto vbb = G[ubbid][i];
            auto vbbid = vbb->block_id;
            DFS1(vbbid);
        }
    };
    DFS1(0);
    // puts("done");
    // std::cerr<<hashtable.resultmap[25]<<" "<<hashtable.resultmap[56]<<" "<<hashtable.resultmap[70]<<" "<<hashtable.resultmap[52]<<'\n';
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if(I->GetOpcode() == PHI){

                auto PhiI = (PhiInstruction*)I;
                bool CanElimate = 1;
                auto FstOp = PhiI->GetPhiList().front().second;
                if(FstOp->GetOperandType() !=BasicOperand::REG){
                    continue;
                }
                // I->PrintIR(std::cerr);
                auto FstValue = hashtable.resultmap[((RegOperand*)FstOp)->GetRegNo()];
                for(auto [Labelop, Regop ] : PhiI->GetPhiList()){
                    if(Regop->GetOperandType() !=BasicOperand::REG){
                        CanElimate = 0;
                        break;
                    }
                    auto OpValue = hashtable.resultmap[((RegOperand*)Regop)->GetRegNo()];
                    if(OpValue != FstValue){
                        // I -> PrintIR(std::cerr);
                        // std::cerr<<OpValue<<" "<<FstValue<<'\n';
                        // std::cerr<<Regop->GetFullName()<<'\n';
                        // std::cerr<<"HERE\n";
                        CanElimate = 0;
                        break;
                    }
                }
                if(CanElimate){
                    auto resultOp = (RegOperand*)PhiI->GetResultReg();
                    I->PrintIR(std::cerr);
                    auto type_ = PhiI->GetDataType();
                    // std::cerr<<type_<<'\n';
                    if(type_ == I32) {
                        I = new ArithmeticInstruction(
                            ADD, I32, new ImmI32Operand(0),
                            new ImmI32Operand(((ImmI32Operand *)FstOp)->GetIntImmVal()),
                            resultOp);
                    }else{
                        I = new ArithmeticInstruction(
                            FADD, FLOAT32, new ImmF32Operand(0),
                            new ImmF32Operand(((ImmF32Operand *)FstOp)->GetFloatVal()),
                            resultOp);
                    }
                    I->PrintIR(std::cerr);
                    puts("-----");
                }
            }
        }
    }
    C->BuildCFG();
    C->BuildDominatorTree();
    // std::cerr<<"DONE\n";
    SparseConditionalConstantPropagation(C);
    SimplifyCFG(C);
    // for (auto [id, bb] : *uCFG->block_map) {
    //     for (auto I : bb->Instruction_list) {
    //         I->SetBlockID(id);
    //     }
    // }

}