#include "riscv64_instSelect.h"

template <> void RiscV64Selector::ConvertAndAppend<LoadInstruction *>(LoadInstruction *ins) {
    if (ins->GetDataType() == FLOAT32) {
        TODO("RV InstSelect");
    } else if (ins->GetDataType() == I32) {
    }
    if (ins->GetPointer()->GetOperandType() == BasicOperand::REG) {
        TODO("RV InstSelect");
    } else if (ins->GetPointer()->GetOperandType() == BasicOperand::GLOBAL) {
        // lui %r0, %hi(x)
        // lw  %rd, %lo(x)(%r0)
        auto global_op = (GlobalOperand*)ins->GetPointer();
        auto rd_op = (RegOperand*)ins->GetResultOperand();
        Register addr_hi = GetNewReg(INT64);

        auto lui_instr = new RiscV64Instruction();
        lui_instr->setOpcode(RISCV_LUI,true);
        lui_instr->setRd(addr_hi);
        lui_instr->setLabel(RiscVLabel(global_op->GetName(),true));

        auto lw_instr = new RiscV64Instruction();
        lw_instr->setOpcode(RISCV_LW,true);
        lw_instr->setRd(GetllvmReg(rd_op->GetRegNo(),INT32));
        lw_instr->setLabel(RiscVLabel(global_op->GetName(),false));
        lw_instr->setRs1(addr_hi);

        cur_block->push_back(lui_instr);
        cur_block->push_back(lw_instr);
    }
}

template <> void RiscV64Selector::ConvertAndAppend<StoreInstruction *>(StoreInstruction *ins) {
    TODO("RV InstSelect");
    if (ins->GetDataType() == FLOAT32) {

    } else if (ins->GetDataType() == I32) {
    }
    if (ins->GetValue()->GetOperandType() == BasicOperand::IMMI32) {
    }
    if (ins->GetPointer()->GetOperandType() == BasicOperand::REG) {

    } else if (ins->GetPointer()->GetOperandType() == BasicOperand::GLOBAL) {
    }
}

template <> void RiscV64Selector::ConvertAndAppend<ArithmeticInstruction *>(ArithmeticInstruction *ins) {
    if(ins->GetOpcode() == ADD){
        if(ins->GetDataType() == I32){
            // Imm + Imm
            if(ins->GetOperand1()->GetOperandType() == BasicOperand::IMMI32 && ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32){
                TODO("IMM+IMM");
            }
            // Reg + Imm
            // May Generate COPY
            if(ins->GetOperand1()->GetOperandType() == BasicOperand::REG && ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32){
                Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);

                auto* rd_op = (RegOperand*)ins->GetResultOperand();
                auto* rs_op = (RegOperand*)ins->GetOperand1();
                auto* i_op = (ImmI32Operand*)ins->GetOperand2();

                auto addiw_instr = new RiscV64Instruction();
                addiw_instr->setOpcode(RISCV_ADDIW,false);
                addiw_instr->setRd(GetllvmReg(rd_op->GetRegNo(),INT32));
                addiw_instr->setRs1(GetllvmReg(rs_op->GetRegNo(),INT32));
                addiw_instr->setImm(i_op->GetIntImmVal());
                cur_block->push_back(addiw_instr);
            }
            // Reg + Reg
            if(ins->GetOperand1()->GetOperandType() == BasicOperand::REG && ins->GetOperand2()->GetOperandType() == BasicOperand::REG){
                Assert(ins->GetResultOperand()->GetOperandType() == BasicOperand::REG);
                auto* rd_op = (RegOperand*)ins->GetResultOperand();
                auto* rs_op = (RegOperand*)ins->GetOperand1();
                auto* rt_op = (RegOperand*)ins->GetOperand2();

                auto addw_instr = new RiscV64Instruction();
                addw_instr->setOpcode(RISCV_ADDW,false);
                addw_instr->setRd(GetllvmReg(rd_op->GetRegNo(),INT32));
                addw_instr->setRs1(GetllvmReg(rs_op->GetRegNo(),INT32));
                addw_instr->setRs2(GetllvmReg(rt_op->GetRegNo(),INT32));
                cur_block->push_back(addw_instr);
            }
        }else{
            TODO("RV InstSelect For DataType %d",ins->GetDataType());
        }
    }else{
        TODO("RV InstSelect For Opcode %d",ins->GetOpcode());
    }
}

