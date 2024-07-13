#include "hash_table.h"
#include "../../../include/ir.h"

#include <functional>

void SparseConditionalConstantPropagation(CFG *C);
// void InstSimplify(CFG *C);
// void InstCombine(CFG *C);
void SimplifyCFG(CFG *C);

HashTable hashtable;
//TODO():GVN
void GlobalValueNumber(CFG *C){
    std::cerr<<C->function_def->GetFunctionName()<<'\n';
    // for(auto [id,bb] : *C->block_map){
    //     // bb->printIR(std::cerr);
    //     for(auto I : bb->Instruction_list){
    //         if(hashtable.lookup(I) != -1){
    //             std::cerr<<"asdaasdasdasdasdsssaddd\n";
    //         }
    //         auto value_ = hashtable.lookupOrAdd(I);
    //         I->PrintIR(std::cerr);
    //         if(value_==-1){
    //             std::cerr<<"NOT SUPPORT"<<'\n';
    //         }else{
    //             std::cerr<<"%v"<<value_<<" = "<<hashtable.stringmap[value_]<<'\n';
    //         }
    //         puts("-----------");
    //     }
    // }
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
                I->PrintIR(std::cerr);
                auto resulttype = I->GetResultType();
                // std::cerr<<resulttype<<'\n';
                auto op = hashtable.valuevetor[check].front();
                if (resulttype == I32) {
                    auto newI = new ArithmeticInstruction(ADD, I32, new ImmI32Operand(0), op,
                                                  I->GetResultReg());
                    // I->PrintIR(std::cerr);
                    EraseMap[I] = newI;
                    // std::cerr<<I<<'\n';
                    // ubb->printIR(std::cerr);
                    // std::cerr<<ubb->Instruction_list.front()<<'\n';
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
    // SparseConditionalConstantPropagation(C);
    // SimplifyCFG(C);
    // for (auto [id, bb] : *uCFG->block_map) {
    //     for (auto I : bb->Instruction_list) {
    //         I->SetBlockID(id);
    //     }
    // }
}