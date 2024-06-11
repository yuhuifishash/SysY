#include "riscv64_lowerimm.h"

void RiscV64LowerImm::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        for (auto block : func->blocks) {
            cur_block = block;
            for (auto it = block->begin(); it != block->end(); ++it) {
                auto cur_ins = *it;
                if (cur_ins->arch == MachineBaseInstruction::RiscV) {
                    auto cur_rvins = (RiscV64Instruction *)cur_ins;
                    if (cur_rvins->getImm() <= 2047 && cur_rvins->getImm() >= -2048)
                        continue;
                    if (cur_rvins->getUseLabel() == true)
                        continue;
                    if (OpTable[cur_rvins->getOpcode()].ins_formattype == RvOpInfo::I_type) {
                        //
                    } else if (OpTable[cur_rvins->getOpcode()].ins_formattype == RvOpInfo::S_type) {
                    }
                }
            }
        }
    }
}