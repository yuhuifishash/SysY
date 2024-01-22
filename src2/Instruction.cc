#include "Instruction.h"
std::vector<operand> load_Instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(pointer);
    return ret;
}

void load_Instruction::set_nonresult_operands(std::vector<operand> ops){
    pointer = ops[0];
}

std::vector<operand> store_Instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(pointer);
    ret.push_back(value);
    return ret;
}

void store_Instruction::set_nonresult_operands(std::vector<operand> ops){
    pointer = ops[0];
    value = ops[1];
}

std::vector<operand> alg_Instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(op1);
    ret.push_back(op2);
    return ret;
}

void alg_Instruction::set_nonresult_operands(std::vector<operand> ops){
    op1 = ops[0];
    op2 = ops[1];
}

std::vector<operand> icmp_Instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(op1);
    ret.push_back(op2);
    // ret.push_back(cond);
    return ret;
}

void icmp_Instruction::set_nonresult_operands(std::vector<operand> ops){
    op1 = ops[0];
    op2 = ops[1];
}

std::vector<operand> fcmp_Instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(op1);
    ret.push_back(op2);
    // ret.push_back(cond);
    return ret;
}

void fcmp_Instruction::set_nonresult_operands(std::vector<operand> ops){
    op1 = ops[0];
    op2 = ops[1];
}

void phi_instruction::set_phi_label(int pre_id,int new_id){
    for(auto phi_pair:val_labels){
        auto l = (label_operand*)phi_pair.first;
        if(l->getLabelNo() == pre_id){
            l->setLabelNo(new_id);
        }
    }
}

std::vector<operand> phi_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    for(auto label_val_pair:val_labels){
        ret.push_back(label_val_pair.second);
    }
    return ret;
}
void phi_instruction::set_nonresult_operands(std::vector<operand> ops){
    int i=0;
    for(auto&label_val_pair:val_labels){
        label_val_pair.second = ops[i];
        i++;
    }
}

std::vector<operand> br_cond_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(cond);
    return ret;
}
void br_cond_instruction::set_nonresult_operands(std::vector<operand> ops){
    cond = ops[0];
}

int call_instruction::get_resultregno(){
    if(result!=NULL)
        return ((reg_operand*)result)->getRegNo();
    else return -1;
}

std::vector<operand> call_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    for(auto arg_pair:args){
        ret.push_back(arg_pair.second);
    }
    return ret;
}
void call_instruction::set_nonresult_operands(std::vector<operand> ops){
    int i=0;
    for(auto&arg_pair:args){
        arg_pair.second = ops[i];
        i++;
    }
}

std::vector<operand> ret_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    if(ret_val != NULL)
        ret.push_back(ret_val);
    return ret;
}
void ret_instruction::set_nonresult_operands(std::vector<operand> ops){
    if(ops.empty()){
        ret_val = NULL;
    }else{
        ret_val = ops[0];
    }
}

std::vector<operand> get_elementptr_instruction::get_nonresult_operands(){
    std::vector<operand> ret(indexes);
    ret.push_back(ptrval);
    return ret;
}
void get_elementptr_instruction::set_nonresult_operands(std::vector<operand> ops){
    indexes = ops;
    indexes.pop_back();
    ptrval = ops[ops.size()-1];
}

void func_define_instruction::insert_formal(enum llvm_type t){
    formals.push_back(t);
    formals_reg.push_back(new reg_operand(formals_reg.size()));
}

std::vector<operand> func_define_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    std::cerr<<"func_define_instruction get_nonresult_operands()\n";
    return ret;
}

std::vector<operand> func_declare_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    std::cerr<<"func_declare_instruction get_nonresult_operands()\n";
    return ret;
}

std::vector<operand> fptosi_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(value);
    return ret;
}
void fptosi_instruction::set_nonresult_operands(std::vector<operand> ops){
    value = ops[0];
}

std::vector<operand> sitofp_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(value);
    return ret;
}
void sitofp_instruction::set_nonresult_operands(std::vector<operand> ops){
    value = ops[0];
}

std::vector<operand> zext_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(value);
    return ret;
}
void zext_instruction::set_nonresult_operands(std::vector<operand> ops){
    value = ops[0];
}

std::vector<operand> mov_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    // std::cerr<<"mov_instruction::get_nonresult_operands()\n";
    ret.push_back(source);
    return ret;
}

std::vector<operand> load_fp_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    // std::cerr<<"load_fp_instruction::get_nonresult_operands()\n";
    ret.push_back(offset);
    return ret;
}

