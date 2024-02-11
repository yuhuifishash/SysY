#ifndef ARM_INSTRSELECT_CC
#define ARM_INSTRSELECT_CC

#include "cfg.h"
#include "ir.h"
#include "arm_block.h"

template<>
void Arm_block::ConvertAndAppend<LoadInstruction*>(LoadInstruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<StoreInstruction*>(StoreInstruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<IcmpInstruction*>(IcmpInstruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<FcmpInstruction*>(FcmpInstruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<AllocaInstruction*>(AllocaInstruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<BrCondInstruction*>(BrCondInstruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<BrUncondInstruction*>(BrUncondInstruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<CallInstruction*>(CallInstruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<RetInstruction*>(RetInstruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<FptosiInstruction*>(FptosiInstruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<SitofpInstruction*>(SitofpInstruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<ZextInstruction*>(ZextInstruction* ins){
}

template<>
void Arm_block::ConvertAndAppend<Instruction>(Instruction ins){
    switch(ins->GetOpcode()){
        case LOAD:
        ConvertAndAppend<LoadInstruction*>((LoadInstruction*)ins);
        break;
    }
}


Arm_asm::Arm_asm(LLVMIR& IR){
    // global_def = IR.global_def;
    // for(auto func_pair:IR.llvm_cfg){
    //     auto cfg = func_pair.second;
    //     std::string name = cfg->function_def->GetFunctionName();
    //     auto cur_armfunc = new Arm_func(name);
    //     functions.push_back(cur_armfunc);
    //     for(auto block_pair:*(cfg->block)){
    //         auto block = block_pair.second;
    //         // We assume IR blocks have already been concated
    //         auto cur_armblk = new Arm_block(block_pair.first);
    //         cur_armfunc->blocks.push_back(cur_armblk);
    //         // Expand
    //         for(auto instruction : block->Instruction_list){
    //             cur_armblk->ConvertAndAppend(instruction);
    //         }
    //         // Simplify&Match : peehole
    //     }
    // }
}

#endif