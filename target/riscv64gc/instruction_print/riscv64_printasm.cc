#include "riscv64_printer.h"
#include <assert.h>

const bool print_comment = true;
// const bool print_comment = false;

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
        if (ins->getOpcode() == RISCV_FCVT_W_S || ins->getOpcode() == RISCV_FCVT_WU_S) {
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
    // Lazy("Phi Output");
    s << "# ";
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
        // auto block = func->blocks[0];
        std::map<int, int> vsd;
        std::stack<int> stack;
        stack.push(0);
        while (!stack.empty()) {
            int block_id = stack.top();
            vsd[block_id] = 1;
            stack.pop();
            auto block = func->getMachineCFG()->GetNodeByBlockId(block_id)->Mblock;
            s << "." << func->getFunctionName() << block_id << ":\n";
            cur_block = block;
            for (auto ins : *block) {
                if (ins->arch == MachineBaseInstruction::RiscV) {
                    auto cur_rvins = (RiscV64Instruction *)ins;
                    if (OpTable[cur_rvins->getOpcode()].ins_formattype == RvOpInfo::B_type) {
                        auto dest_label = cur_rvins->getLabel().jmp_label_id;
                        if (vsd.find(dest_label) == vsd.end()) {
                            vsd[dest_label] = 1;
                            stack.push(dest_label);
                        }
                    }
                    if (cur_rvins->getOpcode() == RISCV_JAL && cur_rvins->getUseLabel() == true &&
                        cur_rvins->getRd() == GetPhysicalReg(RISCV_x0)) {
                        auto dest_label = cur_rvins->getLabel().jmp_label_id;
                        if (vsd.find(dest_label) == vsd.end()) {
                            vsd[dest_label] = 1;
                            stack.push(dest_label);
                            continue;
                        }
                    }
                    s << "\t";
                    printAsm((RiscV64Instruction *)ins);
                } else if (ins->arch == MachineBaseInstruction::PHI) {
                    if (::print_comment) {
                        s << "\t";
                        printAsm((MachinePhiInstruction *)ins);
                    }
                } else if (ins->arch == MachineBaseInstruction::COPY) {
                    s << "\t";
                    printAsm((MachineCopyInstruction *)ins);
                } else if (ins->arch == MachineBaseInstruction::COMMENT) {
                    if (::print_comment) {
                        s << "\t";
                        s << "# " << ((MachineComment *)ins)->GetComment();
                    }
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
    s << "\n\n	.attribute stack_align, 16\n\
	.text\n\
	.align	1\n\
	.globl	__pthread_test_callee\n\
	.type	__pthread_test_callee, @function\n\
__pthread_test_callee:\n\
	addi	sp,sp,-32\n\
	sd	s0,24(sp)\n\
	addi	s0,sp,32\n\
	sd	a0,-24(s0)\n\
	li	a5,0\n\
	mv	a0,a5\n\
	ld	s0,24(sp)\n\
	addi	sp,sp,32\n\
	jr	ra\n\
	.size	__pthread_test_callee, .-__pthread_test_callee\n\
	.align	1\n\
	.globl	__pthread_test_call\n\
	.type	__pthread_test_call, @function\n\
__pthread_test_call:\n\
	addi	sp,sp,-32\n\
	sd	ra,24(sp)\n\
	sd	s0,16(sp)\n\
	addi	s0,sp,32\n\
	addi	a4,s0,-24\n\
	li	a3,0\n\
	lui	a5,%hi(__pthread_test_callee)\n\
	addi	a2,a5,%lo(__pthread_test_callee)\n\
	li	a1,0\n\
	mv	a0,a4\n\
	call	pthread_create\n\
	ld	a5,-24(s0)\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_join\n\
	nop\n\
	ld	ra,24(sp)\n\
	ld	s0,16(sp)\n\
	addi	sp,sp,32\n\
	jr	ra\n\
	.size	__pthread_test_call, .-__pthread_test_call\n\
	.align	1\n\
	.globl	___parallel_loop_constant_111\n\
	.type	___parallel_loop_constant_111, @function\n\
___parallel_loop_constant_111:\n\
	addi	sp,sp,-192\n\
	sd	ra,168(sp)\n\
	sd	s0,160(sp)\n\
	sd	s1,152(sp)\n\
	sd	s2,144(sp)\n\
	sd	s3,136(sp)\n\
	addi	s0,sp,176\n\
	sd	a0,-136(s0)\n\
	sd	a1,-144(s0)\n\
	sd	a2,-152(s0)\n\
	sd	a3,-160(s0)\n\
	mv	a3,a4\n\
	mv	a4,a5\n\
	sd	a6,0(s0)\n\
	sd	a7,8(s0)\n\
	mv	a5,a3\n\
	sw	a5,-164(s0)\n\
	mv	a5,a4\n\
	sw	a5,-168(s0)\n\
	mv	a5,sp\n\
	mv	s1,a5\n\
	lw	a5,-164(s0)\n\
	sext.w	a5,a5\n\
	bne	a5,zero,.L5\n\
	lw	a5,-168(s0)\n\
	sext.w	a5,a5\n\
	bne	a5,zero,.L5\n\
	ld	a4,-136(s0)\n\
	addi	a5,s0,-120\n\
	li	a3,0\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	ld	a4,-144(s0)\n\
	addi	a5,s0,-120\n\
	addi	a5,a5,8\n\
	li	a3,0\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	ld	a4,-152(s0)\n\
	addi	a5,s0,-120\n\
	addi	a5,a5,16\n\
	li	a3,0\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	ld	a4,-160(s0)\n\
	addi	a5,s0,-120\n\
	addi	a5,a5,24\n\
	li	a3,0\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	sw	zero,-52(s0)\n\
	j	.L6\n\
.L7:\n\
	lw	a5,-52(s0)\n\
	slli	a5,a5,3\n\
	addi	a5,a5,-48\n\
	add	a5,a5,s0\n\
	ld	a5,-72(a5)\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_join\n\
	lw	a5,-52(s0)\n\
	addiw	a5,a5,1\n\
	sw	a5,-52(s0)\n\
.L6:\n\
	lw	a5,-52(s0)\n\
	sext.w	a4,a5\n\
	li	a5,3\n\
	ble	a4,a5,.L7\n\
	mv	sp,s1\n\
	j	.L4\n\
.L5:\n\
	lw	a5,-168(s0)\n\
	slliw	a5,a5,1\n\
	sext.w	a5,a5\n\
	lw	a4,-164(s0)\n\
	addw	a5,a4,a5\n\
	sext.w	a5,a5\n\
	slliw	a5,a5,2\n\
	sw	a5,-64(s0)\n\
	lw	a5,-64(s0)\n\
	mv	a4,a5\n\
	addi	a4,a4,-1\n\
	sd	a4,-72(s0)\n\
	mv	a4,a5\n\
	mv	s2,a4\n\
	li	s3,0\n\
	srli	a4,s2,58\n\
	slli	t4,s3,6\n\
	or	t4,a4,t4\n\
	slli	t3,s2,6\n\
	mv	a4,a5\n\
	mv	t5,a4\n\
	li	t6,0\n\
	srli	a4,t5,58\n\
	slli	t2,t6,6\n\
	or	t2,a4,t2\n\
	slli	t1,t5,6\n\
	slli	a5,a5,3\n\
	addi	a5,a5,15\n\
	srli	a5,a5,4\n\
	slli	a5,a5,4\n\
	sub	sp,sp,a5\n\
	mv	a5,sp\n\
	addi	a5,a5,7\n\
	srli	a5,a5,3\n\
	slli	a5,a5,3\n\
	sd	a5,-80(s0)\n\
	addi	a5,s0,16\n\
	sd	a5,-176(s0)\n\
	ld	a5,-176(s0)\n\
	addi	a5,a5,-16\n\
	sd	a5,-88(s0)\n\
	sw	zero,-56(s0)\n\
	j	.L9\n\
.L10:\n\
	ld	a5,-88(s0)\n\
	addi	a4,a5,8\n\
	sd	a4,-88(s0)\n\
	ld	a4,0(a5)\n\
	ld	a3,-80(s0)\n\
	lw	a5,-56(s0)\n\
	slli	a5,a5,3\n\
	add	a5,a3,a5\n\
	sd	a4,0(a5)\n\
	lw	a5,-56(s0)\n\
	addiw	a5,a5,1\n\
	sw	a5,-56(s0)\n\
.L9:\n\
	lw	a5,-56(s0)\n\
	mv	a4,a5\n\
	lw	a5,-64(s0)\n\
	sext.w	a4,a4\n\
	sext.w	a5,a5\n\
	blt	a4,a5,.L10\n\
	ld	a4,-136(s0)\n\
	addi	a5,s0,-120\n\
	ld	a3,-80(s0)\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	ld	a4,-144(s0)\n\
	addi	a5,s0,-120\n\
	addi	a5,a5,8\n\
	ld	a3,-80(s0)\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	ld	a4,-152(s0)\n\
	addi	a5,s0,-120\n\
	addi	a5,a5,16\n\
	ld	a3,-80(s0)\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	ld	a4,-160(s0)\n\
	addi	a5,s0,-120\n\
	addi	a5,a5,24\n\
	ld	a3,-80(s0)\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	sw	zero,-60(s0)\n\
	j	.L11\n\
.L12:\n\
	lw	a5,-60(s0)\n\
	slli	a5,a5,3\n\
	addi	a5,a5,-48\n\
	add	a5,a5,s0\n\
	ld	a5,-72(a5)\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_join\n\
	lw	a5,-60(s0)\n\
	addiw	a5,a5,1\n\
	sw	a5,-60(s0)\n\
.L11:\n\
	lw	a5,-60(s0)\n\
	sext.w	a4,a5\n\
	li	a5,3\n\
	ble	a4,a5,.L12\n\
	mv	sp,s1\n\
.L4:\n\
	addi	sp,s0,-176\n\
	ld	ra,168(sp)\n\
	ld	s0,160(sp)\n\
	ld	s1,152(sp)\n\
	ld	s2,144(sp)\n\
	ld	s3,136(sp)\n\
	addi	sp,sp,192\n\
	jr	ra\n\
	.size	___parallel_loop_constant_111, .-___parallel_loop_constant_111\n\
	.align	1\n\
	.globl	___parallel_loop_constant_000\n\
	.type	___parallel_loop_constant_000, @function\n\
___parallel_loop_constant_000:\n\
	addi	sp,sp,-512\n\
	sd	ra,488(sp)\n\
	sd	s0,480(sp)\n\
	sd	s1,472(sp)\n\
	sd	s2,464(sp)\n\
	sd	s3,456(sp)\n\
	sd	s4,448(sp)\n\
	sd	s5,440(sp)\n\
	sd	s6,432(sp)\n\
	sd	s7,424(sp)\n\
	sd	s8,416(sp)\n\
	sd	s9,408(sp)\n\
	sd	s10,400(sp)\n\
	sd	s11,392(sp)\n\
	addi	s0,sp,496\n\
	sd	a0,-264(s0)\n\
	mv	a0,a5\n\
	sd	a6,0(s0)\n\
	sd	a7,8(s0)\n\
	mv	a5,a1\n\
	sw	a5,-268(s0)\n\
	mv	a5,a2\n\
	sw	a5,-272(s0)\n\
	mv	a5,a3\n\
	sw	a5,-276(s0)\n\
	mv	a5,a4\n\
	sw	a5,-280(s0)\n\
	mv	a5,a0\n\
	sw	a5,-284(s0)\n\
	mv	a5,sp\n\
	sd	a5,-488(s0)\n\
	lw	a5,-284(s0)\n\
	slliw	a5,a5,1\n\
	sext.w	a4,a5\n\
	lw	a5,-280(s0)\n\
	addw	a5,a5,a4\n\
	sext.w	a5,a5\n\
	slliw	a5,a5,2\n\
	sw	a5,-124(s0)\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,16\n\
	sext.w	a4,a5\n\
	mv	a5,a4\n\
	addi	a5,a5,-1\n\
	sd	a5,-136(s0)\n\
	mv	a5,a4\n\
	mv	t5,a5\n\
	li	t6,0\n\
	srli	a5,t5,58\n\
	slli	t2,t6,6\n\
	or	t2,a5,t2\n\
	slli	t1,t5,6\n\
	mv	a5,a4\n\
	mv	s2,a5\n\
	li	s3,0\n\
	srli	a5,s2,58\n\
	slli	t4,s3,6\n\
	or	t4,a5,t4\n\
	slli	t3,s2,6\n\
	mv	a5,a4\n\
	slli	a5,a5,3\n\
	addi	a5,a5,15\n\
	srli	a5,a5,4\n\
	slli	a5,a5,4\n\
	sub	sp,sp,a5\n\
	mv	a5,sp\n\
	addi	a5,a5,7\n\
	srli	a5,a5,3\n\
	slli	a5,a5,3\n\
	sd	a5,-144(s0)\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,16\n\
	sext.w	a4,a5\n\
	mv	a5,a4\n\
	addi	a5,a5,-1\n\
	sd	a5,-152(s0)\n\
	mv	a5,a4\n\
	sd	a5,-304(s0)\n\
	sd	zero,-296(s0)\n\
	ld	a5,-304(s0)\n\
	srli	a5,a5,58\n\
	ld	a3,-296(s0)\n\
	slli	s5,a3,6\n\
	or	s5,a5,s5\n\
	ld	a5,-304(s0)\n\
	slli	s4,a5,6\n\
	mv	a5,a4\n\
	sd	a5,-320(s0)\n\
	sd	zero,-312(s0)\n\
	ld	a5,-320(s0)\n\
	srli	a5,a5,58\n\
	ld	a3,-312(s0)\n\
	slli	a3,a3,6\n\
	sd	a3,-424(s0)\n\
	ld	a3,-424(s0)\n\
	or	a5,a5,a3\n\
	sd	a5,-424(s0)\n\
	ld	a5,-320(s0)\n\
	slli	a5,a5,6\n\
	sd	a5,-432(s0)\n\
	mv	a5,a4\n\
	slli	a5,a5,3\n\
	addi	a5,a5,15\n\
	srli	a5,a5,4\n\
	slli	a5,a5,4\n\
	sub	sp,sp,a5\n\
	mv	a5,sp\n\
	addi	a5,a5,7\n\
	srli	a5,a5,3\n\
	slli	a5,a5,3\n\
	sd	a5,-160(s0)\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,16\n\
	sext.w	a5,a5\n\
	mv	a4,a5\n\
	addi	a4,a4,-1\n\
	sd	a4,-168(s0)\n\
	mv	a4,a5\n\
	sd	a4,-336(s0)\n\
	sd	zero,-328(s0)\n\
	ld	a4,-336(s0)\n\
	srli	a4,a4,58\n\
	ld	a3,-328(s0)\n\
	slli	a3,a3,6\n\
	sd	a3,-440(s0)\n\
	ld	a3,-440(s0)\n\
	or	a4,a4,a3\n\
	sd	a4,-440(s0)\n\
	ld	a4,-336(s0)\n\
	slli	a4,a4,6\n\
	sd	a4,-448(s0)\n\
	mv	a4,a5\n\
	sd	a4,-352(s0)\n\
	sd	zero,-344(s0)\n\
	ld	a4,-352(s0)\n\
	srli	a4,a4,58\n\
	ld	a3,-344(s0)\n\
	slli	a3,a3,6\n\
	sd	a3,-456(s0)\n\
	ld	a3,-456(s0)\n\
	or	a4,a4,a3\n\
	sd	a4,-456(s0)\n\
	ld	a4,-352(s0)\n\
	slli	a4,a4,6\n\
	sd	a4,-464(s0)\n\
	slli	a5,a5,3\n\
	addi	a5,a5,15\n\
	srli	a5,a5,4\n\
	slli	a5,a5,4\n\
	sub	sp,sp,a5\n\
	mv	a5,sp\n\
	addi	a5,a5,7\n\
	srli	a5,a5,3\n\
	slli	a5,a5,3\n\
	sd	a5,-176(s0)\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,16\n\
	sext.w	a5,a5\n\
	mv	a4,a5\n\
	addi	a4,a4,-1\n\
	sd	a4,-184(s0)\n\
	mv	a4,a5\n\
	sd	a4,-368(s0)\n\
	sd	zero,-360(s0)\n\
	ld	a4,-368(s0)\n\
	srli	a4,a4,58\n\
	ld	a3,-360(s0)\n\
	slli	a3,a3,6\n\
	sd	a3,-472(s0)\n\
	ld	a3,-472(s0)\n\
	or	a4,a4,a3\n\
	sd	a4,-472(s0)\n\
	ld	a4,-368(s0)\n\
	slli	a4,a4,6\n\
	sd	a4,-480(s0)\n\
	mv	a4,a5\n\
	sd	a4,-384(s0)\n\
	sd	zero,-376(s0)\n\
	ld	a4,-384(s0)\n\
	srli	a4,a4,58\n\
	ld	a3,-376(s0)\n\
	slli	s11,a3,6\n\
	or	s11,a4,s11\n\
	ld	a4,-384(s0)\n\
	slli	s10,a4,6\n\
	slli	a5,a5,3\n\
	addi	a5,a5,15\n\
	srli	a5,a5,4\n\
	slli	a5,a5,4\n\
	sub	sp,sp,a5\n\
	mv	a5,sp\n\
	addi	a5,a5,7\n\
	srli	a5,a5,3\n\
	slli	a5,a5,3\n\
	sd	a5,-192(s0)\n\
	ld	a5,-144(s0)\n\
	sw	zero,0(a5)\n\
	ld	a5,-144(s0)\n\
	addi	a5,a5,4\n\
	lw	a4,-268(s0)\n\
	sw	a4,0(a5)\n\
	ld	a5,-144(s0)\n\
	addi	a5,a5,8\n\
	lw	a4,-272(s0)\n\
	sw	a4,0(a5)\n\
	lw	a5,-124(s0)\n\
	sext.w	a5,a5\n\
	beq	a5,zero,.L14\n\
	mv	a5,sp\n\
	mv	s1,a5\n\
	lw	a5,-124(s0)\n\
	mv	a4,a5\n\
	addi	a4,a4,-1\n\
	sd	a4,-200(s0)\n\
	mv	a4,a5\n\
	sd	a4,-400(s0)\n\
	sd	zero,-392(s0)\n\
	ld	a4,-400(s0)\n\
	srli	a4,a4,58\n\
	ld	a3,-392(s0)\n\
	slli	s9,a3,6\n\
	or	s9,a4,s9\n\
	ld	a4,-400(s0)\n\
	slli	s8,a4,6\n\
	mv	a4,a5\n\
	sd	a4,-416(s0)\n\
	sd	zero,-408(s0)\n\
	ld	a4,-416(s0)\n\
	srli	a4,a4,58\n\
	ld	a3,-408(s0)\n\
	slli	s7,a3,6\n\
	or	s7,a4,s7\n\
	ld	a4,-416(s0)\n\
	slli	s6,a4,6\n\
	slli	a5,a5,3\n\
	addi	a5,a5,15\n\
	srli	a5,a5,4\n\
	slli	a5,a5,4\n\
	sub	sp,sp,a5\n\
	mv	a5,sp\n\
	addi	a5,a5,7\n\
	srli	a5,a5,3\n\
	slli	a5,a5,3\n\
	sd	a5,-208(s0)\n\
	addi	a5,s0,16\n\
	sd	a5,-304(s0)\n\
	ld	a5,-304(s0)\n\
	addi	a5,a5,-16\n\
	sd	a5,-216(s0)\n\
	sw	zero,-116(s0)\n\
	j	.L15\n\
.L16:\n\
	ld	a5,-216(s0)\n\
	addi	a4,a5,8\n\
	sd	a4,-216(s0)\n\
	ld	a4,0(a5)\n\
	ld	a3,-208(s0)\n\
	lw	a5,-116(s0)\n\
	slli	a5,a5,3\n\
	add	a5,a3,a5\n\
	sd	a4,0(a5)\n\
	lw	a5,-116(s0)\n\
	addiw	a5,a5,1\n\
	sw	a5,-116(s0)\n\
.L15:\n\
	lw	a5,-116(s0)\n\
	mv	a4,a5\n\
	lw	a5,-124(s0)\n\
	sext.w	a4,a4\n\
	sext.w	a5,a5\n\
	blt	a4,a5,.L16\n\
	ld	a5,-144(s0)\n\
	addi	a5,a5,16\n\
	lw	a4,-124(s0)\n\
	mv	a2,a4\n\
	ld	a1,-208(s0)\n\
	mv	a0,a5\n\
	call	memcpy\n\
	mv	sp,s1\n\
.L14:\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,16\n\
	sext.w	a5,a5\n\
	mv	a2,a5\n\
	ld	a1,-144(s0)\n\
	ld	a0,-160(s0)\n\
	call	memcpy\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,16\n\
	sext.w	a5,a5\n\
	mv	a2,a5\n\
	ld	a1,-144(s0)\n\
	ld	a0,-176(s0)\n\
	call	memcpy\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,16\n\
	sext.w	a5,a5\n\
	mv	a2,a5\n\
	ld	a1,-144(s0)\n\
	ld	a0,-192(s0)\n\
	call	memcpy\n\
	ld	a5,-160(s0)\n\
	li	a4,1\n\
	sw	a4,0(a5)\n\
	ld	a5,-176(s0)\n\
	li	a4,2\n\
	sw	a4,0(a5)\n\
	ld	a5,-192(s0)\n\
	li	a4,3\n\
	sw	a4,0(a5)\n\
	ld	a4,-264(s0)\n\
	addi	a5,s0,-248\n\
	ld	a3,-144(s0)\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	ld	a4,-264(s0)\n\
	addi	a5,s0,-248\n\
	addi	a5,a5,8\n\
	ld	a3,-160(s0)\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	ld	a4,-264(s0)\n\
	addi	a5,s0,-248\n\
	addi	a5,a5,16\n\
	ld	a3,-176(s0)\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	ld	a4,-264(s0)\n\
	addi	a5,s0,-248\n\
	addi	a5,a5,24\n\
	ld	a3,-192(s0)\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	sw	zero,-120(s0)\n\
	j	.L17\n\
.L18:\n\
	lw	a5,-120(s0)\n\
	slli	a5,a5,3\n\
	addi	a5,a5,-112\n\
	add	a5,a5,s0\n\
	ld	a5,-136(a5)\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_join\n\
	lw	a5,-120(s0)\n\
	addiw	a5,a5,1\n\
	sw	a5,-120(s0)\n\
.L17:\n\
	lw	a5,-120(s0)\n\
	sext.w	a4,a5\n\
	li	a5,3\n\
	ble	a4,a5,.L18\n\
	ld	sp,-488(s0)\n\
	nop\n\
	addi	sp,s0,-496\n\
	ld	ra,488(sp)\n\
	ld	s0,480(sp)\n\
	ld	s1,472(sp)\n\
	ld	s2,464(sp)\n\
	ld	s3,456(sp)\n\
	ld	s4,448(sp)\n\
	ld	s5,440(sp)\n\
	ld	s6,432(sp)\n\
	ld	s7,424(sp)\n\
	ld	s8,416(sp)\n\
	ld	s9,408(sp)\n\
	ld	s10,400(sp)\n\
	ld	s11,392(sp)\n\
	addi	sp,sp,512\n\
	jr	ra\n\
	.size	___parallel_loop_constant_000, .-___parallel_loop_constant_000\n\
	.align	1\n\
	.globl	___parallel_loop_constant_100\n\
	.type	___parallel_loop_constant_100, @function\n\
___parallel_loop_constant_100:\n\
	addi	sp,sp,-512\n\
	sd	ra,472(sp)\n\
	sd	s0,464(sp)\n\
	sd	s1,456(sp)\n\
	sd	s2,448(sp)\n\
	sd	s3,440(sp)\n\
	sd	s4,432(sp)\n\
	sd	s5,424(sp)\n\
	sd	s6,416(sp)\n\
	sd	s7,408(sp)\n\
	sd	s8,400(sp)\n\
	sd	s9,392(sp)\n\
	sd	s10,384(sp)\n\
	sd	s11,376(sp)\n\
	addi	s0,sp,480\n\
	sd	a0,-264(s0)\n\
	sd	a5,8(s0)\n\
	sd	a6,16(s0)\n\
	sd	a7,24(s0)\n\
	mv	a5,a1\n\
	sw	a5,-268(s0)\n\
	mv	a5,a2\n\
	sw	a5,-272(s0)\n\
	mv	a5,a3\n\
	sw	a5,-276(s0)\n\
	mv	a5,a4\n\
	sw	a5,-280(s0)\n\
	mv	a5,sp\n\
	sd	a5,-288(s0)\n\
	lw	a5,-280(s0)\n\
	slliw	a5,a5,1\n\
	sext.w	a4,a5\n\
	lw	a5,-276(s0)\n\
	addw	a5,a5,a4\n\
	sext.w	a5,a5\n\
	slliw	a5,a5,2\n\
	sw	a5,-124(s0)\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,12\n\
	sext.w	a4,a5\n\
	mv	a5,a4\n\
	addi	a5,a5,-1\n\
	sd	a5,-136(s0)\n\
	mv	a5,a4\n\
	mv	t5,a5\n\
	li	t6,0\n\
	srli	a5,t5,58\n\
	slli	t2,t6,6\n\
	or	t2,a5,t2\n\
	slli	t1,t5,6\n\
	mv	a5,a4\n\
	mv	s2,a5\n\
	li	s3,0\n\
	srli	a5,s2,58\n\
	slli	t4,s3,6\n\
	or	t4,a5,t4\n\
	slli	t3,s2,6\n\
	mv	a5,a4\n\
	slli	a5,a5,3\n\
	addi	a5,a5,15\n\
	srli	a5,a5,4\n\
	slli	a5,a5,4\n\
	sub	sp,sp,a5\n\
	mv	a5,sp\n\
	addi	a5,a5,7\n\
	srli	a5,a5,3\n\
	slli	a5,a5,3\n\
	sd	a5,-144(s0)\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,12\n\
	sext.w	a4,a5\n\
	mv	a5,a4\n\
	addi	a5,a5,-1\n\
	sd	a5,-152(s0)\n\
	mv	a5,a4\n\
	sd	a5,-304(s0)\n\
	sd	zero,-296(s0)\n\
	ld	a5,-304(s0)\n\
	srli	a5,a5,58\n\
	ld	a3,-296(s0)\n\
	slli	s5,a3,6\n\
	or	s5,a5,s5\n\
	ld	a5,-304(s0)\n\
	slli	s4,a5,6\n\
	mv	a5,a4\n\
	sd	a5,-320(s0)\n\
	sd	zero,-312(s0)\n\
	ld	a5,-320(s0)\n\
	srli	a5,a5,58\n\
	ld	a3,-312(s0)\n\
	slli	a3,a3,6\n\
	sd	a3,-424(s0)\n\
	ld	a3,-424(s0)\n\
	or	a5,a5,a3\n\
	sd	a5,-424(s0)\n\
	ld	a5,-320(s0)\n\
	slli	a5,a5,6\n\
	sd	a5,-432(s0)\n\
	mv	a5,a4\n\
	slli	a5,a5,3\n\
	addi	a5,a5,15\n\
	srli	a5,a5,4\n\
	slli	a5,a5,4\n\
	sub	sp,sp,a5\n\
	mv	a5,sp\n\
	addi	a5,a5,7\n\
	srli	a5,a5,3\n\
	slli	a5,a5,3\n\
	sd	a5,-160(s0)\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,12\n\
	sext.w	a5,a5\n\
	mv	a4,a5\n\
	addi	a4,a4,-1\n\
	sd	a4,-168(s0)\n\
	mv	a4,a5\n\
	sd	a4,-336(s0)\n\
	sd	zero,-328(s0)\n\
	ld	a4,-336(s0)\n\
	srli	a4,a4,58\n\
	ld	a3,-328(s0)\n\
	slli	a3,a3,6\n\
	sd	a3,-440(s0)\n\
	ld	a3,-440(s0)\n\
	or	a4,a4,a3\n\
	sd	a4,-440(s0)\n\
	ld	a4,-336(s0)\n\
	slli	a4,a4,6\n\
	sd	a4,-448(s0)\n\
	mv	a4,a5\n\
	sd	a4,-352(s0)\n\
	sd	zero,-344(s0)\n\
	ld	a4,-352(s0)\n\
	srli	a4,a4,58\n\
	ld	a3,-344(s0)\n\
	slli	a3,a3,6\n\
	sd	a3,-456(s0)\n\
	ld	a3,-456(s0)\n\
	or	a4,a4,a3\n\
	sd	a4,-456(s0)\n\
	ld	a4,-352(s0)\n\
	slli	a4,a4,6\n\
	sd	a4,-464(s0)\n\
	slli	a5,a5,3\n\
	addi	a5,a5,15\n\
	srli	a5,a5,4\n\
	slli	a5,a5,4\n\
	sub	sp,sp,a5\n\
	mv	a5,sp\n\
	addi	a5,a5,7\n\
	srli	a5,a5,3\n\
	slli	a5,a5,3\n\
	sd	a5,-176(s0)\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,12\n\
	sext.w	a5,a5\n\
	mv	a4,a5\n\
	addi	a4,a4,-1\n\
	sd	a4,-184(s0)\n\
	mv	a4,a5\n\
	sd	a4,-368(s0)\n\
	sd	zero,-360(s0)\n\
	ld	a4,-368(s0)\n\
	srli	a4,a4,58\n\
	ld	a3,-360(s0)\n\
	slli	a3,a3,6\n\
	sd	a3,-472(s0)\n\
	ld	a3,-472(s0)\n\
	or	a4,a4,a3\n\
	sd	a4,-472(s0)\n\
	ld	a4,-368(s0)\n\
	slli	a4,a4,6\n\
	sd	a4,-480(s0)\n\
	mv	a4,a5\n\
	sd	a4,-384(s0)\n\
	sd	zero,-376(s0)\n\
	ld	a4,-384(s0)\n\
	srli	a4,a4,58\n\
	ld	a3,-376(s0)\n\
	slli	s11,a3,6\n\
	or	s11,a4,s11\n\
	ld	a4,-384(s0)\n\
	slli	s10,a4,6\n\
	slli	a5,a5,3\n\
	addi	a5,a5,15\n\
	srli	a5,a5,4\n\
	slli	a5,a5,4\n\
	sub	sp,sp,a5\n\
	mv	a5,sp\n\
	addi	a5,a5,7\n\
	srli	a5,a5,3\n\
	slli	a5,a5,3\n\
	sd	a5,-192(s0)\n\
	ld	a5,-144(s0)\n\
	sw	zero,0(a5)\n\
	ld	a5,-144(s0)\n\
	addi	a5,a5,4\n\
	lw	a4,-268(s0)\n\
	sw	a4,0(a5)\n\
	ld	a5,-144(s0)\n\
	addi	a5,a5,8\n\
	lw	a4,-272(s0)\n\
	sw	a4,0(a5)\n\
	lw	a5,-124(s0)\n\
	sext.w	a5,a5\n\
	beq	a5,zero,.L20\n\
	mv	a5,sp\n\
	mv	s1,a5\n\
	lw	a5,-124(s0)\n\
	mv	a4,a5\n\
	addi	a4,a4,-1\n\
	sd	a4,-200(s0)\n\
	mv	a4,a5\n\
	sd	a4,-400(s0)\n\
	sd	zero,-392(s0)\n\
	ld	a4,-400(s0)\n\
	srli	a4,a4,58\n\
	ld	a3,-392(s0)\n\
	slli	s9,a3,6\n\
	or	s9,a4,s9\n\
	ld	a4,-400(s0)\n\
	slli	s8,a4,6\n\
	mv	a4,a5\n\
	sd	a4,-416(s0)\n\
	sd	zero,-408(s0)\n\
	ld	a4,-416(s0)\n\
	srli	a4,a4,58\n\
	ld	a3,-408(s0)\n\
	slli	s7,a3,6\n\
	or	s7,a4,s7\n\
	ld	a4,-416(s0)\n\
	slli	s6,a4,6\n\
	slli	a5,a5,3\n\
	addi	a5,a5,15\n\
	srli	a5,a5,4\n\
	slli	a5,a5,4\n\
	sub	sp,sp,a5\n\
	mv	a5,sp\n\
	addi	a5,a5,7\n\
	srli	a5,a5,3\n\
	slli	a5,a5,3\n\
	sd	a5,-208(s0)\n\
	addi	a5,s0,32\n\
	sd	a5,-304(s0)\n\
	ld	a5,-304(s0)\n\
	addi	a5,a5,-24\n\
	sd	a5,-216(s0)\n\
	sw	zero,-116(s0)\n\
	j	.L21\n\
.L22:\n\
	ld	a5,-216(s0)\n\
	addi	a4,a5,8\n\
	sd	a4,-216(s0)\n\
	ld	a4,0(a5)\n\
	ld	a3,-208(s0)\n\
	lw	a5,-116(s0)\n\
	slli	a5,a5,3\n\
	add	a5,a3,a5\n\
	sd	a4,0(a5)\n\
	lw	a5,-116(s0)\n\
	addiw	a5,a5,1\n\
	sw	a5,-116(s0)\n\
.L21:\n\
	lw	a5,-116(s0)\n\
	mv	a4,a5\n\
	lw	a5,-124(s0)\n\
	sext.w	a4,a4\n\
	sext.w	a5,a5\n\
	blt	a4,a5,.L22\n\
	ld	a5,-144(s0)\n\
	addi	a5,a5,12\n\
	lw	a4,-124(s0)\n\
	mv	a2,a4\n\
	ld	a1,-208(s0)\n\
	mv	a0,a5\n\
	call	memcpy\n\
	mv	sp,s1\n\
.L20:\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,12\n\
	sext.w	a5,a5\n\
	mv	a2,a5\n\
	ld	a1,-144(s0)\n\
	ld	a0,-160(s0)\n\
	call	memcpy\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,12\n\
	sext.w	a5,a5\n\
	mv	a2,a5\n\
	ld	a1,-144(s0)\n\
	ld	a0,-176(s0)\n\
	call	memcpy\n\
	lw	a5,-124(s0)\n\
	addiw	a5,a5,12\n\
	sext.w	a5,a5\n\
	mv	a2,a5\n\
	ld	a1,-144(s0)\n\
	ld	a0,-192(s0)\n\
	call	memcpy\n\
	ld	a5,-160(s0)\n\
	li	a4,1\n\
	sw	a4,0(a5)\n\
	ld	a5,-176(s0)\n\
	li	a4,2\n\
	sw	a4,0(a5)\n\
	ld	a5,-192(s0)\n\
	li	a4,3\n\
	sw	a4,0(a5)\n\
	ld	a4,-264(s0)\n\
	addi	a5,s0,-248\n\
	ld	a3,-144(s0)\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	ld	a4,-264(s0)\n\
	addi	a5,s0,-248\n\
	addi	a5,a5,8\n\
	ld	a3,-160(s0)\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	ld	a4,-264(s0)\n\
	addi	a5,s0,-248\n\
	addi	a5,a5,16\n\
	ld	a3,-176(s0)\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	ld	a4,-264(s0)\n\
	addi	a5,s0,-248\n\
	addi	a5,a5,24\n\
	ld	a3,-192(s0)\n\
	mv	a2,a4\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_create\n\
	sw	zero,-120(s0)\n\
	j	.L23\n\
.L24:\n\
	lw	a5,-120(s0)\n\
	slli	a5,a5,3\n\
	addi	a5,a5,-112\n\
	add	a5,a5,s0\n\
	ld	a5,-136(a5)\n\
	li	a1,0\n\
	mv	a0,a5\n\
	call	pthread_join\n\
	lw	a5,-120(s0)\n\
	addiw	a5,a5,1\n\
	sw	a5,-120(s0)\n\
.L23:\n\
	lw	a5,-120(s0)\n\
	sext.w	a4,a5\n\
	li	a5,3\n\
	ble	a4,a5,.L24\n\
	ld	sp,-288(s0)\n\
	nop\n\
	addi	sp,s0,-480\n\
	ld	ra,472(sp)\n\
	ld	s0,464(sp)\n\
	ld	s1,456(sp)\n\
	ld	s2,448(sp)\n\
	ld	s3,440(sp)\n\
	ld	s4,432(sp)\n\
	ld	s5,424(sp)\n\
	ld	s6,416(sp)\n\
	ld	s7,408(sp)\n\
	ld	s8,400(sp)\n\
	ld	s9,392(sp)\n\
	ld	s10,384(sp)\n\
	ld	s11,376(sp)\n\
	addi	sp,sp,512\n\
	jr	ra\n\
	.size	___parallel_loop_constant_100, .-___parallel_loop_constant_100\n";
}