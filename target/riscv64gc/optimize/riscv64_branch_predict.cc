#include "riscv64_branch_predict.h"

// #define RISCV64BranchPredictDebug

void RiscV64BranchPredict::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        StaticBranchPredict();
    }
}

void RiscV64BranchPredict::StaticBranchPredict() {
    // first init all the successors' probability to same
    auto C = current_func->getMachineCFG();
    auto block_it = C->getSeqScanIterator();
    block_it->open();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        auto succs = C->GetSuccessorsByBlockId(block->getLabelId());
        block->branch_predictor.resize(succs.size());
        for(auto &p:block->branch_predictor){
            p = 1.0/succs.size();
        }
    }

    //TODO():Set True Label probability to 0.6,  False 0.4

    for (auto l : C->LoopForest.loop_set) {
        for (auto bb : l->exitings) {
            int idx = 0;
            for (auto succ : C->GetSuccessorsByBlockId(bb->getLabelId())) {
                if(l->loop_nodes.find(succ->Mblock) != l->loop_nodes.end()) {
                    bb->branch_predictor[idx] = 0.99;
                }else{
                    bb->branch_predictor[idx] = 0.01;
                }
                idx = idx + 1;
            }
        }
    }


    #ifdef RISCV64BranchPredictDebug
        block_it = C->getSeqScanIterator();
        block_it->open();
        while (block_it->hasNext()) {
            auto block = block_it->next()->Mblock;
            auto succs = C->GetSuccessorsByBlockId(block->getLabelId());
            if(succs.size() >= 2){
                std::cerr<<block->getLabelId()<<": \n";
                for(auto succ:succs){
                    std::cerr<<succ->Mblock->getLabelId()<<" ";
                }std::cerr<<"\n";
                for(auto p:block->branch_predictor){
                    std::cerr<<p<<" ";
                }std::cerr<<"\n\n";
            }
        }
    #endif
}

