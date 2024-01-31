#ifndef ARM_INSTRSELECT_CC
#define ARM_INSTRSELECT_CC
#include "llvm_cfg.h"
#include "llvm_ir.h"
#include "arm_block.h"
template<>
void Arm_block::ConvertAndAppend<Instruction>(Instruction ins){
    switch(ins->get_opcode()){
        case LOAD:
        ConvertAndAppend<load_Instruction*>((load_Instruction*)ins);
        break;
    }
}

template<>
void Arm_block::ConvertAndAppend<load_Instruction*>(load_Instruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<store_Instruction*>(store_Instruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<icmp_Instruction*>(icmp_Instruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<fcmp_Instruction*>(fcmp_Instruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<alloca_Instruction*>(alloca_Instruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<br_cond_Instruction*>(br_cond_Instruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<br_uncond_Instruction*>(br_uncond_Instruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<call_Instruction*>(call_Instruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<ret_Instruction*>(ret_Instruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<fptosi_Instruction*>(fptosi_Instruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<sitofp_Instruction*>(sitofp_Instruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<zext_Instruction*>(zext_Instruction* ins){
}

Arm_asm::Arm_asm(LLVM_IR& IR){
    global_def = IR.global_def;
    for(auto func_pair:IR.llvm_cfg){
        auto cfg = func_pair.second;
        std::string name = cfg->func_ins->get_Func_name();
        auto cur_armfunc = new Arm_func(name);
        functions.push_back(cur_armfunc);
        for(auto block_pair:*(cfg->block)){
            auto block = block_pair.second;
            // We assume IR blocks have already been concated
            auto cur_armblk = new Arm_block(block_pair.first);
            cur_armfunc->blocks.push_back(cur_armblk);
            // Expand
            for(auto instruction : block->Instruction_list){
                cur_armblk->ConvertAndAppend(instruction);
            }
            // Simplify&Match : peehole
        }
    }
}
#endif