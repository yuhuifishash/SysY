#include "riscv64_printer.h"
#include <assert.h>
void RiscV64Printer::emit() {
    for (auto func : printee->functions) {
        current_func = func;
        s << func->getFunctionName() << ":\n";
        // May use iterator instead of directly accessing vector<blocks> in future
        for (auto block : func->blocks) {
            s << func->getFunctionName() << block->getLabelId() << ":\n";
            cur_block = block;
            for (auto ins : *block) {
                s << "\t";

                if (ins->arch == MachineBaseInstruction::RiscV) {
                    printAsm((RiscV64Instruction *)ins);
                } else if (ins->arch == MachineBaseInstruction::PHI) {
                }
            }
        }
    }
}
template <> void RiscV64Printer::printRVfield<Register *>(Register *printee) {
    if (!printee->is_virtual) {
        s << RiscV64RegDescriptor[printee->reg_no].name;
    } else {
        s << "%" << printee->reg_no;
    }
}

template <> void RiscV64Printer::printRVfield<Label *>(Label *ins) {
    if (ins->is_data_address) {
        // Just an example
        // May change in future
        s << ".LPIC" << ins->mem_label_id;
    } else {
        s << current_func->getFunctionName() << ins->jmp_label_id;
    }
}

void RiscV64Printer::printAsm(RiscV64Instruction *ins) {
    s << OpTable[ins->getOpcode()].name << " ";
    switch (OpTable[ins->getOpcode()].ins_formattype) {
    case RvOpInfo::R_type:
        return;
    case RvOpInfo::I_type:
        return;
    case RvOpInfo::S_type:
        return;
    case RvOpInfo::B_type:
        return;
    case RvOpInfo::U_type:
        return;
    case RvOpInfo::J_type:
        return;
    }
    assert(false);
}
void RiscV64Printer::printMachineIR(RiscV64Instruction *ins) {}