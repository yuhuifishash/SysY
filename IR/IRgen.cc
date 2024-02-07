#include "IRgen.h"
#include "semant.h"
#include "llvm_ir.h"

IRgenTable irgen_table;
LLVMIR llvm_IR;
extern StringTable str_table;
extern SemantTable semant_table;
static Func_Def_Instruction function_now;
static int function_returntype = 0;
int max_reg = -1; 
int max_blocklabel = -1;
static int now_label = 0;
static int loop_start_label = -1;// continue;
static int loop_end_label = -1;  // break;

void add_libfunc_decl();

void BasicBlock::push_Ins(int pos,Instruction Ins)
{
    if(pos == 0){
        Instruction_list.push_front(Ins);
    }
    else{
        Instruction_list.push_back(Ins);
    }
}

/*
I32 = 1,
FLOAT32 = 2,
PTR = 3,
VOID = 4
*/

//reg3 = reg1 op reg2
Instruction get_alg_Ins(int type,int op,int reg1,int reg2,int reg3)
{
    /*
    ADD=3,
    SUB=4,
    MUL=8,
    DIV=9,
    */
    Instruction Ins = new ArithmeticInstruction((LLVMIROpcode)op,(LLVMType)type,new RegOperand(reg1),new RegOperand(reg2),new RegOperand(reg3));
    return Ins;
}

Instruction get_alg_Ins_i32_1(int type,int op,int val1,int reg2,int reg3)
{
    Instruction Ins = new ArithmeticInstruction((LLVMIROpcode)op,(LLVMType)type,new ImmI32Operand(val1),new RegOperand(reg2),new RegOperand(reg3));
    return Ins;
}

Instruction get_alg_Ins_i32_2(int type,int op,int val1,int val2,int reg3)
{
    Instruction Ins = new ArithmeticInstruction((LLVMIROpcode)op,(LLVMType)type,new ImmI32Operand(val1),new ImmI32Operand(val2),new RegOperand(reg3));
    return Ins;
}

Instruction get_alg_Ins_f32_1(int type,int op,float val1,int reg2,int reg3)
{
    Instruction Ins = new ArithmeticInstruction((LLVMIROpcode)op,(LLVMType)type,new ImmF32Operand(val1),new RegOperand(reg2),new RegOperand(reg3));
    return Ins;
}

Instruction get_alg_Ins_f32_2(int type,int op,float val1,float val2,int reg3)
{
    Instruction Ins = new ArithmeticInstruction((LLVMIROpcode)op,(LLVMType)type,new ImmF32Operand(val1),new ImmF32Operand(val2),new RegOperand(reg3));
    return Ins;
}

Instruction get_load_Ins_global(int type,int result_reg_no,Symbol global_name){
    Instruction Ins = new LoadInstruction((LLVMType)type,new global_operand(global_name->get_string()),new RegOperand(result_reg_no));
    return Ins;
}

Instruction get_load_Ins(int type,int result_reg_no,int addr_reg_no){
    Instruction Ins = new LoadInstruction((LLVMType)type,new RegOperand(addr_reg_no),new RegOperand(result_reg_no));
    return Ins;
}

Instruction get_store_Ins_global(int type,int value_reg_no,Symbol global_name){
    Instruction Ins = new StoreInstruction((LLVMType)type,new global_operand(global_name->get_string()),new RegOperand(value_reg_no));
    return Ins;
}

Instruction get_store_Ins(int type,int value_reg_no,int addr_reg_no){
    Instruction Ins = new StoreInstruction((LLVMType)type,new RegOperand(addr_reg_no),new RegOperand(value_reg_no));
    return Ins;
}

Instruction get_store_Ins_immi32(int type,int i32Val,int addr_reg_no){
    Instruction Ins = new StoreInstruction((LLVMType)type,new RegOperand(addr_reg_no),new ImmI32Operand(i32Val));
    return Ins;
}

Instruction get_store_Ins_immf32(int type,float f32Val,int addr_reg_no){
    Instruction Ins = new StoreInstruction((LLVMType)type,new RegOperand(addr_reg_no),new ImmF32Operand(f32Val));
    return Ins;
}

Instruction get_icmp_Ins(int type,int cmp_op,int reg1,int reg2,int reg3){
    /*
    eq=1,//: equal
    ne=2,//: not equal
    ugt=3,//: unsigned greater than
    uge=4,//: unsigned greater or equal
    ult=5,//: unsigned less than
    ule=6,//: unsigned less or equal
    sgt=7,//: signed greater than
    sge=8,//: signed greater or equal
    slt=9,//: signed less than
    sle=10//: signed less or equal
    */
    Instruction Ins = new IcmpInstruction((LLVMType)type,new RegOperand(reg1),new RegOperand(reg2),(IcmpCond)cmp_op,new RegOperand(reg3));
    return Ins;
}

Instruction get_fcmp_Ins(int type,int cmp_op,int reg1,int reg2,int reg3){
    /*
    eq=1,//: equal
    ne=2,//: not equal
    ugt=3,//: unsigned greater than
    uge=4,//: unsigned greater or equal
    ult=5,//: unsigned less than
    ule=6,//: unsigned less or equal
    sgt=7,//: signed greater than
    sge=8,//: signed greater or equal
    slt=9,//: signed less than
    sle=10//: signed less or equal
    */
    Instruction Ins = new FcmpInstruction((LLVMType)type,new RegOperand(reg1),new RegOperand(reg2),(FcmpCond)cmp_op,new RegOperand(reg3));
    return Ins;
}

Instruction get_icmp_Ins_1(int type,int cmp_op,int reg1,int val,int reg3){
    Instruction Ins = new IcmpInstruction((LLVMType)type,new RegOperand(reg1),new ImmI32Operand(val),(IcmpCond)cmp_op,new RegOperand(reg3));
    return Ins;
}

Instruction get_fcmp_Ins_1(int type,int cmp_op,int reg1,float val,int reg3){
    Instruction Ins = new FcmpInstruction((LLVMType)type,new RegOperand(reg1),new ImmF32Operand(val),(FcmpCond)cmp_op,new RegOperand(reg3));
    return Ins;
}

Instruction get_alloca_Ins(int type,int result_reg_no){
    Instruction Ins = new AllocaInstruction((LLVMType)type,new RegOperand(result_reg_no));
    return Ins;
}

Instruction get_alloca_Ins(int type,int result_reg_no,std::vector<int> dims){
    Instruction Ins = new AllocaInstruction((LLVMType)type,dims,new RegOperand(result_reg_no));
    return Ins;
}

Instruction get_br_cond_Ins(int reg_no,int true_label,int false_label){
    Instruction Ins = new BrCondInstruction(new RegOperand(reg_no),new LabelOperand(true_label),new LabelOperand(false_label));
    return Ins;
}

Instruction get_br_uncond_Ins(int label){
    Instruction Ins = new BrUncondInstruction(new LabelOperand(label));
    return Ins;
}

Instruction get_call_Ins(int type,int result_reg_no,std::string func_name,std::vector<std::pair<enum LLVMType,Operand> >arguments){
    Instruction Ins = new CallInstruction((LLVMType)type,new RegOperand(result_reg_no),func_name,arguments);
    return Ins;
}

Instruction get_call_Ins(int type,int result_reg_no,std::string func_name){
    Instruction Ins = new CallInstruction((LLVMType)type,new RegOperand(result_reg_no),func_name);
    return Ins;
}

Instruction get_ret_Ins(int type,int reg_no){
    Instruction Ins = new RetInstruction((LLVMType)type,new RegOperand(reg_no));
    return Ins;
}

Instruction get_ret_Ins_i32(int type,int i32_val){
    Instruction Ins = new RetInstruction((LLVMType)type,new ImmI32Operand(i32_val));
    return Ins;
}

Instruction get_ret_Ins_float(int type,float float_val){
    Instruction Ins = new RetInstruction((LLVMType)type,new ImmF32Operand(float_val));
    return Ins;
}

