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

