#ifndef ARM_INSTRSELECT_CC
#define ARM_INSTRSELECT_CC
#include "cfg.h"
#include "ir.h"
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
    switch(ins->GetOpcode()){
        case LOAD:
        ConvertAndAppend<LoadInstruction*>((LoadInstruction*)ins,blk);
        break;
        case STORE:
        ConvertAndAppend<StoreInstruction*>((StoreInstruction*)ins,blk);
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
        ConvertAndAppend<ArithmeticInstruction*>((ArithmeticInstruction*)ins,blk);
        break;
        case ICMP:
        ConvertAndAppend<IcmpInstruction*>((IcmpInstruction*)ins,blk);
        break;
        case FCMP:
        ConvertAndAppend<FcmpInstruction*>((FcmpInstruction*)ins,blk);
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
void ArmSelector::ConvertAndAppend<LoadInstruction*>(LoadInstruction* ins,ArmBlock* blk){
    if(ins->GetDataType() == FLOAT32){

    }else if(ins->GetDataType() == I32){

    }
    if(ins->GetPointer()->GetOperandType() == BasicOperand::REG){

    }else if(ins->GetPointer()->GetOperandType() == BasicOperand::GLOBAL){

    }
}

template<>
void ArmSelector::ConvertAndAppend<StoreInstruction*>(StoreInstruction* ins,ArmBlock* blk){
    if(ins->GetDataType() == FLOAT32){

    }else if(ins->GetDataType() == I32){

    }
    if(ins->GetValue()->GetOperandType() == BasicOperand::IMMI32){

    }
    if(ins->GetPointer()->GetOperandType() == BasicOperand::REG){

    }else if(ins->GetPointer()->GetOperandType() == BasicOperand::GLOBAL){

    }
}

template<>
void ArmSelector::ConvertAndAppend<ArithmeticInstruction*>(ArithmeticInstruction* ins,ArmBlock* blk){

}

template<>
void ArmSelector::ConvertAndAppend<IcmpInstruction*>(IcmpInstruction* ins,ArmBlock* blk){

}

template<>
void ArmSelector::ConvertAndAppend<FcmpInstruction*>(FcmpInstruction* ins,ArmBlock* blk){
}

template<>
void ArmSelector::ConvertAndAppend<AllocaInstruction*>(AllocaInstruction* ins,ArmBlock* blk){

}

template<>
void ArmSelector::ConvertAndAppend<BrCondInstruction*>(BrCondInstruction* ins,ArmBlock* blk){
}

template<>
void ArmSelector::ConvertAndAppend<BrUncondInstruction*>(BrUncondInstruction* ins,ArmBlock* blk){
}

template<>
void ArmSelector::ConvertAndAppend<CallInstruction*>(CallInstruction* ins,ArmBlock* blk){
}

template<>
void ArmSelector::ConvertAndAppend<RetInstruction*>(RetInstruction* ins,ArmBlock* blk){
    if(ins->GetResult() != NULL){
        if(ins->GetResult()->GetOperandType() == BasicOperand::REG){
            if(ins->GetType() == FLOAT32){

            }else if(ins->GetType() == I32){

            }
        }
    }else{

    }
}

template<>
void ArmSelector::ConvertAndAppend<FptosiInstruction*>(FptosiInstruction* ins,ArmBlock* blk){
}

template<>
void ArmSelector::ConvertAndAppend<SitofpInstruction*>(SitofpInstruction* ins,ArmBlock* blk){
}

template<>
void ArmSelector::ConvertAndAppend<ZextInstruction*>(ZextInstruction* ins,ArmBlock* blk){
}

// template<>
// void ArmSelector::ConvertAndAppend<get_elementptr_Instruction*>(get_elementptr_Instruction* ins,ArmBlock* blk){
// }

#endif