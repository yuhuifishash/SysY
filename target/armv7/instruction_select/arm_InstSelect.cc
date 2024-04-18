#ifndef ARM_INSTRSELECT_CC
#define ARM_INSTRSELECT_CC
#include "arm_InstSelect.h"

template <> void ArmSelector::ConvertAndAppend<LoadInstruction *>(LoadInstruction *ins) {
    if (ins->GetDataType() == FLOAT32) {

    } else if (ins->GetDataType() == I32) {
    }
    if (ins->GetPointer()->GetOperandType() == BasicOperand::REG) {

    } else if (ins->GetPointer()->GetOperandType() == BasicOperand::GLOBAL) {
    }
}

template <> void ArmSelector::ConvertAndAppend<StoreInstruction *>(StoreInstruction *ins) {
    if (ins->GetDataType() == FLOAT32) {

    } else if (ins->GetDataType() == I32) {
    }
    if (ins->GetValue()->GetOperandType() == BasicOperand::IMMI32) {
    }
    if (ins->GetPointer()->GetOperandType() == BasicOperand::REG) {

    } else if (ins->GetPointer()->GetOperandType() == BasicOperand::GLOBAL) {
    }
}

template <> void ArmSelector::ConvertAndAppend<ArithmeticInstruction *>(ArithmeticInstruction *ins) {}

template <> void ArmSelector::ConvertAndAppend<IcmpInstruction *>(IcmpInstruction *ins) {}

template <> void ArmSelector::ConvertAndAppend<FcmpInstruction *>(FcmpInstruction *ins) {}

template <> void ArmSelector::ConvertAndAppend<AllocaInstruction *>(AllocaInstruction *ins) {}

template <> void ArmSelector::ConvertAndAppend<BrCondInstruction *>(BrCondInstruction *ins) {}

template <> void ArmSelector::ConvertAndAppend<BrUncondInstruction *>(BrUncondInstruction *ins) {}

template <> void ArmSelector::ConvertAndAppend<CallInstruction *>(CallInstruction *ins) {}

template <> void ArmSelector::ConvertAndAppend<RetInstruction *>(RetInstruction *ins) {
    if (ins->GetRetVal() != NULL) {
        if (ins->GetRetVal()->GetOperandType() == BasicOperand::REG) {
            if (ins->GetType() == FLOAT32) {

            } else if (ins->GetType() == I32) {
            }
        }
    } else {
    }
}

template <> void ArmSelector::ConvertAndAppend<FptosiInstruction *>(FptosiInstruction *ins) {}

template <> void ArmSelector::ConvertAndAppend<SitofpInstruction *>(SitofpInstruction *ins) {}

template <> void ArmSelector::ConvertAndAppend<ZextInstruction *>(ZextInstruction *ins) {}

template <> void ArmSelector::ConvertAndAppend<Instruction>(Instruction inst) {
    switch (inst->GetOpcode()) {
    case LOAD:
        ConvertAndAppend<LoadInstruction *>((LoadInstruction *)inst);
        break;
    case STORE:
        ConvertAndAppend<StoreInstruction *>((StoreInstruction *)inst);
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
        ConvertAndAppend<ArithmeticInstruction *>((ArithmeticInstruction *)inst);
        break;
    case ICMP:
        ConvertAndAppend<IcmpInstruction *>((IcmpInstruction *)inst);
        break;
    case FCMP:
        ConvertAndAppend<FcmpInstruction *>((FcmpInstruction *)inst);
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

void ArmSelector::ClearFunctionSelectState() {
    ir_arm_vreg_map.clear();
    ir_negativeoffset_map.clear();
}

void ArmSelector::SelectInstructionAndBuildCFG() {
    dest->global_def = IR->global_def;
    for (auto func_pair : IR->llvm_cfg) {
        auto cfg = func_pair.second;
        std::string name = cfg->function_def->GetFunctionName();

        cur_func = new ArmFunction(name);
        cur_func->SetParent(dest);

        dest->functions.push_back(cur_func);

        auto cur_mcfg = new MachineCFG;
        cur_func->SetMachineCFG(cur_mcfg);

        ClearFunctionSelectState();

        // Can also (?) create new blocks and build cfg all in ConvertAndAppend<br_uncond/br_cond>

        for (auto [id, block] : *(cfg->block_map)) {
            // We assume IR blocks have already been concated
            cur_block = new ArmBlock(id);

            cur_mcfg->AssignEmptyNode(id, cur_block);

            cur_block->setParent(cur_func);
            cur_func->blocks.push_back(cur_block);
            // Expand
            for (auto instruction : block->Instruction_list) {
                ConvertAndAppend<Instruction>(instruction);
            }
            // Simplify&Match : peehole
        }
        // Machine Block ID == LLVM Block ID
        for (int i = 0; i < cfg->G.size(); i++) {
            const auto &arcs = cfg->G[i];
            for (auto arc : arcs) {
                // auto arc_m = cur_mcfg->block_map[arc->block_id];
                // cur_mcfg->G[i].push_back(arc_m);
                cur_mcfg->MakeEdge(i, arc->block_id);
            }
        }
        // for(int i = 0;i < cfg->invG.size();i++){
        //     const auto& arcs = cfg->invG[i];
        //     for(auto arc : arcs){
        //         auto arc_m = cur_mcfg->block_map[arc->block_id];
        //         cur_mcfg->invG[i].push_back(arc_m);
        //     }
        // }
    }
}

#endif