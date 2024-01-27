#ifndef INSTRUCTION_H
#define INSTRUCTION_H

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include "symtab.h"

// @Instriction types
enum llvm_ir_opcode
{
    OTHER=0,
    LOAD=1,
    STORE=2,
    ADD=3,
    SUB=4,
    ICMP=5,
    PHI=6,
    ALLOCA=7,
    MUL=8,
    DIV=9,
    BR_COND=10,
    BR_UNCOND=11,
    FADD=12,
    FSUB=13,
    FMUL=14,
    FDIV=15,
    FCMP=16,
    MOD=17,
    XOR=18,
    RET=19,
    ZEXT=20,
    SHL=21,
    LSHR=22,
    ASHR=23,
    FPTOSI=24,
    GETELEMENTPTR=25,
    CALL=26,
    ADD_SHIFT=27,
    RSBS_SHIFT=28,
    SMMUL=29,
    RSBS=30,
    SNIPPET=31,// unused
    BICS=32,
    AND_b=33
};

enum arm_cond{
    NONE = 0,
    EX_CS = 1,
    EX_LT = 2,
    EX_PL = 3,
    EX_S = 4
};

// @Operand datatypes 
enum llvm_type{I32 = 1,FLOAT32 = 2,PTR = 3,VOID = 4,I8 = 5, I1 = 6};

// @ <cond> in icmp Instruction 
enum cmp_cond
{
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
};

enum fcmp_cond{
    FALSE=1,//: no comparison, always returns false
    OEQ=2,// ordered and equal
    OGT=3,//: ordered and greater than
    OGE=4,//: ordered and greater than or equal
    OLT=5,//: ordered and less than
    OLE=6,//: ordered and less than or equal
    ONE=7,//: ordered and not equal
    ORD=8,//: ordered (no nans)
    UEQ=9,//: unordered or equal
    UGT=10,//: unordered or greater than
    UGE=11,//: unordered or greater than or equal
    ULT=12,//: unordered or less than
    ULE=13,//: unordered or less than or equal
    UNE=14,//: unordered or not equal
    UNO=15,//: unordered (either nans)
    TRUE=16//: no comparison, always returns true
};

// @float32 directly to Hex

// @Counter: Count for Instruction,Reg,Labels 
// Can be reseted, public member of relevant class
class autoCounter{
    int curCount;
public:
    autoCounter():curCount(0){}
    int getCount(){return curCount;}
    void resetCount(int val=0){curCount=val;}
    void inc(){curCount++;}
};
class basic_operand;
typedef basic_operand* operand;
// @operands in instruction 
class basic_operand
{
public:
    enum operand_type{REG=1,IMMI32=2,IMMF32=3,GLOBAL=4,LABEL=5};
protected:
    operand_type operandType;
public:
    basic_operand(){}
    operand_type getOperandType(){return operandType;}
    virtual std::string getFullName() = 0;
    virtual operand copy_operand() = 0;
    virtual void code(std::ostream& s){}
};

// @register operand;%r+register No 
class reg_operand:public basic_operand{
    int reg_no;
public:
    int getRegNo(){return reg_no;}
    void changeRegNo(){if(reg_no>=0){reg_no=-reg_no-1;}}
    void setRegNo(int new_no){reg_no = new_no;}

    static autoCounter curRegNo;
    reg_operand(){
        this->operandType=REG;
        this->reg_no=curRegNo.getCount();
        curRegNo.inc();
    }
    reg_operand(int RegNo){
        this->operandType=REG;
        this->reg_no=RegNo;
    }
    virtual std::string getFullName();
    virtual operand copy_operand();
};

// @integer32 immediate 
class imm_i32_operand:public basic_operand{
    int immVal;
public:
    int getIntImmVal(){return immVal;}

    imm_i32_operand(int immVal){
        this->operandType=IMMI32;
        this->immVal=immVal;
    }
    virtual std::string getFullName();
    virtual void code(std::ostream& s);
    virtual operand copy_operand();
};

// @float32 immediate 
class imm_f32_operand:public basic_operand{
    float immVal;
public:
    float getFloatVal(){return immVal;}
    
    long long getFloatByteVal();

