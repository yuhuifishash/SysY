#include "machine_phi_destruction.h"
void MachinePhiDestruction::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        PhiDestructionInCurrentFunction();
    }
}

void MachinePhiDestruction::PhiDestructionInCurrentFunction() {
    auto block_it = current_func->getMachineCFG()->getSeqScanIterator();
    block_it->open();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        for (auto ins : *block) {
            for (auto predecessor : current_func->getMachineCFG()->GetPredecessorsByBlockId(block->getLabelId())) {
                if (current_func->getMachineCFG()->GetSuccessorsByBlockId(predecessor->Mblock->getLabelId()).size() >
                    1) {
                    auto MidBlock = current_func->InsertNewBranchOnlyBlockBetweenEdge(predecessor->Mblock->getLabelId(),
                                                                                      block->getLabelId());
                }
            }
            for (auto ins : *block) {
                if (ins->arch != MachineBaseInstruction::PHI) {
                    break;
                }
                auto phi_Ins = (MachinePhiInstruction *)ins;
                for (auto [phi_labelid, phi_operand] : phi_Ins->phi_list) {
                    // Insert to Parallel Copy List
                    TODO("Insert to Parallel Copy List");
                }
            }
        }
    }
    block_it->rewind();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        TODO("Convert Parallel Copy To Instructions");
        if (0 /*Parallel Copy Not Empty*/) {
            // Convert Parallel Copy To Instructions
        }
    }
}