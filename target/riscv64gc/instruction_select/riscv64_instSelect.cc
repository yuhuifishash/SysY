#include "riscv64_instSelect.h"
#include <sstream>

template <> void RiscV64Selector::ConvertAndAppend<LoadInstruction *>(LoadInstruction *ins) {
    if (ins->GetPointer()->GetOperandType() == BasicOperand::REG) {
        // Lazy("Deal with alloca later");

        auto ptr_op = (RegOperand *)ins->GetPointer();
        auto rd_op = (RegOperand *)ins->GetResultOperand();

        if (ins->GetDataType() == I32) {
            Register rd = GetllvmReg(rd_op->GetRegNo(), INT32);
            if (llvm_rv_allocas.find(ptr_op->GetRegNo()) == llvm_rv_allocas.end()) {
                Register ptr = GetllvmReg(ptr_op->GetRegNo(), INT32);// INT64 HERE
                auto lw_instr = rvconstructor->ConstructIImm(RISCV_LW, rd, ptr, 0);
                cur_block->push_back(lw_instr);
            } else {
                auto sp_offset = llvm_rv_allocas[ptr_op->GetRegNo()];
                auto lw_instr = rvconstructor->ConstructIImm(RISCV_LW, rd, GetPhysicalReg(RISCV_sp), sp_offset);
                cur_block->push_back(lw_instr);
            }
        } else if (ins->GetDataType() == FLOAT32) {
            Register rd = GetllvmReg(rd_op->GetRegNo(), FLOAT_32);
            if (llvm_rv_allocas.find(ptr_op->GetRegNo()) == llvm_rv_allocas.end()) {
                Register ptr = GetllvmReg(ptr_op->GetRegNo(), INT32);// INT64 HERE
                auto lw_instr = rvconstructor->ConstructIImm(RISCV_FLW, rd, ptr, 0);
                cur_block->push_back(lw_instr);
            } else {
                auto sp_offset = llvm_rv_allocas[ptr_op->GetRegNo()];
                auto lw_instr = rvconstructor->ConstructIImm(RISCV_FLW, rd, GetPhysicalReg(RISCV_sp), sp_offset);
                cur_block->push_back(lw_instr);
            }
        } else {
            ERROR("Unexpected data type");
        }

    } else if (ins->GetPointer()->GetOperandType() == BasicOperand::GLOBAL) {
        // lui %r0, %hi(x)
        // lw  %rd, %lo(x)(%r0)
        auto global_op = (GlobalOperand *)ins->GetPointer();
        auto rd_op = (RegOperand *)ins->GetResultOperand();

        Register addr_hi = GetNewReg(INT32);

        if (ins->GetDataType() == I32) {
            Register rd = GetllvmReg(rd_op->GetRegNo(), INT32);

            auto lui_instr = rvconstructor->ConstructULabel(RISCV_LUI, addr_hi, RiscVLabel(global_op->GetName(), true));
            auto lw_instr =
            rvconstructor->ConstructILabel(RISCV_LW, rd, addr_hi, RiscVLabel(global_op->GetName(), false));

            cur_block->push_back(lui_instr);
            cur_block->push_back(lw_instr);
        } else if (ins->GetDataType() == FLOAT32) {
            Register rd = GetllvmReg(rd_op->GetRegNo(), FLOAT_32);

            auto lui_instr = rvconstructor->ConstructULabel(RISCV_LUI, addr_hi, RiscVLabel(global_op->GetName(), true));
            auto lw_instr =
            rvconstructor->ConstructILabel(RISCV_FLW, rd, addr_hi, RiscVLabel(global_op->GetName(), false));

            cur_block->push_back(lui_instr);
            cur_block->push_back(lw_instr);
        } else {
            ERROR("Unexpected data type");
        }
    }
}

template <> void RiscV64Selector::ConvertAndAppend<StoreInstruction *>(StoreInstruction *ins) {
    Register value_reg;
    if (ins->GetValue()->GetOperandType() == BasicOperand::IMMI32) {
        auto val_imm = (ImmI32Operand *)ins->GetValue();

        value_reg = GetNewReg(INT32);

        auto imm_copy_ins = rvconstructor->ConstructCopyRegImmI(value_reg, val_imm->GetIntImmVal(), INT32);
        cur_block->push_back(imm_copy_ins);

    } else if (ins->GetValue()->GetOperandType() == BasicOperand::REG) {
        auto val_reg = (RegOperand *)ins->GetValue();
        if (ins->GetDataType() == I32) {
            value_reg = GetllvmReg(val_reg->GetRegNo(), INT32);
        } else if (ins->GetDataType() == FLOAT32) {
            value_reg = GetllvmReg(val_reg->GetRegNo(), FLOAT_32);
        } else {
            ERROR("Unexpected data type");
        }
    } else if (ins->GetValue()->GetOperandType() == BasicOperand::IMMF32) {
        Log("Deal with float immediate On store");
        auto val_imm = (ImmF32Operand *)ins->GetValue();

        value_reg = GetNewReg(FLOAT_32);

        // auto imm_copy_ins = rvconstructor->ConstructCopyRegImmF(value_reg, val_imm->GetFloatVal(), FLOAT_32);
        float val = val_imm->GetFloatVal();

        auto inter_reg = GetNewReg(INT32);
        cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, *(int *)&val, INT32));
        cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, value_reg, inter_reg));
        // cur_block->push_back(imm_copy_ins);
    } else {
        ERROR("Unexpected or unimplemented operand type");
    }

    if (ins->GetPointer()->GetOperandType() == BasicOperand::REG) {
        // Lazy("Deal with alloca later");
        auto reg_ptr_op = (RegOperand *)ins->GetPointer();

        if (ins->GetDataType() == I32) {
            if (llvm_rv_allocas.find(reg_ptr_op->GetRegNo()) == llvm_rv_allocas.end()) {
                auto ptr_reg = GetllvmReg(reg_ptr_op->GetRegNo(), INT32);

                auto store_instruction = rvconstructor->ConstructSImm(RISCV_SW, value_reg, ptr_reg, 0);
                cur_block->push_back(store_instruction);
            } else {
                auto sp_offset = llvm_rv_allocas[reg_ptr_op->GetRegNo()];

                auto store_instruction =
                rvconstructor->ConstructSImm(RISCV_SW, value_reg, GetPhysicalReg(RISCV_sp), sp_offset);
                cur_block->push_back(store_instruction);
            }
        } else if (ins->GetDataType() == FLOAT32) {
            if (llvm_rv_allocas.find(reg_ptr_op->GetRegNo()) == llvm_rv_allocas.end()) {
                auto ptr_reg = GetllvmReg(reg_ptr_op->GetRegNo(), INT32);

                auto store_instruction = rvconstructor->ConstructSImm(RISCV_FSW, value_reg, ptr_reg, 0);
                cur_block->push_back(store_instruction);
            } else {
                auto sp_offset = llvm_rv_allocas[reg_ptr_op->GetRegNo()];

                auto store_instruction =
                rvconstructor->ConstructSImm(RISCV_FSW, value_reg, GetPhysicalReg(RISCV_sp), sp_offset);
                cur_block->push_back(store_instruction);
            }
        } else {
            ERROR("Unexpected data type");
        }

    } else if (ins->GetPointer()->GetOperandType() == BasicOperand::GLOBAL) {
        auto global_op = (GlobalOperand *)ins->GetPointer();

        auto addr_hi = GetNewReg(INT32);

        auto lui_instruction =
        rvconstructor->ConstructULabel(RISCV_LUI, addr_hi, RiscVLabel(global_op->GetName(), true));
        cur_block->push_back(lui_instruction);

        if (ins->GetDataType() == I32) {
            auto store_instruction =
            rvconstructor->ConstructSLabel(RISCV_SW, value_reg, addr_hi, RiscVLabel(global_op->GetName(), false));
            cur_block->push_back(store_instruction);
        } else if (ins->GetDataType() == FLOAT32) {
            auto store_instruction =
            rvconstructor->ConstructSLabel(RISCV_FSW, value_reg, addr_hi, RiscVLabel(global_op->GetName(), false));
            cur_block->push_back(store_instruction);
        } else {
            ERROR("Unexpected data type");
        }
    }
}

