#include "riscv64_lowerselect.h"

/*
--LLVM IR--
icmp %r, cond, %rs1, %rs2
select rd = i1 %r,  %r1, %r2

--MIR--
bxx rs1, rs2,0 | rd,r1,r2

--RISCV--
mov rd,rs2/imm2
bcc rs1,rs2;mv rd,rs1/imm1 :1
offset(sp)<-rd
*/

int ConvertBtoBCC(int bop) {
    switch (bop) {
    case RISCV_BEQ:
        return RISCV_BEQ_CC;
    case RISCV_BNE:
        return RISCV_BNE_CC;
    case RISCV_BGE:
        return RISCV_BGE_CC;
    case RISCV_BGEU:
        return RISCV_BGEU_CC;
    case RISCV_BLT:
        return RISCV_BLT_CC;
    case RISCV_BLTU:
        return RISCV_BLTU_CC;
    case RISCV_BGT:
        return RISCV_BGT_CC;
    case RISCV_BGTU:
        return RISCV_BGTU_CC;
    case RISCV_BLE:
        return RISCV_BLE_CC;
    case RISCV_BLEU:
        return RISCV_BLEU_CC;
    default:
        ERROR("Unexpected BOP");
    }
    return 0;
}

void RiscV64LowerSelect::Execute() {
    for (auto function : unit->functions) {
        auto block_it = function->getMachineCFG()->getSeqScanIterator();
        block_it->open();
        while (block_it->hasNext()) {
            auto block = block_it->next()->Mblock;
            for (auto it = block->begin(); it != block->end(); ++it) {
                auto &ins = *it;
                if (ins->arch == MachineBaseInstruction::SELECT) {
                    auto m_select = (MachineSelectInstruction *)ins;
                    auto cond = m_select->GetCond();
                    Assert(cond->arch == MachineBaseInstruction::RiscV);

                    auto rvcond = (RiscV64Instruction *)cond;    // cond is a bxx
                    Assert(OpTable[rvcond->getOpcode()].ins_formattype == RvOpInfo::B_type);

                    Assert(m_select->GetDst()->op_type == MachineBaseOperand::REG);
                    auto rd = ((MachineRegister *)(m_select->GetDst()))->reg;
                    it = block->erase(it);
                    auto srcfalse = m_select->GetSrcFalse();
                    auto srctrue = m_select->GetSrcTrue();
                    // Mov True Val
                    if (srctrue->op_type == MachineBaseOperand::REG) {
                        Register reg = ((MachineRegister *)srctrue)->reg;
                        block->insert(it, rvconstructor->ConstructR(RISCV_ADD, rd, reg,
                                                                    GetPhysicalReg(RISCV_x0)));    // mov rd, falseval
                    } else if (srctrue->op_type == MachineBaseOperand::IMMI) {
                        block->insert(it,
                                      rvconstructor->ConstructUImm(
                                      RISCV_LI, rd, ((MachineImmediateInt *)srctrue)->imm32));    // mov rd, falseval
                    } else {
                        ERROR("Unexpected src type");
                    }
                    // Conditional Mov False Val
                    MachineBaseInstruction *true_mov = nullptr;
                    if (srcfalse->op_type == MachineBaseOperand::REG) {
                        Register reg = ((MachineRegister *)srcfalse)->reg;
                        true_mov = rvconstructor->ConstructR(RISCV_ADD, rd, reg, GetPhysicalReg(RISCV_x0));
                    } else if (srcfalse->op_type == MachineBaseOperand::IMMI) {
                        true_mov = rvconstructor->ConstructUImm(RISCV_LI, rd, ((MachineImmediateInt *)srcfalse)->imm32);
                    } else {
                        ERROR("Unexpected src type");
                    }
                    block->insert(it,
                                  rvconstructor->ConstructBCC(ConvertBtoBCC(rvcond->getOpcode()), rvcond->getRs1(),
                                                              rvcond->getRs2(), true_mov));    // bxx ; mov rd, trueval
                    --it;
                }
            }
        }
    }
}

void RiscV64ElimateNop::Execute() {
    for (auto function : unit->functions) {
        auto block_it = function->getMachineCFG()->getSeqScanIterator();
        block_it->open();
        while (block_it->hasNext()) {
            auto block = block_it->next()->Mblock;
            for (auto it = block->begin(); it != block->end(); ++it) {
                auto &ins = *it;
                if (ins->arch == MachineBaseInstruction::NOP) {
                    it = block->erase(it);
                    --it;
                }
            }
        }
    }
}