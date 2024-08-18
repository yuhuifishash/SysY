#include "riscv64_peehole.h"

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

bool TryMemOffset (std::list<MachineBaseInstruction *>::iterator &pre,
                    std::list<MachineBaseInstruction *>::iterator &cur, MachineBlock *block) {
    auto pre_ins = *pre;
    auto cur_ins = *cur;
    if (pre_ins->arch == MachineBaseInstruction::RiscV && cur_ins->arch == MachineBaseInstruction::RiscV) {
        auto pre_rvins = (RiscV64Instruction *)pre_ins;
        auto cur_rvins = (RiscV64Instruction *)cur_ins;
        if (pre_rvins->getOpcode() == RISCV_ADDI) {
            if (cur_rvins->getUseLabel() == false) {
                if (cur_rvins->getOpcode() == RISCV_LD || cur_rvins->getOpcode() == RISCV_LW || cur_rvins->getOpcode() == RISCV_FLD || cur_rvins->getOpcode() == RISCV_FLW) {
                    if (pre_rvins->getRd() == cur_rvins->getRs1()) {
                        if (pre_rvins->getUseLabel() == false) {
                            int new_imm = pre_rvins->getImm() + cur_rvins->getImm();
                            if (new_imm >= -2048 && new_imm <= 2047) {
                                cur_rvins->setImm(new_imm);
                                cur_rvins->setRs1(pre_rvins->getRs1());
                                return true;
                            }
                        } else if (cur_rvins->getImm() == 0) {
                            Log("Optimized ld +label");
                            cur_rvins->setUseLabel(true);
                            cur_rvins->setLabel(pre_rvins->getLabel());
                            cur_rvins->setRs1(pre_rvins->getRs1());
                            return true;
                        }

                    }
                } else if (cur_rvins->getOpcode() == RISCV_SD || cur_rvins->getOpcode() == RISCV_SW || cur_rvins->getOpcode() == RISCV_FSD || cur_rvins->getOpcode() == RISCV_FSW) {
                    if (pre_rvins->getRd() == cur_rvins->getRs2()) {
                        if (pre_rvins->getUseLabel() == false) {
                            int new_imm = pre_rvins->getImm() + cur_rvins->getImm();
                            if (new_imm >= -2048 && new_imm <= 2047) {
                                cur_rvins->setImm(new_imm);
                                cur_rvins->setRs2(pre_rvins->getRs1());
                                return true;
                            }
                        } else if (cur_rvins->getImm() == 0) {
                            Log("Optimized sd +label");
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

void RiscV64SSAPeehole::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        for (auto block : func->blocks) {
            cur_block = block;
            for (auto it = block->begin(); it != block->end(); ++it) {
                auto jt = it;
                for (int i = 1; i <= length; i++) {
                    if (jt == block->begin())
                        break;
                    --jt;
                    if (TryAddi(jt, it, block)) {
                        break;
                    }
                    // if (Tryfmla(jt,it,block)){ break; }
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