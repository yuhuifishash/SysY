#include "riscv64_peehole.h"

bool TryAddi (std::list<MachineBaseInstruction*>::iterator&pre, std::list<MachineBaseInstruction*>::iterator&cur, MachineBlock* block) {
    auto pre_ins = *pre;
    auto cur_ins = *cur;
    if (pre_ins->arch == MachineBaseInstruction::COPY) {
        auto pre_copyins = (MachineCopyInstruction*)pre_ins;
        if (pre_copyins->GetSrc()->op_type == MachineBaseOperand::IMMI) {
            Assert(pre_copyins->GetDst()->op_type == MachineBaseOperand::REG);
            auto src_imm = (MachineImmediateInt*)pre_copyins->GetSrc();
            if (src_imm->imm32 >= -2048 && src_imm->imm32 <= 2047) {
                auto dst_reg = (MachineRegister*)pre_copyins->GetDst();
                if (cur_ins->arch == MachineBaseInstruction::RiscV) {
                    auto cur_rvins = (RiscV64Instruction*)cur_ins;
                    if (cur_rvins->getOpcode() == RISCV_ADD) {
                        if (cur_rvins->getRs2() == dst_reg->reg) {
                            cur = block->erase(cur);
                            block->insert(cur, rvconstructor->ConstructIImm(RISCV_ADDI,cur_rvins->getRd(),cur_rvins->getRs1(),src_imm->imm32));
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

bool Tryfmla (std::list<MachineBaseInstruction*>::iterator&pre, std::list<MachineBaseInstruction*>::iterator&cur, MachineBlock* block) {
    auto pre_ins = *pre;
    auto cur_ins = *cur;
    if (pre_ins->arch == MachineBaseInstruction::RiscV && cur_ins->arch == MachineBaseInstruction::RiscV) {
        auto pre_rvins = (RiscV64Instruction*)pre_ins;
        auto cur_rvins = (RiscV64Instruction*)cur_ins;
        if (pre_rvins->getOpcode() == RISCV_FMUL_S && cur_rvins->getOpcode() == RISCV_FADD_S) {
            if (!pre_rvins->getRd().is_virtual)return false; 
            if (pre_rvins->getRd() == cur_rvins->getRs1() || pre_rvins->getRd() == cur_rvins->getRs2()) {
                auto diff_op = cur_rvins->getRs1();
                if (pre_rvins->getRd() == cur_rvins->getRs1()) {
                    diff_op = cur_rvins->getRs2();
                    cur = block->erase(cur);
                    block->insert(cur, rvconstructor->ConstructR4(RISCV_FMADD_S,cur_rvins->getRd(),pre_rvins->getRs1(),pre_rvins->getRs2(),diff_op));
                    --cur;
                    return true;
                }else if (pre_rvins->getRd() == cur_rvins->getRs2()) {
                    diff_op = cur_rvins->getRs1();
                }
            }
        }
    }
    return false;
}

void RiscV64SSAPeehole::Execute(){
    for (auto func : unit->functions) {
        current_func = func;
        for (auto block : func->blocks) {
            cur_block = block;
            for (auto it = block->begin();it != block->end();++it) {
                auto jt = it;
                for (int i=1;i<=length;i++) {
                    if(jt == block->begin())break;
                    --jt;
                    if (TryAddi(jt,it,block)){ break; }
                    // if (Tryfmla(jt,it,block)){ break; }
                }
            }
        }
    }
}

void RiscV64SSADeadDefElimate::Execute(){
    for (auto func : unit->functions) {
        current_func = func;
        std::map<int,int>vreg_refcnt;
        for(auto block : func->blocks){
            cur_block = block;
            for (auto it = block->begin();it!=block->end();++it) {
                auto cur_ins = *it;
                for(auto reg : cur_ins->GetReadReg()) {
                    if (reg->is_virtual) {
                        vreg_refcnt[reg->reg_no] = vreg_refcnt[reg->reg_no] + 1;
                    }
                }
            }
        }
        for(auto block : func->blocks){
            cur_block = block;
            for (auto it = block->begin();it!=block->end();++it) {
                auto cur_ins = *it;
                if (cur_ins->GetWriteReg().size() == 1){
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