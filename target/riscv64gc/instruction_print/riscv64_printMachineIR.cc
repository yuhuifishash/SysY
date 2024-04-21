#include "riscv64_printer.h"
#include <assert.h>
void RiscV64Printer::printMachineIR() {
    for (auto func : printee->functions) {
        current_func = func;
        s << func->getFunctionName() << ":\n";
        for (auto block : func->blocks) {
            s << func->getFunctionName() << block->getLabelId() << ":\n";
            cur_block = block;
            for (auto ins : *block) {
                s << "\t";

                if (ins->arch == MachineBaseInstruction::RiscV) {
                    printMachineIR((RiscV64Instruction *)ins);
                } else if (ins->arch == MachineBaseInstruction::PHI) {
                    TODO("Machine PHI Print");
                } else if (ins->arch == MachineBaseInstruction::COPY) {
                    TODO("Machine COPY Print");
                } else {
                    ERROR("Unexpected arch");
                }
            }
        }
    }
}