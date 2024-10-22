#include "riscv64_peehole.h"

extern bool optimize_flag;

bool TryAddi(std::list<MachineBaseInstruction *>::iterator &pre, std::list<MachineBaseInstruction *>::iterator &cur,
             MachineBlock *block) {
    auto pre_ins = *pre;
    auto cur_ins = *cur;
    if (pre_ins->arch == MachineBaseInstruction::COPY) {
        auto pre_copyins = (MachineCopyInstruction *)pre_ins;
        if (pre_copyins->GetSrc()->op_type == MachineBaseOperand::IMMI) {
            Assert(pre_copyins->GetDst()->op_type == MachineBaseOperand::REG);
            auto src_imm = (MachineImmediateInt *)pre_copyins->GetSrc();
            if (src_imm->imm32 >= -2048 && src_imm->imm32 <= 2047) {
                auto dst_reg = (MachineRegister *)pre_copyins->GetDst();
                if (cur_ins->arch == MachineBaseInstruction::RiscV) {
                    auto cur_rvins = (RiscV64Instruction *)cur_ins;
                    if (cur_rvins->getOpcode() == RISCV_ADD) {
                        if (cur_rvins->getRs2() == dst_reg->reg) {
                            cur = block->erase(cur);
                            block->insert(cur, rvconstructor->ConstructIImm(RISCV_ADDI, cur_rvins->getRd(),
                                                                            cur_rvins->getRs1(), src_imm->imm32));
                            --cur;
                            return true;
                        }
                    }
                }
            }
        }
    }
    return false;
}

bool Tryfmla(std::list<MachineBaseInstruction *>::iterator &pre, std::list<MachineBaseInstruction *>::iterator &cur,
             MachineBlock *block) {
    auto pre_ins = *pre;
    auto cur_ins = *cur;
    if (pre_ins->arch == MachineBaseInstruction::RiscV && cur_ins->arch == MachineBaseInstruction::RiscV) {
        auto pre_rvins = (RiscV64Instruction *)pre_ins;
        auto cur_rvins = (RiscV64Instruction *)cur_ins;
        if (pre_rvins->getOpcode() == RISCV_FMUL_S && cur_rvins->getOpcode() == RISCV_FADD_S) {
            if (!pre_rvins->getRd().is_virtual)
                return false;
            if (pre_rvins->getRd() == cur_rvins->getRs1() || pre_rvins->getRd() == cur_rvins->getRs2()) {
                auto diff_op = cur_rvins->getRs1();
                if (pre_rvins->getRd() == cur_rvins->getRs1()) {
                    diff_op = cur_rvins->getRs2();
                    cur = block->erase(cur);
                    block->insert(cur, rvconstructor->ConstructR4(RISCV_FMADD_S, cur_rvins->getRd(),
                                                                  pre_rvins->getRs1(), pre_rvins->getRs2(), diff_op));
                    --cur;
                    return true;
                } else if (pre_rvins->getRd() == cur_rvins->getRs2()) {
                    diff_op = cur_rvins->getRs1();
                }
            }
        }
        if (pre_rvins->getOpcode() == RISCV_FMUL_S && cur_rvins->getOpcode() == RISCV_FSUB_S) {
            if (!pre_rvins->getRd().is_virtual)
                return false;
            if (pre_rvins->getRd() == cur_rvins->getRs1() || pre_rvins->getRd() == cur_rvins->getRs2()) {
                auto diff_op = cur_rvins->getRs1();
                if (pre_rvins->getRd() == cur_rvins->getRs1()) {
                    // r0 = r1 * r2
                    // r3 = r0 - r4

                    // r3 = r1 * r2 - r4
                    // Log("Performed fmsub");
                    diff_op = cur_rvins->getRs2();
                    cur = block->erase(cur);
                    block->insert(cur, rvconstructor->ConstructR4(RISCV_FMSUB_S, cur_rvins->getRd(),
                                                                  pre_rvins->getRs1(), pre_rvins->getRs2(), diff_op));
                    --cur;
                    return true;
                } else if (pre_rvins->getRd() == cur_rvins->getRs2()) {
                    // r0 = r1 * r2
                    // r3 = r4 - r0

                    // r3 = -r1 * r2 + r4
                    // Log("Performed fnmadd");
                    diff_op = cur_rvins->getRs1();
                    cur = block->erase(cur);
                    block->insert(cur, rvconstructor->ConstructR4(RISCV_FNMADD_S, cur_rvins->getRd(),
                                                                  pre_rvins->getRs1(), pre_rvins->getRs2(), diff_op));
                    --cur;
                    return true;
                }
            }
        }
    }
    return false;
}