template <> void RiscV64Selector::ConvertAndAppend<IcmpInstruction *>(IcmpInstruction *ins) {
    TODO("RV InstSelect");
}

template <> void RiscV64Selector::ConvertAndAppend<FcmpInstruction *>(FcmpInstruction *ins) {
    TODO("RV InstSelect");
}

template <> void RiscV64Selector::ConvertAndAppend<AllocaInstruction *>(AllocaInstruction *ins) {
    TODO("RV InstSelect");
}

template <> void RiscV64Selector::ConvertAndAppend<BrCondInstruction *>(BrCondInstruction *ins) {
    TODO("RV InstSelect");
}

template <> void RiscV64Selector::ConvertAndAppend<BrUncondInstruction *>(BrUncondInstruction *ins) {
    auto instr = new RiscV64Instruction();
    instr->setOpcode(RISCV_JAL,true);
    Log("setLabel");
    instr->setLabel(RiscVLabel(((LabelOperand*)ins->GetDestLabel())->GetLabelNo()));
    Log("setLabel_end");
    instr->setRd(Register(false,RISCV_x0,getRVRegType(RISCV_x0)));

    cur_block->push_back(instr);
}

template <> void RiscV64Selector::ConvertAndAppend<CallInstruction *>(CallInstruction *ins) {
    TODO("RV InsSelect");
}

template <> void RiscV64Selector::ConvertAndAppend<RetInstruction *>(RetInstruction *ins) {
    if (ins->GetRetVal() != NULL) {
        if (ins->GetRetVal()->GetOperandType() == BasicOperand::REG) {
            if (ins->GetType() == FLOAT32) {
                TODO("InsSelect: RV ret FloatReg");
            } else if (ins->GetType() == I32) {
                // TODO("InsSelect: RV ret IntReg");
                auto ret_val = (RegOperand*)ins->GetRetVal();
                
                // auto mv_instr = new RiscV64Instruction();
                // mv_instr->setOpcode(RISCV_ADDIW,false);
                // mv_instr->setImm(0);
                // mv_instr->setRd(Register(false,RISCV_x10,getRVRegType(RISCV_x10)));
                // mv_instr->setRs1(GetllvmReg(ret_val->GetRegNo(),INT32));

                auto mv_instr = new MachineCopyInstruction(new MachineRegister(GetllvmReg(ret_val->GetRegNo(),INT32)),new MachineRegister(GetPhysicalReg(RISCV_x10)),INT32);

                cur_block->push_back(mv_instr);
            }
        }else if(ins->GetRetVal()->GetOperandType() == BasicOperand::IMMI32){
            auto ret_val = (ImmI32Operand*)ins->GetRetVal();

            auto li_instr = new RiscV64Instruction();
            li_instr->setOpcode(RISCV_LI,false);
            li_instr->setImm(ret_val->GetIntImmVal());
            li_instr->setRd(Register(false,RISCV_x10,getRVRegType(RISCV_x10)));
            cur_block->push_back(li_instr);

        }else if(ins->GetRetVal()->GetOperandType() == BasicOperand::IMMF32){
            TODO("InsSelect: RV ret FloatImm");
        }
    }
    auto ret_instr = new RiscV64Instruction();
    ret_instr->setOpcode(RISCV_JALR,false);
    ret_instr->setImm(0);
    ret_instr->setRd(Register(false,RISCV_x0,getRVRegType(RISCV_x0)));
    ret_instr->setRs1(Register(false,RISCV_x1,getRVRegType(RISCV_x1)));
    cur_block->push_back(ret_instr);
}