Instruction get_ret_Ins_void(){
    // 4 is VOID
    Instruction Ins = new RetInstruction((LLVMType)4,nullptr);
    return Ins;
}

Instruction get_getelementptr_Ins(int type,int result_reg_no,int addr_reg_no,std::vector<int> dims){
    Instruction Ins = new GetElementprtInstruction((LLVMType)type,new RegOperand(result_reg_no),new RegOperand(addr_reg_no),dims);
    return Ins;
}

Instruction get_getelementptr_Ins_global(int type,int result_reg_no,Symbol name,std::vector<int> dims){
    Instruction Ins = new GetElementprtInstruction((LLVMType)type,new RegOperand(result_reg_no),new global_operand(name->get_string()),dims);
    return Ins;
}

Instruction get_fptosi_Ins(Operand from_fp,Operand to_si){
    Instruction ins = new FptosiInstruction(to_si,from_fp);
    return ins;
}

Instruction get_sitofp_Ins(Operand from_si,Operand to_fp){
    Instruction ins = new SitofpInstruction(to_fp,from_si);
    return ins;
}

Instruction get_zext_Ins(int reg1,int reg2){
    Instruction ins = new ZextInstruction(LLVMType::I32,new RegOperand(reg1),LLVMType::I1,new RegOperand(reg2));
    return ins;
}

bool is_br(Instruction ins){
    int opcode = ins->GetOpcode();
    return opcode == BR_COND || opcode == BR_UNCOND;
}

bool is_ret(Instruction ins){
    int opcode = ins->GetOpcode();
    return opcode == RET;
}

void add_no_return_block()
{
    for(auto block:llvm_IR.llvm_Function_BlockArr_map[function_now]){
        LLVMBlock B = block.second;
        if(B->Instruction_list.empty() || (!is_ret(B->Instruction_list.back()) && !is_br(B->Instruction_list.back())) ){
            if(function_returntype == 0){
                B->push_Ins(1,get_ret_Ins_void());
            }
            if(function_returntype == 1){
                B->push_Ins(1,get_ret_Ins_i32(1,0));
            }
            if(function_returntype == 2){
                B->push_Ins(1,get_ret_Ins_float(2,0.0));
            }
        }
    }
}

void __Program::codeIR()
{
    add_libfunc_decl();
    auto comp_vector = *comp_list;
    for(auto comp:comp_vector){
        comp->codeIR();
    }
    
}

void Exp::codeIR()
{
    addexp->codeIR();
}

void AddExp_plus::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    addexp->codeIR();
    int reg1 = max_reg;
    mulexp->codeIR();
    int reg2 = max_reg;
    ++max_reg;
    if(addexp->get_type() == 1 && mulexp->get_type() == 1){
        B->push_Ins(1,get_alg_Ins(1,3,reg1,reg2,max_reg));
    }
    else if(addexp->get_type() == 2 && mulexp->get_type() == 2){
        B->push_Ins(1,get_alg_Ins(2,12,reg1,reg2,max_reg));
    }
    //add i32 to float or float to i32 here(use sitofp,fptosi)
    else if(addexp->get_type() == 2 && mulexp->get_type() == 1){
        // sitofp
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg2),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_alg_Ins(2,12,reg1,max_reg-1,max_reg));
    }
    else if(addexp->get_type() == 1 && mulexp->get_type() == 2){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg1),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_alg_Ins(2,12,max_reg-1,reg2,max_reg));
    }
}

void AddExp_sub::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    addexp->codeIR();
    int reg1 = max_reg;
    mulexp->codeIR();
    int reg2 = max_reg;
    ++max_reg;
    if(addexp->get_type() == 1 && mulexp->get_type() == 1){
        B->push_Ins(1,get_alg_Ins(1,4,reg1,reg2,max_reg));
    }
    else if(addexp->get_type() == 2 && mulexp->get_type() == 2){
        B->push_Ins(1,get_alg_Ins(2,13,reg1,reg2,max_reg));
    }
    //add i32 to float or float to i32 here(use sitofp,fptosi)
    else if(addexp->get_type() == 2 && mulexp->get_type() == 1){
        // sitofp
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg2),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_alg_Ins(2,13,reg1,max_reg-1,max_reg));
    }
    else if(addexp->get_type() == 1 && mulexp->get_type() == 2){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg1),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_alg_Ins(2,13,max_reg-1,reg2,max_reg));
    }
}

void MulExp_mul::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    mulexp->codeIR();
    int reg1 = max_reg;
    unary_exp->codeIR();
    int reg2 = max_reg;
    ++max_reg;
    if(mulexp->get_type() == 1 && unary_exp->get_type() == 1){
        B->push_Ins(1,get_alg_Ins(1,8,reg1,reg2,max_reg));
    }
    else if(mulexp->get_type() == 2 && unary_exp->get_type() == 2){
        B->push_Ins(1,get_alg_Ins(2,14,reg1,reg2,max_reg));
    }
    //add i32 to float or float to i32 here(use sitofp,fptosi)
    else if(mulexp->get_type() == 2 && unary_exp->get_type() == 1){
        // sitofp
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg2),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_alg_Ins(2,14,reg1,max_reg-1,max_reg));
    }
    else if(mulexp->get_type() == 1 && unary_exp->get_type() == 2){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg1),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_alg_Ins(2,14,max_reg-1,reg2,max_reg));
    }
}

void MulExp_div::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    mulexp->codeIR();
    int reg1 = max_reg;
    unary_exp->codeIR();
    int reg2 = max_reg;
    ++max_reg;
    if(mulexp->get_type() == 1 && unary_exp->get_type() == 1){
        B->push_Ins(1,get_alg_Ins(1,9,reg1,reg2,max_reg));
    }
    else if(mulexp->get_type() == 2 && unary_exp->get_type() == 2){
        B->push_Ins(1,get_alg_Ins(2,15,reg1,reg2,max_reg));
    }
    //add i32 to float or float to i32 here(use sitofp,fptosi)
    else if(mulexp->get_type() == 2 && unary_exp->get_type() == 1){
        // sitofp
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg2),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_alg_Ins(2,15,reg1,max_reg-1,max_reg));
    }
    else if(mulexp->get_type() == 1 && unary_exp->get_type() == 2){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg1),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_alg_Ins(2,15,max_reg-1,reg2,max_reg));
    }
}

void MulExp_mod::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    mulexp->codeIR();
    int reg1 = max_reg;
    unary_exp->codeIR();
    int reg2 = max_reg;
    ++max_reg;
    B->push_Ins(1,get_alg_Ins(1,17,reg1,reg2,max_reg));
}

