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
                    if (cur_rvins->getOpcode() == RISCV_LD || cur_rvins->getOpcode() == RISCV_SD ||
                        cur_rvins->getOpcode() == RISCV_LW || cur_rvins->getOpcode() == RISCV_SW ||
                        cur_rvins->getOpcode() == RISCV_FLW || cur_rvins->getOpcode() == RISCV_FSW) {
                        // if (OpTable[cur_rvins->getOpcode()].ins_formattype ==
                        // RvOpInfo::I_type||OpTable[cur_rvins->getOpcode()].ins_formattype == RvOpInfo::S_type) {
                        it = block->erase(it);
                        auto imm_reg = current_func->GetNewRegister(INT64.data_type, INT64.data_length);
                        auto addr_reg = current_func->GetNewRegister(INT64.data_type, INT64.data_length);
                        block->insert(it, rvconstructor->ConstructCopyRegImmI(imm_reg, cur_rvins->getImm(), INT64));
                        Register addrbase_reg;
                        if (cur_rvins->getOpcode() == RISCV_LD || cur_rvins->getOpcode() == RISCV_LW ||
                            cur_rvins->getOpcode() == RISCV_FLW) {
                            addrbase_reg = cur_rvins->getRs1();
                            cur_rvins->setRs1(addr_reg);
                        } else {
                            addrbase_reg = cur_rvins->getRs2();
                            cur_rvins->setRs2(addr_reg);
                        }
                        block->insert(it, rvconstructor->ConstructR(RISCV_ADD, addr_reg, addrbase_reg, imm_reg));
                        cur_rvins->setImm(0);
                        block->insert(it, cur_rvins);
                        --it;
                        // }
                    } else if (OpTable[cur_rvins->getOpcode()].ins_formattype == RvOpInfo::I_type) {
                        it = block->erase(it);
                        auto imm_reg = current_func->GetNewRegister(INT64.data_type, INT64.data_length);
                        block->insert(it, rvconstructor->ConstructCopyRegImmI(imm_reg, cur_rvins->getImm(), INT64));
                        cur_rvins->setRs2(imm_reg);
                        cur_rvins->setImm(0);
                        switch (cur_rvins->getOpcode()) {
                        case RISCV_SLLI:
                            cur_rvins->setOpcode(RISCV_SLL, false);
                            break;
                        case RISCV_SRLI:
                            cur_rvins->setOpcode(RISCV_SRL, false);
                            break;
                        case RISCV_SRAI:
                            cur_rvins->setOpcode(RISCV_SRA, false);
                            break;
                        case RISCV_ADDI:
                            cur_rvins->setOpcode(RISCV_ADD, false);
                            break;
                        case RISCV_XORI:
                            cur_rvins->setOpcode(RISCV_XOR, false);
                            break;
                        case RISCV_ORI:
                            cur_rvins->setOpcode(RISCV_OR, false);
                            break;
                        case RISCV_ANDI:
                            cur_rvins->setOpcode(RISCV_AND, false);
                            break;
                        case RISCV_SLTI:
                            cur_rvins->setOpcode(RISCV_SLT, false);
                            break;
                        case RISCV_SLTIU:
                            cur_rvins->setOpcode(RISCV_SLTU, false);
                            break;
                        case RISCV_SLLIW:
                            cur_rvins->setOpcode(RISCV_SLLW, false);
                            break;
                        case RISCV_SRLIW:
                            cur_rvins->setOpcode(RISCV_SRLW, false);
                            break;
                        case RISCV_SRAIW:
                            cur_rvins->setOpcode(RISCV_SRAW, false);
                            break;
                        case RISCV_ADDIW:
                            cur_rvins->setOpcode(RISCV_ADDW, false);
                            break;
                        }
                        block->insert(it, cur_rvins);
                        --it;
                    }
                }
            }
        }
    }
}

typedef unsigned long long Uint64;
typedef unsigned int Uint32;
struct Multiplier {
    Uint64 m;
    int l;
};

Multiplier chooseMultiplier(Uint32 d, int p) {
    // l = ceil(log2(d))
    constexpr int N = 32;
    int l = N - __builtin_clz(d - 1);
    Uint64 low = (Uint64(1) << (N + l)) / d;
    Uint64 high = ((Uint64(1) << (N + l)) + (Uint64(1) << (N + l - p))) / d;
    while ((low >> 1) < (high >> 1) && l > 0)
        low >>= 1, high >>= 1, --l;
    return {high, l};
}

