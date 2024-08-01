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
        if (succs.size() == 2) {
            // [1]->True label
            // [0]->False label
            block->branch_predictor[0] = 0.4;
            block->branch_predictor[1] = 0.6;
        } else {
            for (auto &p : block->branch_predictor) {
                p = 1.0 / succs.size();
            }
        }
    }

    for (auto l : C->LoopForest.loop_set) {
        for (auto bb : l->exitings) {
            // int idx = 0;
            for (auto succ : C->GetSuccessorsByBlockId(bb->getLabelId())) {
                // Check succ true/false
                float this_br_prob = 1;
                if (l->loop_nodes.find(succ->Mblock) != l->loop_nodes.end()) {
                    this_br_prob = 0.99;
                } else {
                    this_br_prob = 0.01;
                }
                // idx = idx + 1;
                auto targets = bb->getAllBranch();
                if (targets[0] == succ->Mblock->getLabelId()) {
                    bb->branch_predictor[0] = this_br_prob;
                } else if (targets[1] == succ->Mblock->getLabelId()) {
                    bb->branch_predictor[1] = this_br_prob;
                }
            }
        }
    }

    block_it->rewind();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        if (block->branch_predictor.size() == 2) {
            if (block->branch_predictor[0] < block->branch_predictor[1]) {
                block->ReverseBranch();
            }
        }
    }

#ifdef RISCV64BranchPredictDebug
    block_it = C->getSeqScanIterator();
    block_it->open();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        auto succs = C->GetSuccessorsByBlockId(block->getLabelId());
        if (succs.size() >= 2) {
            std::cerr << block->getLabelId() << ": \n";
            for (auto succ : succs) {
                std::cerr << succ->Mblock->getLabelId() << " ";
            }
            std::cerr << "\n";
            for (auto p : block->branch_predictor) {
                std::cerr << p << " ";
            }
            std::cerr << "\n\n";
        }
    }
#endif
}
