#include "riscv64_lowercopy.h"
#include "../riscv64.h"
void RiscV64LowerCopy::Execute() {
    for (auto function : unit->functions) {
        auto block_it = function->getMachineCFG()->getSeqScanIterator();
        block_it->open();
        while (block_it->hasNext()) {
            auto block = block_it->next()->Mblock;
            for (auto it = block->begin(); it != block->end(); ++it) {
                auto &ins = *it;
                if (ins->arch == MachineBaseInstruction::COPY) {
                    auto m_copy = (MachineCopyInstruction *)ins;
                    Assert(m_copy->GetDst()->op_type == MachineBaseOperand::REG);
                    if (m_copy->GetSrc()->op_type == MachineBaseOperand::IMMI) {
                        // If here should use lui&addi,see: https://zhuanlan.zhihu.com/p/374235855
                        auto src_immi = (MachineImmediateInt *)m_copy->GetSrc();
                        auto dst_reg = (MachineRegister *)m_copy->GetDst();

                        auto li_instr = rvconstructor->ConstructUImm(RISCV_LI, dst_reg->reg, src_immi->imm32);
                        ins = li_instr;
                        // it = block->erase(it);
                        // block->insert(it, li_instr);
                        // --it;
                    } else if (m_copy->GetSrc()->op_type == MachineBaseOperand::IMMF) {
                        ERROR("Shouldn't reach here");
                        TODO("Implement RiscV Float Imm Copy");
                    } else if (m_copy->GetSrc()->op_type == MachineBaseOperand::REG) {
                        auto Reg = ((MachineRegister *)(m_copy->GetSrc()))->reg;
                        if (Reg.type.data_type == MachineDataType::INT) {
                            auto dst_reg = ((MachineRegister *)(m_copy)->GetDst())->reg;
                            auto src_reg = ((MachineRegister *)(m_copy)->GetSrc())->reg;

                            // auto copy_addi_ins = rvconstructor->ConstructIImm(RISCV_ADDI, dst_reg, src_reg, 0);
                            auto copy_addi_ins = rvconstructor->ConstructR(RISCV_ADD, dst_reg, src_reg, GetPhysicalReg(RISCV_x0));
                            // ins = copy_addi_ins;
                            it = block->erase(it);
                            if(dst_reg == src_reg){
                                std::string comment = "Elimated Self Copy ";
                                block->insert(it, rvconstructor->ConstructComment(comment + RiscV64Registers[dst_reg.reg_no].name + std::string("\n")));
                            }else{
                                block->insert(it, copy_addi_ins);
                            }
                            --it;

                        } else if (Reg.type.data_type == MachineDataType::FLOAT) {
                            auto dst_reg = ((MachineRegister *)(m_copy)->GetDst())->reg;
                            auto src_reg = ((MachineRegister *)(m_copy)->GetSrc())->reg;

                            auto load_x0_ins =
                            rvconstructor->ConstructR2(RISCV_FMV_W_X, dst_reg, GetPhysicalReg(RISCV_x0));
                            auto copy = rvconstructor->ConstructR(RISCV_FADD_S, dst_reg, src_reg, dst_reg);
                            it = block->erase(it);
                            if(dst_reg == src_reg){
                                std::string comment = "Elimated Self Copy ";
                                block->insert(it, rvconstructor->ConstructComment(comment + RiscV64Registers[dst_reg.reg_no].name + std::string("\n")));
                            }else{
                                block->insert(it, load_x0_ins);
                                block->insert(it, copy);
                            }
                            --it;
                        } else {
                            ERROR("Unknown Machine Data Type");
                        }
                    } else {
                        ERROR("Unknown Machine Operand Type");
                    }
                }
            }
        }
    }
}