std::vector<operand> store_fp_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(offset);
    return ret;
}

std::vector<operand> get_addr_by_fp_offset_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(offset);
    return ret;
}

std::vector<operand> vmov_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(from);
    return ret;
}

std::vector<operand> pseudo_load_label_instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(from);
    return ret;
}

std::vector<operand> pseudo_alg_shift_Instruction::get_nonresult_operands(){
    std::vector<operand> ret;
    ret.push_back(op1);
    ret.push_back(op2);
    return ret;
}

operand reg_operand::copy_operand()
{
    return new reg_operand(reg_no);
}

operand imm_i32_operand::copy_operand()
{
    return new imm_i32_operand(immVal);
}

operand imm_f32_operand::copy_operand()
{
    return new imm_f32_operand(immVal);
}

operand label_operand::copy_operand()
{
    return new label_operand(label_no);
}

operand global_operand::copy_operand()
{
    return new global_operand(name);
}

Instruction load_Instruction::copy_instruction()
{
    operand npointer = pointer->copy_operand();
    operand nresult = result->copy_operand();
    return new load_Instruction(type,npointer,nresult);
}

Instruction store_Instruction::copy_instruction()
{
    operand npointer = pointer->copy_operand();
    operand nvalue = value->copy_operand();
    return new store_Instruction(type,npointer,nvalue);
}

Instruction alg_Instruction::copy_instruction()
{
    operand nop1 = op1->copy_operand();
    operand nop2 = op2->copy_operand();
    operand nresult = result->copy_operand();
    return new alg_Instruction(opcode,type,nop1,nop2,nresult);
}

Instruction icmp_Instruction::copy_instruction()
{
    operand nop1 = op1->copy_operand();
    operand nop2 = op2->copy_operand();
    operand nresult = result->copy_operand();
    return new icmp_Instruction(type,nop1,nop2,cond,nresult);
}

Instruction fcmp_Instruction::copy_instruction()
{
    operand nop1 = op1->copy_operand();
    operand nop2 = op2->copy_operand();
    operand nresult = result->copy_operand();
    return new fcmp_Instruction(type,nop1,nop2,cond,nresult);
}

Instruction phi_instruction::copy_instruction()
{
    operand nresult = result->copy_operand();
    std::map<operand,operand> nval_labels;

    for(auto Phiop:val_labels){
        operand nlabel = Phiop.first->copy_operand();
        operand nvalue = Phiop.second->copy_operand();
        nval_labels.insert({nlabel,nvalue});
    }

    return new phi_instruction(type,nresult,nval_labels);
}

Instruction alloca_instruction::copy_instruction(){return nullptr;}

Instruction br_cond_instruction::copy_instruction()
{
    operand ncond = cond->copy_operand();
    operand ntrueLabel = trueLabel->copy_operand();
    operand nfalseLabel = falseLabel->copy_operand();
    return new br_cond_instruction(ncond,ntrueLabel,nfalseLabel);
}

Instruction br_uncond_instruction::copy_instruction()
{
    operand ndestLabel = destLabel->copy_operand();
    return new br_uncond_instruction(ndestLabel);
}

Instruction call_instruction::copy_instruction()
{
    operand nresult = NULL;
    if(ret_type != VOID){
        nresult = result->copy_operand();
    }
    std::vector<std::pair<enum llvm_type,operand> > nargs;
    for(auto n:args){
        nargs.push_back({n.first,n.second->copy_operand()});
    }
    return new call_instruction(ret_type,nresult,name,nargs);
}

Instruction ret_instruction::copy_instruction(){return nullptr;}

Instruction get_elementptr_instruction::copy_instruction()
{
    operand nresult = result->copy_operand();
    operand nptrval = ptrval->copy_operand();
    std::vector<operand> nindexes;
    for(auto index:indexes){
        operand nindex = index->copy_operand();
        nindexes.push_back(nindex); 
    }

    return new get_elementptr_instruction(type,nresult,nptrval,dims,nindexes);

}

Instruction fptosi_instruction::copy_instruction()
{
    operand nresult = result->copy_operand();
    operand nvalue = value->copy_operand();

    return new fptosi_instruction(nresult,nvalue);
}

Instruction sitofp_instruction::copy_instruction()
{
    operand nresult = result->copy_operand();
    operand nvalue = value->copy_operand();

    return new sitofp_instruction(nresult,nvalue);
}

Instruction zext_instruction::copy_instruction()
{
    operand nresult = result->copy_operand();
    operand nvalue = value->copy_operand();

    return new zext_instruction(to_type,nresult,from_type,nvalue);
}