bool Tryshxadd(std::list<MachineBaseInstruction *>::iterator &pre, std::list<MachineBaseInstruction *>::iterator &cur,
               MachineBlock *block) {
    auto pre_ins = *pre;
    auto cur_ins = *cur;
    if (pre_ins->arch == MachineBaseInstruction::RiscV && cur_ins->arch == MachineBaseInstruction::RiscV) {
        auto pre_rvins = (RiscV64Instruction *)pre_ins;
        auto cur_rvins = (RiscV64Instruction *)cur_ins;
        if ((pre_rvins->getOpcode() == RISCV_SLLI && cur_rvins->getOpcode() == RISCV_ADD) ||
            (pre_rvins->getOpcode() == RISCV_SLLIW && cur_rvins->getOpcode() == RISCV_ADDW)) {
            if (!pre_rvins->getRd().is_virtual)
                return false;
            if (pre_rvins->getImm() > 3 || pre_rvins->getImm() <= 0)
                return false;
            if (pre_rvins->getRd() == cur_rvins->getRs1() || pre_rvins->getRd() == cur_rvins->getRs2()) {
                auto diff_op = cur_rvins->getRs1();
                int opcode = 0;
                if (pre_rvins->getOpcode() == RISCV_SLLI) {
                    // Log("SHxADD");
                    opcode = RISCV_SH1ADD - 1 + pre_rvins->getImm();
                } else {
                    // Log("SHxADD.UW");
                    opcode = RISCV_SH1ADDUW - 1 + pre_rvins->getImm();
                }
                if (pre_rvins->getRd() == cur_rvins->getRs1()) {
                    diff_op = cur_rvins->getRs2();
                    cur = block->erase(cur);
                    block->insert(cur,
                                  rvconstructor->ConstructR(opcode, cur_rvins->getRd(), pre_rvins->getRs1(), diff_op));
                    --cur;
                } else if (pre_rvins->getRd() == cur_rvins->getRs2()) {
                    diff_op = cur_rvins->getRs1();
                    cur = block->erase(cur);
                    block->insert(cur,
                                  rvconstructor->ConstructR(opcode, cur_rvins->getRd(), pre_rvins->getRs1(), diff_op));
                    --cur;
                }
            }
        }
    }
    return false;
}

bool TryConstshxadd(std::list<MachineBaseInstruction *>::iterator &pre,
                    std::list<MachineBaseInstruction *>::iterator &cur, MachineBlock *block,
                    MachineFunction *current_func) {
    auto pre_ins = *pre;
    auto cur_ins = *cur;
    if (pre_ins->arch == MachineBaseInstruction::COPY && cur_ins->arch == MachineBaseInstruction::RiscV) {
        auto precopy_ins = (MachineCopyInstruction *)pre_ins;
        auto cur_rvins = (RiscV64Instruction *)cur_ins;
        if (precopy_ins->GetSrc()->op_type == MachineBaseOperand::IMMI) {
            auto pre_imm = ((MachineImmediateInt *)(precopy_ins->GetSrc()))->imm32;
            if (pre_imm <= 2047)
                return false;
            if (cur_rvins->getOpcode() == RISCV_ADD) {
                Assert(precopy_ins->GetDst()->op_type == MachineBaseOperand::REG);
                auto pre_rd = ((MachineRegister *)(precopy_ins->GetDst()))->reg;
                if (pre_rd == cur_rvins->getRs1() || pre_rd == cur_rvins->getRs2()) {
                    int ctz = __builtin_ctz(pre_imm);
                    if (ctz > 3)
                        ctz = 3;
                    if (ctz == 0)
                        return false;
                    int after_imm = pre_imm >> ctz;
                    if (after_imm <= 2047 && after_imm >= -2048) {
                        auto mid_reg = current_func->GetNewReg(INT64);
                        auto diff_op = cur_rvins->getRs1();
                        if (cur_rvins->getRs1() == pre_rd) {
                            diff_op = cur_rvins->getRs2();
                        } else {
                            diff_op = cur_rvins->getRs1();
                        }
                        int base_op = RISCV_SH1ADD;
                        if (cur_rvins->getOpcode() == RISCV_ADDW) {
                            base_op = RISCV_SH1ADDUW;
                            Log("ADD %d SH%dADDUW %d", pre_imm, ctz, after_imm);
                        }
                        cur = block->erase(cur);
                        block->insert(cur, rvconstructor->ConstructCopyRegImmI(mid_reg, after_imm, INT64));
                        block->insert(
                        cur, rvconstructor->ConstructR(base_op - 1 + ctz, cur_rvins->getRd(), mid_reg, diff_op));
                        --cur;
                    }
                }
            }
        }
    }
    return false;
}

