#include "simple_memdep.h"
#include "../../../include/ir.h"
#include "../../alias_analysis/alias_analysis.h"
#include <assert.h>
#include <queue>

extern AliasAnalyser *alias_analyser;
MemoryDependenceAnalyser* memdep_analyser;

std::vector<Instruction> SimpleMemDepAnalyser::GetLoadClobbers(Instruction I, CFG* C) {
    std::vector<Instruction> res;
    
    Operand ptr;
    assert(I->GetOpcode() == LOAD || I->GetOpcode() == STORE);
    if(I->GetOpcode() == LOAD){
        ptr = ((LoadInstruction*)I)->GetPointer();
    }else if(I->GetOpcode() == STORE){
        ptr = ((StoreInstruction*)I)->GetPointer();
    }
    // first search all the Instructions before I in I's block
    auto IBB = (*C->block_map)[I->GetBlockID()];



    std::queue<LLVMBlock> q;
    for(auto bb: C->GetPredecessor(IBB)){
        q.push(bb);

    }

    // then BFS the CFG in reverse order
    while(!q.empty()){
        auto x = q.front();
        q.pop();

        for(int i = x->Instruction_list.size(); i >= 0; --i){
            auto tmpI = x->Instruction_list[i];
            if(tmpI->GetOpcode() == STORE){

            }else if(tmpI->GetOpcode() == CALL){

            }
        }

    }



    return res;
}

bool SimpleMemDepAnalyser::isLoadRedundant(Instruction a, Instruction b, CFG* C) {
    return false;
}

void SimpleMemoryDependenceAnalysis(LLVMIR* IR) {
    memdep_analyser = new SimpleMemDepAnalyser();
    memdep_analyser->SetIR(IR);
    memdep_analyser->MemoryDependenceAnalysis();
}