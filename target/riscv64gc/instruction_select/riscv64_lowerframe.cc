#include "riscv64_lowerframe.h"

constexpr int save_regids[] = {
    RISCV_ra,
    RISCV_s0,
    RISCV_s1,
    RISCV_s2,
    RISCV_s3,
    RISCV_s4,
    RISCV_s5,
    RISCV_s6,
    RISCV_s7,
    RISCV_s8,
    RISCV_s9,
    RISCV_s10,
    RISCV_s11,
    RISCV_fs0,
    RISCV_fs1,
    RISCV_fs2,
    RISCV_fs3,
    RISCV_fs4,
    RISCV_fs5,
    RISCV_fs6,
    RISCV_fs7,
    RISCV_fs8,
    RISCV_fs9,
    RISCV_fs10,
    RISCV_fs11,
};
constexpr int saveregnum = 25;

void RiscV64LowerFrame::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        Register save_regs[1+12+12];
        for(int i=0;i<saveregnum;i++){
            if(save_regids[i] >= RISCV_x0 && save_regids[i] <= RISCV_x31){
                save_regs[i] = func->GetNewRegister(INT64.data_type,INT64.data_length);
            }else{
                save_regs[i] = func->GetNewRegister(FLOAT_32.data_type,FLOAT_32.data_length);
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
                        if(i32_cnt < 8){
                            b->push_front(rvconstructor->ConstructCopyReg(para, GetPhysicalReg(RISCV_a0 + i32_cnt), INT64));
                        }
                        if (i32_cnt >= 8) {
                            auto offset_reg = func->GetNewRegister(INT64.data_type,INT64.data_length);
                            auto addr_reg = func->GetNewRegister(INT64.data_type,INT64.data_length);
                            b->push_front(rvconstructor->ConstructIImm(RISCV_LD, para, addr_reg, 0));
                            b->push_front(rvconstructor->ConstructR(RISCV_ADD, addr_reg, GetPhysicalReg(RISCV_sp), offset_reg));
                            auto reloc_para = rvconstructor->ConstructUImm(RISCV_LI,offset_reg,func->GetStackSize()+para_offset);
                            ((RiscV64Function*)current_func)->AddStkParaIns(reloc_para);
                            b->push_front(reloc_para);
                            // b->push_front(rvconstructor->ConstructIImm(RISCV_LD, para, GetPhysicalReg(RISCV_sp),func->GetStackSize()+para_offset));
                            para_offset += 8;
                        }
                        i32_cnt++;
                    } else if (para.type.data_type == FLOAT_32.data_type) {
                        if(f32_cnt < 8){
                            b->push_front(
                            rvconstructor->ConstructCopyReg(para, GetPhysicalReg(RISCV_fa0 + f32_cnt), FLOAT_32));
                        }
                        if (f32_cnt >= 8) {
                            auto offset_reg = func->GetNewRegister(INT64.data_type,INT64.data_length);
                            auto addr_reg = func->GetNewRegister(INT64.data_type,INT64.data_length);
                            b->push_front(rvconstructor->ConstructIImm(RISCV_FLD, para, addr_reg, 0));
                            b->push_front(rvconstructor->ConstructR(RISCV_ADD, addr_reg, GetPhysicalReg(RISCV_sp), offset_reg));
                            auto reloc_para = rvconstructor->ConstructUImm(RISCV_LI,offset_reg,func->GetStackSize()+para_offset);
                            ((RiscV64Function*)current_func)->AddStkParaIns(reloc_para);
                            b->push_front(reloc_para);
                            // b->push_front(rvconstructor->ConstructIImm(RISCV_FLD, para, GetPhysicalReg(RISCV_sp),func->GetStackSize()+para_offset));
                            para_offset += 8;
                        }
                        f32_cnt++;
                    } else {
                        ERROR("Unknown type");
                    }
                }
                b->push_front(rvconstructor->ConstructComment("Lowerframe: parameters\n"));
                for(int i=0;i<saveregnum;i++){
                    if(save_regs[i].type == INT64){
                        b->push_front(rvconstructor->ConstructCopyReg(save_regs[i], GetPhysicalReg(save_regids[i]),INT64));
                    }else{
                        b->push_front(rvconstructor->ConstructCopyReg(save_regs[i], GetPhysicalReg(save_regids[i]),FLOAT_32));
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
                        for(int i=0;i<saveregnum;i++){
                            if(save_regs[i].type == INT64){
                                b->push_back(rvconstructor->ConstructCopyReg(GetPhysicalReg(save_regids[i]),save_regs[i],INT64));
                            }else{
                                b->push_back(rvconstructor->ConstructCopyReg(GetPhysicalReg(save_regids[i]),save_regs[i],FLOAT_32));
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
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_ra),
                    //                                            GetPhysicalReg(RISCV_sp),
                    //                                            func->GetRaOffsetToSp()));    // save ra
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s0),
                    //                                            GetPhysicalReg(RISCV_sp),
                    //                                            func->GetRaOffsetToSp() - 8));    // save s
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s1),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 16));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s2),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 24));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s3),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 32));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s4),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 40));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s5),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 48));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s6),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 56));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s7),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 64));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s8),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 72));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s9),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 80));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s10),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 88));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s11),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 96));

                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs0),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 104));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs1),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 112));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs2),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 120));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs3),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 128));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs4),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 136));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs5),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 144));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs6),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 152));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs7),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 160));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs8),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 168));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs9),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 176));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs10),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 184));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs11),
                    //                                            GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 192));

                    b->push_front(rvconstructor->ConstructIImm(RISCV_ADDI, GetPhysicalReg(RISCV_sp),
                                                               GetPhysicalReg(RISCV_sp),
                                                               -func->GetStackSize()));    // sub sp
                } else {
                    // auto stacksz_reg = func->GetNewRegister(INT64.data_type,INT64.data_length);
                    auto stacksz_reg = GetPhysicalReg(RISCV_t0);
                    b->push_front(rvconstructor->ConstructR(RISCV_SUB, GetPhysicalReg(RISCV_sp),
                                                            GetPhysicalReg(RISCV_sp), stacksz_reg));
                    // b->push_front(rvconstructor->ConstructCopyRegImmI(stacksz_reg,func->GetStackSize()-2032,INT64));
                    b->push_front(rvconstructor->ConstructUImm(RISCV_LI, stacksz_reg, func->GetStackSize()));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_ra),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s0),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 8));    // save s
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s1),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 16));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s2),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 24));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s3),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 32));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s4),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 40));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s5),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 48));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s6),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 56));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s7),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 64));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s8),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 72));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s9),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 80));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s10),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 88));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_s11),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 96));

                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs0),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 104));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs1),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 112));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs2),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 120));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs3),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 128));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs4),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 136));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs5),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 144));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs6),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 152));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs7),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 160));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs8),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 168));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs9),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 176));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs10),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 184));
                    // b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(RISCV_fs11),
                    //                                            GetPhysicalReg(RISCV_sp), 2032 - 8 - 192));

                    // b->push_front(rvconstructor->ConstructIImm(RISCV_ADDI, GetPhysicalReg(RISCV_sp),
                    //                                            GetPhysicalReg(RISCV_sp), -2032));
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
                            // b->push_back(rvconstructor->ConstructIImm(
                            // RISCV_LD, GetPhysicalReg(RISCV_ra), GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp()));
                            // b->push_back(rvconstructor->ConstructIImm(
                            // RISCV_LD, GetPhysicalReg(RISCV_s0), GetPhysicalReg(RISCV_sp), func->GetRaOffsetToSp() - 8));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s1),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 2));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s2),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 3));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s3),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 4));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s4),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 5));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s5),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 6));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s6),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 7));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s7),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 8));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s8),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 9));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s9),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 10));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s10),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 11));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s11),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 12));
                            // b->push_back(rvconstructor->ConstructIImm(
                            //                                         RISCV_FLD, GetPhysicalReg(RISCV_fs0), 
                            //                                         GetPhysicalReg(RISCV_sp), 
                            //                                         func->GetRaOffsetToSp() - 8 * 13));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs1),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 14));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs2),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 15));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs3),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 16));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs4),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 17));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs5),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 18));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs6),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 19));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs7),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 20));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs8),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 21));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs9),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 22));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs10),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 23));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs11),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           func->GetRaOffsetToSp() - 8 * 24));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_ADDI, GetPhysicalReg(RISCV_sp),
                                                                      GetPhysicalReg(RISCV_sp), func->GetStackSize()));
                        } else {
                            // auto stacksz_reg = func->GetNewRegister(INT64.data_type,INT64.data_length);
                            auto stacksz_reg = GetPhysicalReg(RISCV_t0);
                            // b->push_back(rvconstructor->ConstructCopyRegImmI(stacksz_reg,func->GetStackSize()-2032,INT64));
                            b->push_back(
                            rvconstructor->ConstructUImm(RISCV_LI, stacksz_reg, func->GetStackSize()));
                            b->push_back(rvconstructor->ConstructR(RISCV_ADD, GetPhysicalReg(RISCV_sp),
                                                                   GetPhysicalReg(RISCV_sp), stacksz_reg));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_ra),
                            //                                           GetPhysicalReg(RISCV_sp), 2032 - 8));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s0),
                            //                                           GetPhysicalReg(RISCV_sp), 2032 - 8 - 8));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s1),
                            //                                           GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 2));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s2),
                            //                                           GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 3));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s3),
                            //                                           GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 4));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s4),
                            //                                           GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 5));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s5),
                            //                                           GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 6));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s6),
                            //                                           GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 7));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s7),
                            //                                           GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 8));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s8),
                            //                                           GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 9));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s9),
                            //                                           GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 10));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s10),
                            //                                           GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 11));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(RISCV_s11),
                            //                                           GetPhysicalReg(RISCV_sp), 2032 - 8 - 8 * 12));
                            // b->push_back(rvconstructor->ConstructIImm(
                            //                                         RISCV_FLD, GetPhysicalReg(RISCV_fs0), 
                            //                                         GetPhysicalReg(RISCV_sp), 
                            //                                         2032 - 8 - 8 * 13));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs1),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           2032 - 8 - 8 * 14));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs2),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           2032 - 8 - 8 * 15));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs3),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           2032 - 8 - 8 * 16));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs4),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           2032 - 8 - 8 * 17));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs5),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           2032 - 8 - 8 * 18));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs6),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           2032 - 8 - 8 * 19));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs7),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           2032 - 8 - 8 * 20));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs8),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           2032 - 8 - 8 * 21));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs9),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           2032 - 8 - 8 * 22));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs10),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           2032 - 8 - 8 * 23));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(RISCV_fs11),
                            //                                           GetPhysicalReg(RISCV_sp),
                            //                                           2032 - 8 - 8 * 24));
                            // b->push_back(rvconstructor->ConstructIImm(RISCV_ADDI, GetPhysicalReg(RISCV_sp),
                            //                                           GetPhysicalReg(RISCV_sp), 2032));
                        }
                        b->push_back(riscv_last_ins);
                    }
                }
            }
        }
    }
}