template <> void RiscV64Selector::ConvertAndAppend<ArithmeticInstruction *>(ArithmeticInstruction *ins) {
    if (ins->GetOpcode() == ADD) {
        if (ins->GetDataType() == I32) {
            // Imm + Imm
            if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMI32 &&
                ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32) {
                auto *imm1_op = (ImmI32Operand *)ins->GetOperand1();
                auto *imm2_op = (ImmI32Operand *)ins->GetOperand2();
                auto *rd_op = (RegOperand *)ins->GetResultOperand();

                auto imm1 = imm1_op->GetIntImmVal();
                auto imm2 = imm2_op->GetIntImmVal();
                auto rd = GetllvmReg(rd_op->GetRegNo(), INT32);

                auto copy_imm_instr = rvconstructor->ConstructCopyRegImmI(rd, imm1 + imm2, INT32);
                cur_block->push_back(copy_imm_instr);
            }
            // Reg + Imm
            // May Generate COPY
            if (ins->GetOperand1()->GetOperandType() == BasicOperand::REG &&
                ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32) {
                Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);

                auto *rd_op = (RegOperand *)ins->GetResultOperand();
                auto *rs_op = (RegOperand *)ins->GetOperand1();
                auto *i_op = (ImmI32Operand *)ins->GetOperand2();

                auto rd = GetllvmReg(rd_op->GetRegNo(), INT32);
                auto rs = GetllvmReg(rs_op->GetRegNo(), INT32);
                auto imm = i_op->GetIntImmVal();

                if (imm != 0) {
                    auto addiw_instr = rvconstructor->ConstructIImm(RISCV_ADDIW, rd, rs, imm);
                    cur_block->push_back(addiw_instr);
                } else {
                    auto copy_instr = rvconstructor->ConstructCopyReg(rd, rs, INT32);
                    cur_block->push_back(copy_instr);
                }
            }
            // Reg + Reg
            if (ins->GetOperand1()->GetOperandType() == BasicOperand::REG &&
                ins->GetOperand2()->GetOperandType() == BasicOperand::REG) {
                Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
                auto *rd_op = (RegOperand *)ins->GetResultOperand();
                auto *rs_op = (RegOperand *)ins->GetOperand1();
                auto *rt_op = (RegOperand *)ins->GetOperand2();

                auto rd = GetllvmReg(rd_op->GetRegNo(), INT32);
                auto rs = GetllvmReg(rs_op->GetRegNo(), INT32);
                auto rt = GetllvmReg(rt_op->GetRegNo(), INT32);

                auto addw_instr = rvconstructor->ConstructR(RISCV_ADDW, rd, rs, rt);

                cur_block->push_back(addw_instr);
            }
        } else {
            TODO("RV InstSelect For DataType %d", ins->GetDataType());
        }
        // Imm-Imm
    } else if (ins->GetOpcode() == SUB) {
        if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMI32 &&
            ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32) {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            auto *rd_op = (RegOperand *)ins->GetResultOperand();
            auto *imm1_op = (ImmI32Operand *)ins->GetOperand1();
            auto *imm2_op = (ImmI32Operand *)ins->GetOperand2();

            auto imm1 = imm1_op->GetIntImmVal();
            auto imm2 = imm2_op->GetIntImmVal();
            auto rd = GetllvmReg(rd_op->GetRegNo(), INT32);

            auto copy_imm_instr = rvconstructor->ConstructCopyRegImmI(rd, imm1 - imm2, INT32);
            cur_block->push_back(copy_imm_instr);
        } else {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            Register rd = GetllvmReg(((RegOperand *)ins->GetResultOperand())->GetRegNo(), INT32);
            Register sub1, sub2;
            if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMI32) {
                sub1 = GetNewReg(INT32);
                auto copy_imm_instr =
                rvconstructor->ConstructCopyRegImmI(sub1, ((ImmI32Operand *)ins->GetOperand1())->GetIntImmVal(), INT32);
                cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand1()->GetOperandType() == BasicOperand::REG) {
                sub1 = GetllvmReg(((RegOperand *)ins->GetOperand1())->GetRegNo(), INT32);
            } else {
                ERROR("Unexpected op type");
            }
            if (ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32) {
                sub2 = GetNewReg(INT32);
                auto copy_imm_instr =
                rvconstructor->ConstructCopyRegImmI(sub2, ((ImmI32Operand *)ins->GetOperand2())->GetIntImmVal(), INT32);
                cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand2()->GetOperandType() == BasicOperand::REG) {
                sub2 = GetllvmReg(((RegOperand *)ins->GetOperand2())->GetRegNo(), INT32);
            } else {
                ERROR("Unexpected op type");
            }
            auto sub_instr = rvconstructor->ConstructR(RISCV_SUBW, rd, sub1, sub2);
            cur_block->push_back(sub_instr);
        }
    } else if (ins->GetOpcode() == DIV) {
        if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMI32 &&
            ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32) {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            auto *rd_op = (RegOperand *)ins->GetResultOperand();
            auto *imm1_op = (ImmI32Operand *)ins->GetOperand1();
            auto *imm2_op = (ImmI32Operand *)ins->GetOperand2();

            auto imm1 = imm1_op->GetIntImmVal();
            auto imm2 = imm2_op->GetIntImmVal();
            auto rd = GetllvmReg(rd_op->GetRegNo(), INT32);

            Assert(imm2 != 0);
            auto copy_imm_instr = rvconstructor->ConstructCopyRegImmI(rd, imm1 / imm2, INT32);
            cur_block->push_back(copy_imm_instr);
        } else {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            Register rd = GetllvmReg(((RegOperand *)ins->GetResultOperand())->GetRegNo(), INT32);
            Register div1, div2;
            if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMI32) {
                div1 = GetNewReg(INT32);
                auto copy_imm_instr =
                rvconstructor->ConstructCopyRegImmI(div1, ((ImmI32Operand *)ins->GetOperand1())->GetIntImmVal(), INT32);
                cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand1()->GetOperandType() == BasicOperand::REG) {
                div1 = GetllvmReg(((RegOperand *)ins->GetOperand1())->GetRegNo(), INT32);
            } else {
                ERROR("Unexpected op type");
            }
            if (ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32) {
                div2 = GetNewReg(INT32);
                auto copy_imm_instr =
                rvconstructor->ConstructCopyRegImmI(div2, ((ImmI32Operand *)ins->GetOperand2())->GetIntImmVal(), INT32);
                cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand2()->GetOperandType() == BasicOperand::REG) {
                div2 = GetllvmReg(((RegOperand *)ins->GetOperand2())->GetRegNo(), INT32);
            } else {
                ERROR("Unexpected op type");
            }
            auto div_instr = rvconstructor->ConstructR(RISCV_DIVW, rd, div1, div2);
            cur_block->push_back(div_instr);
        }
    } else if (ins->GetOpcode() == MUL) {
        if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMI32 &&
            ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32) {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            auto *rd_op = (RegOperand *)ins->GetResultOperand();
            auto *imm1_op = (ImmI32Operand *)ins->GetOperand1();
            auto *imm2_op = (ImmI32Operand *)ins->GetOperand2();

            auto imm1 = imm1_op->GetIntImmVal();
            auto imm2 = imm2_op->GetIntImmVal();
            auto rd = GetllvmReg(rd_op->GetRegNo(), INT32);

            auto copy_imm_instr = rvconstructor->ConstructCopyRegImmI(rd, imm1 * imm2, INT32);
            cur_block->push_back(copy_imm_instr);
        } else {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            Register rd = GetllvmReg(((RegOperand *)ins->GetResultOperand())->GetRegNo(), INT32);
            Register mul1, mul2;
            if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMI32) {
                mul1 = GetNewReg(INT32);
                auto copy_imm_instr =
                rvconstructor->ConstructCopyRegImmI(mul1, ((ImmI32Operand *)ins->GetOperand1())->GetIntImmVal(), INT32);
                cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand1()->GetOperandType() == BasicOperand::REG) {
                mul1 = GetllvmReg(((RegOperand *)ins->GetOperand1())->GetRegNo(), INT32);
            } else {
                ERROR("Unexpected op type");
            }
            if (ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32) {
                mul2 = GetNewReg(INT32);
                auto copy_imm_instr =
                rvconstructor->ConstructCopyRegImmI(mul2, ((ImmI32Operand *)ins->GetOperand2())->GetIntImmVal(), INT32);
                cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand2()->GetOperandType() == BasicOperand::REG) {
                mul2 = GetllvmReg(((RegOperand *)ins->GetOperand2())->GetRegNo(), INT32);
            } else {
                ERROR("Unexpected op type");
            }
            auto mul_instr = rvconstructor->ConstructR(RISCV_MULW, rd, mul1, mul2);
            cur_block->push_back(mul_instr);
        }
    } else if (ins->GetOpcode() == MOD) {
        if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMI32 &&
            ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32) {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            auto *rd_op = (RegOperand *)ins->GetResultOperand();
            auto *imm1_op = (ImmI32Operand *)ins->GetOperand1();
            auto *imm2_op = (ImmI32Operand *)ins->GetOperand2();

            auto imm1 = imm1_op->GetIntImmVal();
            auto imm2 = imm2_op->GetIntImmVal();
            auto rd = GetllvmReg(rd_op->GetRegNo(), INT32);

            Assert(imm2 != 0);
            auto copy_imm_instr = rvconstructor->ConstructCopyRegImmI(rd, imm1 % imm2, INT32);
            cur_block->push_back(copy_imm_instr);
        } else {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            Register rd = GetllvmReg(((RegOperand *)ins->GetResultOperand())->GetRegNo(), INT32);
            Register rem1, rem2;
            if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMI32) {
                rem1 = GetNewReg(INT32);
                auto copy_imm_instr =
                rvconstructor->ConstructCopyRegImmI(rem1, ((ImmI32Operand *)ins->GetOperand1())->GetIntImmVal(), INT32);
                cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand1()->GetOperandType() == BasicOperand::REG) {
                rem1 = GetllvmReg(((RegOperand *)ins->GetOperand1())->GetRegNo(), INT32);
            } else {
                ERROR("Unexpected op type");
            }
            if (ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32) {
                rem2 = GetNewReg(INT32);
                auto copy_imm_instr =
                rvconstructor->ConstructCopyRegImmI(rem2, ((ImmI32Operand *)ins->GetOperand2())->GetIntImmVal(), INT32);
                cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand2()->GetOperandType() == BasicOperand::REG) {
                rem2 = GetllvmReg(((RegOperand *)ins->GetOperand2())->GetRegNo(), INT32);
            } else {
                ERROR("Unexpected op type");
            }
            auto rem_instr = rvconstructor->ConstructR(RISCV_REMW, rd, rem1, rem2);
            cur_block->push_back(rem_instr);
        }
    } else if (ins->GetOpcode() == FADD) {
        if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMF32 &&
            ins->GetOperand2()->GetOperandType() == BasicOperand::IMMF32) {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            auto *rd_op = (RegOperand *)ins->GetResultOperand();
            auto *imm1_op = (ImmF32Operand *)ins->GetOperand1();
            auto *imm2_op = (ImmF32Operand *)ins->GetOperand2();

            auto imm1 = imm1_op->GetFloatVal();
            auto imm2 = imm2_op->GetFloatVal();
            auto rd = GetllvmReg(rd_op->GetRegNo(), FLOAT_32);

            // auto copy_imm_instr = rvconstructor->ConstructCopyRegImmF(rd, imm1-imm2,FLOAT_32);
            // cur_block->push_back(copy_imm_instr);
            float val = imm1 + imm2;

            auto inter_reg = GetNewReg(INT32);
            cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, *(int *)&val, INT32));
            cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, rd, inter_reg));
        } else {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            Register rd = GetllvmReg(((RegOperand *)ins->GetResultOperand())->GetRegNo(), FLOAT_32);
            Register fadd1, fadd2;
            if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMF32) {
                fadd1 = GetNewReg(FLOAT_32);
                // auto copy_imm_instr =
                // rvconstructor->ConstructCopyRegImmF(fsub1,((ImmF32Operand*)ins->GetOperand1())->GetFloatVal(),FLOAT_32);
                float val = ((ImmF32Operand *)ins->GetOperand1())->GetFloatVal();

                auto inter_reg = GetNewReg(INT32);
                cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, *(int *)&val, INT32));
                cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, fadd1, inter_reg));
                // cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand1()->GetOperandType() == BasicOperand::REG) {
                fadd1 = GetllvmReg(((RegOperand *)ins->GetOperand1())->GetRegNo(), FLOAT_32);
            } else {
                ERROR("Unexpected op type");
            }
            if (ins->GetOperand2()->GetOperandType() == BasicOperand::IMMF32) {
                fadd2 = GetNewReg(FLOAT_32);
                // auto copy_imm_instr =
                // rvconstructor->ConstructCopyRegImmF(fsub2,((ImmF32Operand*)ins->GetOperand2())->GetFloatVal(),FLOAT_32);
                float val = ((ImmF32Operand *)ins->GetOperand2())->GetFloatVal();

                auto inter_reg = GetNewReg(INT32);
                cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, *(int *)&val, INT32));
                cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, fadd2, inter_reg));
                // cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand2()->GetOperandType() == BasicOperand::REG) {
                fadd2 = GetllvmReg(((RegOperand *)ins->GetOperand2())->GetRegNo(), FLOAT_32);
            } else {
                ERROR("Unexpected op type");
            }
            auto fadd_instr = rvconstructor->ConstructR(RISCV_FADD_S, rd, fadd1, fadd2);
            cur_block->push_back(fadd_instr);
        }
    } else if (ins->GetOpcode() == FSUB) {
        if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMF32 &&
            ins->GetOperand2()->GetOperandType() == BasicOperand::IMMF32) {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            auto *rd_op = (RegOperand *)ins->GetResultOperand();
            auto *imm1_op = (ImmF32Operand *)ins->GetOperand1();
            auto *imm2_op = (ImmF32Operand *)ins->GetOperand2();

            auto imm1 = imm1_op->GetFloatVal();
            auto imm2 = imm2_op->GetFloatVal();
            auto rd = GetllvmReg(rd_op->GetRegNo(), FLOAT_32);

            // auto copy_imm_instr = rvconstructor->ConstructCopyRegImmF(rd, imm1-imm2,FLOAT_32);
            // cur_block->push_back(copy_imm_instr);
            float val = imm1 - imm2;

            auto inter_reg = GetNewReg(INT32);
            cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, *(int *)&val, INT32));
            cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, rd, inter_reg));
        } else {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            Register rd = GetllvmReg(((RegOperand *)ins->GetResultOperand())->GetRegNo(), FLOAT_32);
            Register fsub1, fsub2;
            if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMF32) {
                fsub1 = GetNewReg(FLOAT_32);
                // auto copy_imm_instr =
                // rvconstructor->ConstructCopyRegImmF(fsub1,((ImmF32Operand*)ins->GetOperand1())->GetFloatVal(),FLOAT_32);
                float val = ((ImmF32Operand *)ins->GetOperand1())->GetFloatVal();

                auto inter_reg = GetNewReg(INT32);
                cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, *(int *)&val, INT32));
                cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, fsub1, inter_reg));
                // cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand1()->GetOperandType() == BasicOperand::REG) {
                fsub1 = GetllvmReg(((RegOperand *)ins->GetOperand1())->GetRegNo(), FLOAT_32);
            } else {
                ERROR("Unexpected op type");
            }
            if (ins->GetOperand2()->GetOperandType() == BasicOperand::IMMF32) {
                fsub2 = GetNewReg(FLOAT_32);
                // auto copy_imm_instr =
                // rvconstructor->ConstructCopyRegImmF(fsub2,((ImmF32Operand*)ins->GetOperand2())->GetFloatVal(),FLOAT_32);
                float val = ((ImmF32Operand *)ins->GetOperand2())->GetFloatVal();

                auto inter_reg = GetNewReg(INT32);
                cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, *(int *)&val, INT32));
                cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, fsub2, inter_reg));
                // cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand2()->GetOperandType() == BasicOperand::REG) {
                fsub2 = GetllvmReg(((RegOperand *)ins->GetOperand2())->GetRegNo(), FLOAT_32);
            } else {
                ERROR("Unexpected op type");
            }
            auto fsub_instr = rvconstructor->ConstructR(RISCV_FSUB_S, rd, fsub1, fsub2);
            cur_block->push_back(fsub_instr);
        }
    } else if (ins->GetOpcode() == FMUL) {
        if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMF32 &&
            ins->GetOperand2()->GetOperandType() == BasicOperand::IMMF32) {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            auto *rd_op = (RegOperand *)ins->GetResultOperand();
            auto *imm1_op = (ImmF32Operand *)ins->GetOperand1();
            auto *imm2_op = (ImmF32Operand *)ins->GetOperand2();

            auto imm1 = imm1_op->GetFloatVal();
            auto imm2 = imm2_op->GetFloatVal();
            auto rd = GetllvmReg(rd_op->GetRegNo(), FLOAT_32);

            // auto copy_imm_instr = rvconstructor->ConstructCopyRegImmF(rd, imm1-imm2,FLOAT_32);
            // cur_block->push_back(copy_imm_instr);
            float val = imm1 * imm2;

            auto inter_reg = GetNewReg(INT32);
            cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, *(int *)&val, INT32));
            cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, rd, inter_reg));
        } else {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            Register rd = GetllvmReg(((RegOperand *)ins->GetResultOperand())->GetRegNo(), FLOAT_32);
            Register fsub1, fsub2;
            if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMF32) {
                fsub1 = GetNewReg(FLOAT_32);
                // auto copy_imm_instr =
                // rvconstructor->ConstructCopyRegImmF(fsub1,((ImmF32Operand*)ins->GetOperand1())->GetFloatVal(),FLOAT_32);
                float val = ((ImmF32Operand *)ins->GetOperand1())->GetFloatVal();

                auto inter_reg = GetNewReg(INT32);
                cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, *(int *)&val, INT32));
                cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, fsub1, inter_reg));
                // cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand1()->GetOperandType() == BasicOperand::REG) {
                fsub1 = GetllvmReg(((RegOperand *)ins->GetOperand1())->GetRegNo(), FLOAT_32);
            } else {
                ERROR("Unexpected op type");
            }
            if (ins->GetOperand2()->GetOperandType() == BasicOperand::IMMF32) {
                fsub2 = GetNewReg(FLOAT_32);
                // auto copy_imm_instr =
                // rvconstructor->ConstructCopyRegImmF(fsub2,((ImmF32Operand*)ins->GetOperand2())->GetFloatVal(),FLOAT_32);
                float val = ((ImmF32Operand *)ins->GetOperand2())->GetFloatVal();

                auto inter_reg = GetNewReg(INT32);
                cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, *(int *)&val, INT32));
                cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, fsub2, inter_reg));
                // cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand2()->GetOperandType() == BasicOperand::REG) {
                fsub2 = GetllvmReg(((RegOperand *)ins->GetOperand2())->GetRegNo(), FLOAT_32);
            } else {
                ERROR("Unexpected op type");
            }
            auto fsub_instr = rvconstructor->ConstructR(RISCV_FMUL_S, rd, fsub1, fsub2);
            cur_block->push_back(fsub_instr);
        }
    } else if (ins->GetOpcode() == FDIV) {
        if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMF32 &&
            ins->GetOperand2()->GetOperandType() == BasicOperand::IMMF32) {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            auto *rd_op = (RegOperand *)ins->GetResultOperand();
            auto *imm1_op = (ImmF32Operand *)ins->GetOperand1();
            auto *imm2_op = (ImmF32Operand *)ins->GetOperand2();

            auto imm1 = imm1_op->GetFloatVal();
            auto imm2 = imm2_op->GetFloatVal();
            auto rd = GetllvmReg(rd_op->GetRegNo(), FLOAT_32);

            // auto copy_imm_instr = rvconstructor->ConstructCopyRegImmF(rd, imm1-imm2,FLOAT_32);
            // cur_block->push_back(copy_imm_instr);
            float val = imm1 / imm2;

            auto inter_reg = GetNewReg(INT32);
            cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, *(int *)&val, INT32));
            cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, rd, inter_reg));
        } else {
            Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
            Register rd = GetllvmReg(((RegOperand *)ins->GetResultOperand())->GetRegNo(), FLOAT_32);
            Register fsub1, fsub2;
            if (ins->GetOperand1()->GetOperandType() == BasicOperand::IMMF32) {
                fsub1 = GetNewReg(FLOAT_32);
                // auto copy_imm_instr =
                // rvconstructor->ConstructCopyRegImmF(fsub1,((ImmF32Operand*)ins->GetOperand1())->GetFloatVal(),FLOAT_32);
                float val = ((ImmF32Operand *)ins->GetOperand1())->GetFloatVal();

                auto inter_reg = GetNewReg(INT32);
                cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, *(int *)&val, INT32));
                cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, fsub1, inter_reg));
                // cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand1()->GetOperandType() == BasicOperand::REG) {
                fsub1 = GetllvmReg(((RegOperand *)ins->GetOperand1())->GetRegNo(), FLOAT_32);
            } else {
                ERROR("Unexpected op type");
            }
            if (ins->GetOperand2()->GetOperandType() == BasicOperand::IMMF32) {
                fsub2 = GetNewReg(FLOAT_32);
                // auto copy_imm_instr =
                // rvconstructor->ConstructCopyRegImmF(fsub2,((ImmF32Operand*)ins->GetOperand2())->GetFloatVal(),FLOAT_32);
                float val = ((ImmF32Operand *)ins->GetOperand2())->GetFloatVal();

                auto inter_reg = GetNewReg(INT32);
                cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, *(int *)&val, INT32));
                cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, fsub2, inter_reg));
                // cur_block->push_back(copy_imm_instr);
            } else if (ins->GetOperand2()->GetOperandType() == BasicOperand::REG) {
                fsub2 = GetllvmReg(((RegOperand *)ins->GetOperand2())->GetRegNo(), FLOAT_32);
            } else {
                ERROR("Unexpected op type");
            }
            auto fsub_instr = rvconstructor->ConstructR(RISCV_FDIV_S, rd, fsub1, fsub2);
            cur_block->push_back(fsub_instr);
        }
    } else {
        Log("RV InstSelect For Opcode %d", ins->GetOpcode());
    }
}

