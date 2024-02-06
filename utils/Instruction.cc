#include "Instruction.h"
#include "basic_block.h"

Instruction IRgen_alg_i32_Ins(LLVMBlock B,LLVMIROpcode opcode,int reg1,int reg2,int result_reg)
{

}

Instruction IRgen_alg_f32_Ins(LLVMBlock B,LLVMIROpcode opcode,int reg1,int reg2,int result_reg)
{

}

Instruction IRgen_icmp_Ins(LLVMBlock B,IcmpCond cmp_op,int reg1,int reg2,int result_reg)
{

}

Instruction IRgen_fcmp_Ins(LLVMBlock B,IcmpCond cmp_op,int reg1,int reg2,int result_reg)
{

}

Instruction IRgen_fptosi_Ins(LLVMBlock B,int src,int dst)
{

}

Instruction IRgen_sitofp_Ins(LLVMBlock B,int src,int dst)
{

}

Instruction IRgen_zext_Ins(LLVMBlock B,int src,int dst)
{

}



std::vector<Operand> LoadInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(pointer);
    return ret;
}

void LoadInstruction::SetNonResultOperands(std::vector<Operand> ops){
    pointer = ops[0];
}

std::vector<Operand> StoreInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(pointer);
    ret.push_back(value);
    return ret;
}

void StoreInstruction::SetNonResultOperands(std::vector<Operand> ops){
    pointer = ops[0];
    value = ops[1];
}

std::vector<Operand> ArithmeticInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(op1);
    ret.push_back(op2);
    return ret;
}

void ArithmeticInstruction::SetNonResultOperands(std::vector<Operand> ops){
    op1 = ops[0];
    op2 = ops[1];
}

std::vector<Operand> IcmpInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(op1);
    ret.push_back(op2);
    // ret.push_back(cond);
    return ret;
}

void IcmpInstruction::SetNonResultOperands(std::vector<Operand> ops){
    op1 = ops[0];
    op2 = ops[1];
}

std::vector<Operand> FcmpInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(op1);
    ret.push_back(op2);
    // ret.push_back(cond);
    return ret;
}

void FcmpInstruction::SetNonResultOperands(std::vector<Operand> ops){
    op1 = ops[0];
    op2 = ops[1];
}

void PhiInstruction::set_phi_label(int pre_id,int new_id){
    for(auto phi_pair:val_labels){
        auto l = (LabelOperand*)phi_pair.first;
        if(l->GetLabelNo() == pre_id){
            l->SetLabelNo(new_id);
        }
    }
}

std::vector<Operand> PhiInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    for(auto label_val_pair:val_labels){
        ret.push_back(label_val_pair.second);
    }
    return ret;
}
void PhiInstruction::SetNonResultOperands(std::vector<Operand> ops){
    int i=0;
    for(auto&label_val_pair:val_labels){
        label_val_pair.second = ops[i];
        i++;
    }
}

std::vector<Operand> BrCondInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(cond);
    return ret;
}
void BrCondInstruction::SetNonResultOperands(std::vector<Operand> ops){
    cond = ops[0];
}

int CallInstruction::GetResultRegNo(){
    if(result!=NULL)
        return ((RegOperand*)result)->GetRegNo();
    else return -1;
}

std::vector<Operand> CallInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    for(auto arg_pair:args){
        ret.push_back(arg_pair.second);
    }
    return ret;
}
void CallInstruction::SetNonResultOperands(std::vector<Operand> ops){
    int i = 0;
    for(auto&arg_pair:args){
        arg_pair.second = ops[i];
        i++;
    }
}

std::vector<Operand> RetInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    if(ret_val != NULL)
        ret.push_back(ret_val);
    return ret;
}
void RetInstruction::SetNonResultOperands(std::vector<Operand> ops){
    if(ops.empty()){
        ret_val = NULL;
    }else{
        ret_val = ops[0];
    }
}

std::vector<Operand> GetElementprtInstruction::GetNonResultOperands(){
    std::vector<Operand> ret(indexes);
    ret.push_back(ptrval);
    return ret;
}
void GetElementprtInstruction::SetNonResultOperands(std::vector<Operand> ops){
    indexes = ops;
    indexes.pop_back();
    ptrval = ops[ops.size()-1];
}