bool TryMemOffset(std::list<MachineBaseInstruction *>::iterator &pre,
                  std::list<MachineBaseInstruction *>::iterator &cur, MachineBlock *block) {
    auto pre_ins = *pre;
    auto cur_ins = *cur;
    if (pre_ins->arch == MachineBaseInstruction::RiscV && cur_ins->arch == MachineBaseInstruction::RiscV) {
        auto pre_rvins = (RiscV64Instruction *)pre_ins;
        auto cur_rvins = (RiscV64Instruction *)cur_ins;
        if (pre_rvins->getOpcode() == RISCV_ADDI) {
            if (cur_rvins->getUseLabel() == false) {
                if (cur_rvins->getOpcode() == RISCV_LD || cur_rvins->getOpcode() == RISCV_LW ||
                    cur_rvins->getOpcode() == RISCV_FLD || cur_rvins->getOpcode() == RISCV_FLW) {
                    if (pre_rvins->getRd() == cur_rvins->getRs1()) {
                        if (pre_rvins->getUseLabel() == false) {
                            int new_imm = pre_rvins->getImm() + cur_rvins->getImm();
                            if (new_imm >= -2048 && new_imm <= 2047) {
                                cur_rvins->setImm(new_imm);
                                cur_rvins->setRs1(pre_rvins->getRs1());
                                return true;
                            }
                        } else if (cur_rvins->getImm() == 0) {
                            // Log("Optimized ld +label");
                            cur_rvins->setUseLabel(true);
                            cur_rvins->setLabel(pre_rvins->getLabel());
                            cur_rvins->setRs1(pre_rvins->getRs1());
                            return true;
                        }
                    }
                } else if (cur_rvins->getOpcode() == RISCV_SD || cur_rvins->getOpcode() == RISCV_SW ||
                           cur_rvins->getOpcode() == RISCV_FSD || cur_rvins->getOpcode() == RISCV_FSW) {
                    if (pre_rvins->getRd() == cur_rvins->getRs2()) {
                        if (pre_rvins->getUseLabel() == false) {
                            int new_imm = pre_rvins->getImm() + cur_rvins->getImm();
                            if (new_imm >= -2048 && new_imm <= 2047) {
                                cur_rvins->setImm(new_imm);
                                cur_rvins->setRs2(pre_rvins->getRs1());
                                return true;
                            }
                        } else if (cur_rvins->getImm() == 0) {
                            // Log("Optimized sd +label");
                            cur_rvins->setUseLabel(true);
                            cur_rvins->setLabel(pre_rvins->getLabel());
                            cur_rvins->setRs2(pre_rvins->getRs1());
                            return true;
                        }
                    }
                }
            }
        }
    }
    return false;
}

bool InFMList(int opcode) {
    constexpr int fmlist[] = {RISCV_FMADD_S, RISCV_FMSUB_S, RISCV_FNMADD_S, RISCV_FNMSUB_S};
    for (auto op : fmlist) {
        if (opcode == op) {
            return true;
        }
    }
    return false;
}

int ReverseMulOp(int opcode) {
    Assert(InFMList(opcode));
    if (opcode == RISCV_FMADD_S) {
        return RISCV_FNMADD_S;
    } else if (opcode == RISCV_FMSUB_S) {
        return RISCV_FNMSUB_S;
    } else if (opcode == RISCV_FNMADD_S) {
        return RISCV_FMADD_S;
    } else if (opcode == RISCV_FNMSUB_S) {
        return RISCV_FMSUB_S;
    }
    ERROR("...");
    return -1;
}

int ReverseAddOp(int opcode) {
    Assert(InFMList(opcode));
    if (opcode == RISCV_FMADD_S) {
        return RISCV_FMSUB_S;
    } else if (opcode == RISCV_FMSUB_S) {
        return RISCV_FMADD_S;
    } else if (opcode == RISCV_FNMADD_S) {
        return RISCV_FNMSUB_S;
    } else if (opcode == RISCV_FNMSUB_S) {
        return RISCV_FNMADD_S;
    }
}

#ifdef FMATH_FAST
#define FNEG_AWARE
#endif

void RiscV64SSAPeehole::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
#ifdef FNEG_AWARE
        std::map<Register, Register> negative_map;