template <> void RiscV64Selector::ConvertAndAppend<IcmpInstruction *>(IcmpInstruction *ins) {
    Assert(ins->GetResult()->GetOperandType() == BasicOperand::REG);
    auto res_op = (RegOperand *)ins->GetResult();
    auto res_reg = GetllvmReg(res_op->GetRegNo(), INT32);
    cmp_context[res_reg] = ins;
}

template <> void RiscV64Selector::ConvertAndAppend<FcmpInstruction *>(FcmpInstruction *ins) {
    Assert(ins->GetResult()->GetOperandType() == BasicOperand::REG);
    auto res_op = (RegOperand *)ins->GetResult();
    auto res_reg = GetllvmReg(res_op->GetRegNo(), INT32);
    cmp_context[res_reg] = ins;
}

template <> void RiscV64Selector::ConvertAndAppend<AllocaInstruction *>(AllocaInstruction *ins) {
    Assert(ins->GetResultOp()->GetOperandType() == BasicOperand::REG);
    auto reg_op = (RegOperand *)ins->GetResultOp();
    int byte_size = ins->GetAllocaSize() << 2;
    // Log("Alloca size %d", byte_size);
    llvm_rv_allocas[reg_op->GetRegNo()] = cur_offset;
    cur_offset += byte_size;
}