void FunctionDefineInstruction::insert_formal(enum LLVMType t){
    formals.push_back(t);
    formals_reg.push_back(new RegOperand(formals_reg.size()));
}

std::vector<Operand> FunctionDefineInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    std::cerr<<"func_define_Instruction get_nonresult_operands()\n";
    return ret;
}

std::vector<Operand> FunctionDeclareInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    std::cerr<<"func_declare_Instruction get_nonresult_operands()\n";
    return ret;
}

std::vector<Operand> FptosiInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(value);
    return ret;
}
void FptosiInstruction::SetNonResultOperands(std::vector<Operand> ops){
    value = ops[0];
}

std::vector<Operand> SitofpInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(value);
    return ret;
}
void SitofpInstruction::SetNonResultOperands(std::vector<Operand> ops){
    value = ops[0];
}

std::vector<Operand> ZextInstruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(value);
    return ret;
}
void ZextInstruction::SetNonResultOperands(std::vector<Operand> ops){
    value = ops[0];
}

std::vector<Operand> mov_instruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    // std::cerr<<"mov_instruction::get_nonresult_operands()\n";
    ret.push_back(source);
    return ret;
}

std::vector<Operand> load_fp_instruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    // std::cerr<<"load_fp_instruction::get_nonresult_operands()\n";
    ret.push_back(offset);
    return ret;
}

std::vector<Operand> store_fp_instruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(offset);
    return ret;
}

std::vector<Operand> get_addr_by_fp_offset_instruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(offset);
    return ret;
}

std::vector<Operand> vmov_instruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(from);
    return ret;
}

std::vector<Operand> pseudo_load_label_instruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(from);
    return ret;
}

std::vector<Operand> pseudo_alg_shift_Instruction::GetNonResultOperands(){
    std::vector<Operand> ret;
    ret.push_back(op1);
    ret.push_back(op2);
    return ret;
}

Operand RegOperand::CopyOperand()
{
    return new RegOperand(reg_no);
}

Operand ImmI32Operand::CopyOperand()
{
    return new ImmI32Operand(immVal);
}

Operand ImmF32Operand::CopyOperand()
{
    return new ImmF32Operand(immVal);
}

Operand LabelOperand::CopyOperand()
{
    return new LabelOperand(label_no);
}

Operand global_operand::CopyOperand()
{
    return new global_operand(name);
}

Instruction LoadInstruction::CopyInstruction()
{
    Operand npointer = pointer->CopyOperand();
    Operand nresult = result->CopyOperand();
    return new LoadInstruction(type,npointer,nresult);
}

Instruction StoreInstruction::CopyInstruction()
{
    Operand npointer = pointer->CopyOperand();
    Operand nvalue = value->CopyOperand();
    return new StoreInstruction(type,npointer,nvalue);
}

Instruction ArithmeticInstruction::CopyInstruction()
{
    Operand nop1 = op1->CopyOperand();
    Operand nop2 = op2->CopyOperand();
    Operand nresult = result->CopyOperand();
    return new ArithmeticInstruction(opcode,type,nop1,nop2,nresult);
}

Instruction IcmpInstruction::CopyInstruction()
{
    Operand nop1 = op1->CopyOperand();
    Operand nop2 = op2->CopyOperand();
    Operand nresult = result->CopyOperand();
    return new IcmpInstruction(type,nop1,nop2,cond,nresult);
}

Instruction FcmpInstruction::CopyInstruction()
{
    Operand nop1 = op1->CopyOperand();
    Operand nop2 = op2->CopyOperand();
    Operand nresult = result->CopyOperand();
    return new FcmpInstruction(type,nop1,nop2,cond,nresult);
}

Instruction PhiInstruction::CopyInstruction()
{
    Operand nresult = result->CopyOperand();
    std::vector<std::pair<Operand,Operand> > nval_labels;
    // std::map<operand,operand> nval_labels;

    for(auto Phiop:val_labels){
        Operand nlabel = Phiop.first->CopyOperand();
        Operand nvalue = Phiop.second->CopyOperand();
        // nval_labels.push_back({nlabel,nvalue});
        nval_labels.push_back(std::make_pair(nlabel,nvalue));
    }

    return new PhiInstruction(type,nresult,nval_labels);
}