    imm_f32_operand(float immVal){
        this->operandType=IMMF32;
        this->immVal=immVal;
    }
    virtual std::string getFullName();
    virtual void code(std::ostream& s);
    virtual operand copy_operand();
};

// @label %L+label No 
class label_operand:public basic_operand{
    int label_no;
public:
    int getLabelNo(){return label_no;}
    void setLabelNo(int label){label_no = label;}

    static autoCounter curLabelNo;
    label_operand(){
        this->operandType=LABEL;
        this->label_no=curLabelNo.getCount();
        curLabelNo.inc();
    }
    label_operand(int LabelNo){
        this->operandType=LABEL;
        this->label_no=LabelNo;
    }
    virtual std::string getFullName();
    virtual operand copy_operand();
};

// @global identifier @+name 
class global_operand:public basic_operand{
    std::string name;
public:
    std::string getName(){return name;}

    global_operand(std::string gloName){
        this->operandType=GLOBAL;
        this->name=gloName;
    }
    virtual std::string getFullName();
    virtual operand copy_operand();
};

class basic_Instruction;
typedef basic_Instruction* Instruction;
// @instruction 
class basic_Instruction
{
private:
    int BlockID;
protected:
    llvm_ir_opcode opcode;
    int insNo;
public:
    int erase_tag = 0;

    int getBlockID(){return BlockID;}
    void setBlockID(int blockno){BlockID = blockno;}
    basic_Instruction(){
        opcode = OTHER;
        insNo=insNoCounter.getCount();
        insNoCounter.inc();
    }
    void set_ins_no(int new_no){insNo = new_no;}
    static autoCounter insNoCounter;//instruction No counter
    int get_opcode(){return opcode;}//one solution: convert to pointer of subclasses
    virtual void code(std::ostream& s) = 0;
    virtual void printIR(std::ostream& s) = 0;
    virtual int get_resultregno() = 0;
    virtual void cgen_prework() = 0;
    virtual std::vector<int> refering_virtual_regs() = 0;
    virtual operand get_resultreg() = 0;
    virtual void replace_by_map(const std::map<int,int>&Rule) = 0;
    virtual std::vector<operand> get_nonresult_operands() = 0;
    virtual void set_nonresult_operands(std::vector<operand> ops) = 0;
    virtual Instruction copy_instruction() = 0;
    virtual int is_funcdef(){return 0;}

    
    virtual int const_propagate(std::map<int,Instruction>& regresult_map) = 0;
};

//load
//Syntax: <result>=load <ty>, ptr <pointer>
class load_Instruction : public basic_Instruction
{
    enum llvm_type type;
    operand pointer;
    operand result;
public:
    enum llvm_type getDataType(){return type;}
    operand getPointer(){return pointer;}
    operand getResultOp(){return result;}

    load_Instruction(enum llvm_type type,operand pointer,operand result){
        opcode=llvm_ir_opcode::LOAD;
        this->type=type;
        this->result=result;
        this->pointer=pointer;
    }
    virtual void code(std::ostream& s);
    void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    int get_useregno(){return ((reg_operand*)pointer)->getRegNo();}
    operand get_resultreg(){return result;}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops);
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map);
};

//store
//Syntax: store <ty> <value>, ptr<pointer>
class store_Instruction : public basic_Instruction
{
    enum llvm_type type;
    operand pointer;
    operand value;
public:
    enum llvm_type getDataType(){return type;}
    operand getPointer(){return pointer;}
    operand getValue(){return value;}

    store_Instruction(enum llvm_type type,operand pointer,operand value){
        opcode=llvm_ir_opcode::STORE;
        this->type=type;
        this->pointer=pointer;
        this->value=value;
    }
    virtual void code(std::ostream& s);
    virtual void printIR(std::ostream& s);
    int get_resultregno(){return -1;}
    operand get_resultreg(){return nullptr;}
    int get_defregno(){return ((reg_operand*)pointer)->getRegNo();}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops);
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map);
};