template <> void RiscV64Selector::ConvertAndAppend<BrCondInstruction *>(BrCondInstruction *ins) {
    // Log("RV InstSelect");
    // Lazy("Testing RV InstSelect");
    Assert(ins->GetCond()->GetOperandType() == BasicOperand::REG);
    auto cond_reg = (RegOperand *)ins->GetCond();
    auto br_reg = GetllvmReg(cond_reg->GetRegNo(), INT32);
    auto cmp_ins = cmp_context[br_reg];
    // Assert(br_reg == cmpInfo.cmp_result);
    int opcode;
    Register cmp_rd, cmp_op1, cmp_op2;
    if (cmp_ins->GetOpcode() == ICMP) {
        auto icmp_ins = (IcmpInstruction *)cmp_ins;
        if (icmp_ins->GetOp1()->GetOperandType() == BasicOperand::REG) {
            cmp_op1 = GetllvmReg(((RegOperand *)icmp_ins->GetOp1())->GetRegNo(), INT32);
        } else if (icmp_ins->GetOp1()->GetOperandType() == BasicOperand::IMMI32) {
            cmp_op1 = GetNewReg(INT32);
            auto copy_imm_instr =
            rvconstructor->ConstructCopyRegImmI(cmp_op1, ((ImmI32Operand *)icmp_ins->GetOp1())->GetIntImmVal(), INT32);
            cur_block->push_back(copy_imm_instr);
        } else {
            ERROR("Unexpected ICMP op1 type");
        }
        if (icmp_ins->GetOp2()->GetOperandType() == BasicOperand::REG) {
            cmp_op2 = GetllvmReg(((RegOperand *)icmp_ins->GetOp2())->GetRegNo(), INT32);
        } else if (icmp_ins->GetOp2()->GetOperandType() == BasicOperand::IMMI32) {
            cmp_op2 = GetNewReg(INT32);
            auto copy_imm_instr =
            rvconstructor->ConstructCopyRegImmI(cmp_op2, ((ImmI32Operand *)icmp_ins->GetOp2())->GetIntImmVal(), INT32);
            cur_block->push_back(copy_imm_instr);
        } else {
            ERROR("Unexpected ICMP op2 type");
        }
        switch (icmp_ins->GetCompareCondition()) {
        case eq:    // beq
            opcode = RISCV_BEQ;
            break;
        case ne:    // bne
            opcode = RISCV_BNE;
            break;
        case ugt:    // bgtu --p
            opcode = RISCV_BGTU;
            break;
        case uge:    // bgeu
            opcode = RISCV_BGEU;
            break;
        case ult:    // bltu
            opcode = RISCV_BLTU;
            break;
        case ule:    // bleu --p
            opcode = RISCV_BLEU;
            break;
        case sgt:    // bgt --p
            opcode = RISCV_BGT;
            break;
        case sge:    // bge
            opcode = RISCV_BGE;
            break;
        case slt:    // blt
            opcode = RISCV_BLT;
            break;
        case sle:    // ble --p
            opcode = RISCV_BLE;
            break;
        default:
            ERROR("Unexpected ICMP cond");
        }
    } else if (cmp_ins->GetOpcode() == FCMP) {
        auto fcmp_ins = (FcmpInstruction *)cmp_ins;
        if (fcmp_ins->GetOp1()->GetOperandType() == BasicOperand::REG) {
            cmp_op1 = GetllvmReg(((RegOperand *)fcmp_ins->GetOp1())->GetRegNo(), FLOAT_32);
        } else if (fcmp_ins->GetOp1()->GetOperandType() == BasicOperand::IMMF32) {
            cmp_op1 = GetNewReg(FLOAT_32);
            auto cmp_oppre = GetNewReg(INT32);
            float float_val = ((ImmF32Operand *)fcmp_ins->GetOp1())->GetFloatVal();
            cur_block->push_back(rvconstructor->ConstructCopyRegImmI(cmp_oppre,*(int*)&float_val,INT32));
            cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X,cmp_op1,cmp_oppre));
            // auto copy_imm_instr = rvconstructor->ConstructCopyRegImmF(
            // cmp_op1, ((ImmF32Operand *)fcmp_ins->GetOp1())->GetFloatVal(), FLOAT_32);
            // cur_block->push_back(copy_imm_instr);
        } else {
            ERROR("Unexpected FCMP op1 type");
        }
        if (fcmp_ins->GetOp2()->GetOperandType() == BasicOperand::REG) {
            cmp_op2 = GetllvmReg(((RegOperand *)fcmp_ins->GetOp2())->GetRegNo(), FLOAT_32);
        } else if (fcmp_ins->GetOp2()->GetOperandType() == BasicOperand::IMMF32) {
            cmp_op2 = GetNewReg(FLOAT_32);
            auto cmp_oppre = GetNewReg(INT32);
            float float_val = ((ImmF32Operand *)fcmp_ins->GetOp2())->GetFloatVal();
            cur_block->push_back(rvconstructor->ConstructCopyRegImmI(cmp_oppre,*(int*)&float_val,INT32));
            cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X,cmp_op2,cmp_oppre));
            // auto copy_imm_instr = rvconstructor->ConstructCopyRegImmF(
            // cmp_op2, ((ImmF32Operand *)fcmp_ins->GetOp2())->GetFloatVal(), FLOAT_32);
            // cur_block->push_back(copy_imm_instr);
        } else {
            ERROR("Unexpected FCMP op2 type");
        }
        cmp_rd = GetNewReg(INT32);
        switch (fcmp_ins->GetCompareCondition()) {
        case OEQ:
        case UEQ:
            // FEQ.S
            cur_block->push_back(rvconstructor->ConstructR(RISCV_FEQ_S, cmp_rd, cmp_op1, cmp_op2));
            opcode = RISCV_BNE;
            break;
        case OGT:
        case UGT:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_FLT_S, cmp_rd, cmp_op2, cmp_op1));
            opcode = RISCV_BNE;
            break;
        case OGE:
        case UGE:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_FLE_S, cmp_rd, cmp_op2, cmp_op1));
            opcode = RISCV_BNE;
            break;
        case OLT:
        case ULT:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_FLT_S, cmp_rd, cmp_op1, cmp_op2));
            opcode = RISCV_BNE;
            break;
        case OLE:
        case ULE:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_FLE_S, cmp_rd, cmp_op1, cmp_op2));
            opcode = RISCV_BNE;
            break;
        case ONE:
        case UNE:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_FEQ_S, cmp_rd, cmp_op1, cmp_op2));
            opcode = RISCV_BEQ;
            break;
        case ORD:
        case UNO:
        case TRUE:
        case FALSE:
        default:
            ERROR("Unexpected FCMP cond");
        }
        cmp_op1 = cmp_rd;
        cmp_op2 = GetPhysicalReg(RISCV_x0);
    } else {
        ERROR("No Cmp Before Br");
    }
    Assert(ins->GetTrueLabel()->GetOperandType() == BasicOperand::LABEL);
    Assert(ins->GetFalseLabel()->GetOperandType() == BasicOperand::LABEL);
    auto true_label = (LabelOperand *)ins->GetTrueLabel();
    auto false_label = (LabelOperand *)ins->GetFalseLabel();

    auto br_ins = rvconstructor->ConstructBLabel(opcode, cmp_op1, cmp_op2,
                                                 RiscVLabel(true_label->GetLabelNo(), false_label->GetLabelNo()));
    cur_block->push_back(br_ins);
    auto br_else_ins =
    rvconstructor->ConstructJLabel(RISCV_JAL, GetPhysicalReg(RISCV_x0), RiscVLabel(false_label->GetLabelNo()));
    cur_block->push_back(br_else_ins);
}