template <> void RiscV64Selector::ConvertAndAppend<FptosiInstruction *>(FptosiInstruction *ins) {
    TODO("RV InstSelect");
}

template <> void RiscV64Selector::ConvertAndAppend<SitofpInstruction *>(SitofpInstruction *ins) {
    TODO("RV InstSelect");
}

template <> void RiscV64Selector::ConvertAndAppend<ZextInstruction *>(ZextInstruction *ins) {
    TODO("RV InstSelect");
}

template <> void RiscV64Selector::ConvertAndAppend<GetElementprtInstruction *>(GetElementprtInstruction *ins) {
    TODO("RV InstSelect");
}

template<>void RiscV64Selector::ConvertAndAppend<Instruction>(Instruction inst){
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
        ConvertAndAppend<AllocaInstruction *>((AllocaInstruction *)inst);
        break;
    case BR_COND:
        ConvertAndAppend<BrCondInstruction *>((BrCondInstruction *)inst);
        break;
    case BR_UNCOND:
        ConvertAndAppend<BrUncondInstruction *>((BrUncondInstruction *)inst);
        break;
    case RET:
        ConvertAndAppend<RetInstruction *>((RetInstruction *)inst);
        break;
    case ZEXT:
        ConvertAndAppend<ZextInstruction *>((ZextInstruction *)inst);
        break;
    case FPTOSI:
        ConvertAndAppend<FptosiInstruction *>((FptosiInstruction *)inst);
        break;
    case SITOFP:
        ConvertAndAppend<SitofpInstruction *>((SitofpInstruction *)inst);
        break;
    case GETELEMENTPTR:
        ConvertAndAppend<GetElementprtInstruction *>((GetElementprtInstruction *)inst);
        break;
    case CALL:
        ConvertAndAppend<CallInstruction *>((CallInstruction *)inst);
        break;
    }
}

void RiscV64Selector::SelectInstructionAndBuildCFG(){
    dest->global_def = IR->global_def;
    for(auto func_pair : IR->llvm_cfg){
        auto cfg = func_pair.second;
        std::string name = cfg->function_def->GetFunctionName();

        cur_func = new RiscV64Function(name);
        cur_func->SetParent(dest);

        dest->functions.push_back(cur_func);

        auto cur_mcfg = new MachineCFG;
        cur_func->SetMachineCFG(cur_mcfg);

        ClearFunctionSelectState();

        for(auto [id, block] : *(cfg->block_map)){
            cur_block = new RiscV64Block(id);

            cur_mcfg->AssignEmptyNode(id,cur_block);

            cur_block->setParent(cur_func);
            cur_func->blocks.push_back(cur_block);

            for(auto instruction : block->Instruction_list){
                Log("Selecting Instruction");
                ConvertAndAppend<Instruction>(instruction);
            }
        }
        Log("After Convert, Building CFG");
        for(int i=0;i<cfg->G.size();i++){
            const auto& arcs = cfg->G[i];
            for(auto arc:arcs){
                Log("Making Edge Between %d,%d",i,arc->block_id);
                cur_mcfg->MakeEdge(i,arc->block_id);
            }
        }
    }
}
void RiscV64Selector::ClearFunctionSelectState(){
    llvm_rv_regtable.clear();
}

Register RiscV64Selector::GetllvmReg(int ir_reg,MachineDataType type){
    if(llvm_rv_regtable.find(ir_reg) == llvm_rv_regtable.end()){
        llvm_rv_regtable[ir_reg] = GetNewReg(type);
    }
    Assert(llvm_rv_regtable[ir_reg].type == type);
    return llvm_rv_regtable[ir_reg];
}
Register RiscV64Selector::GetNewReg(MachineDataType type){
    return cur_func->GetNewRegister(type.data_type,type.data_length);
}
Register RiscV64Selector::GetPhysicalReg(int reg_no){
    return Register(false,reg_no,getRVRegType(reg_no));
}