#ifndef ARM_INSTRSELECT_CC
#define ARM_INSTRSELECT_CC
#include "llvm_cfg.h"
#include "llvm_ir.h"
#include "arm_block.h"

void ArmSelector::SelectInstruction(){
    Dest->global_def = IR->global_def;
    for(auto func_pair:IR->llvm_cfg){
        auto cfg = func_pair.second;
        std::string name = cfg->func_ins->get_Func_name();
        auto cur_armfunc = new ArmFunc(name);
        cur_armfunc->parent = Dest;
        Dest->functions.push_back(cur_armfunc);
        for(auto block_pair:*(cfg->block)){
            auto block = block_pair.second;
            // We assume IR blocks have already been concated
            auto cur_armblk = new ArmBlock(block_pair.first);
            cur_armblk->parent = cur_armfunc;
            cur_armfunc->blocks.push_back(cur_armblk);
            // Expand
            for(auto instruction : block->Instruction_list){
                ConvertAndAppend<Instruction>(instruction,cur_armblk);
                // cur_armblk->ConvertAndAppend<Instruction>(instruction);
            }
            // Simplify&Match : peehole
        }
    }
}

template<>
void ArmSelector::ConvertAndAppend<Instruction>(Instruction ins,ArmBlock* blk){
    switch(ins->get_opcode()){
        case LOAD:
        ConvertAndAppend<load_Instruction*>((load_Instruction*)ins,blk);
        break;
        case STORE:
        ConvertAndAppend<store_Instruction*>((store_Instruction*)ins,blk);
        break;
        case ADD:
        case SUB:
        case MUL:
        case DIV:
        case FADD:
        case FSUB:
        case FMUL:
        case FDIV:
        case MOD:
        case XOR:
        case SHL:
        case LSHR:
        case ASHR:
        ConvertAndAppend<alg_Instruction*>((alg_Instruction*)ins,blk);
        break;
        case ICMP:
        ConvertAndAppend<icmp_Instruction*>((icmp_Instruction*)ins,blk);
        break;
        case FCMP:
        ConvertAndAppend<fcmp_Instruction*>((fcmp_Instruction*)ins,blk);
        break;
        case ALLOCA:
        break;
        case BR_COND:
        break;
        case BR_UNCOND:
        break;
        case RET:
        break;
        case ZEXT:
        break;
        case FPTOSI:
        break;
        case SITOFP:
        break;
        case GETELEMENTPTR:
        break;
        case CALL:
        break;

    }
}

template<>
void ArmSelector::ConvertAndAppend<load_Instruction*>(load_Instruction* ins,ArmBlock* blk){
    if(ins->getDataType() == FLOAT32){

    }else if(ins->getDataType() == I32){

    }
    if(ins->getPointer()->getOperandType() == basic_operand::REG){

    }else if(ins->getPointer()->getOperandType() == basic_operand::GLOBAL){

    }
}

template<>
void ArmSelector::ConvertAndAppend<store_Instruction*>(store_Instruction* ins,ArmBlock* blk){
    if(ins->getDataType() == FLOAT32){

    }else if(ins->getDataType() == I32){

    }
    if(ins->getValue()->getOperandType() == basic_operand::IMMI32){

    }
    if(ins->getPointer()->getOperandType() == basic_operand::REG){

    }else if(ins->getPointer()->getOperandType() == basic_operand::GLOBAL){

    }
}

template<>
void ArmSelector::ConvertAndAppend<alg_Instruction*>(alg_Instruction* ins,ArmBlock* blk){

}

template<>
void ArmSelector::ConvertAndAppend<icmp_Instruction*>(icmp_Instruction* ins,ArmBlock* blk){

}

template<>
void ArmSelector::ConvertAndAppend<fcmp_Instruction*>(fcmp_Instruction* ins,ArmBlock* blk){
}

template<>
void ArmSelector::ConvertAndAppend<alloca_Instruction*>(alloca_Instruction* ins,ArmBlock* blk){

}

template<>
void ArmSelector::ConvertAndAppend<br_cond_Instruction*>(br_cond_Instruction* ins,ArmBlock* blk){
}

template<>
void ArmSelector::ConvertAndAppend<br_uncond_Instruction*>(br_uncond_Instruction* ins,ArmBlock* blk){
}

template<>
void ArmSelector::ConvertAndAppend<call_Instruction*>(call_Instruction* ins,ArmBlock* blk){
}

template<>
void ArmSelector::ConvertAndAppend<ret_Instruction*>(ret_Instruction* ins,ArmBlock* blk){
    if(ins->get_result() != NULL){
        if(ins->get_result()->getOperandType() == basic_operand::REG){
            if(ins->get_type() == FLOAT32){

            }else if(ins->get_type() == I32){

            }
        }
    }else{

    }
}

template<>
void ArmSelector::ConvertAndAppend<fptosi_Instruction*>(fptosi_Instruction* ins,ArmBlock* blk){
}

template<>
void ArmSelector::ConvertAndAppend<sitofp_Instruction*>(sitofp_Instruction* ins,ArmBlock* blk){
}

template<>
void ArmSelector::ConvertAndAppend<zext_Instruction*>(zext_Instruction* ins,ArmBlock* blk){
}

// template<>
// void ArmSelector::ConvertAndAppend<get_elementptr_Instruction*>(get_elementptr_Instruction* ins,ArmBlock* blk){
// }

#endif