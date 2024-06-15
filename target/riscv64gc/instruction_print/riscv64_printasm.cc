#include "riscv64_printer.h"
#include <assert.h>

bool isMemFormatOp(int opcode) {
    return opcode == RISCV_LB || opcode == RISCV_LBU || opcode == RISCV_LH || opcode == RISCV_LHU ||
           opcode == RISCV_LW || opcode == RISCV_LWU || opcode == RISCV_LD || opcode == RISCV_FLW ||
           opcode == RISCV_FLD || opcode == RISCV_FSW || opcode == RISCV_FSD;
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
        s << "." << current_func->getFunctionName() << ins->jmp_label_id;
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
        s << "." << current_func->getFunctionName() << ins.jmp_label_id;
    }
}

template <> void RiscV64Printer::printRVfield<MachineBaseOperand *>(MachineBaseOperand *op) {
    if (op->op_type == MachineBaseOperand::REG) {
        auto reg_op = (MachineRegister *)op;
        printRVfield(reg_op->reg);
    } else if (op->op_type == MachineBaseOperand::IMMI) {
        auto immi_op = (MachineImmediateInt *)op;
        s << immi_op->imm32;
    } else if (op->op_type == MachineBaseOperand::IMMF) {
        auto immf_op = (MachineImmediateFloat *)op;
        s << immf_op->fimm32;
    }
}

template <> void RiscV64Printer::printAsm<RiscV64Instruction *>(RiscV64Instruction *ins) {
    s << OpTable[ins->getOpcode()].name << "\t\t";
    if (strlen(OpTable[ins->getOpcode()].name) <= 3) {
        s << "\t";
    }
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
        if(ins->getOpcode() == RISCV_FCVT_W_S || ins->getOpcode() == RISCV_FCVT_WU_S){
            s << ",rtz";
        }
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
        if (!isMemFormatOp(ins->getOpcode())) {
            printRVfield(ins->getRs1());
            s << ",";
            if (ins->getUseLabel()) {
                printRVfield(ins->getLabel());
            } else {
                s << ins->getImm();
            }
        } else {
            if (ins->getUseLabel()) {
                printRVfield(ins->getLabel());
            } else {
                s << ins->getImm();
            }
            s << "(";
            printRVfield(ins->getRs1());
            s << ")";
        }
        s << "\n";
        return;
    case RvOpInfo::S_type:
        printRVfield(ins->getRs1());
        s << ",";
        if (ins->getUseLabel()) {
            printRVfield(ins->getLabel());
        } else {
            s << ins->getImm();
        }
        s << "(";
        printRVfield(ins->getRs2());
        s << ")\n";
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
        s << "\n";
        return;
    case RvOpInfo::CALL_type:
        s << ins->getLabel().name << "\n";
        return;
    }
    ERROR("Unexpected instruction format");
}

template <> void RiscV64Printer::printAsm<MachineCopyInstruction *>(MachineCopyInstruction *ins) {
    printRVfield(ins->GetDst());
    s << " = COPY ";
    printRVfield(ins->GetSrc());
    s << ", " << ins->GetCopyType().toString() << "\n";
}

template <> void RiscV64Printer::printAsm<MachinePhiInstruction *>(MachinePhiInstruction *ins) {
    Lazy("Phi Output");
    printRVfield(ins->GetResult());
    s << " = " << ins->GetResult().type.toString() << " PHI ";
    for (auto [label, op] : ins->GetPhiList()) {
        s << "[";
        printRVfield(op);
        s << ",%L" << label;
        s << "] ";
    }
    s << "\n";
}

template <> void RiscV64Printer::printMachineIR<RiscV64Instruction *>(RiscV64Instruction *ins) {
    TODO("Implement RiscV64Instruction::printMachineIR");
}

