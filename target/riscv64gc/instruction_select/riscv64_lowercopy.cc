#include "riscv64_lowercopy.h"
#include "../riscv64.h"
void RiscV64LowerCopy::Execute() {
    for(auto function : unit->functions){
        auto block_it = function->getMachineCFG()->getSeqScanIterator();
        while(block_it->hasNext()){
            auto block = block_it->next()->Mblock;
            for(auto& ins : *block){
                if(ins->arch == MachineBaseInstruction::COPY){
                    auto m_copy = (MachineCopyInstruction*)ins;
                    assert(m_copy->dst->op_type == MachineBaseOperand::REG);
                    if(m_copy->src->op_type == MachineBaseOperand::IMMI){
                        int i32_imm = ((MachineImmediateInt*)(m_copy->src))->imm32;
                        
                        auto RV_lui = new RiscV64Instruction();
                        auto RV_addi = new RiscV64Instruction();

                        RV_lui->setOpcode(RISCV_LUI);
                        RV_lui->setRd(((MachineRegister*)(m_copy->dst))->reg);
                        RV_lui->setImm((i32_imm + 0x800) & 0xFFFFF000);// Reference: https://zhuanlan.zhihu.com/p/374235855

                        RV_addi->setOpcode(RISCV_ADDI);
                        RV_addi->setRd(((MachineRegister*)(m_copy->dst))->reg);
                        RV_addi->setImm(i32_imm & 0xFFFFF000);
                    }else if(m_copy->src->op_type == MachineBaseOperand::IMMF){
                        assert(false);
                    }else if(m_copy->src->op_type == MachineBaseOperand::REG){
                        auto RV_copy = new RiscV64Instruction();
                        RV_copy->setOpcode(RISCV_ADDI);
                        RV_copy->setRd(((MachineRegister*)(m_copy->dst))->reg);
                        RV_copy->setRs1(((MachineRegister*)(m_copy->src))->reg);
                        RV_copy->setImm(0);
                    }else{
                        assert(false);
                    }
                }
            }
        }
    }
}
