#include "riscv64_lowerselect.h"

void RiscV64LowerSelect::Execute() {
    for (auto function : unit->functions) {
        auto block_it = function->getMachineCFG()->getSeqScanIterator();
        block_it->open();
        while (block_it->hasNext()) {
            auto block = block_it->next()->Mblock;
            for (auto it = block->begin(); it != block->end(); ++it) {
                auto &ins = *it;
                if (ins->arch == MachineBaseInstruction::SELECT) {
                    auto m_select = (MachineSelectInstruction *) &ins;
                    // it = block->erase(it);
                    // block->insert(it,); // mov rd, falseval
                    // block->insert(it,); // bxx ; mov rd, trueval
                    // --it;
                }
            }
        }
    }
}