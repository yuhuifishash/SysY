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
                    if(cur_rvins->getOpcode() == RISCV_LD || cur_rvins->getOpcode() == RISCV_SD || cur_rvins->getOpcode() == RISCV_LW || cur_rvins->getOpcode() == RISCV_SW || cur_rvins->getOpcode() == RISCV_FLW || cur_rvins->getOpcode() == RISCV_FSW){
                    // if (OpTable[cur_rvins->getOpcode()].ins_formattype == RvOpInfo::I_type||OpTable[cur_rvins->getOpcode()].ins_formattype == RvOpInfo::S_type) {
                        it = block->erase(it);
                        auto imm_reg = current_func->GetNewRegister(INT64.data_type,INT64.data_length);
                        auto addr_reg = current_func->GetNewRegister(INT64.data_type,INT64.data_length);
                        block->insert(it, rvconstructor->ConstructCopyRegImmI(imm_reg,cur_rvins->getImm(),INT64));
                        Register addrbase_reg;
                        if(cur_rvins->getOpcode() == RISCV_LD || cur_rvins->getOpcode() == RISCV_LW || cur_rvins->getOpcode() == RISCV_FLW){
                            addrbase_reg = cur_rvins->getRs1();
                            cur_rvins->setRs1(addr_reg);
                        }else{
                            addrbase_reg = cur_rvins->getRs2();
                            cur_rvins->setRs2(addr_reg);
                        }
                        block->insert(it, rvconstructor->ConstructR(RISCV_ADD,addr_reg,addrbase_reg,imm_reg));
                        cur_rvins->setImm(0);
                        block->insert(it, cur_rvins);
                        --it;
                    // }
                    }else if(OpTable[cur_rvins->getOpcode()].ins_formattype == RvOpInfo::I_type){
                        it = block->erase(it);
                        auto imm_reg = current_func->GetNewRegister(INT64.data_type,INT64.data_length);
                        block->insert(it,rvconstructor->ConstructCopyRegImmI(imm_reg,cur_rvins->getImm(),INT64));
                        cur_rvins->setRs2(imm_reg);
                        cur_rvins->setImm(0);
                        switch(cur_rvins->getOpcode()){
                            case RISCV_SLLI:
                            cur_rvins->setOpcode(RISCV_SLL,false);
                            break;
                            case RISCV_SRLI:
                            cur_rvins->setOpcode(RISCV_SRL,false);
                            break;
                            case RISCV_SRAI:
                            cur_rvins->setOpcode(RISCV_SRA,false);
                            break;
                            case RISCV_ADDI:
                            cur_rvins->setOpcode(RISCV_ADD,false);
                            break;
                            case RISCV_XORI:
                            cur_rvins->setOpcode(RISCV_XOR,false);
                            break;
                            case RISCV_ORI:
                            cur_rvins->setOpcode(RISCV_OR,false);
                            break;
                            case RISCV_ANDI:
                            cur_rvins->setOpcode(RISCV_AND,false);
                            break;
                            case RISCV_SLTI:
                            cur_rvins->setOpcode(RISCV_SLT,false);
                            break;
                            case RISCV_SLTIU:
                            cur_rvins->setOpcode(RISCV_SLTU,false);
                            break;
                            case RISCV_SLLIW:
                            cur_rvins->setOpcode(RISCV_SLLW,false);
                            break;
                            case RISCV_SRLIW:
                            cur_rvins->setOpcode(RISCV_SRLW,false);
                            break;
                            case RISCV_SRAIW:
                            cur_rvins->setOpcode(RISCV_SRAW,false);
                            break;
                            case RISCV_ADDIW:
                            cur_rvins->setOpcode(RISCV_ADDW,false);
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