//<result>=add <ty> <op1>,<op2>
//<result>=sub <ty> <op1>,<op2>
//<result>=mul <ty> <op1>,<op2>
//<result>=div <ty> <op1>,<op2>
class alg_Instruction : public basic_Instruction
{
    enum llvm_type type;
    operand op1;
    operand op2;
    operand result;
public:
    enum arm_cond exec_cond;
    enum llvm_type getDataType(){return type;}
    operand getOp1(){return op1;}
    operand getOp2(){return op2;}
    operand getResultOp(){return result;}
    operand get_resultreg(){return result;}
    alg_Instruction(llvm_ir_opcode opcode,enum llvm_type type,operand op1,operand op2,operand result){
        this->opcode=opcode;
        this->op1=op1;
        this->op2=op2;
        this->result=result;
        this->type=type;
        this->exec_cond = NONE;
    }
    virtual void code(std::ostream& s);
    virtual void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops);
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map);
};

//<result>=icmp <cond> <ty> <op1>,<op2>
class icmp_Instruction : public basic_Instruction
{
    enum llvm_type type;
    operand op1;
    operand op2;
    cmp_cond cond;
    operand result;
public:
    enum llvm_type getDataType(){return type;}
    operand getOp1(){return op1;}
    operand getOp2(){return op2;}
    cmp_cond getCompareCondition(){return cond;}
    operand getResult(){return result;}

    icmp_Instruction(enum llvm_type type,operand op1,operand op2,cmp_cond cond,operand result){
        this->opcode=llvm_ir_opcode::ICMP;
        this->type=type;
        this->op1=op1;
        this->op2=op2;
        this->cond=cond;
        this->result=result;
    }
    virtual void code(std::ostream& s);
    virtual void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    operand get_resultreg(){return result;}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops);
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map);
};

//<result>=fadd <ty> <op1>,<op2>
class fcmp_Instruction : public basic_Instruction
{
    enum llvm_type type;
    operand op1;
    operand op2;
    fcmp_cond cond;
    operand result;
public:
    enum llvm_type getDataType(){return type;}
    operand getOp1(){return op1;}
    operand getOp2(){return op2;}
    fcmp_cond getCompareCondition(){return cond;}
    operand getResult(){return result;}

    fcmp_Instruction(enum llvm_type type,operand op1,operand op2,fcmp_cond cond,operand result){
        this->opcode=llvm_ir_opcode::FCMP;
        this->type=type;
        this->op1=op1;
        this->op2=op2;
        this->cond=cond;
        this->result=result;
    }
    virtual void code(std::ostream& s);
    virtual void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    operand get_resultreg(){return result;}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops);
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map);
};

//phi syntax:
//<result>=phi <ty> [val1,label1],[val2,label2],……
class phi_Instruction : public basic_Instruction
{
private: 
    enum llvm_type type; 
    operand result; 
    std::map<operand,operand>val_labels;
public:
    enum llvm_type getDataType(){return type;}
    operand getResultOp(){return result;}
    std::map<operand,operand>& getPhiList(){return val_labels;}
    operand get_resultreg(){return result;}
    phi_Instruction(enum llvm_type type,operand result,std::map<operand,operand>val_labels){
        this->opcode=llvm_ir_opcode::PHI;
        this->type=type;
        this->result=result;
        this->val_labels=val_labels;
    }
    phi_Instruction(enum llvm_type type,operand result){
        this->opcode=llvm_ir_opcode::PHI;
        this->type=type;
        this->result=result;
    }
    void Insert_phi(operand val,operand label){val_labels[label]=val;}
    virtual void code(std::ostream& s){}
    virtual void printIR(std::ostream& s);
    void set_philist(std::map<operand,operand> phi_list){val_labels = phi_list;}
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    void set_phi_label(int pre_id,int new_id);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops);
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