template <> void RiscV64Selector::ConvertAndAppend<BrUncondInstruction *>(BrUncondInstruction *ins) {
    auto dest_label = RiscVLabel(((LabelOperand *)ins->GetDestLabel())->GetLabelNo());

    auto jal_instr = rvconstructor->ConstructJLabel(RISCV_JAL, GetPhysicalReg(RISCV_x0), dest_label);

    cur_block->push_back(jal_instr);
}

template <> void RiscV64Selector::ConvertAndAppend<CallInstruction *>(CallInstruction *ins) {
    Assert(ins->GetRetType() == VOID || ins->GetResult()->GetOperandType() == BasicOperand::REG);

    int ireg_cnt = 0;
    int freg_cnt = 0;
    int stkpara_cnt = 0;

    if(ins->GetFunctionName() == std::string("llvm.memset.p0.i32")){
        Assert(ins->GetParameterList().size() == 4);
        Assert(ins->GetParameterList()[0].second->GetOperandType() == BasicOperand::REG);
        Assert(ins->GetParameterList()[1].second->GetOperandType() == BasicOperand::IMMI32);
        Assert(ins->GetParameterList()[2].second->GetOperandType() == BasicOperand::IMMI32);
        Assert(ins->GetParameterList()[3].second->GetOperandType() == BasicOperand::IMMI32);

        int ptrreg_no = ((RegOperand*)ins->GetParameterList()[0].second)->GetRegNo();
        int arr_sz = ((ImmI32Operand*)ins->GetParameterList()[2].second)->GetIntImmVal();

        // parameter 0
        if(llvm_rv_allocas.find(ptrreg_no) == llvm_rv_allocas.end()){
            cur_block->push_back(rvconstructor->ConstructCopyReg(GetPhysicalReg(RISCV_a0),GetllvmReg(ptrreg_no,INT32),INT32));
        }else{
            auto sp_offset = llvm_rv_allocas[ptrreg_no];
            cur_block->push_back(rvconstructor->ConstructIImm(RISCV_ADDI,GetPhysicalReg(RISCV_a0),GetPhysicalReg(RISCV_sp),sp_offset));
        }

        // parameters 1,2
        cur_block->push_back(rvconstructor->ConstructCopyRegImmI(GetPhysicalReg(RISCV_a1),0,INT32));
        cur_block->push_back(rvconstructor->ConstructCopyRegImmI(GetPhysicalReg(RISCV_a2),arr_sz,INT32));
        // call
        cur_block->push_back(rvconstructor->ConstructCall(RISCV_CALL,"memset"));
        return;
    }

    // Parameters
    for (auto [type, arg_op] : ins->GetParameterList()) {
        if (type == I32 || type == PTR) {
            if (ireg_cnt < 8) {
                if (arg_op->GetOperandType() == BasicOperand::REG) {
                    auto arg_regop = (RegOperand *)arg_op;
                    auto arg_reg = GetllvmReg(arg_regop->GetRegNo(), INT32);
                    auto arg_copy_instr =
                    rvconstructor->ConstructCopyReg(GetPhysicalReg(RISCV_a0 + ireg_cnt), arg_reg, INT32);
                    cur_block->push_back(arg_copy_instr);
                } else if (arg_op->GetOperandType() == BasicOperand::IMMI32) {
                    auto arg_immop = (ImmI32Operand *)arg_op;
                    auto arg_imm = arg_immop->GetIntImmVal();
                    auto arg_copy_instr =
                    rvconstructor->ConstructCopyRegImmI(GetPhysicalReg(RISCV_a0 + ireg_cnt), arg_imm, INT32);
                    cur_block->push_back(arg_copy_instr);
                } else {
                    ERROR("Unexpected Operand type");
                }
            } else {
                // TODO("More than 8 parameters");
                // Lazy("Not tested");
            }
            ireg_cnt++;
        } else if (type == FLOAT32) {
            if (freg_cnt < 8) {
                // Lazy("Not tested");
                if (arg_op->GetOperandType() == BasicOperand::REG) {
                    auto arg_regop = (RegOperand *)arg_op;
                    auto arg_reg = GetllvmReg(arg_regop->GetRegNo(), FLOAT_32);
                    auto arg_copy_instr =
                    rvconstructor->ConstructCopyReg(GetPhysicalReg(RISCV_fa0 + freg_cnt), arg_reg, FLOAT_32);
                    cur_block->push_back(arg_copy_instr);
                } else if (arg_op->GetOperandType() == BasicOperand::IMMF32) {
                    auto arg_immop = (ImmF32Operand *)arg_op;
                    auto arg_imm = arg_immop->GetFloatVal();
                    // auto arg_copy_instr =
                    // rvconstructor->ConstructCopyRegImmF(GetPhysicalReg(RISCV_fa0 + freg_cnt), arg_imm, FLOAT_32);
                    // cur_block->push_back(arg_copy_instr);
                    auto imm_reg = GetNewReg(INT32);
                    cur_block->push_back(rvconstructor->ConstructCopyRegImmI(imm_reg,*(int*)&arg_imm,INT32));
                    cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X,GetPhysicalReg(RISCV_fa0 + freg_cnt),imm_reg));
                } else {
                    ERROR("Unexpected Operand type");
                }
            } else {
                // TODO("More than 8 parameters");
                // Lazy("Not tested");
            }
            freg_cnt++;
        } else {
            ERROR("Unexpected parameter type %d", type);
        }
    }

    if(ireg_cnt-8 > 0)stkpara_cnt += (ireg_cnt-8);
    if(freg_cnt-8 > 0)stkpara_cnt += (freg_cnt-8);
    int sub_sz = ((stkpara_cnt * 8 + 15)/16)*16;

    if(stkpara_cnt != 0){
        ireg_cnt = freg_cnt = 0;
        int arg_off = 0;
        cur_block->push_back(rvconstructor->ConstructIImm(RISCV_ADDI,GetPhysicalReg(RISCV_sp),GetPhysicalReg(RISCV_sp),-sub_sz));
        for (auto [type, arg_op] : ins->GetParameterList()) {
            if (type == I32 || type == PTR) {
                if (ireg_cnt < 8) {
                } else {
                    if (arg_op->GetOperandType() == BasicOperand::REG) {
                        auto arg_regop = (RegOperand *)arg_op;
                        auto arg_reg = GetllvmReg(arg_regop->GetRegNo(), INT32);
                        cur_block->push_back(rvconstructor->ConstructSImm(RISCV_SD,arg_reg,GetPhysicalReg(RISCV_sp),arg_off));
                    }else if(arg_op->GetOperandType() == BasicOperand::IMMI32){
                        auto arg_immop = (ImmI32Operand *)arg_op;
                        auto arg_imm = arg_immop->GetIntImmVal();
                        auto imm_reg = GetNewReg(INT32);
                        cur_block->push_back(rvconstructor->ConstructCopyRegImmI(imm_reg, arg_imm, INT32));
                        cur_block->push_back(rvconstructor->ConstructSImm(RISCV_SD,imm_reg,GetPhysicalReg(RISCV_sp),arg_off));
                    }
                    arg_off += 8;
                }
                ireg_cnt++;
            } else if (type == FLOAT32) {
                if (freg_cnt < 8) {
                } else {
                    if (arg_op->GetOperandType() == BasicOperand::REG) {
                        auto arg_regop = (RegOperand *)arg_op;
                        auto arg_reg = GetllvmReg(arg_regop->GetRegNo(), FLOAT_32);
                        cur_block->push_back(rvconstructor->ConstructSImm(RISCV_FSD,arg_reg,GetPhysicalReg(RISCV_sp),arg_off));
                    } else if (arg_op->GetOperandType() == BasicOperand::IMMF32) {
                        auto arg_immop = (ImmF32Operand *)arg_op;
                        auto arg_imm = arg_immop->GetFloatVal();
                        auto imm_reg = GetNewReg(INT32);
                        cur_block->push_back(rvconstructor->ConstructCopyRegImmI(imm_reg,*(int*)&arg_imm,INT32));
                        cur_block->push_back(rvconstructor->ConstructSImm(RISCV_SD,imm_reg,GetPhysicalReg(RISCV_sp),arg_off));
                    } else {
                        ERROR("Unexpected Operand type");
                    }
                    arg_off += 8;
                }
                freg_cnt++;
            } else {
                ERROR("Unexpected parameter type %d", type);
            }
        }
    }

    // Call Label
    auto call_funcname = ins->GetFunctionName();

    // Return Value
    auto return_type = ins->GetRetType();
    auto result_op = (RegOperand *)ins->GetResult();
    cur_block->push_back(rvconstructor->ConstructCall(RISCV_CALL, call_funcname));
    if(stkpara_cnt != 0){
        cur_block->push_back(rvconstructor->ConstructIImm(RISCV_ADDI,GetPhysicalReg(RISCV_sp),GetPhysicalReg(RISCV_sp),sub_sz));
    }
    if (return_type == I32) {
        auto copy_ret_ins =
        rvconstructor->ConstructCopyReg(GetllvmReg(result_op->GetRegNo(), INT32), GetPhysicalReg(RISCV_a0), INT32);
        cur_block->push_back(copy_ret_ins);
    } else if (return_type == FLOAT32) {
        // Lazy("Not tested");
        auto copy_ret_ins = rvconstructor->ConstructCopyReg(GetllvmReg(result_op->GetRegNo(), FLOAT_32),
                                                            GetPhysicalReg(RISCV_fa0), FLOAT_32);
        cur_block->push_back(copy_ret_ins);
    } else if (return_type == VOID) {
    } else {
        ERROR("Unexpected return type %d", return_type);
    }
}

