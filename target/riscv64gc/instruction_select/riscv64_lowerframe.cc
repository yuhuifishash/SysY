#include "riscv64_lowerframe.h"

constexpr int save_regids[] = {
RISCV_s0,  RISCV_s1,  RISCV_s2,  RISCV_s3,  RISCV_s4,   RISCV_s5,   RISCV_s6,  RISCV_s7,  RISCV_s8,
RISCV_s9,  RISCV_s10, RISCV_s11, RISCV_fs0, RISCV_fs1,  RISCV_fs2,  RISCV_fs3, RISCV_fs4, RISCV_fs5,
RISCV_fs6, RISCV_fs7, RISCV_fs8, RISCV_fs9, RISCV_fs10, RISCV_fs11, RISCV_ra,
};
constexpr int saveregnum = 25;

void RiscV64LowerFrame::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        Register save_regs[1 + 12 + 12];
        for (int i = 0; i < saveregnum; i++) {
            if (save_regids[i] >= RISCV_x0 && save_regids[i] <= RISCV_x31) {
                save_regs[i] = func->GetNewRegister(INT64.data_type, INT64.data_length);
            } else {
                save_regs[i] = func->GetNewRegister(FLOAT_32.data_type, FLOAT_32.data_length);
            }
        }
        for (auto &b : func->blocks) {
            cur_block = b;
            if (b->getLabelId() == 0) {
                int i32_cnt = 0;
                int f32_cnt = 0;
                int para_offset = 0;
                for (auto para : func->GetParameters()) {
                    if (para.type.data_type == INT64.data_type) {
                        if (i32_cnt < 8) {
                            b->push_front(
                            rvconstructor->ConstructCopyReg(para, GetPhysicalReg(RISCV_a0 + i32_cnt), INT64));
                        }
                        if (i32_cnt >= 8) {
                            auto offset_reg = func->GetNewRegister(INT64.data_type, INT64.data_length);
                            auto addr_reg = func->GetNewRegister(INT64.data_type, INT64.data_length);
                            b->push_front(rvconstructor->ConstructIImm(RISCV_LD, para, addr_reg, 0));
                            b->push_front(
                            rvconstructor->ConstructR(RISCV_ADD, addr_reg, GetPhysicalReg(RISCV_sp), offset_reg));
                            auto reloc_para =
                            rvconstructor->ConstructUImm(RISCV_LI, offset_reg, func->GetStackSize() + para_offset);
                            ((RiscV64Function *)current_func)->AddStkParaIns(reloc_para);
                            b->push_front(reloc_para);
                            // b->push_front(rvconstructor->ConstructIImm(RISCV_LD, para,
                            // GetPhysicalReg(RISCV_sp),func->GetStackSize()+para_offset));
                            para_offset += 8;
                        }
                        i32_cnt++;
                    } else if (para.type.data_type == FLOAT_32.data_type) {
                        if (f32_cnt < 8) {
                            b->push_front(
                            rvconstructor->ConstructCopyReg(para, GetPhysicalReg(RISCV_fa0 + f32_cnt), FLOAT_32));
                        }
                        if (f32_cnt >= 8) {
                            auto offset_reg = func->GetNewRegister(INT64.data_type, INT64.data_length);
                            auto addr_reg = func->GetNewRegister(INT64.data_type, INT64.data_length);
                            b->push_front(rvconstructor->ConstructIImm(RISCV_FLD, para, addr_reg, 0));
                            b->push_front(
                            rvconstructor->ConstructR(RISCV_ADD, addr_reg, GetPhysicalReg(RISCV_sp), offset_reg));
                            auto reloc_para =
                            rvconstructor->ConstructUImm(RISCV_LI, offset_reg, func->GetStackSize() + para_offset);
                            ((RiscV64Function *)current_func)->AddStkParaIns(reloc_para);
                            b->push_front(reloc_para);
                            // b->push_front(rvconstructor->ConstructIImm(RISCV_FLD, para,
                            // GetPhysicalReg(RISCV_sp),func->GetStackSize()+para_offset));
                            para_offset += 8;
                        }
                        f32_cnt++;
                    } else {
                        ERROR("Unknown type");
                    }
                }
                b->push_front(rvconstructor->ConstructComment("Lowerframe: parameters\n"));
                for (int i = 0; i < saveregnum; i++) {
                    if (save_regs[i].type == INT64) {
                        b->push_front(
                        rvconstructor->ConstructCopyReg(save_regs[i], GetPhysicalReg(save_regids[i]), INT64));
                    } else {
                        b->push_front(
                        rvconstructor->ConstructCopyReg(save_regs[i], GetPhysicalReg(save_regids[i]), FLOAT_32));
                    }
                }
                b->push_front(rvconstructor->ConstructComment("Lowerframe: save regs\n"));
            }
            auto last_ins = *(b->ReverseBegin());
            Assert(last_ins->arch == MachineBaseInstruction::RiscV);
            auto riscv_last_ins = (RiscV64Instruction *)last_ins;
            if (riscv_last_ins->getOpcode() == RISCV_JALR) {
                if (riscv_last_ins->getRd() == GetPhysicalReg(RISCV_x0)) {
                    if (riscv_last_ins->getRs1() == GetPhysicalReg(RISCV_ra)) {
                        Assert(riscv_last_ins->getImm() == 0);
                        b->pop_back();
                        b->push_back(rvconstructor->ConstructComment("LowerFrame: restore regs\n"));
                        for (int i = 0; i < saveregnum; i++) {
                            if (save_regs[i].type == INT64) {
                                b->push_back(
                                rvconstructor->ConstructCopyReg(GetPhysicalReg(save_regids[i]), save_regs[i], INT64));
                            } else {
                                b->push_back(rvconstructor->ConstructCopyReg(GetPhysicalReg(save_regids[i]),
                                                                             save_regs[i], FLOAT_32));
                            }
                        }
                        b->push_back(riscv_last_ins);
                    }
                }
            }
        }
    }
}

