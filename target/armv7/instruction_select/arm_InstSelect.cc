#ifndef ARM_INSTRSELECT_CC
#define ARM_INSTRSELECT_CC
#include "cfg.h"
#include "ir.h"
#include "../arm_block.h"

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
    if(ins->GetRetVal() != NULL){
        if(ins->GetRetVal()->GetOperandType() == BasicOperand::REG){
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

template<>
void ArmSelector::ConvertAndAppend<Instruction>(Instruction inst,ArmBlock* blk){
    switch(inst->GetOpcode()){
        case LOAD:
        ConvertAndAppend<LoadInstruction*>((LoadInstruction*)inst,blk);
        break;
        case STORE:
        ConvertAndAppend<StoreInstruction*>((StoreInstruction*)inst,blk);
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
        ConvertAndAppend<ArithmeticInstruction*>((ArithmeticInstruction*)inst,blk);
        break;
        case ICMP:
        ConvertAndAppend<IcmpInstruction*>((IcmpInstruction*)inst,blk);
        break;
        case FCMP:
        ConvertAndAppend<FcmpInstruction*>((FcmpInstruction*)inst,blk);
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

void ArmSelector::SelectInstruction(){
    Dest->global_def = IR->global_def;
    for(auto func_pair:IR->llvm_cfg){
        auto cfg = func_pair.second;
        std::string name = cfg->function_def->GetFunctionName();
        auto cur_armfunc = new ArmFunction(name);
        cur_armfunc->parent = Dest;
        Dest->functions.push_back(cur_armfunc);
        for(auto [id,block]:*(cfg->block_map)){
            // We assume IR blocks have already been concated
            auto cur_armblk = new ArmBlock(id);
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

MachineCFG<ArmBlock>* ArmSelector::SelectInstructionAndBuildCFG(){
    Dest->global_def = IR->global_def;
    MachineCFG<ArmBlock>* mcfg = new MachineCFG<ArmBlock>;
    for(auto func_pair:IR->llvm_cfg){
        auto cfg = func_pair.second;
        std::string name = cfg->function_def->GetFunctionName();
        auto cur_armfunc = new ArmFunction(name);
        cur_armfunc->parent = Dest;
        Dest->functions.push_back(cur_armfunc);
        for(auto [id,block]:*(cfg->block_map)){
            // We assume IR blocks have already been concated
            auto cur_armblk = new ArmBlock(id);

            mcfg->AssignEmptyNode(id,cur_armblk);

            cur_armblk->parent = cur_armfunc;
            cur_armfunc->blocks.push_back(cur_armblk);
            // Expand
            for(auto instruction : block->Instruction_list){
                ConvertAndAppend<Instruction>(instruction,cur_armblk);
                // cur_armblk->ConvertAndAppend<Instruction>(instruction);
            }
            // Simplify&Match : peehole
        }
        // Machine Block ID == LLVM Block ID
        for(int i = 0;i < cfg->G.size();i++){
            const auto& arcs = cfg->G[i];
            for(auto arc : arcs){
                auto arc_m = mcfg->block_map[arc->block_id];
                mcfg->G[i].push_back(arc_m);
            }
        }
        for(int i = 0;i < cfg->invG.size();i++){
            const auto& arcs = cfg->invG[i];
            for(auto arc : arcs){
                auto arc_m = mcfg->block_map[arc->block_id];
                mcfg->invG[i].push_back(arc_m);
            }
        }
    }
    return mcfg;
}

#endif