void RelExp_leq::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    relexp->codeIR();
    int reg1 = max_reg;
    addexp->codeIR();
    int reg2 = max_reg;
    ++max_reg;
    if(relexp->get_type() == 1 && addexp->get_type() == 1){
        B->push_Ins(1,get_icmp_Ins(1,10,reg1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    else if(relexp->get_type() == 2 && addexp->get_type() == 2){
        B->push_Ins(1,get_fcmp_Ins(2,6,reg1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    //add i32 to float or float to i32 here(use sitofp,fptosi)
    else if(relexp->get_type() == 2 && addexp->get_type() == 1){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg2),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_fcmp_Ins(2,6,reg1,max_reg-1,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    else if(relexp->get_type() == 1 && addexp->get_type() == 2){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg1),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_fcmp_Ins(2,6,max_reg-1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
}

void RelExp_lt::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    relexp->codeIR();
    int reg1 = max_reg;
    addexp->codeIR();
    int reg2 = max_reg;
    ++max_reg;
    if(relexp->get_type() == 1 && addexp->get_type() == 1){
        B->push_Ins(1,get_icmp_Ins(1,9,reg1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    else if(relexp->get_type() == 2 && addexp->get_type() == 2){
        B->push_Ins(1,get_fcmp_Ins(2,5,reg1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    //add i32 to float or float to i32 here(use sitofp,fptosi)
    else if(relexp->get_type() == 2 && addexp->get_type() == 1){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg2),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_fcmp_Ins(2,5,reg1,max_reg-1,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    else if(relexp->get_type() == 1 && addexp->get_type() == 2){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg1),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_fcmp_Ins(2,5,max_reg-1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
}

void RelExp_geq::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    relexp->codeIR();
    int reg1 = max_reg;
    addexp->codeIR();
    int reg2 = max_reg;
    ++max_reg;
    if(relexp->get_type() == 1 && addexp->get_type() == 1){
        B->push_Ins(1,get_icmp_Ins(1,8,reg1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    else if(relexp->get_type() == 2 && addexp->get_type() == 2){
        B->push_Ins(1,get_fcmp_Ins(2,4,reg1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    //add i32 to float or float to i32 here(use sitofp,fptosi)
    else if(relexp->get_type() == 2 && addexp->get_type() == 1){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg2),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_fcmp_Ins(2,4,reg1,max_reg-1,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    else if(relexp->get_type() == 1 && addexp->get_type() == 2){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg1),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_fcmp_Ins(2,4,max_reg-1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
}

void RelExp_gt::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    relexp->codeIR();
    int reg1 = max_reg;
    addexp->codeIR();
    int reg2 = max_reg;
    ++max_reg;
    if(relexp->get_type() == 1 && addexp->get_type() == 1){
        B->push_Ins(1,get_icmp_Ins(1,7,reg1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    else if(relexp->get_type() == 2 && addexp->get_type() == 2){
        B->push_Ins(1,get_fcmp_Ins(2,3,reg1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    //add i32 to float or float to i32 here(use sitofp,fptosi)
    else if(relexp->get_type() == 2 && addexp->get_type() == 1){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg2),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_fcmp_Ins(2,3,reg1,max_reg-1,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    else if(relexp->get_type() == 1 && addexp->get_type() == 2){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg1),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_fcmp_Ins(2,3,max_reg-1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
}

void EqExp_eq::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    eqexp->codeIR();
    int reg1 = max_reg;
    relexp->codeIR();
    int reg2 = max_reg;
    ++max_reg;
    if(eqexp->get_type() == 1 && relexp->get_type() == 1){
        B->push_Ins(1,get_icmp_Ins(1,1,reg1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    else if(eqexp->get_type() == 2 && relexp->get_type() == 2){
        B->push_Ins(1,get_fcmp_Ins(2,2,reg1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    //add i32 to float or float to i32 here(use sitofp,fptosi)
    else if(eqexp->get_type() == 2 && relexp->get_type() == 1){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg2),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_fcmp_Ins(2,2,reg1,max_reg-1,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    else if(eqexp->get_type() == 1 && relexp->get_type() == 2){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg1),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_fcmp_Ins(2,2,max_reg-1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
}

void EqExp_neq::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    eqexp->codeIR();
    int reg1 = max_reg;
    relexp->codeIR();
    int reg2 = max_reg;
    ++max_reg;
    if(eqexp->get_type() == 1 && relexp->get_type() == 1){
        B->push_Ins(1,get_icmp_Ins(1,2,reg1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    else if(eqexp->get_type() == 2 && relexp->get_type() == 2){
        B->push_Ins(1,get_fcmp_Ins(2,7,reg1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    //add i32 to float or float to i32 here(use sitofp,fptosi)
    else if(eqexp->get_type() == 2 && relexp->get_type() == 1){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg2),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_fcmp_Ins(2,7,reg1,max_reg-1,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    else if(eqexp->get_type() == 1 && relexp->get_type() == 2){
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(reg1),new RegOperand(max_reg)));
        ++max_reg;
        B->push_Ins(1,get_fcmp_Ins(2,7,max_reg-1,reg2,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
}

void LAndExp_and::codeIR()
{
    int start_label = now_label;

    ++max_blocklabel;
    int lefttrue_label = max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);

    ++max_blocklabel;
    int end_label = max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);

    landexp->codeIR();
    LLVMBlock B1 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    ++max_reg;
    if(landexp->get_type() == 1){
        B1->push_Ins(1,get_icmp_Ins_1(1,IcmpCond::ne,max_reg-1,0,max_reg));
    }
    if(landexp->get_type() == 2){
        B1->push_Ins(1,get_fcmp_Ins_1(2,FcmpCond::ONE,max_reg-1,0,max_reg));
    }
    B1->push_Ins(1,get_br_cond_Ins(max_reg,lefttrue_label,end_label));
    int phi1_label = now_label;

    now_label = lefttrue_label;
    eqexp->codeIR();
    LLVMBlock B2 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    ++max_reg;
    if(eqexp->get_type() == 1){
        B2->push_Ins(1,get_icmp_Ins_1(1,IcmpCond::ne,max_reg-1,0,max_reg));
        ++max_reg;
        B2->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    if(eqexp->get_type() == 2){
        B2->push_Ins(1,get_fcmp_Ins_1(2,FcmpCond::ONE,max_reg-1,0,max_reg));
        ++max_reg;
        B2->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    B2->push_Ins(1,get_br_uncond_Ins(end_label));
    int phi2_label = now_label;


    now_label = end_label;
    LLVMBlock B3 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    ++max_reg;
    PhiInstruction* phi_ins = new PhiInstruction(LLVMType::I32,new RegOperand(max_reg));
    phi_ins->Insert_phi(new ImmI32Operand(0),new LabelOperand(phi1_label));
    phi_ins->Insert_phi(new RegOperand(max_reg-1),new LabelOperand(phi2_label));
    B3->push_Ins(1,phi_ins);
}

void LOrExp_or::codeIR()
{
    int start_label = now_label;

    ++max_blocklabel;
    int leftfalse_label = max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);

    ++max_blocklabel;
    int end_label = max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);

    lorexp->codeIR();
    LLVMBlock B1 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    ++max_reg;
    if(lorexp->get_type() == 1){
        B1->push_Ins(1,get_icmp_Ins_1(1,IcmpCond::eq,max_reg-1,0,max_reg));
    }
    if(lorexp->get_type() == 2){
        B1->push_Ins(1,get_fcmp_Ins_1(2,FcmpCond::OEQ,max_reg-1,0,max_reg));
    }
    B1->push_Ins(1,get_br_cond_Ins(max_reg,leftfalse_label,end_label));
    int phi1_label = now_label;

    now_label = leftfalse_label;
    landexp->codeIR();
    LLVMBlock B2 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    ++max_reg;
    if(landexp->get_type() == 1){
        B2->push_Ins(1,get_icmp_Ins_1(1,IcmpCond::ne,max_reg-1,0,max_reg));
        ++max_reg;
        B2->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    if(landexp->get_type() == 2){
        B2->push_Ins(1,get_fcmp_Ins_1(2,FcmpCond::ONE,max_reg-1,0,max_reg));
        ++max_reg;
        B2->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    B2->push_Ins(1,get_br_uncond_Ins(end_label));
    int phi2_label = now_label;
    
    now_label = end_label;
    LLVMBlock B3 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    ++max_reg;
    PhiInstruction* phi_ins = new PhiInstruction(LLVMType::I32,new RegOperand(max_reg));
    phi_ins->Insert_phi(new ImmI32Operand(1),new LabelOperand(phi1_label));
    phi_ins->Insert_phi(new RegOperand(max_reg-1),new LabelOperand(phi2_label));
    B3->push_Ins(1,phi_ins);
}

void ConstExp::codeIR()
{
    addexp->codeIR();
}

void Lval::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    std::vector<int> arrayindexs;
    int formal_array_flag = 0;
    if(dims != nullptr){
        for(auto d:*dims){
            d->codeIR();
            arrayindexs.push_back(max_reg);
        }
        int reg1 = irgen_table.symbol_table.lookup(name);
        //std::cerr<<name->get_string()<<" "<<reg1<<"\n";
        std::vector<int> arraydims;
        if(reg1 != -1){//local
            ++max_reg;
            arraydims = irgen_table.reg_table[reg1].first;
            formal_array_flag = irgen_table.formal_array_table[reg1];
            is_array = !(arraydims.size() + formal_array_flag == arrayindexs.size());
            if(type == 1){
                GetElementprtInstruction* ArrayIns = (GetElementprtInstruction*)get_getelementptr_Ins(1,max_reg,reg1,arraydims);
                if(!formal_array_flag){
                    ArrayIns->push_idx_imm32(0);
                }
                for(auto idx:arrayindexs){
                    ArrayIns->push_idx_reg(idx);
                }
                B->push_Ins(1,ArrayIns);
            }
            if(type == 2){
                GetElementprtInstruction* ArrayIns = (GetElementprtInstruction*)get_getelementptr_Ins(2,max_reg,reg1,arraydims);
                if(!formal_array_flag){
                    ArrayIns->push_idx_imm32(0);
                }
                for(auto idx:arrayindexs){
                    ArrayIns->push_idx_reg(idx);
                }
                B->push_Ins(1,ArrayIns);
            }
        }
        else{//global
            ++max_reg;
            arraydims = semant_table.GlobalTable[name].dims;
            is_array = !(arraydims.size() == arrayindexs.size());
            if(type == 1){
                GetElementprtInstruction* ArrayIns = (GetElementprtInstruction*)get_getelementptr_Ins_global(1,max_reg,name,arraydims);
                ArrayIns->push_idx_imm32(0);
                for(auto idx:arrayindexs){
                    ArrayIns->push_idx_reg(idx);
                }
                B->push_Ins(1,ArrayIns);
            }
            if(type == 2){
                GetElementprtInstruction* ArrayIns = (GetElementprtInstruction*)get_getelementptr_Ins_global(2,max_reg,name,arraydims);
                ArrayIns->push_idx_imm32(0);
                for(auto idx:arrayindexs){
                    ArrayIns->push_idx_reg(idx);
                }
                B->push_Ins(1,ArrayIns);
            }
        }
        if(arraydims.size() + formal_array_flag == arrayindexs.size()){
            ++max_reg;
            if(type == 1){
                B->push_Ins(1,get_load_Ins(1,max_reg,max_reg-1));
            }
            if(type == 2){
                B->push_Ins(1,get_load_Ins(2,max_reg,max_reg-1));
            }
        }
    }
    else{
        int reg1 = irgen_table.symbol_table.lookup(name);
        if(reg1 != -1){//local
            is_array = irgen_table.is_array_table[reg1];
            formal_array_flag = irgen_table.formal_array_table[reg1];
            ++max_reg;
            if(is_array == 0){
                if(type == 1){
                    B->push_Ins(1,get_load_Ins(1,max_reg,reg1));
                }
                if(type == 2){
                    B->push_Ins(2,get_load_Ins(2,max_reg,reg1));
                }
            }
            else{
                if(type == 1){
                    GetElementprtInstruction* ArrayIns = (GetElementprtInstruction*)get_getelementptr_Ins(1,max_reg,reg1,std::vector<int>{});
                    if(!formal_array_flag){
                        ArrayIns->push_idx_imm32(0);
                    }
                    B->push_Ins(1,ArrayIns);
                }
                else{
                    GetElementprtInstruction* ArrayIns = (GetElementprtInstruction*)get_getelementptr_Ins(2,max_reg,reg1,std::vector<int>{});
                    if(!formal_array_flag){
                        ArrayIns->push_idx_imm32(0);
                    }
                    B->push_Ins(1,ArrayIns);
                }
            }
        }
        else{//global
            ++max_reg;
            is_array = (bool)semant_table.GlobalTable[name].dims.size();
            if(is_array == 0){
                if(type == 1){
                    B->push_Ins(1,get_load_Ins_global(1,max_reg,name));
                }
                if(type == 2){
                    B->push_Ins(1,get_load_Ins_global(2,max_reg,name));
                }
            }
            else{
                if(type == 1){
                    GetElementprtInstruction* ArrayIns = (GetElementprtInstruction*)get_getelementptr_Ins_global(1,max_reg,name,std::vector<int>{});
                    ArrayIns->push_idx_imm32(0);
                    B->push_Ins(1,ArrayIns);
                }
                else{
                    GetElementprtInstruction* ArrayIns = (GetElementprtInstruction*)get_getelementptr_Ins_global(2,max_reg,name,std::vector<int>{});
                    ArrayIns->push_idx_imm32(0);
                    B->push_Ins(1,ArrayIns);
                }
            }
        }
    }
}

void FuncRParams::codeIR(){}

void Func_call::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    if(name->get_string() == "putf"){
        std::vector<std::pair<LLVMType,Operand> > arguments;
        auto params = ((FuncRParams*)funcr_params)->params;
        std::string str = ((StringConst*)(*params)[0])->str->get_string();
        int id = str_table.string_no[str];
        arguments.push_back(std::pair<LLVMType,Operand>{LLVMType::PTR,new global_operand(".str"+std::to_string(id))});
        for(int i = 1;i < (*params).size(); ++i){
            auto param = (*params)[i];
            param->codeIR();
            if(param->get_type() == 1){
                arguments.push_back(std::pair<LLVMType,Operand>{LLVMType::I32,new RegOperand(max_reg)});
            }
            else if(param->get_type() == 2){
                arguments.push_back(std::pair<LLVMType,Operand>{LLVMType::FLOAT32,new RegOperand(max_reg)});
            }
        }
        B->push_Ins(1,get_call_Ins(4,-1,name->get_string(),arguments));
    }
    else if(funcr_params != nullptr){
        std::vector<std::pair<LLVMType,Operand> > arguments;
        auto params = ((FuncRParams*)funcr_params)->params;
        auto fparams = semant_table.FunctionTable[name]->formals;
        for(int i = 0;i < (*params).size(); ++i){
            auto param = (*params)[i];
            auto fparam = (*fparams)[i];
            param->codeIR();
            if(param->is_array == 1){
                arguments.push_back(std::pair<LLVMType,Operand>{LLVMType::PTR,new RegOperand(max_reg)});
            }
            else if(param->get_type() == 1 && fparam->type_decl == 1){
                arguments.push_back(std::pair<LLVMType,Operand>{LLVMType::I32,new RegOperand(max_reg)});
            }
            else if(param->get_type() == 2 && fparam->type_decl == 2){
                arguments.push_back(std::pair<LLVMType,Operand>{LLVMType::FLOAT32,new RegOperand(max_reg)});
            }
            //add i32 to float or float to i32 here(use sitofp,fptosi)
            else if(param->get_type() == 2 && fparam->type_decl == 1){
                ++max_reg;
                B->push_Ins(1,get_fptosi_Ins(new RegOperand(max_reg-1),new RegOperand(max_reg)));
                arguments.push_back(std::pair<LLVMType,Operand>{LLVMType::I32,new RegOperand(max_reg)});
            }
            else if(param->get_type() == 1 && fparam->type_decl == 2){
                ++max_reg;
                B->push_Ins(1,get_sitofp_Ins(new RegOperand(max_reg-1),new RegOperand(max_reg)));
                arguments.push_back(std::pair<LLVMType,Operand>{LLVMType::FLOAT32,new RegOperand(max_reg)});
            }
        }
        int return_type = semant_table.FunctionTable[name]->return_type;
        if(return_type == 0){
            B->push_Ins(1,get_call_Ins(4,-1,name->get_string(),arguments));
        }
        else{
            ++max_reg;
            B->push_Ins(1,get_call_Ins(return_type,max_reg,name->get_string(),arguments));
        }
    }
    else{
        int return_type = semant_table.FunctionTable[name]->return_type;
        if(return_type == 0){
            B->push_Ins(1,get_call_Ins(4,-1,name->get_string()));
        }
        else{
            ++max_reg;
            B->push_Ins(1,get_call_Ins(return_type,max_reg,name->get_string()));
        }
    }
}

void UnaryExp_plus::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    unary_exp->codeIR();
    int reg1 = max_reg;
    ++max_reg;
    if(unary_exp->get_type() == 1){
        B->push_Ins(1,get_alg_Ins_i32_1(1,3,0,reg1,max_reg));
    }
    else if(unary_exp->get_type() == 2){
        B->push_Ins(1,get_alg_Ins_f32_1(2,12,0,reg1,max_reg));
    }
}

void UnaryExp_neg::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    unary_exp->codeIR();
    int reg1 = max_reg;
    ++max_reg;
    if(unary_exp->get_type() == 1){
        B->push_Ins(1,get_alg_Ins_i32_1(1,4,0,reg1,max_reg));
    }
    else if(unary_exp->get_type() == 2){
        B->push_Ins(1,get_alg_Ins_f32_1(2,13,0,reg1,max_reg));
    }
}

void UnaryExp_not::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    unary_exp->codeIR();
    int reg1 = max_reg;
    ++max_reg;
    if(unary_exp->get_type() == 1){
        B->push_Ins(1,get_icmp_Ins_1(1,1,reg1,0,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
    else if(unary_exp->get_type() == 2){
        B->push_Ins(1,get_fcmp_Ins_1(2,2,reg1,0,max_reg));
        ++max_reg;
        B->push_Ins(1,get_zext_Ins(max_reg,max_reg-1));
    }
}

void IntConst::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    ++max_reg;
    B->push_Ins(1,get_alg_Ins_i32_2(1,3,0,IntVal,max_reg));
}   

void FloatConst::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    ++max_reg;
    B->push_Ins(1,get_alg_Ins_f32_2(2,12,0.0,FloatVal,max_reg));
}

void StringConst::codeIR(){}

void PrimaryExp_branch::codeIR()
{
    exp->codeIR();
}

void assign_stmt::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    exp->codeIR();
    int exp_reg = max_reg;
    auto LVAL = (Lval*)lval;
    Symbol name = LVAL->name;
    auto dims = LVAL->dims;
    std::vector<int> arrayindexs;
    if(dims != nullptr){
        for(auto d:*dims){
            d->codeIR();
            arrayindexs.push_back(max_reg);
        }
        int reg1 = irgen_table.symbol_table.lookup(name);
        int formal_array_flag = irgen_table.formal_array_table[reg1];
        std::vector<int> arraydims;
        if(reg1 != -1){//local
            ++max_reg;
            arraydims = irgen_table.reg_table[reg1].first;
            if(lval->get_type() == 1){
                GetElementprtInstruction* ArrayIns = (GetElementprtInstruction*)get_getelementptr_Ins(1,max_reg,reg1,arraydims);
                if(!formal_array_flag){
                    ArrayIns->push_idx_imm32(0);
                }
                for(auto idx:arrayindexs){
                    ArrayIns->push_idx_reg(idx);
                }
                B->push_Ins(1,ArrayIns);
            }
            if(lval->get_type() == 2){
                GetElementprtInstruction* ArrayIns = (GetElementprtInstruction*)get_getelementptr_Ins(2,max_reg,reg1,arraydims);
                if(!formal_array_flag){
                    ArrayIns->push_idx_imm32(0);
                }
                for(auto idx:arrayindexs){
                    ArrayIns->push_idx_reg(idx);
                }
                B->push_Ins(1,ArrayIns);
            }
        }
        else{//global
            ++max_reg;
            arraydims = semant_table.GlobalTable[name].dims;
            if(lval->get_type() == 1){
                GetElementprtInstruction* ArrayIns = (GetElementprtInstruction*)get_getelementptr_Ins_global(1,max_reg,name,arraydims);
                ArrayIns->push_idx_imm32(0);
                for(auto idx:arrayindexs){
                    ArrayIns->push_idx_reg(idx);
                }
                B->push_Ins(1,ArrayIns);
            }
            if(lval->get_type() == 2){
                GetElementprtInstruction* ArrayIns = (GetElementprtInstruction*)get_getelementptr_Ins_global(2,max_reg,name,arraydims);
                ArrayIns->push_idx_imm32(0);
                for(auto idx:arrayindexs){
                    ArrayIns->push_idx_reg(idx);
                }
                B->push_Ins(1,ArrayIns);
            }
        }
        if(exp->get_type() == 1 && lval->get_type() == 1){
            B->push_Ins(1,get_store_Ins(1,exp_reg,max_reg));
        }
        if(exp->get_type() == 2 && lval->get_type() == 2){
            B->push_Ins(1,get_store_Ins(2,exp_reg,max_reg));
        }
        //add i32 to float or float to i32 here(use sitofp,fptosi)
        if(exp->get_type() == 2 && lval->get_type() == 1){
            ++max_reg;
            B->push_Ins(1,get_fptosi_Ins(new RegOperand(exp_reg),new RegOperand(max_reg)));
            B->push_Ins(1,get_store_Ins(1,max_reg,max_reg-1));
        }
        if(exp->get_type() == 1 && lval->get_type() == 2){
            ++max_reg;
            B->push_Ins(1,get_sitofp_Ins(new RegOperand(exp_reg),new RegOperand(max_reg)));
            B->push_Ins(1,get_store_Ins(2,max_reg,max_reg-1));
        }
    }
    else{
        int reg1 = irgen_table.symbol_table.lookup(name);
        if(reg1 != -1){//local 
            if(exp->get_type() == 1 && lval->get_type() == 1){
                B->push_Ins(1,get_store_Ins(1,exp_reg,reg1));
            }
            if(exp->get_type() == 2 && lval->get_type() == 2){
                B->push_Ins(1,get_store_Ins(2,exp_reg,reg1));
            }
            //add i32 to float or float to i32 here(use sitofp,fptosi)
            if(exp->get_type() == 2 && lval->get_type() == 1){
                ++max_reg;
                B->push_Ins(1,get_fptosi_Ins(new RegOperand(exp_reg),new RegOperand(max_reg)));
                B->push_Ins(1,get_store_Ins(1,max_reg,reg1));
            }
            if(exp->get_type() == 1 && lval->get_type() == 2){
                ++max_reg;
                B->push_Ins(1,get_sitofp_Ins(new RegOperand(exp_reg),new RegOperand(max_reg)));
                B->push_Ins(1,get_store_Ins(2,max_reg,reg1));
            }
        }
        else{//global
            if(exp->get_type() == 1 && lval->get_type() == 1){
                B->push_Ins(1,get_store_Ins_global(1,exp_reg,name));
            }
            if(exp->get_type() == 2 && lval->get_type() == 2){
                B->push_Ins(1,get_store_Ins_global(2,exp_reg,name));
            }
            //add i32 to float or float to i32 here(use sitofp,fptosi)
            if(exp->get_type() == 2 && lval->get_type() == 1){
                ++max_reg;
                B->push_Ins(1,get_fptosi_Ins(new RegOperand(exp_reg),new RegOperand(max_reg)));
                B->push_Ins(1,get_store_Ins(1,max_reg,reg1));
            }
            if(exp->get_type() == 1 && lval->get_type() == 2){
                ++max_reg;
                B->push_Ins(1,get_sitofp_Ins(new RegOperand(exp_reg),new RegOperand(max_reg)));
                B->push_Ins(1,get_store_Ins(2,max_reg,reg1));
            }
        }
    }
}

void expr_stmt::codeIR()
{
    exp->codeIR();
}

void block_stmt::codeIR()
{
    irgen_table.symbol_table.enter_scope();
    b->codeIR();
    irgen_table.symbol_table.exit_scope();
}

void ifelse_stmt::codeIR()
{
    ++max_blocklabel;
    int if_label = max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);

    ++max_blocklabel;
    int else_label = max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);

    ++max_blocklabel;
    int end_label = max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);

    Cond->codeIR();
    LLVMBlock B1 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    if(Cond->get_type() == 1){
        ++max_reg;
        B1->push_Ins(1,get_icmp_Ins_1(1,IcmpCond::ne,max_reg-1,0,max_reg));
    }
    if(Cond->get_type() == 2){
        ++max_reg;
        B1->push_Ins(1,get_fcmp_Ins_1(2,FcmpCond::ONE,max_reg-1,0.0,max_reg));
    }
    B1->push_Ins(1,get_br_cond_Ins(max_reg,if_label,else_label));

    now_label = if_label;
    if_stmt->codeIR();
    LLVMBlock B2 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    B2->push_Ins(1,get_br_uncond_Ins(end_label));

    now_label = else_label;
    else_stmt->codeIR();
    LLVMBlock B3 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    B3->push_Ins(1,get_br_uncond_Ins(end_label));

    now_label = end_label;
}

void if_stmt::codeIR()
{
    ++max_blocklabel;
    int if_label = max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);

    ++max_blocklabel;
    int end_label = max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);

    Cond->codeIR();
    LLVMBlock B1 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    if(Cond->get_type() == 1){
        ++max_reg;
        B1->push_Ins(1,get_icmp_Ins_1(1,IcmpCond::ne,max_reg-1,0,max_reg));
    }
    if(Cond->get_type() == 2){
        ++max_reg;
        B1->push_Ins(1,get_fcmp_Ins_1(2,FcmpCond::ONE,max_reg-1,0.0,max_reg));
    }
    
    B1->push_Ins(1,get_br_cond_Ins(max_reg,if_label,end_label));

    now_label = if_label;
    ifstmt->codeIR();
    LLVMBlock B2 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    B2->push_Ins(1,get_br_uncond_Ins(end_label));

    now_label = end_label;
}

void while_stmt::codeIR()
{
    //prework for LICM optimize(we must change all the while to do_while)
    
    ++max_blocklabel;
    int judge_label = max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);

    ++max_blocklabel;
    int body_label = max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);

    ++max_blocklabel;
    int end_label = max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);

    int t1 = loop_start_label;
    int t2 = loop_end_label;
    loop_start_label = judge_label;
    loop_end_label = end_label;

    LLVMBlock B1 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    B1->push_Ins(1,get_br_uncond_Ins(judge_label));
    now_label = judge_label; 
    Cond->codeIR();
    LLVMBlock B2 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    if(Cond->get_type() == 1){
        ++max_reg;
        B2->push_Ins(1,get_icmp_Ins_1(1,IcmpCond::ne,max_reg-1,0,max_reg));
    }
    if(Cond->get_type() == 2){
        ++max_reg;
        B2->push_Ins(1,get_fcmp_Ins_1(2,FcmpCond::ONE,max_reg-1,0.0,max_reg));
    }
    B2->push_Ins(1,get_br_cond_Ins(max_reg,body_label,end_label));

    now_label = body_label;
    body->codeIR();
    LLVMBlock B3 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    B3->push_Ins(1,get_br_uncond_Ins(judge_label));

    now_label = end_label;
    
    loop_start_label = t1;
    loop_end_label = t2;
}

void continue_stmt::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    B->push_Ins(1,get_br_uncond_Ins(loop_start_label));
    ++max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);
    now_label = max_blocklabel;
}

void break_stmt::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    B->push_Ins(1,get_br_uncond_Ins(loop_end_label));
    ++max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);
    now_label = max_blocklabel;
}

void return_stmt::codeIR()
{
    return_exp->codeIR();
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    //add i32 to float or float to i32 here(use sitofp,fptosi)
    if(return_exp->get_type() == 2 && function_returntype == 1){
        ++max_reg;
        B->push_Ins(1,get_fptosi_Ins(new RegOperand(max_reg-1),new RegOperand(max_reg)));
    }
    if(return_exp->get_type() == 1 && function_returntype == 2){
        ++max_reg;
        B->push_Ins(1,get_sitofp_Ins(new RegOperand(max_reg-1),new RegOperand(max_reg)));
    }
    B->push_Ins(1,get_ret_Ins(function_now->get_return_type(),max_reg));
}

void return_stmt_void::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
    B->push_Ins(1,get_ret_Ins_void());
}

void ConstInitVal::codeIR(){}

void ConstInitVal_exp::codeIR()
{
    exp->codeIR();
}

void VarInitVal::codeIR(){}

void VarInitVal_exp::codeIR()
{
    exp->codeIR();
}

void VarDef_no_init::codeIR(){}

void VarDef::codeIR(){}

void ConstDef::codeIR(){}

int find_min_dim_step_IR(const std::vector<int>dims,int relativePos,int dimsIdx,int&max_subBlock_sz){
    int min_dim_step = 1;
    int blockSz = 1;
    for(int i=dimsIdx+1;i<dims.size();i++){
        blockSz *= dims[i];
    }
    while(relativePos % blockSz != 0){
        min_dim_step++;
        blockSz /= dims[dimsIdx+min_dim_step-1];
    }
    max_subBlock_sz = blockSz;
    return min_dim_step;
}

std::vector<int> get_Indexes(std::vector<int>dims,int absoluteIndex){
    //[3][4]
    // 0-> {0,0}  {absoluteIndex/4,absoluteIndex%4}
    // 1-> {0,1}
    // 2-> {0,2}
    // 3-> {0,3}
    // 4-> {1,0}
    // 5-> {1,1}
    std::vector<int>ret;
    for(std::vector<int>::reverse_iterator it=dims.rbegin();it!=dims.rend();++it){
        int dim = *it;
        ret.insert(ret.begin(),absoluteIndex % dim);
        absoluteIndex /= dim;
    }
    return ret;
}

void recursive_Array_Init_IR(LLVMBlock block,const std::vector<int>dims,int arrayaddr_reg_no,InitVal init,int beginPos,int endPos,int dimsIdx,int ArrayType){
    int pos=beginPos;
    //For Debug
    //std::cerr<<std::string(dimsIdx*2,' ')<<"From:"<<beginPos<<" To:"<<endPos<<"\n";
    //std::cerr<<std::string(dimsIdx*2,' ')<<"subBlockNum:"<<(init->GetList())->size()<<"\n";
    for(InitVal iv:*(init->GetList())){
        //std::cerr<<std::string(dimsIdx*2,' ')<<"pos:"<<pos<<"\n";
        if(iv->IsExp()){
            // iv->get_type()
            // val[pos] <- Exp
            //std::cerr<<"initval_exp:"<<iv<<"\n";
            iv->codeIR();
            int init_val_reg = max_reg;

            if(iv->get_type() == 1 && ArrayType == 2){
                // sitofp
                max_reg++;
                int converted_val_reg = max_reg;
                block->push_Ins(1,get_sitofp_Ins(new RegOperand(init_val_reg),new RegOperand(converted_val_reg)));
                init_val_reg = converted_val_reg;
            }
            if(iv->get_type() == 2 && ArrayType == 1){
                //fptosi
                max_reg++;
                int converted_val_reg = max_reg;
                block->push_Ins(1,get_fptosi_Ins(new RegOperand(init_val_reg),new RegOperand(converted_val_reg)));
                init_val_reg = converted_val_reg;
            }

            max_reg++;
            int addr_reg = max_reg;
            GetElementprtInstruction* gep =
                (GetElementprtInstruction*)
                    get_getelementptr_Ins(ArrayType,addr_reg,arrayaddr_reg_no,dims);

            // pos, dims -> [][][]...
            // gep->pushidx()
            gep->push_idx_imm32(0);
            std::vector<int> indexes = get_Indexes(dims,pos);
            for(int idx : indexes){
                gep->push_idx_imm32(idx);
            }

            // %addr_reg = getelementptr i32, ptr %arrayaddr_reg_no, i32 0, i32 ...
            block->push_Ins(1,gep);

            // store i32 %init_val_reg,ptr %addr_reg
            block->push_Ins(1,get_store_Ins(ArrayType,init_val_reg,addr_reg));
            pos++;
        }else{
            int max_subBlock_sz = 0;
            int min_dim_step = find_min_dim_step_IR(dims,pos-beginPos,dimsIdx,max_subBlock_sz);
            recursive_Array_Init_IR(block,dims,arrayaddr_reg_no,iv,pos,pos+max_subBlock_sz-1,dimsIdx+min_dim_step,ArrayType);
            pos += max_subBlock_sz;
        }
    }
}

void VarDecl::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][0];
    auto def_vector = *var_def_list;
    for(auto def:def_vector){
        ++max_reg;
        irgen_table.symbol_table.add_Symbol(def->GetName(),max_reg);
        VarAttribute val;
        val.ConstTag = 0;
        if(def->GetDims() != nullptr){
            irgen_table.is_array_table[max_reg] = 1;
            auto dim_vector = *def->GetDims();
            for(auto d:dim_vector){
                val.dims.push_back(d->get_Intval());
            }
            int array_sz = 1;
            for(auto d:val.dims){
                array_sz *= d;
            }
            InitVal init = def->GetInit();

            if(init != nullptr){
                if(type_decl == 1){
                    irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{val.dims,1};
                    B->push_Ins(0,get_alloca_Ins(1,max_reg,val.dims));
                }
                if(type_decl == 2){
                    irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{val.dims,2};
                    B->push_Ins(0,get_alloca_Ins(2,max_reg,val.dims));
                }
                CallInstruction* memsetCall = new CallInstruction(VOID,nullptr,std::string("llvm.memset.p0.i32"));
                memsetCall->push_back_Parameter(PTR,new RegOperand(max_reg));// max_reg is array addr
                memsetCall->push_back_Parameter(I8,new ImmI32Operand(0));
                memsetCall->push_back_Parameter(I32,new ImmI32Operand(array_sz*sizeof(int)));
                memsetCall->push_back_Parameter(I1,new ImmI32Operand(0));
                llvm_IR.llvm_Function_BlockArr_map[function_now][now_label]->push_Ins(1,memsetCall);
                // recursive_Array_Init_IR
                recursive_Array_Init_IR(
                    llvm_IR.llvm_Function_BlockArr_map[function_now][now_label],
                    val.dims,
                    max_reg,
                    init,
                    0,array_sz-1,0,type_decl);
            }
            else{
                if(type_decl == 1){
                    irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{val.dims,1};
                    B->push_Ins(0,get_alloca_Ins(1,max_reg,val.dims));
                }
                if(type_decl == 2){
                    irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{val.dims,2};
                    B->push_Ins(0,get_alloca_Ins(2,max_reg,val.dims));
                }
            }
        }
        else{
            irgen_table.is_array_table[max_reg] = 0;

            InitVal init = def->GetInit();
            if(init != nullptr){
                if(type_decl == 1){
                    irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{std::vector<int>{},1};
                    B->push_Ins(0,get_alloca_Ins(1,max_reg));
                }
                if(type_decl == 2){
                    irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{std::vector<int>{},2};
                    B->push_Ins(0,get_alloca_Ins(2,max_reg));
                }
                int storeAddrReg=max_reg;
                //store
                LLVMBlock B1 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
                if(type_decl == 1){
                    Expression initExp = init->GetExp();
                    //ASSERT(initExp != null)

                    initExp->codeIR();
                    int ExpResultReg = max_reg;
                    if(initExp->get_type() == 2)
                    {
                        //fp_to_si
                        max_reg++;
                        int ConvertedExpResultReg = max_reg;
                        B1->push_Ins(1,get_fptosi_Ins(new RegOperand(ExpResultReg),new RegOperand(ConvertedExpResultReg)));
                        ExpResultReg = ConvertedExpResultReg;
                    }
                    B1->push_Ins(1,get_store_Ins(1,ExpResultReg,storeAddrReg));
                }
                if(type_decl == 2){
                    Expression initExp = init->GetExp();

                    initExp->codeIR();
                    int ExpResultReg = max_reg;
                    if(initExp->get_type() == 1){
                        //si_to_fp
                        max_reg++;
                        int ConvertedExpResultReg = max_reg;
                        B1->push_Ins(1,get_sitofp_Ins(new RegOperand(ExpResultReg),new RegOperand(ConvertedExpResultReg)));
                        ExpResultReg = ConvertedExpResultReg;
                    }
                    B1->push_Ins(1,get_store_Ins(2,ExpResultReg,storeAddrReg));
                }
            }
            else{
                LLVMBlock B1 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];//not define  suppose initval is 0
                if(type_decl == 1){
                    irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{std::vector<int>{},1};
                    B->push_Ins(0,get_alloca_Ins(1,max_reg));
                    ++max_reg;
                    B1->push_Ins(1,get_alg_Ins_i32_2(1,LLVMIROpcode::ADD,0,0,max_reg));
                    B1->push_Ins(1,get_store_Ins(1,max_reg,max_reg-1));
                }
                if(type_decl == 2){
                    irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{std::vector<int>{},2};
                    B->push_Ins(0,get_alloca_Ins(2,max_reg));
                    ++max_reg;
                    B1->push_Ins(1,get_alg_Ins_f32_2(2,LLVMIROpcode::ADD,0,0,max_reg));
                    B1->push_Ins(1,get_store_Ins(2,max_reg,max_reg-1));
                }
            }
        }
    }
}

void ConstDecl::codeIR()
{
    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][0];
    auto def_vector = *var_def_list;
    for(auto def:def_vector){
        ++max_reg;
        irgen_table.symbol_table.add_Symbol(def->GetName(),max_reg);
        VarAttribute val;
        val.ConstTag = 0;

        if(def->GetDims() != nullptr){
            irgen_table.is_array_table[max_reg] = 1;

            auto dim_vector = *def->GetDims();
            for(auto d:dim_vector){
                val.dims.push_back(d->get_Intval());
            }
            int array_sz = 1;
            for(auto d:val.dims){
                array_sz *= d;
            }
            InitVal init = def->GetInit();
            if(init != nullptr){
                if(type_decl == 1){
                    irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{val.dims,1};
                    B->push_Ins(0,get_alloca_Ins(1,max_reg,val.dims));
                }
                if(type_decl == 2){
                    irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{val.dims,2};
                    B->push_Ins(0,get_alloca_Ins(2,max_reg,val.dims));
                }
                //call void @llvm.memset.p0.i32(ptr align 16 %2, i8 0, i32 36, i1 0)
                CallInstruction* memsetCall = new CallInstruction(VOID,nullptr,std::string("llvm.memset.p0.i32"));
                memsetCall->push_back_Parameter(PTR,new RegOperand(max_reg));// max_reg is array addr
                memsetCall->push_back_Parameter(I8,new ImmI32Operand(0));
                memsetCall->push_back_Parameter(I32,new ImmI32Operand(array_sz*sizeof(int)));
                memsetCall->push_back_Parameter(I1,new ImmI32Operand(0));
                llvm_IR.llvm_Function_BlockArr_map[function_now][now_label]->push_Ins(1,memsetCall);

                // recursive_Array_Init_IR
                recursive_Array_Init_IR(
                    llvm_IR.llvm_Function_BlockArr_map[function_now][now_label],
                    val.dims,
                    max_reg,
                    init,
                    0,array_sz-1,0,type_decl);
            }
            else{
                if(type_decl == 1){
                    B->push_Ins(0,get_alloca_Ins(1,max_reg,val.dims));
                }
                if(type_decl == 2){
                    B->push_Ins(0,get_alloca_Ins(2,max_reg,val.dims));
                }
            }
        }
        else{
            irgen_table.is_array_table[max_reg] = 0;

            InitVal init = def->GetInit();
            if(init != nullptr){
                if(type_decl == 1){
                    irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{std::vector<int>{},1};
                    B->push_Ins(0,get_alloca_Ins(1,max_reg));
                }
                if(type_decl == 2){
                    irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{std::vector<int>{},2};
                    B->push_Ins(0,get_alloca_Ins(2,max_reg));
                }
                int storeAddrReg=max_reg;
                //store
                LLVMBlock B1 = llvm_IR.llvm_Function_BlockArr_map[function_now][now_label];
                if(type_decl == 1){
                    Expression initExp = init->GetExp();
                    //ASSERT(initExp != null)

                    initExp->codeIR();
                    int ExpResultReg = max_reg;
                    if(initExp->get_type() == 2)
                    {
                        //fp_to_si
                        max_reg++;
                        int ConvertedExpResultReg = max_reg;
                        B1->push_Ins(1,get_fptosi_Ins(new RegOperand(ExpResultReg),new RegOperand(ConvertedExpResultReg)));
                        ExpResultReg = ConvertedExpResultReg;
                    }
                    B1->push_Ins(1,get_store_Ins(1,ExpResultReg,storeAddrReg));
                }
                if(type_decl == 2){
                    Expression initExp = init->GetExp();

                    initExp->codeIR();
                    int ExpResultReg = max_reg;
                    if(initExp->get_type() == 1){
                        //si_to_fp
                        max_reg++;
                        int ConvertedExpResultReg = max_reg;
                        B1->push_Ins(1,get_sitofp_Ins(new RegOperand(ExpResultReg),new RegOperand(ConvertedExpResultReg)));
                        ExpResultReg = ConvertedExpResultReg;
                    }
                    B1->push_Ins(1,get_store_Ins(2,ExpResultReg,storeAddrReg));
                }
            }
            else{
                if(type_decl == 1){
                    B->push_Ins(0,get_alloca_Ins(1,max_reg));
                }
                if(type_decl == 2){
                    B->push_Ins(0,get_alloca_Ins(2,max_reg));
                }
            }
        }
        
    }
}

void BlockItem_Decl::codeIR()
{
    decl->codeIR();
}

void BlockItem_Stmt::codeIR()
{
    stmt->codeIR();
}

void __Block::codeIR()
{
    irgen_table.symbol_table.enter_scope();

    auto item_vector = *item_list;
    for(auto item:item_vector){
        item->codeIR();
    }

    irgen_table.symbol_table.exit_scope();
}

void __FuncFParam::codeIR(){}

void __FuncDef::codeIR()
{
    //add FuncDef llvm ins
    irgen_table.symbol_table.enter_scope();
    auto formal_vector = *formals;
    LLVMType FuncDeclRetType;
    if(return_type == 0){
        FuncDeclRetType = VOID;
    }
    if(return_type == 1){
        FuncDeclRetType = I32;
    }
    if(return_type == 2){
        FuncDeclRetType = FLOAT32;
    }
    Func_Def_Instruction FuncDefIns = new FunctionDefineInstruction(FuncDeclRetType,name->get_string());
    //std::cerr<<name->get_string()<<"\n";
    max_reg = -1;
    irgen_table.reg_table.clear();
    irgen_table.formal_array_table.clear();
    for(auto formal:formal_vector){
        ++max_reg;
        if(formal->dims != nullptr){
            irgen_table.is_array_table[max_reg] = 1;
            irgen_table.formal_array_table[max_reg] = 1;
            FuncDefIns->insert_formal(PTR);
            std::vector<int> formal_dims;
            for(int i = 1;i < formal->dims->size();++i){
                auto d = formal->dims->at(i);
                formal_dims.push_back(d->get_Intval());
            }
            irgen_table.symbol_table.add_Symbol(formal->name,max_reg);
            irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{formal_dims,formal->get_type()}; 
        }
        else{
            if(formal->get_type() == 1){
                FuncDefIns->insert_formal(I32);
            }
            if(formal->get_type() == 2){
                FuncDefIns->insert_formal(FLOAT32);
            }
        }
    }

    llvm_IR.llvm_Function_BlockArr_map[FuncDefIns]={};

    now_label = 0;
    max_blocklabel = 0;
    function_now = FuncDefIns;
    function_returntype = return_type;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);

    LLVMBlock B = llvm_IR.llvm_Function_BlockArr_map[function_now][0];
    int formal_id = 0;
    for(auto formal:formal_vector){
        if(formal->dims == nullptr){
            if(formal->get_type() == 1){
                ++max_reg;
                B->push_Ins(1,get_alloca_Ins(1,max_reg));
                B->push_Ins(1,get_store_Ins(1,formal_id,max_reg));
                irgen_table.symbol_table.add_Symbol(formal->name,max_reg);
                irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{std::vector<int>{},formal->get_type()};
            }
            if(formal->get_type() == 2){
                ++max_reg;
                B->push_Ins(1,get_alloca_Ins(2,max_reg));
                B->push_Ins(1,get_store_Ins(2,formal_id,max_reg));
                irgen_table.symbol_table.add_Symbol(formal->name,max_reg);
                irgen_table.reg_table[max_reg] = std::pair<std::vector<int>,int>{std::vector<int>{},formal->get_type()}; 
            }
            irgen_table.is_array_table[max_reg] = 0;
        }
        ++formal_id;
    }
    B->push_Ins(1,get_br_uncond_Ins(1));
    ++max_blocklabel;
    llvm_IR.llvm_Function_BlockArr_map[function_now][max_blocklabel] = new BasicBlock(max_blocklabel);
    now_label = max_blocklabel;
    block->codeIR();

    add_no_return_block();
    llvm_IR.max_reg_map[FuncDefIns] = max_reg;
    llvm_IR.max_label_map[FuncDefIns] = max_blocklabel;
    irgen_table.symbol_table.exit_scope();
}

void CompUnit_Decl::codeIR(){}

void CompUnit_FuncDef::codeIR()
{
    func_def->codeIR();
}

void add_libfunc_decl()
{
    FunctionDeclareInstruction* getint = new FunctionDeclareInstruction(I32,"getint");
    llvm_IR.func_declare.push_back(getint);

    FunctionDeclareInstruction* getchar = new FunctionDeclareInstruction(I32,"getch");
    llvm_IR.func_declare.push_back(getchar);

    FunctionDeclareInstruction* getfloat = new FunctionDeclareInstruction(FLOAT32,"getfloat");
    llvm_IR.func_declare.push_back(getfloat);

    FunctionDeclareInstruction* getarray = new FunctionDeclareInstruction(I32,"getarray");
    getarray->insert_formal(PTR);
    llvm_IR.func_declare.push_back(getarray);

    FunctionDeclareInstruction* getfloatarray = new FunctionDeclareInstruction(I32,"getfarray");
    getfloatarray->insert_formal(PTR);
    llvm_IR.func_declare.push_back(getfloatarray);

    FunctionDeclareInstruction* putint = new FunctionDeclareInstruction(VOID,"putint");
    putint->insert_formal(I32);
    llvm_IR.func_declare.push_back(putint);

    FunctionDeclareInstruction* putch = new FunctionDeclareInstruction(VOID,"putch");
    putch->insert_formal(I32);
    llvm_IR.func_declare.push_back(putch);

    FunctionDeclareInstruction* putfloat = new FunctionDeclareInstruction(VOID,"putfloat");
    putfloat->insert_formal(FLOAT32);
    llvm_IR.func_declare.push_back(putfloat);

    FunctionDeclareInstruction* putarray = new FunctionDeclareInstruction(VOID,"putarray");
    putarray->insert_formal(I32);
    putarray->insert_formal(PTR);
    llvm_IR.func_declare.push_back(putarray);

    FunctionDeclareInstruction* putfarray = new FunctionDeclareInstruction(VOID,"putfarray");
    putfarray->insert_formal(I32);
    putfarray->insert_formal(PTR);
    llvm_IR.func_declare.push_back(putfarray);

    // put format string
    FunctionDeclareInstruction* putf = new FunctionDeclareInstruction(VOID,"putf");
    putf->insert_formal(PTR);
    llvm_IR.func_declare.push_back(putf);

    FunctionDeclareInstruction* starttime = new FunctionDeclareInstruction(VOID,"_sysy_starttime");
    starttime->insert_formal(I32);
    llvm_IR.func_declare.push_back(starttime);

    FunctionDeclareInstruction* stoptime = new FunctionDeclareInstruction(VOID,"_sysy_stoptime");
    stoptime->insert_formal(I32);
    llvm_IR.func_declare.push_back(stoptime);

    FunctionDeclareInstruction* llvm_memset = new FunctionDeclareInstruction(VOID,"llvm.memset.p0.i32");
    llvm_memset->insert_formal(PTR);
    llvm_memset->insert_formal(I8);
    llvm_memset->insert_formal(I32);
    llvm_memset->insert_formal(I1);
    llvm_IR.func_declare.push_back(llvm_memset);
}