//alloca
//usage 1: <result>=alloca <type>
//usage 2: %3 = alloca [20 x [20 x i32]]
class alloca_Instruction:public basic_Instruction
{
    enum llvm_type type;
    operand result;
    std::vector<int>dims;
public:
    enum llvm_type getDataType(){return type;}
    operand getResultOp(){return result;}
    std::vector<int>getDims(){return dims;}
    operand get_resultreg(){return result;}
    alloca_Instruction(enum llvm_type dttype,operand result){
        this->opcode=llvm_ir_opcode::ALLOCA;
        this->type=dttype;
        this->result=result;
    }
    alloca_Instruction(enum llvm_type dttype,std::vector<int>ArrDims,operand result){
        this->opcode=llvm_ir_opcode::ALLOCA;
        this->type=dttype;
        this->result=result;
        dims=ArrDims;
    }
    virtual void code(std::ostream& s){}
    virtual void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands(){return std::vector<operand>{};}
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

//Conditional branch
//Syntax:
//br i1 <cond>, label <iftrue>, label <iffalse>
class br_cond_Instruction:public basic_Instruction{
    operand cond;
    operand trueLabel;
    operand falseLabel;
public:
    operand getCond(){return cond;}
    operand getTrueLabel(){return trueLabel;}
    operand getFalseLabel(){return falseLabel;}
    operand get_resultreg(){return NULL;}
    br_cond_Instruction(operand cond,operand trueLabel,operand falseLabel){
        this->opcode=BR_COND;
        this->cond=cond;
        this->trueLabel=trueLabel;
        this->falseLabel=falseLabel;
    }
    virtual void code(std::ostream& s);
    virtual void printIR(std::ostream& s);
    int get_resultregno(){return -1;}
    void set_cond(operand r1){cond = r1;}
    void set_truelabel(operand l1){trueLabel = l1;}
    void set_falselabel(operand l1){falseLabel = l1;}
    void swap_label(){std::swap(trueLabel,falseLabel);}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops);
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

//Unconditional branch
//Syntax:
//br label <dest>
class br_uncond_Instruction:public basic_Instruction{
    operand destLabel;
public:
    operand getDestLabel(){return destLabel;}
    operand get_resultreg(){return NULL;}
    br_uncond_Instruction(operand destLabel){
        this->opcode=BR_UNCOND;
        this->destLabel=destLabel;
    }
    virtual void code(std::ostream& s);
    virtual void printIR(std::ostream& s);
    int get_resultregno(){return -1;}
    int get_target(){return ((label_operand*)destLabel)->getLabelNo();}
    void set_target(operand l1){destLabel = l1;}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands(){return std::vector<operand>{};}
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

/*
Global Id Define Instruction Syntax
Example 1:
    @p = global [105 x i32] zeroinitializer
Example 2:
    @.str = constant [4 x i8] c"%d \00", align 1
Example 3:
    @p = global [105 x [104 x i32]] [[104 x i32] [], [104 x i32] zeroinitializer, ...]
*/
class global_id_define_Instruction:public basic_Instruction{
//Datas About the Instruction
public:
    //Construction Function:Set All datas
    //Getters
    enum llvm_type type;
    std::string name;
    operand init_val;
    ArrayVal arval;
    global_id_define_Instruction(std::string nam,enum llvm_type typ,operand i_val)
    :name(nam),type(typ),init_val(i_val){}
    global_id_define_Instruction(std::string nam,enum llvm_type typ,ArrayVal v)
    :name(nam),type(typ),arval(v),init_val{nullptr}{}
    virtual void code(std::ostream& s);
    virtual void printIR(std::ostream& s);
    int get_resultregno(){return -1;}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands(){return std::vector<operand>{};}
    operand get_resultreg(){return NULL;}
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction(){return nullptr;}
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

class global_str_const_Instruction:public basic_Instruction{
public:
    std::string str_val;
    std::string str_name;
    global_str_const_Instruction(std::string strval,std::string strname)
    :str_val(strval),str_name(strname){}
    virtual void code(std::ostream& s);
    virtual void printIR(std::ostream& s);
    int get_resultregno(){return -1;}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands(){return std::vector<operand>();}
    operand get_resultreg(){return NULL;}
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction(){return nullptr;}
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

/*
Call Instruction Syntax
Example 1:
    %12 = call i32 (ptr, ...)@printf(ptr @.str,i32 %11)
Example 2:
    call void @DFS(i32 0,i32 %4)
*/
class call_Instruction:public basic_Instruction{
//Datas About the Instruction
private:
    enum llvm_type ret_type;
    operand result;//result can be null
    std::string name;
    std::vector<std::pair<enum llvm_type,operand> > args;
public:
    //Construction Function:Set All datas
    call_Instruction(enum llvm_type retType,operand res,std::string FuncName,std::vector<std::pair<enum llvm_type,operand> >arguments):
    ret_type(retType),result(res),name(FuncName),args(arguments)
    {
        this->opcode = CALL;
        if(res != NULL && res->getOperandType() == basic_operand::REG){
            if(((reg_operand*)res)->getRegNo()==-1){
                result = NULL;
            }
        }
    }
    call_Instruction(enum llvm_type retType,operand res,std::string FuncName):
    ret_type(retType),result(res),name(FuncName)
    {
        this->opcode = CALL;
        if(res != NULL && res->getOperandType() == basic_operand::REG){
            if(((reg_operand*)res)->getRegNo()==-1){
                result = NULL;
            }
        }
    }

