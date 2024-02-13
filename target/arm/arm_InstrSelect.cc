#ifndef ARM_INSTRSELECT_CC
#define ARM_INSTRSELECT_CC
#include "llvm_cfg.h"
#include "llvm_ir.h"
#include "arm_block.h"
template<>
void ArmBlock::ConvertAndAppend<Instruction>(Instruction ins){
    switch(ins->get_opcode()){
        case LOAD:
        ConvertAndAppend<load_Instruction*>((load_Instruction*)ins);
        break;
        case STORE:
        ConvertAndAppend<store_Instruction*>((store_Instruction*)ins);
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
        ConvertAndAppend<alg_Instruction*>((alg_Instruction*)ins);
        break;
        case ICMP:
        ConvertAndAppend<icmp_Instruction*>((icmp_Instruction*)ins);
        break;
        case FCMP:
        ConvertAndAppend<fcmp_Instruction*>((fcmp_Instruction*)ins);
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
void ArmBlock::ConvertAndAppend<load_Instruction*>(load_Instruction* ins){
}

template<>
void ArmBlock::ConvertAndAppend<store_Instruction*>(store_Instruction* ins){
}

template<>
void ArmBlock::ConvertAndAppend<icmp_Instruction*>(icmp_Instruction* ins){
}

template<>
void ArmBlock::ConvertAndAppend<fcmp_Instruction*>(fcmp_Instruction* ins){
}

template<>
void ArmBlock::ConvertAndAppend<alloca_Instruction*>(alloca_Instruction* ins){
}

template<>
void ArmBlock::ConvertAndAppend<br_cond_Instruction*>(br_cond_Instruction* ins){
}

template<>
void ArmBlock::ConvertAndAppend<br_uncond_Instruction*>(br_uncond_Instruction* ins){
}

template<>
void ArmBlock::ConvertAndAppend<call_Instruction*>(call_Instruction* ins){
}

template<>
void ArmBlock::ConvertAndAppend<ret_Instruction*>(ret_Instruction* ins){
}

template<>
void ArmBlock::ConvertAndAppend<fptosi_Instruction*>(fptosi_Instruction* ins){
}

template<>
void ArmBlock::ConvertAndAppend<sitofp_Instruction*>(sitofp_Instruction* ins){
}

template<>
void ArmBlock::ConvertAndAppend<zext_Instruction*>(zext_Instruction* ins){
}

ArmUnit::ArmUnit(LLVM_IR& IR){
    global_def = IR.global_def;
    for(auto func_pair:IR.llvm_cfg){
        auto cfg = func_pair.second;
        std::string name = cfg->func_ins->get_Func_name();
        auto cur_armfunc = new ArmFunc(name);
        cur_armfunc->parent = this;
        functions.push_back(cur_armfunc);
        for(auto block_pair:*(cfg->block)){
            auto block = block_pair.second;
            // We assume IR blocks have already been concated
            auto cur_armblk = new ArmBlock(block_pair.first);
            cur_armblk->parent = cur_armfunc;
            cur_armfunc->blocks.push_back(cur_armblk);
            // Expand
            for(auto instruction : block->Instruction_list){
                cur_armblk->ConvertAndAppend<Instruction>(instruction);
            }
            // Simplify&Match : peehole
        }
    }
}

void ArmBlock::emit(std::ostream& s){
    for(auto ins:instructions){
        s<<"\t";
        ((Arm_baseins*)ins)->printArm(s);
    }
}

void ArmFunc::emit(std::ostream& s){
    s<<func_name<<":\n";
    for(auto block:blocks){
        s<<func_name<<block->label_id<<":\n";
        block->emit(s);
    }
}

void ArmUnit::emit(std::ostream& s){// global def
    for(auto func:functions){
        func->emit(s);
    }
}
#endif