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
                    auto RV_copy = new RiscV64Instruction();
                    if(m_copy->src->op_type == MachineBaseOperand::IMMI){
                        // 
                    }else if(m_copy->src->op_type == MachineBaseOperand::IMMF){
                        assert(false);
                    }else if(m_copy->src->op_type == MachineBaseOperand::REG){
                        RV_copy->setOpcode(RISCV_ADDI);
                        // RV_copy->setRd(m_copy->dst);
                        // RV_copy->setRs1(m_copy->src);
                        RV_copy->setImm(0);
                    }else{
                        assert(false);
                    }
                }
            }
        }
    }
}
