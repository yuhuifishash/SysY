#include "machine_phi_destruction.h"
void MachinePhiDestruction::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        PhiDestructionInCurrentFunction();
    }
}

void MachinePhiDestruction::PhiDestructionInCurrentFunction() {
    auto block_it = current_func->mcfg->getSeqScanIterator();
    block_it->open();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        for (auto ins : *block) {
            for (auto predecessor : current_func->mcfg->GetPredecessorsByBlockId(block->label_id)) {
                if (current_func->mcfg->GetSuccessorsByBlockId(predecessor->Mblock->label_id).size() > 1) {
                    auto MidBlock = current_func->InsertNewBranchOnlyBlockBetweenEdge(
                    predecessor->Mblock->label_id, block->label_id);
                }
            }
            for (auto ins : *block) {
                if (ins->arch != MachineBaseInstruction::PHI) {
                    break;
                }
                auto phi_Ins = (MachinePhiInstruction *)ins;
                for (auto [phi_labelid, phi_operand] : phi_Ins->phi_list) {
                    // Insert to Parallel Copy List
                }
            }
        }
    }
    block_it->rewind();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        if (0 /*Parallel Copy Not Empty*/) {
            // Convert Parallel Copy To Instructions
        }
    }
}