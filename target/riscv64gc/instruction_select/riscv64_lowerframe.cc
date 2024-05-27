#include "riscv64_lowerframe.h"

void RiscV64LowerFrame::Execute(){
    for(auto func : unit->functions){
        current_func = func;
        for(auto& b : func->blocks){
            cur_block = b;
            if(b->getLabelId() == 0){
                if(func->GetStackSize() <= 2032){
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD,GetPhysicalReg(RISCV_ra),GetPhysicalReg(RISCV_sp),func->GetRaOffsetToSp()));// save ra
                    b->push_front(rvconstructor->ConstructIImm(RISCV_ADDI,GetPhysicalReg(RISCV_sp),GetPhysicalReg(RISCV_sp),-func->GetStackSize()));// sub sp
                }else{
                    auto stacksz_reg = func->GetNewRegister(INT32.data_type,INT32.data_length);
                    b->push_front(rvconstructor->ConstructR(RISCV_SUB,GetPhysicalReg(RISCV_sp),GetPhysicalReg(RISCV_sp),stacksz_reg));
                    b->push_front(rvconstructor->ConstructCopyRegImmI(stacksz_reg,func->GetStackSize()-2032,INT32));
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD,GetPhysicalReg(RISCV_ra),GetPhysicalReg(RISCV_sp),2024));
                    b->push_front(rvconstructor->ConstructIImm(RISCV_ADDI,GetPhysicalReg(RISCV_sp),GetPhysicalReg(RISCV_sp),-2032));
                }
                b->push_front(rvconstructor->ConstructComment("Lowerframe: save ra, sub sp\n"));
                int i32_cnt = 0;
                int f32_cnt = 0;
                for(auto para : func->GetParameters()){
                    if(para.type.data_type == INT32.data_type){
                        b->push_front(rvconstructor->ConstructCopyReg(para,GetPhysicalReg(RISCV_a0+i32_cnt),INT32));
                        if(i32_cnt >= 8){
                            TODO("INT Parameter in stack");
                        }
                        i32_cnt++;
                    }else if(para.type.data_type == FLOAT_32.data_type){
                        TODO("FLOAT Parameter");
                    }else{
                        ERROR("Unknown type");
                    }
                }
                b->push_front(rvconstructor->ConstructComment("Lowerframe: parameters\n"));
            }
            auto last_ins = *(b->ReverseBegin());
            Assert(last_ins->arch == MachineBaseInstruction::RiscV);
            auto riscv_last_ins = (RiscV64Instruction*)last_ins;
            if(riscv_last_ins->getOpcode() == RISCV_JALR){
                if(riscv_last_ins->getRd() == GetPhysicalReg(RISCV_x0)){
                    if(riscv_last_ins->getRs1() == GetPhysicalReg(RISCV_ra)){
                        Assert(riscv_last_ins->getImm() == 0);
                        b->pop_back();
                        b->push_back(rvconstructor->ConstructComment("Lowerframe: restore ra, add sp\n"));
                        if(func->GetStackSize() <= 2032){
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD,GetPhysicalReg(RISCV_ra),GetPhysicalReg(RISCV_sp),func->GetRaOffsetToSp()));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_ADDI,GetPhysicalReg(RISCV_sp),GetPhysicalReg(RISCV_sp),func->GetStackSize()));
                        }else{
                            auto stacksz_reg = func->GetNewRegister(INT32.data_type,INT32.data_length);
                            b->push_back(rvconstructor->ConstructCopyRegImmI(stacksz_reg,func->GetStackSize()-2032,INT32));
                            b->push_back(rvconstructor->ConstructR(RISCV_ADD,GetPhysicalReg(RISCV_sp),GetPhysicalReg(RISCV_sp),stacksz_reg));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_LD,GetPhysicalReg(RISCV_ra),GetPhysicalReg(RISCV_sp),2024));
                            b->push_back(rvconstructor->ConstructIImm(RISCV_ADDI,GetPhysicalReg(RISCV_sp),GetPhysicalReg(RISCV_sp),2032));
                        }
                        b->push_back(riscv_last_ins);
                    }
                }
            }
        }
    }
}