template <> void RiscV64Selector::ConvertAndAppend<RetInstruction *>(RetInstruction *ins) {
    if (ins->GetRetVal() != NULL) {
        if (ins->GetRetVal()->GetOperandType() == BasicOperand::REG) {
            if (ins->GetType() == FLOAT32) {

                // Lazy("Not tested");

                auto retreg_val = (RegOperand *)ins->GetRetVal();
                auto reg = GetllvmReg(retreg_val->GetRegNo(), FLOAT_32);

                auto retcopy_instr = rvconstructor->ConstructCopyReg(GetPhysicalReg(RISCV_fa0), reg, FLOAT_32);
                cur_block->push_back(retcopy_instr);

            } else if (ins->GetType() == I32) {

                auto retreg_val = (RegOperand *)ins->GetRetVal();
                auto reg = GetllvmReg(retreg_val->GetRegNo(), INT32);

                auto retcopy_instr = rvconstructor->ConstructCopyReg(GetPhysicalReg(RISCV_a0), reg, INT32);
                cur_block->push_back(retcopy_instr);
            }
        } else if (ins->GetRetVal()->GetOperandType() == BasicOperand::IMMI32) {

            auto retimm_op = (ImmI32Operand *)ins->GetRetVal();
            auto imm = retimm_op->GetIntImmVal();

            auto retcopy_instr = rvconstructor->ConstructCopyRegImmI(GetPhysicalReg(RISCV_a0), imm, INT32);
            cur_block->push_back(retcopy_instr);

        } else if (ins->GetRetVal()->GetOperandType() == BasicOperand::IMMF32) {

            // Lazy("Not tested");

            auto retimm_op = (ImmF32Operand *)ins->GetRetVal();
            auto imm = retimm_op->GetFloatVal();

            // auto retcopy_instr = rvconstructor->ConstructCopyRegImmF(GetPhysicalReg(RISCV_fa0), imm, FLOAT_32);
            // cur_block->push_back(retcopy_instr);
            auto imm_reg = GetNewReg(INT32);
            cur_block->push_back(rvconstructor->ConstructCopyRegImmI(imm_reg,*(int*)&imm,INT32));
            cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X, GetPhysicalReg(RISCV_fa0), imm_reg));
        }
    }
    // restore ra
    // rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_ra), GetPhysicalReg(RISCV_sp), 0);
    // cur_block->push_back(restore_ra_instr);

    // restore sp

    // return
    auto ret_instr = rvconstructor->ConstructIImm(RISCV_JALR, GetPhysicalReg(RISCV_x0), GetPhysicalReg(RISCV_ra), 0);
    cur_block->push_back(ret_instr);
}

template <> void RiscV64Selector::ConvertAndAppend<FptosiInstruction *>(FptosiInstruction *ins) {
    auto src_op = ins->GetSrc();
    Assert(ins->GetResultReg()->GetOperandType() == BasicOperand::REG);
    auto dst_op = (RegOperand *)ins->GetResultReg();
    if (src_op->GetOperandType() == BasicOperand::REG) {
        auto regf = (RegOperand *)src_op;
        // FCVT.W.S
        auto fmv = rvconstructor->ConstructR2(RISCV_FCVT_W_S, GetllvmReg(dst_op->GetRegNo(), INT32),
                                              GetllvmReg(regf->GetRegNo(), FLOAT_32));
        cur_block->push_back(fmv);
    } else if (src_op->GetOperandType() == BasicOperand::IMMF32) {
        auto immf = (ImmF32Operand *)src_op;
        auto copyI =
        rvconstructor->ConstructCopyRegImmI(GetllvmReg(dst_op->GetRegNo(), INT32), immf->GetFloatVal(), INT32);
        cur_block->push_back(copyI);
    } else {
        ERROR("Unexpected Fptosi src type");
    }
}

template <> void RiscV64Selector::ConvertAndAppend<SitofpInstruction *>(SitofpInstruction *ins) {
    auto src_op = ins->GetSrc();
    Assert(ins->GetResultReg()->GetOperandType() == BasicOperand::REG);
    auto dst_op = (RegOperand *)ins->GetResultReg();
    if (src_op->GetOperandType() == BasicOperand::REG) {
        auto regi = (RegOperand *)src_op;
        // FCVT.S.W
        auto fcvt = rvconstructor->ConstructR2(RISCV_FCVT_S_W, GetllvmReg(dst_op->GetRegNo(), FLOAT_32),
                                              GetllvmReg(regi->GetRegNo(), INT32));
        cur_block->push_back(fcvt);
    } else if (src_op->GetOperandType() == BasicOperand::IMMI32) {
        auto immi = (ImmI32Operand *)src_op;
        auto inter_reg = GetNewReg(INT32);
        cur_block->push_back(rvconstructor->ConstructCopyRegImmI(inter_reg, immi->GetIntImmVal(), INT32));
        cur_block->push_back(rvconstructor->ConstructR2(RISCV_FCVT_S_W, GetllvmReg(dst_op->GetRegNo(), FLOAT_32),inter_reg));
    } else {
        ERROR("Unexpected Sitofp src type");
    }
}

template <> void RiscV64Selector::ConvertAndAppend<ZextInstruction *>(ZextInstruction *ins) {
    Assert(ins->GetSrc()->GetOperandType() == BasicOperand::REG);
    Assert(ins->GetDst()->GetOperandType() == BasicOperand::REG);

    auto ext_reg = GetllvmReg(((RegOperand *)ins->GetSrc())->GetRegNo(), INT32);
    auto cmp_ins = cmp_context[ext_reg];

    Assert(cmp_ins != nullptr);
    auto result_reg = GetllvmReg(((RegOperand *)ins->GetDst())->GetRegNo(), INT32);

    if (cmp_ins->GetOpcode() == ICMP) {
        auto icmp_ins = (IcmpInstruction *)cmp_ins;
        auto op1 = icmp_ins->GetOp1();
        auto op2 = icmp_ins->GetOp2();
        auto cur_cond = icmp_ins->GetCompareCondition();
        Register reg_1,reg_2;
        if(op1->GetOperandType() == BasicOperand::IMMI32){
            auto t = op1;
            op1 = op2;
            op2 = t;
            switch (cur_cond)
            {
            case eq:
            case ne:
                break;
            case sgt:
                cur_cond = slt;
                break;
            case sge:
                cur_cond = sle;
                break;
            case slt:
                cur_cond = sgt;
                break;
            case sle:
                cur_cond = sge;
                break;
            case ugt:
            case uge:
            case ult:
            case ule:
            ERROR("Unexpected ICMP cond");
            }
        }
        if(op1->GetOperandType() == BasicOperand::IMMI32){
            Assert(op2->GetOperandType() == BasicOperand::IMMI32);
            int rval = 0;
            int op1_val = ((ImmI32Operand *)op1)->GetIntImmVal();
            int op2_val = ((ImmI32Operand *)op2)->GetIntImmVal();
            switch(cur_cond){
            case eq:
                rval = (op1_val == op2_val);
            case ne:
                rval = (op1_val != op2_val);
                break;
            case sgt:
                rval = (op1_val > op2_val);
                break;
            case sge:
                rval = (op1_val >= op2_val);
                break;
            case slt:
                rval = (op1_val < op2_val);
                break;
            case sle:
                rval = (op1_val <= op2_val);
                break;
            case ugt:
            case uge:
            case ult:
            case ule:
            ERROR("Unexpected ICMP cond");
            }
            cur_block->push_back(rvconstructor->ConstructCopyRegImmI(result_reg, rval,INT32));
            return;
        }
        if(op2->GetOperandType() == BasicOperand::IMMI32){
            Assert(op1->GetOperandType() == BasicOperand::REG);
            auto op1_reg = GetllvmReg(((RegOperand*)op1)->GetRegNo(),INT32);
            if(((ImmI32Operand*)op2)->GetIntImmVal() == 0){
                auto not_reg = GetNewReg(INT32);
                switch(cur_cond){
                    case eq:
                    cur_block->push_back(rvconstructor->ConstructIImm(RISCV_SLTIU,result_reg,op1_reg,1));
                    return;
                    case ne:
                    cur_block->push_back(rvconstructor->ConstructR(RISCV_SLTU,result_reg,GetPhysicalReg(RISCV_x0),op1_reg));
                    return;
                    case sgt:
                    cur_block->push_back(rvconstructor->ConstructR(RISCV_SLT,result_reg,GetPhysicalReg(RISCV_x0),op1_reg));
                    return;
                    case sge:// sgez ~ not sltz
                    cur_block->push_back(rvconstructor->ConstructR(RISCV_SLT,not_reg,op1_reg,GetPhysicalReg(RISCV_x0)));
                    cur_block->push_back(rvconstructor->ConstructIImm(RISCV_XORI,result_reg,not_reg,1));
                    return;
                    case slt:
                    cur_block->push_back(rvconstructor->ConstructR(RISCV_SLT,result_reg,op1_reg,GetPhysicalReg(RISCV_x0)));
                    return;
                    case sle:// slez ~ not sgtz
                    cur_block->push_back(rvconstructor->ConstructR(RISCV_SLT,not_reg,GetPhysicalReg(RISCV_x0),op1_reg));
                    cur_block->push_back(rvconstructor->ConstructIImm(RISCV_XORI,result_reg,not_reg,1));
                    return;
                    case ugt:
                    case uge:
                    case ult:
                    case ule:
                    default:
                    ERROR("Unexpected ICMP cond");
                }
            }else if(cur_cond == slt){
                int op2_imm = ((ImmI32Operand*)op2)->GetIntImmVal();
                cur_block->push_back(rvconstructor->ConstructIImm(RISCV_SLTI,result_reg,op1_reg,op2_imm));
                return;
            }else if(cur_cond == ult){
                int op2_imm = ((ImmI32Operand*)op2)->GetIntImmVal();
                cur_block->push_back(rvconstructor->ConstructIImm(RISCV_SLTIU,result_reg,op1_reg,op2_imm));
                return;
            }
            reg_2 = GetNewReg(INT32);
            cur_block->push_back(rvconstructor->ConstructCopyRegImmI(reg_2, ((ImmI32Operand*)op2)->GetIntImmVal(),INT32));
        }
        Assert(op1->GetOperandType() == BasicOperand::REG);
        reg_1 = GetllvmReg(((RegOperand*)op1)->GetRegNo(),INT32);
        if(op2->GetOperandType() == BasicOperand::REG){
            reg_2 = GetllvmReg(((RegOperand*)op2)->GetRegNo(),INT32);
        }
        auto mid_reg = GetNewReg(INT32);
        switch (cur_cond) {
        case eq:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_SUBW,mid_reg,reg_1,reg_2));
            cur_block->push_back(rvconstructor->ConstructIImm(RISCV_SLTIU,result_reg,mid_reg,1));
            return;
        case ne:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_SUBW,mid_reg,reg_1,reg_2));
            cur_block->push_back(rvconstructor->ConstructR(RISCV_SLTU,result_reg,GetPhysicalReg(RISCV_x0),mid_reg));
            return;
        case sgt:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_SLT,result_reg,reg_2,reg_1));
            return;
        case sge:// reg_1 >= reg_2 <==> not reg_1 < reg_2
            cur_block->push_back(rvconstructor->ConstructR(RISCV_SLT,mid_reg,reg_1,reg_2));
            cur_block->push_back(rvconstructor->ConstructIImm(RISCV_XORI,result_reg,mid_reg,1));
            return;
        case slt:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_SLT,result_reg,reg_1,reg_2));
            return;
        case sle:// 2 < 1  2 >= 1 1 <= 2 
            cur_block->push_back(rvconstructor->ConstructR(RISCV_SLT,mid_reg,reg_2,reg_1));
            cur_block->push_back(rvconstructor->ConstructIImm(RISCV_XORI,result_reg,mid_reg,1));
            return;
        case ugt:
        case uge:
        case ult:
        case ule:
        default:
            ERROR("Unexpected ICMP cond");
        }
    } else if (cmp_ins->GetOpcode() == FCMP) {
        auto fcmp_ins = (FcmpInstruction *)cmp_ins;
        Register cmp_op1,cmp_op2;
        if (fcmp_ins->GetOp1()->GetOperandType() == BasicOperand::REG) {
            cmp_op1 = GetllvmReg(((RegOperand *)fcmp_ins->GetOp1())->GetRegNo(), FLOAT_32);
        } else if (fcmp_ins->GetOp1()->GetOperandType() == BasicOperand::IMMF32) {
            cmp_op1 = GetNewReg(FLOAT_32);
            auto cmp_oppre = GetNewReg(INT32);
            float float_val = ((ImmF32Operand *)fcmp_ins->GetOp1())->GetFloatVal();
            cur_block->push_back(rvconstructor->ConstructCopyRegImmI(cmp_oppre,*(int*)&float_val,INT32));
            cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X,cmp_op1,cmp_oppre));
        } else {
            ERROR("Unexpected FCMP op1 type");
        }
        if (fcmp_ins->GetOp2()->GetOperandType() == BasicOperand::REG) {
            cmp_op2 = GetllvmReg(((RegOperand *)fcmp_ins->GetOp2())->GetRegNo(), FLOAT_32);
        } else if (fcmp_ins->GetOp2()->GetOperandType() == BasicOperand::IMMF32) {
            cmp_op2 = GetNewReg(FLOAT_32);
            auto cmp_oppre = GetNewReg(INT32);
            float float_val = ((ImmF32Operand *)fcmp_ins->GetOp2())->GetFloatVal();
            cur_block->push_back(rvconstructor->ConstructCopyRegImmI(cmp_oppre,*(int*)&float_val,INT32));
            cur_block->push_back(rvconstructor->ConstructR2(RISCV_FMV_W_X,cmp_op2,cmp_oppre));
        } else {
            ERROR("Unexpected FCMP op2 type");
        }
        switch (fcmp_ins->GetCompareCondition()) {
        case OEQ:
        case UEQ:
            // FEQ.S
            cur_block->push_back(rvconstructor->ConstructR(RISCV_FEQ_S, result_reg, cmp_op1, cmp_op2));
            break;
        case OGT:
        case UGT:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_FLT_S, result_reg, cmp_op2, cmp_op1));
            break;
        case OGE:
        case UGE:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_FLE_S, result_reg, cmp_op2, cmp_op1));
            break;
        case OLT:
        case ULT:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_FLT_S, result_reg, cmp_op1, cmp_op2));
            break;
        case OLE:
        case ULE:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_FLE_S, result_reg, cmp_op1, cmp_op2));
            break;
        case ONE:
        case UNE:
            cur_block->push_back(rvconstructor->ConstructR(RISCV_FEQ_S, result_reg, cmp_op1, cmp_op2));
            break;
        case ORD:
        case UNO:
        case TRUE:
        case FALSE:
        default:
            ERROR("Unexpected FCMP cond");
        }
    } else {
        ERROR("Unexpected ins Before zext");
    }
}