void RiscV64AlgStrenghReduce::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        std::map<int, int> IntConstPool;
        for (auto block : func->blocks) {
            cur_block = block;
            for (auto it = block->begin(); it != block->end(); ++it) {
                auto cur_ins = *it;
                if (cur_ins->arch == MachineBaseInstruction::COPY) {
                    auto cur_copyins = (MachineCopyInstruction *)cur_ins;
                    if (cur_copyins->GetCopyType() == INT64) {
                        if (cur_copyins->GetSrc()->op_type == MachineBaseOperand::IMMI) {
                            Assert(cur_copyins->GetDst()->op_type == MachineBaseOperand::REG);
                            auto dst_reg = ((MachineRegister *)cur_copyins->GetDst())->reg;
                            if (dst_reg.is_virtual) {
                                IntConstPool[dst_reg.reg_no] = ((MachineImmediateInt *)cur_copyins->GetSrc())->imm32;
                            }
                        }
                    }
                }
            }
            for (auto it = block->begin(); it != block->end(); ++it) {
                auto cur_ins = *it;
                if (cur_ins->arch == MachineBaseInstruction::RiscV) {
                    auto cur_rvins = (RiscV64Instruction *)cur_ins;
                    auto cur_op = cur_rvins->getOpcode();
                    if (cur_op == RISCV_MUL || cur_op == RISCV_MULW) {
                        auto reg1 = cur_rvins->getRs1();
                        auto reg2 = cur_rvins->getRs2();
                        if (reg1.is_virtual) {
                            if (IntConstPool.find(reg1.reg_no) != IntConstPool.end()) {
                                auto temp = reg1;
                                reg1 = reg2;
                                reg2 = temp;
                            }
                        }
                        if (reg2.is_virtual) {
                            if (IntConstPool.find(reg2.reg_no) != IntConstPool.end()) {
                                auto const_val = IntConstPool[reg2.reg_no];
                                if (cur_op == RISCV_MUL || cur_op == RISCV_MULW) {
                                    if (const_val == 1) {
                                        it = block->erase(it);
                                        block->insert(it,
                                                      rvconstructor->ConstructCopyReg(cur_rvins->getRd(), reg1, INT64));
                                        --it;
                                    } else if (const_val == -1) {
                                        it = block->erase(it);
                                        auto op = RISCV_SUBW;
                                        if (cur_op == RISCV_MUL) {
                                            op = RISCV_SUB;
                                        } else if (cur_op == RISCV_MULW) {
                                            op = RISCV_SUBW;
                                        }
                                        block->insert(it, rvconstructor->ConstructR(op, cur_rvins->getRd(),
                                                                                    GetPhysicalReg(RISCV_x0), reg1));
                                        --it;
                                    } else if (__builtin_popcount(const_val) == 1) {
                                        it = block->erase(it);
                                        auto op = cur_op;
                                        if (cur_op == RISCV_MUL) {
                                            op = RISCV_SLLI;
                                        } else if (cur_op == RISCV_MULW) {
                                            op = RISCV_SLLIW;
                                        }
                                        block->insert(it, rvconstructor->ConstructIImm(op, cur_rvins->getRd(), reg1,
                                                                                       __builtin_ctz(const_val)));
                                        --it;
                                    }
                                }
                            }
                        }
                    } else if (cur_op == RISCV_DIV || cur_op == RISCV_DIVW || cur_op == RISCV_REM ||
                               cur_op == RISCV_REMW) {
                        auto reg1 = cur_rvins->getRs1();
                        auto reg2 = cur_rvins->getRs2();
                        if (reg2.is_virtual) {
                            if (IntConstPool.find(reg2.reg_no) != IntConstPool.end()) {
                                auto const_val = IntConstPool[reg2.reg_no];
                                bool negative = false;
                                auto result_reg = cur_rvins->getRd();
                                if (cur_op == RISCV_DIV || cur_op == RISCV_DIVW) {
                                    if (const_val < 0) {
                                        const_val = -const_val;
                                        negative = true;
                                        result_reg = current_func->GetNewReg(INT64);
                                    }
                                    if (const_val == 1) {
                                        it = block->erase(it);
                                        block->insert(it, rvconstructor->ConstructCopyReg(result_reg, reg1, INT64));
                                    } else if (const_val == -1) {
                                        it = block->erase(it);
                                        auto op = RISCV_SUBW;
                                        if (cur_op == RISCV_DIV) {
                                            op = RISCV_SUB;
                                        } else if (cur_op == RISCV_DIVW) {
                                            op = RISCV_SUBW;
                                        }
                                        block->insert(
                                        it, rvconstructor->ConstructR(op, result_reg, GetPhysicalReg(RISCV_x0), reg1));
                                    } else if (const_val == 2) {
                                        it = block->erase(it);
                                        auto mid_reg = current_func->GetNewReg(INT64);
                                        auto mid2_reg = current_func->GetNewReg(INT64);
                                        block->insert(it, rvconstructor->ConstructIImm(RISCV_SRLIW, mid_reg, reg1, 31));
                                        block->insert(it,
                                                      rvconstructor->ConstructR(RISCV_ADD, mid2_reg, reg1, mid_reg));
                                        block->insert(
                                        it, rvconstructor->ConstructIImm(RISCV_SRAIW, result_reg, mid2_reg, 1));
                                    } else if (__builtin_popcount(const_val) == 1) {
                                        int log = __builtin_ctz(const_val);
                                        it = block->erase(it);
                                        auto mid_reg = current_func->GetNewReg(INT64);
                                        auto mid2_reg = current_func->GetNewReg(INT64);
                                        auto mid3_reg = current_func->GetNewReg(INT64);
                                        block->insert(it, rvconstructor->ConstructIImm(RISCV_SLLI, mid_reg, reg1, 1));
                                        block->insert(
                                        it, rvconstructor->ConstructIImm(RISCV_SRLI, mid2_reg, mid_reg, 64 - log));
                                        block->insert(it,
                                                      rvconstructor->ConstructR(RISCV_ADD, mid3_reg, reg1, mid2_reg));
                                        block->insert(
                                        it, rvconstructor->ConstructIImm(RISCV_SRAIW, result_reg, mid3_reg, log));
                                    } else {
                                        auto multiplier = chooseMultiplier(const_val, 31);
                                        int mult = multiplier.m & (0xFFFFFFFF);
                                        auto imm_reg = current_func->GetNewReg(INT64);
                                        auto mul_reg = current_func->GetNewReg(INT64);
                                        it = block->erase(it);
                                        block->insert(it, rvconstructor->ConstructCopyRegImmI(imm_reg, mult, INT64));
                                        block->insert(it, rvconstructor->ConstructR(RISCV_MUL, mul_reg, reg1, imm_reg));
                                        if (mult > 0) {
                                            auto sign_reg = current_func->GetNewReg(INT64);
                                            auto preres_reg = current_func->GetNewReg(INT64);
                                            block->insert(
                                            it, rvconstructor->ConstructIImm(RISCV_SRLI, sign_reg, mul_reg, 63));
                                            auto op = RISCV_SRAI;
                                            if (multiplier.l == 0) {
                                                op = RISCV_SRLI;
                                            }
                                            block->insert(it, rvconstructor->ConstructIImm(op, preres_reg, mul_reg,
                                                                                           32 + multiplier.l));
                                            block->insert(
                                            it, rvconstructor->ConstructR(RISCV_ADD, result_reg, preres_reg, sign_reg));
                                        } else {
                                            auto premul_reg = current_func->GetNewReg(INT64);
                                            auto realmul_reg = current_func->GetNewReg(INT64);
                                            auto sign_reg = current_func->GetNewReg(INT64);
                                            auto preres_reg = current_func->GetNewReg(INT64);
                                            block->insert(
                                            it, rvconstructor->ConstructIImm(RISCV_SRLI, premul_reg, mul_reg, 32));
                                            block->insert(
                                            it, rvconstructor->ConstructR(RISCV_ADD, realmul_reg, reg1, premul_reg));
                                            block->insert(
                                            it, rvconstructor->ConstructIImm(RISCV_SRLIW, sign_reg, realmul_reg, 31));
                                            block->insert(it, rvconstructor->ConstructIImm(RISCV_SRAIW, preres_reg,
                                                                                           realmul_reg, multiplier.l));
                                            block->insert(
                                            it, rvconstructor->ConstructR(RISCV_ADD, result_reg, preres_reg, sign_reg));
                                        }
                                    }
                                    if (negative) {
                                        block->insert(it,
                                                      rvconstructor->ConstructR(RISCV_SUBW, cur_rvins->getRd(),
                                                                                GetPhysicalReg(RISCV_x0), result_reg));
                                    }
                                    --it;
                                } else if (cur_op == RISCV_REM || cur_op == RISCV_REMW) {
                                    if (const_val < 0) {
                                        const_val = -const_val;
                                    }
                                    if (const_val == 1) {
                                        it = block->erase(it);
                                        block->insert(
                                        it, rvconstructor->ConstructCopyRegImmI(cur_rvins->getRd(), 0, INT64));
                                        --it;
                                    } else if (const_val == 2) {
                                        it = block->erase(it);
                                        auto mid1_reg = current_func->GetNewReg(INT64);
                                        auto mid2_reg = current_func->GetNewReg(INT64);
                                        auto mid3_reg = current_func->GetNewReg(INT64);
                                        block->insert(it,
                                                      rvconstructor->ConstructIImm(RISCV_SRLIW, mid1_reg, reg1, 31));
                                        block->insert(it,
                                                      rvconstructor->ConstructR(RISCV_ADD, mid2_reg, mid1_reg, reg1));
                                        block->insert(it,
                                                      rvconstructor->ConstructIImm(RISCV_ANDI, mid3_reg, mid2_reg, -2));
                                        block->insert(
                                        it, rvconstructor->ConstructR(RISCV_SUBW, cur_rvins->getRd(), reg1, mid3_reg));
                                        --it;
                                    } else if (__builtin_popcount(const_val) == 1) {
                                        int log = __builtin_ctz(const_val);
                                        it = block->erase(it);
                                        auto mid1_reg = current_func->GetNewReg(INT64);
                                        auto mid2_reg = current_func->GetNewReg(INT64);
                                        auto mid3_reg = current_func->GetNewReg(INT64);
                                        auto mid4_reg = current_func->GetNewReg(INT64);
                                        block->insert(it, rvconstructor->ConstructIImm(RISCV_SLLI, mid1_reg, reg1, 1));
                                        block->insert(
                                        it, rvconstructor->ConstructIImm(RISCV_SRLI, mid2_reg, mid1_reg, 64 - log));
                                        block->insert(it,
                                                      rvconstructor->ConstructR(RISCV_ADD, mid3_reg, mid2_reg, reg1));
                                        block->insert(
                                        it, rvconstructor->ConstructIImm(RISCV_ANDI, mid4_reg, mid3_reg, -const_val));
                                        block->insert(
                                        it, rvconstructor->ConstructR(RISCV_SUBW, cur_rvins->getRd(), reg1, mid4_reg));
                                        --it;
                                    } else {
                                        auto multiplier = chooseMultiplier(const_val, 31);
                                        int mult = multiplier.m & (0xFFFFFFFF);
                                        auto imm_reg = current_func->GetNewReg(INT64);
                                        auto mul_reg = current_func->GetNewReg(INT64);
                                        auto div_reg = current_func->GetNewReg(INT64);
                                        it = block->erase(it);
                                        block->insert(it, rvconstructor->ConstructCopyRegImmI(imm_reg, mult, INT64));
                                        block->insert(it, rvconstructor->ConstructR(RISCV_MUL, mul_reg, reg1, imm_reg));
                                        if (mult > 0) {
                                            auto sign_reg = current_func->GetNewReg(INT64);
                                            auto preres_reg = current_func->GetNewReg(INT64);
                                            block->insert(
                                            it, rvconstructor->ConstructIImm(RISCV_SRLI, sign_reg, mul_reg, 63));
                                            auto op = RISCV_SRAI;
                                            if (multiplier.l == 0) {
                                                op = RISCV_SRLI;
                                            }
                                            block->insert(it, rvconstructor->ConstructIImm(op, preres_reg, mul_reg,
                                                                                           32 + multiplier.l));
                                            block->insert(
                                            it, rvconstructor->ConstructR(RISCV_ADD, div_reg, preres_reg, sign_reg));
                                        } else {
                                            auto premul_reg = current_func->GetNewReg(INT64);
                                            auto realmul_reg = current_func->GetNewReg(INT64);
                                            auto sign_reg = current_func->GetNewReg(INT64);
                                            auto preres_reg = current_func->GetNewReg(INT64);
                                            block->insert(
                                            it, rvconstructor->ConstructIImm(RISCV_SRLI, premul_reg, mul_reg, 32));
                                            block->insert(
                                            it, rvconstructor->ConstructR(RISCV_ADD, realmul_reg, reg1, premul_reg));
                                            block->insert(
                                            it, rvconstructor->ConstructIImm(RISCV_SRLIW, sign_reg, realmul_reg, 31));
                                            block->insert(it, rvconstructor->ConstructIImm(RISCV_SRAIW, preres_reg,
                                                                                           realmul_reg, multiplier.l));
                                            block->insert(
                                            it, rvconstructor->ConstructR(RISCV_ADD, div_reg, preres_reg, sign_reg));
                                        }
                                        // result_reg = reg1 - div_reg * const_val
                                        if (false) {
                                        } else {
                                            auto mul_imm = current_func->GetNewReg(INT64);
                                            auto product_reg = current_func->GetNewReg(INT64);
                                            block->insert(
                                            it, rvconstructor->ConstructCopyRegImmI(mul_imm, const_val, INT64));
                                            block->insert(
                                            it, rvconstructor->ConstructR(RISCV_MUL, product_reg, div_reg, mul_imm));
                                            block->insert(
                                            it, rvconstructor->ConstructR(RISCV_SUBW, result_reg, reg1, product_reg));
                                        }
                                        --it;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}