Instruction AllocaInstruction::CopyInstruction(){return nullptr;}

Instruction BrCondInstruction::CopyInstruction()
{
    Operand ncond = cond->CopyOperand();
    Operand ntrueLabel = trueLabel->CopyOperand();
    Operand nfalseLabel = falseLabel->CopyOperand();
    return new BrCondInstruction(ncond,ntrueLabel,nfalseLabel);
}

Instruction BrUncondInstruction::CopyInstruction()
{
    Operand ndestLabel = destLabel->CopyOperand();
    return new BrUncondInstruction(ndestLabel);
}

Instruction CallInstruction::CopyInstruction()
{
    Operand nresult = NULL;
    if(ret_type != VOID){
        nresult = result->CopyOperand();
    }
    std::vector<std::pair<enum LLVMType,Operand> > nargs;
    for(auto n:args){
        nargs.push_back({n.first,n.second->CopyOperand()});
    }
    return new CallInstruction(ret_type,nresult,name,nargs);
}

Instruction RetInstruction::CopyInstruction(){return nullptr;}

Instruction GetElementprtInstruction::CopyInstruction()
{
    Operand nresult = result->CopyOperand();
    Operand nptrval = ptrval->CopyOperand();
    std::vector<Operand> nindexes;
    for(auto index:indexes){
        Operand nindex = index->CopyOperand();
        nindexes.push_back(nindex); 
    }

    return new GetElementprtInstruction(type,nresult,nptrval,dims,nindexes);

}

Instruction FptosiInstruction::CopyInstruction()
{
    Operand nresult = result->CopyOperand();
    Operand nvalue = value->CopyOperand();

    return new FptosiInstruction(nresult,nvalue);
}

Instruction SitofpInstruction::CopyInstruction()
{
    Operand nresult = result->CopyOperand();
    Operand nvalue = value->CopyOperand();

    return new SitofpInstruction(nresult,nvalue);
}

Instruction ZextInstruction::CopyInstruction()
{
    Operand nresult = result->CopyOperand();
    Operand nvalue = value->CopyOperand();

    return new ZextInstruction(to_type,nresult,from_type,nvalue);
}

void LoadInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(pointer->GetOperandType()==BasicOperand::REG){
        auto pointer_reg = (RegOperand*)pointer;
        if(Rule.find(pointer_reg->GetRegNo())!=Rule.end())
            pointer_reg->SetRegNo((*(Rule.find(pointer_reg->GetRegNo()))).second);
    }
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void StoreInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(pointer->GetOperandType()==BasicOperand::REG){
        auto pointer_reg = (RegOperand*)pointer;
        if(Rule.find(pointer_reg->GetRegNo())!=Rule.end())
            pointer_reg->SetRegNo((*(Rule.find(pointer_reg->GetRegNo()))).second);
    }
    if(value->GetOperandType()==BasicOperand::REG){
        auto value_reg = (RegOperand*)value;
        if(Rule.find(value_reg->GetRegNo())!=Rule.end())
            value_reg->SetRegNo((*(Rule.find(value_reg->GetRegNo()))).second);
    }
}

void ArithmeticInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(op2->GetOperandType()==BasicOperand::REG){
        auto op2_reg = (RegOperand*)op2;
        if(Rule.find(op2_reg->GetRegNo())!=Rule.end())
            op2_reg->SetRegNo((*(Rule.find(op2_reg->GetRegNo()))).second);
    }
    if(op1->GetOperandType()==BasicOperand::REG){
        auto op1_reg = (RegOperand*)op1;
        if(Rule.find(op1_reg->GetRegNo())!=Rule.end())
            op1_reg->SetRegNo((*(Rule.find(op1_reg->GetRegNo()))).second);
    }
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void IcmpInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(op2->GetOperandType()==BasicOperand::REG){
        auto op2_reg = (RegOperand*)op2;
        if(Rule.find(op2_reg->GetRegNo())!=Rule.end())
            op2_reg->SetRegNo((*(Rule.find(op2_reg->GetRegNo()))).second);
    }
    if(op1->GetOperandType()==BasicOperand::REG){
        auto op1_reg = (RegOperand*)op1;
        if(Rule.find(op1_reg->GetRegNo())!=Rule.end())
            op1_reg->SetRegNo((*(Rule.find(op1_reg->GetRegNo()))).second);
    }
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void FcmpInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(op2->GetOperandType()==BasicOperand::REG){
        auto op2_reg = (RegOperand*)op2;
        if(Rule.find(op2_reg->GetRegNo())!=Rule.end())
            op2_reg->SetRegNo((*(Rule.find(op2_reg->GetRegNo()))).second);
    }
    if(op1->GetOperandType()==BasicOperand::REG){
        auto op1_reg = (RegOperand*)op1;
        if(Rule.find(op1_reg->GetRegNo())!=Rule.end())
            op1_reg->SetRegNo((*(Rule.find(op1_reg->GetRegNo()))).second);
    }
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void PhiInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    for(auto label_pair : val_labels){
        auto op1 = label_pair.first;
        if(op1->GetOperandType()==BasicOperand::REG){
            auto op1_reg = (RegOperand*)op1;
            if(Rule.find(op1_reg->GetRegNo())!=Rule.end())
                op1_reg->SetRegNo((*(Rule.find(op1_reg->GetRegNo()))).second);
        }
        auto op2 = label_pair.second;
        if(op2->GetOperandType()==BasicOperand::REG){
            auto op2_reg = (RegOperand*)op2;
            if(Rule.find(op2_reg->GetRegNo())!=Rule.end())
                op2_reg->SetRegNo((*(Rule.find(op2_reg->GetRegNo()))).second);
        }
    }
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void AllocaInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void BrCondInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(cond->GetOperandType()==BasicOperand::REG){
        auto cond_reg = (RegOperand*)cond;
        if(Rule.find(cond_reg->GetRegNo())!=Rule.end())
            cond_reg->SetRegNo((*(Rule.find(cond_reg->GetRegNo()))).second);
    }
}

void BrUncondInstruction::ReplaceByMap(const std::map<int,int>&Rule){}

void GlobalVarDefineInstruction::ReplaceByMap(const std::map<int,int>&Rule){}

void GlobalStringConstInstruction::ReplaceByMap(const std::map<int,int>&Rule){}

void CallInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    for(auto arg_pair:args){
        if(arg_pair.second->GetOperandType()==BasicOperand::REG){
            auto op = (RegOperand*)arg_pair.second;
            if(Rule.find(op->GetRegNo())!=Rule.end())
                op->SetRegNo((*(Rule.find(op->GetRegNo()))).second);
        }
    }
    if(result != NULL){
        if(result->GetOperandType()==BasicOperand::REG){
            auto result_reg = (RegOperand*)result;
            if(Rule.find(result_reg->GetRegNo())!=Rule.end())
                result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
        }
    }
}

void RetInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(ret_val != NULL){
        if(ret_val->GetOperandType()==BasicOperand::REG){
            auto result_reg = (RegOperand*)ret_val;
            if(Rule.find(result_reg->GetRegNo())!=Rule.end())
                result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
        }
    }
}

void GetElementprtInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
    if(ptrval->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)ptrval;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
    for(auto idx_pair:indexes){
        if(idx_pair->GetOperandType()==BasicOperand::REG){
            auto idx_reg = (RegOperand*)idx_pair;
            if(Rule.find(idx_reg->GetRegNo())!=Rule.end())
                idx_reg->SetRegNo((*(Rule.find(idx_reg->GetRegNo()))).second);
        }
    }
}

void FunctionDefineInstruction::ReplaceByMap(const std::map<int,int>&Rule){}

void FunctionDeclareInstruction::ReplaceByMap(const std::map<int,int>&Rule){}

void FptosiInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
    if(value->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)value;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void SitofpInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
    if(value->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)value;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void ZextInstruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
    if(value->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)value;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void mov_instruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
    if(source->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)source;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void load_fp_instruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void store_fp_instruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(str_val->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)str_val;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void get_addr_by_fp_offset_instruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void load_imm_instruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void vmov_instruction::ReplaceByMap(const std::map<int,int>&Rule){
    if(result->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)result;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
    if(from->GetOperandType()==BasicOperand::REG){
        auto result_reg = (RegOperand*)from;
        if(Rule.find(result_reg->GetRegNo())!=Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}