void RiscV64LowerStack::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        for (auto &b : func->blocks) {
            cur_block = b;
            if (b->getLabelId() == 0) {
                if (func->GetStackSize() <= 2032) {
                    b->push_front(rvconstructor->ConstructIImm(RISCV_ADDI, GetPhysicalReg(RISCV_sp),
                                                               GetPhysicalReg(RISCV_sp),
                                                               -func->GetStackSize()));    // sub sp
                } else {
                    auto stacksz_reg = GetPhysicalReg(RISCV_t0);
                    b->push_front(rvconstructor->ConstructR(RISCV_SUB, GetPhysicalReg(RISCV_sp),
                                                            GetPhysicalReg(RISCV_sp), stacksz_reg));
                    b->push_front(rvconstructor->ConstructUImm(RISCV_LI, stacksz_reg, func->GetStackSize()));
                }
                b->push_front(rvconstructor->ConstructComment("Lowerstack: sub sp\n"));
            }
            auto last_ins = *(b->ReverseBegin());
            Assert(last_ins->arch == MachineBaseInstruction::RiscV);
            auto riscv_last_ins = (RiscV64Instruction *)last_ins;
            if (riscv_last_ins->getOpcode() == RISCV_JALR) {
                if (riscv_last_ins->getRd() == GetPhysicalReg(RISCV_x0)) {
                    if (riscv_last_ins->getRs1() == GetPhysicalReg(RISCV_ra)) {
                        Assert(riscv_last_ins->getImm() == 0);
                        b->pop_back();
                        b->push_back(rvconstructor->ConstructComment("Lowerstack: add sp\n"));
                        if (func->GetStackSize() <= 2032) {
                            b->push_back(rvconstructor->ConstructIImm(RISCV_ADDI, GetPhysicalReg(RISCV_sp),
                                                                      GetPhysicalReg(RISCV_sp), func->GetStackSize()));
                        } else {
                            auto stacksz_reg = GetPhysicalReg(RISCV_t0);
                            b->push_back(rvconstructor->ConstructUImm(RISCV_LI, stacksz_reg, func->GetStackSize()));
                            b->push_back(rvconstructor->ConstructR(RISCV_ADD, GetPhysicalReg(RISCV_sp),
                                                                   GetPhysicalReg(RISCV_sp), stacksz_reg));
                        }
                        b->push_back(riscv_last_ins);
                    }
                }
            }
        }
    }
}