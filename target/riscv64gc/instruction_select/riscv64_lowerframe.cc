#include "riscv64_lowerframe.h"

void RiscV64LowerFrame::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        for (auto &b : func->blocks) {
            cur_block = b;
            if (b->getLabelId() == 0) {
                int i32_cnt = 0;
                int f32_cnt = 0;
                for (auto para : func->GetParameters()) {
                    if (para.type.data_type == INT32.data_type) {
                        b->push_front(rvconstructor->ConstructCopyReg(para, GetPhysicalReg(RISCV_a0 + i32_cnt), INT32));
                        if (i32_cnt >= 8) {
                            TODO("INT Parameter in stack");
                        }
                        i32_cnt++;
                    } else if (para.type.data_type == FLOAT_32.data_type) {
                        b->push_front(
                        rvconstructor->ConstructCopyReg(para, GetPhysicalReg(RISCV_fa0 + f32_cnt), FLOAT_32));
                        if (f32_cnt >= 8) {
                            TODO("FLOAT Parameter in stack");
                        }
                        f32_cnt++;
                    } else {
                        ERROR("Unknown type");
                    }
                }
                b->push_front(rvconstructor->ConstructComment("Lowerframe: parameters\n"));
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
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_ra),
                                                               GetPhysicalReg(RISCV_sp),
                                                               func->GetRaOffsetToSp()));    // save ra
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s0),
                                                               GetPhysicalReg(RISCV_sp),
                                                               func->GetRaOffsetToSp() - 8));    // save s
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s1),
                                                               GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 16));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s2),
                                                               GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 24));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s3),
                                                               GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 32));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s4),
                                                               GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 40));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s5),
                                                               GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 48));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s6),
                                                               GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 56));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s7),
                                                               GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 64));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s8),
                                                               GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 72));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s9),
                                                               GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 80));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s10),
                                                               GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 88));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s11),
                                                               GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 96));
                    b->push_front(rvconstructor->ConstructIImm(RISCV_ADDI, GetPhysicalReg(RISCV_sp),
                                                               GetPhysicalReg(RISCV_sp),
                                                               -func->GetStackSize()));    // sub sp
                } else {
                    // auto stacksz_reg = func->GetNewRegister(INT32.data_type,INT32.data_length);
                    auto stacksz_reg = GetPhysicalReg(RISCV_t0);
                    b->push_front(rvconstructor->ConstructR(RISCV_SUB, GetPhysicalReg(RISCV_sp),
                                                            GetPhysicalReg(RISCV_sp), stacksz_reg));
                    // b->push_front(rvconstructor->ConstructCopyRegImmI(stacksz_reg,func->GetStackSize()-2032,INT32));
                    b->push_front(rvconstructor->ConstructUImm(RISCV_LI, stacksz_reg, func->GetStackSize() - 2032));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_ra),
                                                               GetPhysicalReg(RISCV_sp), 2032 - 8));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s0),
                                                               GetPhysicalReg(RISCV_sp), 2032 - 8 - 8));    // save s
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s1),
                                                               GetPhysicalReg(RISCV_sp), 2032 - 8 - 16));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s2),
                                                               GetPhysicalReg(RISCV_sp), 2032 - 8 - 24));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s3),
                                                               GetPhysicalReg(RISCV_sp), 2032 - 8 - 32));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s4),
                                                               GetPhysicalReg(RISCV_sp), 2032 - 8 - 40));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s5),
                                                               GetPhysicalReg(RISCV_sp), 2032 - 8 - 48));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s6),
                                                               GetPhysicalReg(RISCV_sp), 2032 - 8 - 56));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s7),
                                                               GetPhysicalReg(RISCV_sp), 2032 - 8 - 64));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s8),
                                                               GetPhysicalReg(RISCV_sp), 2032 - 8 - 72));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s9),
                                                               GetPhysicalReg(RISCV_sp), 2032 - 8 - 80));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s10),
                                                               GetPhysicalReg(RISCV_sp), 2032 - 8 - 88));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s11),
                                                               GetPhysicalReg(RISCV_sp), 2032 - 8 - 96));
                    b->push_front(rvconstructor->ConstructIImm(RISCV_ADDI, GetPhysicalReg(RISCV_sp),
                                                               GetPhysicalReg(RISCV_sp), -2032));
                }
                b->push_front(rvconstructor->ConstructComment("Lowerframe: save ra, sub sp\n"));
            }
            auto last_ins = *(b->ReverseBegin());
            Assert(last_ins->arch == MachineBaseInstruction::RiscV);
            auto riscv_last_ins = (RiscV64Instruction *)last_ins;
            if (riscv_last_ins->getOpcode() == RISCV_JALR) {
                if (riscv_last_ins->getRd() == GetPhysicalReg(RISCV_x0)) {
                    if (riscv_last_ins->getRs1() == GetPhysicalReg(RISCV_ra)) {
                        Assert(riscv_last_ins->getImm() == 0);
                        b->pop_back();
                        b->push_back(rvconstructor->ConstructComment("Lowerframe: restore ra, add sp\n"));
                        if (func->GetStackSize() <= 2032) {
                            b->push_back(rvconstructor->ConstructIImm(
                            RISCV_LD, GetPhysicalReg(RISCV_ra), GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp()));
                            b->push_back(rvconstructor->ConstructIImm(
                            RISCV_LD, GetPhysicalReg(RISCV_s0), GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 8));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s1),
                                                                      GetPhysicalReg(RISCV_sp),
                                                                      func->GetRaOffsetToSp() - 8 * 2));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s2),
                                                                      GetPhysicalReg(RISCV_sp),
                                                                      func->GetRaOffsetToSp() - 8 * 3));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s3),
                                                                      GetPhysicalReg(RISCV_sp),
                                                                      func->GetRaOffsetToSp() - 8 * 4));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s4),
                                                                      GetPhysicalReg(RISCV_sp),
                                                                      func->GetRaOffsetToSp() - 8 * 5));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s5),
                                                                      GetPhysicalReg(RISCV_sp),
                                                                      func->GetRaOffsetToSp() - 8 * 6));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s6),
                                                                      GetPhysicalReg(RISCV_sp),
                                                                      func->GetRaOffsetToSp() - 8 * 7));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s7),
                                                                      GetPhysicalReg(RISCV_sp),
                                                                      func->GetRaOffsetToSp() - 8 * 8));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s8),
                                                                      GetPhysicalReg(RISCV_sp),
                                                                      func->GetRaOffsetToSp() - 8 * 9));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s9),
                                                                      GetPhysicalReg(RISCV_sp),
                                                                      func->GetRaOffsetToSp() - 8 * 10));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s10),
                                                                      GetPhysicalReg(RISCV_sp),
                                                                      func->GetRaOffsetToSp() - 8 * 11));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s11),
                                                                      GetPhysicalReg(RISCV_sp),
                                                                      func->GetRaOffsetToSp() - 8 * 12));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_ADDI, GetPhysicalReg(RISCV_sp),
                                                                      GetPhysicalReg(RISCV_sp), func->GetStackSize()));
                        } else {
                            // auto stacksz_reg = func->GetNewRegister(INT32.data_type,INT32.data_length);
                            auto stacksz_reg = GetPhysicalReg(RISCV_t0);
                            // b->push_back(rvconstructor->ConstructCopyRegImmI(stacksz_reg,func->GetStackSize()-2032,INT32));
                            b->push_back(
                            rvconstructor->ConstructUImm(RISCV_LI, stacksz_reg, func->GetStackSize() - 2032));
                            b->push_back(rvconstructor->ConstructR(RISCV_ADD, GetPhysicalReg(RISCV_sp),
                                                                   GetPhysicalReg(RISCV_sp), stacksz_reg));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_ra),
                                                                      GetPhysicalReg(RISCV_sp), 2032 - 8));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s0),
                                                                      GetPhysicalReg(RISCV_sp), 2032 - 8 - 8));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s1),
                                                                      GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 2));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s2),
                                                                      GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 3));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s3),
                                                                      GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 4));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s4),
                                                                      GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 5));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s5),
                                                                      GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 6));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s6),
                                                                      GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 7));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s7),
                                                                      GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 8));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s8),
                                                                      GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 9));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s9),
                                                                      GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 10));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s10),
                                                                      GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 11));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s11),
                                                                      GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 12));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_ADDI, GetPhysicalReg(RISCV_sp),
                                                                      GetPhysicalReg(RISCV_sp), 2032));
                        }
                        b->push_back(riscv_last_ins);
                    }
                }
            }
        }
    }
}