template <> void RiscV64Selector::ConvertAndAppend<GetElementptrInstruction *>(GetElementptrInstruction *ins) {
    // Assert(ins->GetType() == I32);
    auto global_op = (GlobalOperand *)ins->GetPtrVal();
    auto result_op = (RegOperand *)ins->GetResult();

    int product = 1;
    for (auto size : ins->GetDims()) {
        product *= size;
    }
    int const_offset = 0;
    auto offset_reg = GetNewReg(INT32);
    auto result_reg = GetllvmReg(result_op->GetRegNo(), INT32);

    int offset_reg_assigned = 0;
    for (int i = 0; i < ins->GetIndexes().size(); i++) {
        if (ins->GetIndexes()[i]->GetOperandType() == BasicOperand::IMMI32) {
            const_offset += (((ImmI32Operand *)ins->GetIndexes()[i])->GetIntImmVal()) * product;
        } else {
            auto index_op = (RegOperand *)ins->GetIndexes()[i];
            auto index_reg = GetllvmReg(index_op->GetRegNo(), INT32);
            if (product != 1) {
                auto this_inc = GetNewReg(INT32);
                // this_inc = indexes[i] * product
                auto product_reg = GetNewReg(INT32);
                cur_block->push_back(rvconstructor->ConstructCopyRegImmI(product_reg, product, INT32));
                cur_block->push_back(rvconstructor->ConstructR(RISCV_MUL,this_inc,index_reg,product_reg));
                if (offset_reg_assigned == 0) {
                    offset_reg_assigned = 1;
                    // offset = this_inc
                    cur_block->push_back(rvconstructor->ConstructCopyReg(offset_reg,this_inc,INT32));
                } else {
                    auto new_offset = GetNewReg(INT32);
                    // offset += this_inc
                    cur_block->push_back(rvconstructor->ConstructR(RISCV_ADD,new_offset,offset_reg,this_inc));
                    offset_reg = new_offset;
                }
            } else {
                if (offset_reg_assigned == 0) {
                    offset_reg_assigned = 1;
                    // offset_reg = indexes[i]
                    auto offset_reg_set_instr = rvconstructor->ConstructCopyReg(offset_reg, index_reg, INT32);
                    cur_block->push_back(offset_reg_set_instr);
                } else {
                    auto new_offset = GetNewReg(INT32);
                    // offset += indexes[i]
                    cur_block->push_back(rvconstructor->ConstructR(RISCV_ADD,new_offset,offset_reg,index_reg));
                    offset_reg = new_offset;
                }
            }
        }
        if (i < ins->GetDims().size()) {
            product /= ins->GetDims()[i];
        }
    }
    // ins->PrintIR(std::cerr);
    // Log("const_offset = %d",const_offset);
    bool all_imm = false;
    if (const_offset != 0) {
        if (offset_reg_assigned == 0) {
            offset_reg_assigned = 1;
            all_imm = true;

            // auto li_instr = rvconstructor->ConstructUImm(RISCV_LI,offset_reg,const_offset * 4);
            auto li_instr = rvconstructor->ConstructCopyRegImmI(offset_reg, const_offset * 4, INT32);

            cur_block->push_back(li_instr);
        } else {
            auto new_offset = GetNewReg(INT32);
            cur_block->push_back(rvconstructor->ConstructIImm(RISCV_ADDI,new_offset,offset_reg,const_offset));
            offset_reg = new_offset;
        }
    }
    if (ins->GetPtrVal()->GetOperandType() == BasicOperand::REG) {
        // Lazy("Not tested");
        auto ptr_op = (RegOperand *)ins->GetPtrVal();
        auto offsetfull_reg = GetNewReg(INT32);
        if (offset_reg_assigned) {
            auto sll_instr = rvconstructor->ConstructIImm(RISCV_SLLI, offsetfull_reg, offset_reg, 2);
            if (all_imm) {
                offsetfull_reg = offset_reg;
            }
            if (llvm_rv_allocas.find(ptr_op->GetRegNo()) == llvm_rv_allocas.end()) {
                auto base_reg = GetllvmReg(ptr_op->GetRegNo(), INT32);
                if (!all_imm) {
                    cur_block->push_back(sll_instr);
                }
                auto addoffset_instr = rvconstructor->ConstructR(RISCV_ADD, result_reg, base_reg, offsetfull_reg);
                cur_block->push_back(addoffset_instr);
            } else {
                auto sp_offset = llvm_rv_allocas[ptr_op->GetRegNo()];
                auto base_reg = GetNewReg(INT32);
                auto load_basereg_instr =
                rvconstructor->ConstructIImm(RISCV_ADDI, base_reg, GetPhysicalReg(RISCV_sp), sp_offset);
                cur_block->push_back(load_basereg_instr);
                if (!all_imm) {
                    cur_block->push_back(sll_instr);
                }
                auto addoffset_instr = rvconstructor->ConstructR(RISCV_ADD, result_reg, base_reg, offsetfull_reg);
                cur_block->push_back(addoffset_instr);
            }
        } else {
            if (llvm_rv_allocas.find(ptr_op->GetRegNo()) == llvm_rv_allocas.end()) {
                cur_block->push_back(
                rvconstructor->ConstructCopyReg(result_reg, GetllvmReg(ptr_op->GetRegNo(), INT32), INT32));
            } else {
                auto sp_offset = llvm_rv_allocas[ptr_op->GetRegNo()];
                cur_block->push_back(
                rvconstructor->ConstructIImm(RISCV_ADDI, result_reg, GetPhysicalReg(RISCV_sp), sp_offset));
            }
        }
    } else if (ins->GetPtrVal()->GetOperandType() == BasicOperand::GLOBAL) {
        if (offset_reg_assigned) {
            auto basehi_reg = GetNewReg(INT32);
            auto basefull_reg = GetNewReg(INT32);
            auto offsetfull_reg = GetNewReg(INT32);

            auto lui_instr =
            rvconstructor->ConstructULabel(RISCV_LUI, basehi_reg, RiscVLabel(global_op->GetName(), true));
            auto addi_instr = rvconstructor->ConstructILabel(RISCV_ADDI, basefull_reg, basehi_reg,
                                                             RiscVLabel(global_op->GetName(), false));
            auto sll_instr = rvconstructor->ConstructIImm(RISCV_SLLI, offsetfull_reg, offset_reg, 2);
            if (all_imm) {
                offsetfull_reg = offset_reg;
            }
            auto addoffset_instr = rvconstructor->ConstructR(RISCV_ADD, result_reg, basefull_reg, offsetfull_reg);

            cur_block->push_back(lui_instr);
            cur_block->push_back(addi_instr);
            if (!all_imm) {
                cur_block->push_back(sll_instr);
            }
            cur_block->push_back(addoffset_instr);
        } else {
            auto result_hi_reg = GetNewReg(INT32);

            auto lui_instr =
            rvconstructor->ConstructULabel(RISCV_LUI, result_hi_reg, RiscVLabel(global_op->GetName(), true));
            auto addi_instr = rvconstructor->ConstructILabel(RISCV_ADDI, result_reg, result_hi_reg,
                                                             RiscVLabel(global_op->GetName(), false));

            cur_block->push_back(lui_instr);
            cur_block->push_back(addi_instr);
        }
    } else {
        ERROR("Unexpected OperandType");
    }
}