    //Getters
    enum llvm_type get_RetType(){return ret_type;}
    operand get_result(){return result;}
    operand get_resultreg(){return result;}
    std::string get_funcName(){return name;}
    std::vector<std::pair<enum llvm_type,operand> > get_parameterList(){return args;}
    void push_back_Parameter(std::pair<enum llvm_type,operand> newPara){args.push_back(newPara);}
    void push_back_Parameter(enum llvm_type type,operand val){args.push_back(std::make_pair(type,val));}

    virtual void code(std::ostream& s);
    virtual void printIR(std::ostream& s);
    int get_resultregno();
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops);
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map);
};

/*
Ret Instruction Syntax
Example 1:
    ret i32 0
Example 2:
    ret void
Example 3:
    ret i32 %r7
*/
class ret_Instruction:public basic_Instruction{
//Datas About the Instruction
private:
    enum llvm_type ret_type;
    operand ret_val;
public:
    //Construction Function:Set All datas
    ret_Instruction(enum llvm_type retType,operand res):ret_type(retType),ret_val(res){
        this->opcode=RET;
    }
    operand get_resultreg(){return NULL;}
    //Getters
    enum llvm_type get_type(){return ret_type;}
    operand get_result(){return ret_val;}

    virtual void code(std::ostream& s);
    virtual void printIR(std::ostream& s);
    int get_resultregno(){return -1;}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops);
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

/*
Syntax:
<result> = getelementptr <ty>, ptr <ptrval>{, [inrange] <ty> <idx>}*
<result> = getelementptr inbounds <ty>, ptr <ptrval>{, [inrange] <ty> <idx>}*
<result> = getelementptr <ty>, <N x ptr> <ptrval>, [inrange] <vector index type> <idx>
*/
class get_elementptr_Instruction:public basic_Instruction{
private:
    enum llvm_type type;
    operand result;
    operand ptrval;

    std::vector<int>dims;
    std::vector<operand>indexes;
public:
    get_elementptr_Instruction(enum llvm_type typ,operand res,operand ptr):type(typ),result(res),ptrval(ptr){
        opcode = GETELEMENTPTR;
    }
    get_elementptr_Instruction(enum llvm_type typ,operand res,operand ptr,std::vector<int>dim)
    :type(typ),result(res),ptrval(ptr),dims(dim){
        opcode = GETELEMENTPTR;
    }
    get_elementptr_Instruction(enum llvm_type typ,operand res,operand ptr,std::vector<int>dim,std::vector<operand> index)
    :type(typ),result(res),ptrval(ptr),dims(dim),indexes(index){
        opcode = GETELEMENTPTR;
    }
    //get_elementptr_Instruction(enum llvm_type typ,operand res,operand ptr,std::vector<int>dim,std::vector<int>idx):type(typ),result(res),ptrval(ptr),dims(dim),indexes(idx){}
    void push_dim(int d){dims.push_back(d);}
    void push_idx_reg(int idx_reg_no){indexes.push_back(new reg_operand(idx_reg_no));}
    void push_idx_imm32(int imm_idx){indexes.push_back(new imm_i32_operand(imm_idx));}
    void push_index(operand idx){indexes.push_back(idx);}
    operand get_resultreg(){return result;}
    enum llvm_type get_type(){return type;}
    operand get_result(){return result;}
    operand get_ptrVal(){return ptrval;}
    std::vector<int>get_dims(){return dims;}
    std::vector<operand>get_indexes(){return indexes;}

    void code(std::ostream& s){}
    void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops);
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map);
};