void RiscV64Printer::emit() {
    s << "\t.text\n\t.globl main\n";
    for (auto func : printee->functions) {
        current_func = func;
        // s << "\t.globl\t" << func->getFunctionName() << "\n";
        s << func->getFunctionName() << ":\n";
        // May use iterator instead of directly accessing vector<blocks> in future
        for (auto block : func->blocks) {
            s << "." << func->getFunctionName() << block->getLabelId() << ":\n";
            cur_block = block;
            for (auto ins : *block) {
                s << "\t";
                if (ins->arch == MachineBaseInstruction::RiscV) {
                    printAsm((RiscV64Instruction *)ins);
                } else if (ins->arch == MachineBaseInstruction::PHI) {
                    printAsm((MachinePhiInstruction *)ins);
                } else if (ins->arch == MachineBaseInstruction::COPY) {
                    printAsm((MachineCopyInstruction *)ins);
                } else if (ins->arch == MachineBaseInstruction::COMMENT) {
                    s << "# " << ((MachineComment *)ins)->GetComment();
                } else {
                    ERROR("Unexpected arch");
                }
            }
        }
    }
    s << "\t.data\n";
    for (auto global : printee->global_def) {
        if (global->GetOpcode() == GLOBAL_VAR) {
            auto global_ins = (GlobalVarDefineInstruction *)global;
            s << global_ins->name << ":\n";
            if (global_ins->type == I32) {
                if (global_ins->arval.dims.empty()) {
                    if (global_ins->init_val != nullptr) {
                        Assert(global_ins->init_val->GetOperandType() == BasicOperand::IMMI32);
                        auto imm_op = (ImmI32Operand *)global_ins->init_val;
                        s << "\t.word\t" << imm_op->GetIntImmVal() << "\n";
                    } else {
                        s << "\t.word\t0\n";
                    }
                } else {
                    int zero_cum = 0;
                    for (auto val : global_ins->arval.IntInitVals) {
                        if (val == 0) {
                            zero_cum += 4;
                        } else {
                            if (zero_cum != 0) {
                                s << "\t.zero\t" << zero_cum << "\n";
                                zero_cum = 0;
                            }
                            s << "\t.word\t" << val << "\n";
                        }
                    }
                    if (global_ins->arval.IntInitVals.empty()) {
                        int prod = 1;
                        for (auto dim : global_ins->arval.dims) {
                            prod *= dim;
                        }
                        s << "\t.zero\t" << prod * 4 << "\n";
                    }
                    if (zero_cum != 0) {
                        s << "\t.zero\t" << zero_cum << "\n";
                        zero_cum = 0;
                    }
                }
            } else if (global_ins->type == FLOAT32) {
                if (global_ins->arval.dims.empty()) {
                    if (global_ins->init_val != nullptr) {
                        Assert(global_ins->init_val->GetOperandType() == BasicOperand::IMMF32);
                        auto imm_op = (ImmF32Operand *)global_ins->init_val;
                        auto immf = imm_op->GetFloatVal();
                        s << "\t.word\t" << *(int *)&immf << "\n";
                    } else {
                        s << "\t.word\t0\n";
                    }
                } else {
                    int zero_cum = 0;
                    for (auto val : global_ins->arval.FloatInitVals) {
                        if (val == 0) {
                            zero_cum += 4;
                        } else {
                            if (zero_cum != 0) {
                                s << "\t.zero\t" << zero_cum << "\n";
                                zero_cum = 0;
                            }
                            s << "\t.word\t" << *(int *)&val << "\n";
                        }
                    }
                    if (global_ins->arval.FloatInitVals.empty()) {
                        int prod = 1;
                        for (auto dim : global_ins->arval.dims) {
                            prod *= dim;
                        }
                        s << "\t.zero\t" << prod * 4 << "\n";
                    }
                    if (zero_cum != 0) {
                        s << "\t.zero\t" << zero_cum << "\n";
                        zero_cum = 0;
                    }
                }
            }
        } else if (global->GetOpcode() == GLOBAL_STR) {
            auto str_ins = (GlobalStringConstInstruction *)global;
            TODO("GLOBAL STR CONST");
            Lazy("Not tested");
            s << "\t.asciz\t"
              << "\"" << str_ins->str_val << "\""
              << "\n";
        } else {
            ERROR("Unexpected global define instruction");
        }
    }
//     s<<"	.option nopic\n\
// 	.attribute unaligned_access, 0\n\
// 	.attribute stack_align, 16\n\
// 	.text\n\
// 	.align	1\n\
// 	.globl	__pthread_test_callee\n\
// 	.type	__pthread_test_callee, @function\n\
// __pthread_test_callee:\n\
// 	addi	sp,sp,-32\n\
// 	sd	s0,24(sp)\n\
// 	addi	s0,sp,32\n\
// 	sd	a0,-24(s0)\n\
// 	li	a5,0\n\
// 	mv	a0,a5\n\
// 	ld	s0,24(sp)\n\
// 	addi	sp,sp,32\n\
// 	jr	ra\n\
// 	.size	__pthread_test_callee, .-__pthread_test_callee\n\
// 	.align	1\n\
// 	.globl	__pthread_test_call\n\
// 	.type	__pthread_test_call, @function\n\
// __pthread_test_call:\n\
// 	addi	sp,sp,-32\n\
// 	sd	ra,24(sp)\n\
// 	sd	s0,16(sp)\n\
// 	addi	s0,sp,32\n\
// 	addi	a4,s0,-24\n\
// 	li	a3,0\n\
// 	lui	a5,%hi(__pthread_test_callee)\n\
// 	addi	a2,a5,%lo(__pthread_test_callee)\n\
// 	li	a1,0\n\
// 	mv	a0,a4\n\
// 	call	pthread_create\n\
// 	ld	a5,-24(s0)\n\
// 	li	a1,0\n\
// 	mv	a0,a5\n\
// 	call	pthread_join\n\
// 	nop\n\
// 	ld	ra,24(sp)\n\
// 	ld	s0,16(sp)\n\
// 	addi	sp,sp,32\n\
// 	jr	ra\n\
// 	.size	__pthread_test_call, .-__pthread_test_call\n\
// 	.align	1";
    
}