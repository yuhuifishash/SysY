#include "arm_lowercopy.h"
void ArmLowerCopy::Execute() {
    for (auto function : unit->functions) {
        current_func = function;
        auto block_it = current_func->getMachineCFG()->getSeqScanIterator();
        while (block_it->hasNext()) {
            auto block = block_it->next()->Mblock;
            for (auto &ins : *block) {
                if (ins->arch == MachineBaseInstruction::COPY) {
                    auto m_copy = (MachineCopyInstruction *)ins;
                    assert(m_copy->dst->op_type == MachineBaseOperand::REG);
                    if (m_copy->src->op_type == MachineBaseOperand::IMMI) {
                        // ins = new
                    } else if (m_copy->src->op_type == MachineBaseOperand::IMMF) {
                        // ins = new
                    } else if (m_copy->src->op_type == MachineBaseOperand::REG) {
                        // ins = new
                    } else {
                        assert(false);
                    }
                }
            }
        }
    }
}