class func_define_Instruction:public basic_Instruction{
private:
    enum llvm_type return_type;
    std::string Func_name;
public:
    std::vector<enum llvm_type> formals;
    std::vector<operand> formals_reg;
    operand get_resultreg(){return NULL;}
    func_define_Instruction(enum llvm_type t,std::string n){
        return_type = t;
        Func_name = n;
    }
    void insert_formal(enum llvm_type t);
    int get_formal_size(){return formals.size();}
    enum llvm_type get_return_type(){return return_type;}
    std::string get_Func_name(){return Func_name;}
    void code(std::ostream& s);
    void printIR(std::ostream &s);
    int get_resultregno(){return -1;}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction(){return nullptr;}
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
    virtual int is_funcdef(){return 1;}
};
typedef func_define_Instruction* Func_Def_Instruction;

class func_declare_Instruction:public basic_Instruction{
private:
    enum llvm_type return_type;
    std::string Func_name;
public:
    operand get_resultreg(){return NULL;}
    std::vector<enum llvm_type> formals;
    func_declare_Instruction(enum llvm_type t,std::string n){
        return_type = t;
        Func_name = n;
    }
    void insert_formal(enum llvm_type t){formals.push_back(t);}
    enum llvm_type get_return_type(){return return_type;}
    std::string get_Func_name(){return Func_name;}
    void code(std::ostream& s);
    void printIR(std::ostream &s);
    int get_resultregno(){return -1;}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction(){return nullptr;}
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

class fptosi_Instruction:public basic_Instruction{
private:
    operand result;
    operand value;
public:
    fptosi_Instruction(operand result_receiver,operand value_for_cast)
        :result(result_receiver),
        value(value_for_cast){
            this->opcode = FPTOSI;
        }
    operand get_resultreg(){return result;}
    void code(std::ostream& s);
    void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops);
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map);
};

class sitofp_Instruction:public basic_Instruction{
private:
    operand result;
    operand value;
public:
    sitofp_Instruction(operand result_receiver,operand value_for_cast)
        :result(result_receiver),
        value(value_for_cast){}
    operand get_resultreg(){return result;}
    void code(std::ostream& s);
    void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops);
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map);
};

class zext_Instruction:public basic_Instruction{
private:
    llvm_type from_type;
    llvm_type to_type;
    operand result;
    operand value;
public:
    operand get_resultreg(){return result;}
    operand get_in(){return value;}
    operand get_out(){return result;}
    zext_Instruction(llvm_type to_type,operand result_receiver,
                    llvm_type from_type,operand value_for_cast)
        :to_type(to_type),
        result(result_receiver),
        from_type(from_type),
        value(value_for_cast){
            this->opcode = ZEXT;
        }
    void code(std::ostream& s);
    void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops);
    virtual Instruction copy_instruction();
    virtual int const_propagate(std::map<int,Instruction>& regresult_map);
};

// pseudo instructions for prework
// mov result,source
// mov result,<imm32>
// mov result,<reg>
class mov_instruction:public basic_Instruction{
private:
    operand result;
    operand source;
public:
    enum arm_cond exec_cond;
    operand get_resultreg(){return result;}
    mov_instruction(operand result,operand source):result(result),source(source){opcode = OTHER;exec_cond = NONE;}
    virtual void code(std::ostream& s);
    void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction(){return nullptr;}
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

//ldr result,[fp,#-8]
class load_fp_instruction:public basic_Instruction{
private:
    operand result;
    operand offset;
    // int negative_offset;
public:
    operand get_resultreg(){return result;}
    load_fp_instruction(operand result,int negative_offset):
    result(result),offset(new imm_i32_operand(negative_offset)){opcode = OTHER;}
    load_fp_instruction(operand result,operand offset):
    result(result),offset(offset){opcode = OTHER;}
    virtual void code(std::ostream& s);
    void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction(){return nullptr;}
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};
//str %r,[fp,#-8]
class store_fp_instruction:public basic_Instruction{
private:
    operand str_val;
    operand offset;
    // int negative_offset;
public:
    operand get_resultreg(){return nullptr;}
    store_fp_instruction(operand str_val,int negative_offset):
    str_val(str_val),offset(new imm_i32_operand(negative_offset)){opcode = OTHER;}
    store_fp_instruction(operand str_val,operand offset):
    str_val(str_val),offset(offset){opcode = OTHER;}

