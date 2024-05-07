#include "riscv64_printer.h"
#include <assert.h>
void RiscV64Printer::emit() {
    for (auto func : printee->functions) {
        current_func = func;
        s << "\t.globl\t" << func->getFunctionName() << "\n";
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
                    TODO("Machine PHI PrintAsm");
                } else if (ins->arch == MachineBaseInstruction::COPY) {
                    // TODO("Machine COPY PrintAsm");
                    auto copy_ins = (MachineCopyInstruction *)ins;
                    copy_ins->output(s);
                } else {
                    ERROR("Unexpected arch");
                }
            }
        }
    }
    for (auto global : printee->global_def) {
    }
}

template <> void RiscV64Printer::printRVfield<Register *>(Register *printee) {
    if (!printee->is_virtual) {
        s << RiscV64Registers[printee->reg_no].name;
    } else {
        s << "%" << printee->reg_no;
    }
}

template <> void RiscV64Printer::printRVfield<Register>(Register printee) {
    if (!printee.is_virtual) {
        s << RiscV64Registers[printee.reg_no].name;
    } else {
        s << "%" << printee.reg_no;
    }
}

template <> void RiscV64Printer::printRVfield<RiscVLabel *>(RiscVLabel *ins) {
    if (ins->is_data_address) {
        // Just an example
        // May change in future
        // s << ".LPIC" << ins->mem_label_id;
        if (ins->is_hi) {
            s << "%hi(" << ins->name << ")";
        } else {
            s << "%lo(" << ins->name << ")";
        }
    } else {
        s << current_func->getFunctionName() << ins->jmp_label_id;
    }
}

template <> void RiscV64Printer::printRVfield<RiscVLabel>(RiscVLabel ins) {
    if (ins.is_data_address) {
        // Just an example
        // May change in future
        // s << ".LPIC" << ins->mem_label_id;
        if (ins.is_hi) {
            s << "%hi(" << ins.name << ")";
        } else {
            s << "%lo(" << ins.name << ")";
        }
    } else {
        s << current_func->getFunctionName() << ins.jmp_label_id;
    }
}

void RiscV64Printer::printAsm(RiscV64Instruction *ins) {
    s << OpTable[ins->getOpcode()].name << " ";
    switch (OpTable[ins->getOpcode()].ins_formattype) {
    case RvOpInfo::R_type:
        printRVfield(ins->getRd());
        s << ",";
        printRVfield(ins->getRs1());
        s << ",";
        printRVfield(ins->getRs2());
        s << "\n";
        return;
    case RvOpInfo::R2_type:
        printRVfield(ins->getRd());
        s << ",";
        printRVfield(ins->getRs1());
        s << "\n";
        return;
    case RvOpInfo::R4_type:
        printRVfield(ins->getRd());
        s << ",";
        printRVfield(ins->getRs1());
        s << ",";
        printRVfield(ins->getRs2());
        s << ",";
        printRVfield(ins->getRs3());
        s << "\n";
        return;
    case RvOpInfo::I_type:
        printRVfield(ins->getRd());
        s << ",";
        printRVfield(ins->getRs1());
        s << ",";
        if (ins->getUseLabel()) {
            printRVfield(ins->getLabel());
        } else {
            s << ins->getImm();
        }
        // s<<ins->getImm();
        s << "\n";
        return;
    case RvOpInfo::S_type:
        printRVfield(ins->getRs1());
        s << ",";
        printRVfield(ins->getRs2());
        s << ",";
        if (ins->getUseLabel()) {
            printRVfield(ins->getLabel());
        } else {
            s << ins->getImm();
        }
        // s<<ins->getImm();
        s << "\n";
        return;
    case RvOpInfo::B_type:
        printRVfield(ins->getRs1());
        s << ",";
        printRVfield(ins->getRs2());
        s << ",";
        if (ins->getUseLabel()) {
            printRVfield(ins->getLabel());
        } else {
            s << ins->getImm();
        }
        // printRVfield(ins->getLabel());
        s << "\n";
        return;
    case RvOpInfo::U_type:
        printRVfield(ins->getRd());
        s << ",";
        if (ins->getUseLabel()) {
            printRVfield(ins->getLabel());
        } else {
            s << ins->getImm();
        }
        // s<<ins->getImm();
        s << "\n";
        return;
    case RvOpInfo::J_type:
        printRVfield(ins->getRd());
        s << ",";
        if (ins->getUseLabel()) {
            printRVfield(ins->getLabel());
        } else {
            s << ins->getImm();
        }
        // printRVfield(ins->getLabel());
        s << "\n";
        return;
    }
    ERROR("Unexpected instruction format");
    assert(false);
}
void RiscV64Printer::printMachineIR(RiscV64Instruction *ins) { TODO("Implement RiscV64Instruction::printMachineIR"); }