template <> void RiscV64Selector::ConvertAndAppend<PhiInstruction *>(PhiInstruction *ins) {
    Assert(ins->GetResultOp()->GetOperandType() == BasicOperand::REG);
    auto res_op = (RegOperand *)ins->GetResultOp();
    auto result_reg = GetllvmReg(res_op->GetRegNo(), INT32);
    auto m_phi = new MachinePhiInstruction(result_reg);
    for (auto [label, val] : ins->GetPhiList()) {
        Assert(label->GetOperandType() == BasicOperand::LABEL);
        auto label_op = (LabelOperand *)label;
        if (val->GetOperandType() == BasicOperand::REG && ins->GetDataType() == I32) {
            auto reg_op = (RegOperand *)val;
            auto val_reg = GetllvmReg(reg_op->GetRegNo(), INT32);
            m_phi->pushPhiList(label_op->GetLabelNo(), val_reg);
        } else if (val->GetOperandType() == BasicOperand::REG && ins->GetDataType() == FLOAT32) {
            Lazy("Not tested");
            auto reg_op = (RegOperand *)val;
            auto val_reg = GetllvmReg(reg_op->GetRegNo(), FLOAT_32);
            m_phi->pushPhiList(label_op->GetLabelNo(), val_reg);
        } else if (val->GetOperandType() == BasicOperand::IMMI32) {
            auto immi_op = (ImmI32Operand *)val;
            m_phi->pushPhiList(label_op->GetLabelNo(), immi_op->GetIntImmVal());
        } else if (val->GetOperandType() == BasicOperand::IMMF32) {
            TODO("Phi for float");
        } else {
            ERROR("Unexpected OperandType");
        }
    }
    cur_block->push_back(m_phi);
}

template <> void RiscV64Selector::ConvertAndAppend<Instruction>(Instruction inst) {
    std::ostringstream oss;
    inst->PrintIR(oss);
    cur_block->push_back(rvconstructor->ConstructComment(oss.str()));
    switch (inst->GetOpcode()) {
    case LOAD:
        ConvertAndAppend<LoadInstruction *>((LoadInstruction *)inst);
        break;
    case STORE:
        ConvertAndAppend<StoreInstruction *>((StoreInstruction *)inst);
        break;
    case ADD:
    case SUB:
    case MUL:
    case DIV:
    case FADD:
    case FSUB:
    case FMUL:
    case FDIV:
    case MOD:
    case XOR:
    case SHL:
        ConvertAndAppend<ArithmeticInstruction *>((ArithmeticInstruction *)inst);
        break;
    case ICMP:
        ConvertAndAppend<IcmpInstruction *>((IcmpInstruction *)inst);
        break;
    case FCMP:
        ConvertAndAppend<FcmpInstruction *>((FcmpInstruction *)inst);
        break;
    case ALLOCA:
        ConvertAndAppend<AllocaInstruction *>((AllocaInstruction *)inst);
        break;
    case BR_COND:
        ConvertAndAppend<BrCondInstruction *>((BrCondInstruction *)inst);
        break;
    case BR_UNCOND:
        ConvertAndAppend<BrUncondInstruction *>((BrUncondInstruction *)inst);
        break;
    case RET:
        ConvertAndAppend<RetInstruction *>((RetInstruction *)inst);
        break;
    case ZEXT:
        ConvertAndAppend<ZextInstruction *>((ZextInstruction *)inst);
        break;
    case FPTOSI:
        ConvertAndAppend<FptosiInstruction *>((FptosiInstruction *)inst);
        break;
    case SITOFP:
        ConvertAndAppend<SitofpInstruction *>((SitofpInstruction *)inst);
        break;
    case GETELEMENTPTR:
        ConvertAndAppend<GetElementptrInstruction *>((GetElementptrInstruction *)inst);
        break;
    case CALL:
        ConvertAndAppend<CallInstruction *>((CallInstruction *)inst);
        break;
    case PHI:
        ConvertAndAppend<PhiInstruction *>((PhiInstruction *)inst);
        break;
    }
}

void RiscV64Selector::SelectInstructionAndBuildCFG() {
    dest->global_def = IR->global_def;
    for (auto func_pair : IR->llvm_cfg) {
        auto cfg = func_pair.second;
        std::string name = cfg->function_def->GetFunctionName();

        cur_func = new RiscV64Function(name);
        cur_func->SetParent(dest);

        dest->functions.push_back(cur_func);

        auto cur_mcfg = new MachineCFG;
        cur_func->SetMachineCFG(cur_mcfg);

        ClearFunctionSelectState();

        for (int i = 0; i < func_pair.first->GetFormalSize(); i++) {
            Assert(func_pair.first->formals_reg[i]->GetOperandType() == BasicOperand::REG);
            MachineDataType type;
            Assert(func_pair.first->formals[i] != LLVMType::DOUBLE);
            Assert(func_pair.first->formals[i] != LLVMType::I64);
            Assert(func_pair.first->formals[i] != LLVMType::I1);
            Assert(func_pair.first->formals[i] != LLVMType::I8);
            if (func_pair.first->formals[i] == LLVMType::I32 || func_pair.first->formals[i] == LLVMType::PTR) {
                type = INT32;
            } else if (func_pair.first->formals[i] == LLVMType::FLOAT32) {
                type = FLOAT_32;
            } else {
                ERROR("Unknown llvm type");
            }
            cur_func->AddParameter(GetllvmReg(((RegOperand *)func_pair.first->formals_reg[i])->GetRegNo(), type));
        }

        for (auto [id, block] : *(cfg->block_map)) {
            cur_block = new RiscV64Block(id);

            cur_mcfg->AssignEmptyNode(id, cur_block);

            cur_block->setParent(cur_func);
            cur_func->blocks.push_back(cur_block);

            if (id == 0) {
                // sub sp
                // cur_block->push_back();

                // Lazy("Sub sp at beginning of function");
                // cur_block->push_back(rvconstructor->ConstructComment("TODO: Should sub sp here\n"));

                // save ra
                // cur_block->push_back(rvconstructor->ConstructComment("TODO: Should save ra here\n"));
                // cur_block->push_back(
                // rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_ra), GetPhysicalReg(RISCV_sp), 0));
                // cur_block->push_back(rvconstructor->ConstructCall(RISCV_CALL,"__pthread_test_call"));
            }
            for (auto instruction : block->Instruction_list) {
                // Log("Selecting Instruction");
                ConvertAndAppend<Instruction>(instruction);
            }
        }
        // +8 for save(ra)
        // +12*8 for save(s0-s11)
        cur_func->SetStackSize(cur_offset + 12 * 8 + 8 + 12*8);
        for (int i = 0; i < cfg->G.size(); i++) {
            const auto &arcs = cfg->G[i];
            for (auto arc : arcs) {
                cur_mcfg->MakeEdge(i, arc->block_id);
            }
        }
    }
}

void RiscV64Selector::ClearFunctionSelectState() {
    llvm_rv_regtable.clear();
    llvm_rv_allocas.clear();
    cmp_context.clear();
    cur_offset = 0;
    // ra <- 0(sp)
}

Register RiscV64Selector::GetllvmReg(int ir_reg, MachineDataType type) {
    if (llvm_rv_regtable.find(ir_reg) == llvm_rv_regtable.end()) {
        llvm_rv_regtable[ir_reg] = GetNewReg(type);
    }
    Assert(llvm_rv_regtable[ir_reg].type == type);
    return llvm_rv_regtable[ir_reg];
}
Register RiscV64Selector::GetNewReg(MachineDataType type, bool save_across_call) {
    return cur_func->GetNewRegister(type.data_type, type.data_length, save_across_call);
}