    virtual void code(std::ostream& s);
    void printIR(std::ostream& s);
    int get_resultregno(){return -1;}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction(){return nullptr;}
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};
//add %result,fp,#negative_offset
class get_addr_by_fp_offset_instruction:public basic_Instruction{
private:
    operand result;
    operand offset;
    // int negative_offset;
public:
    operand get_resultreg(){return result;}
    get_addr_by_fp_offset_instruction(operand result,int negative_offset):
    result(result),
    offset(new imm_i32_operand(negative_offset)){opcode = OTHER;}
    get_addr_by_fp_offset_instruction(operand result,operand offset):
    result(result),
    offset(offset){opcode = OTHER;}

    virtual void code(std::ostream& s);
    void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework();
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction(){return nullptr;}
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

class load_imm_instruction:public basic_Instruction{
private:
    operand result;
    int Byte;
public:
    operand get_resultreg(){return result;}
    load_imm_instruction(operand result,int Byte):
    result(result),Byte(Byte){opcode = OTHER;}
    virtual void code(std::ostream& s);
    void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework(){}
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands(){return std::vector<operand>();}
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction(){return nullptr;}
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

class vmov_instruction:public basic_Instruction{
private:
    operand result;
    operand from;
public:
    operand get_resultreg(){return result;}
    vmov_instruction(operand result,operand from):
    from(from),result(result){opcode = OTHER;}
    virtual void code(std::ostream& s);
    void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework(){}
    std::vector<int> refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule);
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction(){return nullptr;}
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

class pseudo_load_label_instruction:public basic_Instruction{
private:
    operand result;
    operand from;
public:
    operand get_resultreg(){return result;}
    pseudo_load_label_instruction(operand result,operand from)
    :result(result),from(from){opcode = OTHER;}
    void code(std::ostream& s);
    void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework();
    std::vector<int>refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule){}
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction(){return nullptr;}
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

class pseudo_alg_shift_Instruction : public basic_Instruction{
private:
    operand result;
    operand op1;
    operand op2;
    int is_a_shift;
    int shift_bit;
public:
    pseudo_alg_shift_Instruction(llvm_ir_opcode opcode,operand op1,operand op2,int sh_bit,operand result,int is_a_shift = 0)
    :op1(op1),op2(op2),shift_bit(sh_bit),result(result),is_a_shift(is_a_shift){
        this->opcode = opcode;
    }
    operand get_resultreg(){return result;}
    void code(std::ostream& s);
    void printIR(std::ostream& s);
    int get_resultregno(){return ((reg_operand*)result)->getRegNo();}
    void cgen_prework();
    std::vector<int>refering_virtual_regs();
    void replace_by_map(const std::map<int,int>&Rule){}
    std::vector<operand> get_nonresult_operands();
    void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction(){return nullptr;}
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

class it_instruction : public basic_Instruction
{
public:
    enum arm_cond exec_cond;
    it_instruction(enum arm_cond exec_cond):exec_cond(exec_cond){}
    virtual void code(std::ostream& s);
    virtual void printIR(std::ostream& s);
    virtual int get_resultregno(){return -1;}
    virtual void cgen_prework(){}
    virtual std::vector<int> refering_virtual_regs(){return std::vector<int>();}
    virtual operand get_resultreg(){return nullptr;}
    virtual void replace_by_map(const std::map<int,int>&Rule){}
    virtual std::vector<operand> get_nonresult_operands(){return std::vector<operand>();}
    virtual void set_nonresult_operands(std::vector<operand> ops){}
    virtual Instruction copy_instruction(){return nullptr;}
    virtual int const_propagate(std::map<int,Instruction>& regresult_map){return 0;}
};

std::ostream& operator<<(std::ostream&s,llvm_type type);
std::ostream& operator<<(std::ostream&s,llvm_ir_opcode type);
std::ostream& operator<<(std::ostream&s,cmp_cond type);
std::ostream& operator<<(std::ostream&s,fcmp_cond type);
std::ostream& operator<<(std::ostream&s,operand op);
#endif