#endif
        for (auto block : func->blocks) {
            cur_block = block;
            for (auto it = block->begin(); it != block->end(); ++it) {
#ifdef FNEG_AWARE
                if ((*it)->arch == MachineBaseInstruction::RiscV) {
                    auto rvins = (RiscV64Instruction *)*it;
                    if (rvins->getOpcode() == RISCV_FNEG_S) {
                        Register rd = rvins->getRd();
                        Register rs1 = rvins->getRs1();
                        if (rd.is_virtual && rs1.is_virtual) {
                            Assert(negative_map.find(rd) == negative_map.end());
                            negative_map[rd] = rs1;
                        }
                    }
                }
#endif
                auto jt = it;
                for (int i = 1; i <= length; i++) {
                    if (jt == block->begin())
                        break;
                    --jt;
                    if (TryAddi(jt, it, block)) {
                        break;
                    }
#ifdef FMATH_FAST
                    if (Tryfmla(jt, it, block)) {
                        break;
                    }
#endif
                    if (Tryshxadd(jt, it, block)) {
                        break;
                    }
                    if (TryConstshxadd(jt, it, block, current_func)) {
                        break;
                    }
                    if (TryMemOffset(jt, it, block)) {
                        break;
                    }
                }
            }
#ifdef FNEG_AWARE
            for (auto it = block->begin(); it != block->end(); ++it) {
                if ((*it)->arch == MachineBaseInstruction::RiscV) {
                    auto rvins = (RiscV64Instruction *)*it;
                    if (InFMList(rvins->getOpcode())) {
                        Assert(OpTable[rvins->getOpcode()].ins_formattype == RvOpInfo::R4_type);
                        Log("FNEG Applied on FMADDs");
                        auto rs1 = rvins->getRs1();
                        auto rs2 = rvins->getRs2();
                        auto rs3 = rvins->getRs3();
                        int mul_neg = false;
                        int add_neg = false;
                        if (negative_map.find(rs1) != negative_map.end()) {
                            rvins->setRs1(negative_map[rs1]);
                            mul_neg = !mul_neg;
                        }
                        if (negative_map.find(rs2) != negative_map.end()) {
                            rvins->setRs2(negative_map[rs2]);
                            mul_neg = !mul_neg;
                        }
                        if (negative_map.find(rs3) != negative_map.end()) {
                            rvins->setRs3(negative_map[rs3]);
                            add_neg = !add_neg;
                        }
                        if (mul_neg) {
                            rvins->setOpcode(ReverseMulOp(rvins->getOpcode()), false);
                        }
                        if (add_neg) {
                            rvins->setOpcode(ReverseAddOp(rvins->getOpcode()), false);
                        }
                    }
                }
            }
#endif
        }
    }
}

void RiscV64PostRAPeehole::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        for (auto block : func->blocks) {
            cur_block = block;
            for (auto it = ++block->begin(); it != block->end(); ++it) {
                auto cur_ins = *it;
                auto pre_ins = *(--it);
                ++it;
                if (cur_ins->arch == MachineBaseInstruction::RiscV && pre_ins->arch == MachineBaseInstruction::RiscV) {
                    auto cur_rvins = (RiscV64Instruction *)cur_ins;
                    auto pre_rvins = (RiscV64Instruction *)pre_ins;
                    if (cur_rvins->getOpcode() == RISCV_LD && pre_rvins->getOpcode() == RISCV_SD) {
                        if (cur_rvins->getRd() == pre_rvins->getRs1()) {
                            if (cur_rvins->getRs1() == pre_rvins->getRs2()) {
                                if (cur_rvins->getUseLabel() == pre_rvins->getUseLabel()) {
                                    if (cur_rvins->getUseLabel()) {
                                        if (cur_rvins->getLabel() == pre_rvins->getLabel()) {
                                            // Log("Elimated Redundant Load from label");
                                            it = block->erase(it);
                                            --it;
                                        }
                                    } else {
                                        if (cur_rvins->getImm() == pre_rvins->getImm()) {
                                            // Log("Elimated Redundant Load from reg");
                                            it = block->erase(it);
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
}

void RiscV64SSADeadDefElimate::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        std::map<int, int> vreg_refcnt;
        for (auto block : func->blocks) {
            cur_block = block;
            for (auto it = block->begin(); it != block->end(); ++it) {
                auto cur_ins = *it;
                for (auto reg : cur_ins->GetReadReg()) {
                    if (reg->is_virtual) {
                        vreg_refcnt[reg->reg_no] = vreg_refcnt[reg->reg_no] + 1;
                    }
                }
            }
        }
        for (auto block : func->blocks) {
            cur_block = block;
            for (auto it = block->begin(); it != block->end(); ++it) {
                auto cur_ins = *it;
                if (cur_ins->GetWriteReg().size() == 1) {
                    auto rd = cur_ins->GetWriteReg()[0];
                    if (rd->is_virtual) {
                        if (vreg_refcnt[rd->reg_no] == 0) {
                            it = block->erase(it);
                            --it;
                        }
                    }
                }
            }
        }
    }
}