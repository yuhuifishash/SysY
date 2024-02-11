#ifndef INSTRUCTION_H
#define INSTRUCTION_H

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include "symtab.h"

// @Instriction types
enum LLVMIROpcode
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
    FPTOSI=24,
    GETELEMENTPTR=25,
    CALL=26,
    SITOFP=27
};

// @Operand datatypes 
enum LLVMType{I32 = 1,FLOAT32 = 2,PTR = 3,VOID = 4,I8 = 5, I1 = 6};

// @ <cond> in icmp Instruction 
enum IcmpCond
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

enum FcmpCond{
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
class AutoCounter{
    int curCount;
public:
    AutoCounter():curCount(0){}
    int GetCount(){return curCount;}
    void ResetCount(int val=0){curCount=val;}
    void Inc(){curCount++;}
};
class BasicOperand;
typedef BasicOperand* Operand;
// @operands in instruction 
class BasicOperand
{
public:
    enum operand_type{REG=1,IMMI32=2,IMMF32=3,GLOBAL=4,LABEL=5};
protected:
    operand_type operandType;
public:
    BasicOperand(){}
    operand_type GetOperandType(){return operandType;}
    virtual std::string GetFullName() = 0;
    virtual Operand CopyOperand() = 0;
};

// @register operand;%r+register No 
class RegOperand:public BasicOperand{
    int reg_no;
public:
    int GetRegNo(){return reg_no;}
    void ChangeRegNo(){if(reg_no >= 0){reg_no = -reg_no - 1;}}
    void SetRegNo(int new_no){reg_no = new_no;}

    static AutoCounter curRegNo;
    RegOperand(){
        this->operandType=REG;
        this->reg_no=curRegNo.GetCount();
        curRegNo.Inc();
    }
    RegOperand(int RegNo){
        this->operandType=REG;
        this->reg_no=RegNo;
    }
    virtual std::string GetFullName();
    virtual Operand CopyOperand();
};

// @integer32 immediate 
class ImmI32Operand:public BasicOperand{
    int immVal;
public:
    int GetIntImmVal(){return immVal;}

    ImmI32Operand(int immVal){
        this->operandType=IMMI32;
        this->immVal=immVal;
    }
    virtual std::string GetFullName();
    virtual Operand CopyOperand();
};

// @float32 immediate 
class ImmF32Operand:public BasicOperand{
    float immVal;
public:
    float GetFloatVal(){return immVal;}
    
    long long GetFloatByteVal();

    ImmF32Operand(float immVal){
        this->operandType=IMMF32;
        this->immVal=immVal;
    }
    virtual std::string GetFullName();
    virtual Operand CopyOperand();
};

// @label %L+label No 
class LabelOperand:public BasicOperand{
    int label_no;
public:
    int GetLabelNo(){return label_no;}
    void SetLabelNo(int label){label_no = label;}

    static AutoCounter curLabelNo;
    LabelOperand(){
        this->operandType=LABEL;
        this->label_no=curLabelNo.GetCount();
        curLabelNo.Inc();
    }
    LabelOperand(int LabelNo){
        this->operandType=LABEL;
        this->label_no=LabelNo;
    }
    virtual std::string GetFullName();
    virtual Operand CopyOperand();
};

// @global identifier @+name 
class GlobalOperand:public BasicOperand{
    std::string name;
public:
    std::string getName(){return name;}

    GlobalOperand(std::string gloName){
        this->operandType=GLOBAL;
        this->name=gloName;
    }
    virtual std::string GetFullName();
    virtual Operand CopyOperand();
};

class BasicInstruction;
typedef BasicInstruction* Instruction;
// @instruction 
class BasicInstruction
{
private:
    int BlockID;
protected:
    LLVMIROpcode opcode;
    int insNo;
public:

    int GetBlockID(){return BlockID;}
    void SetBlockID(int blockno){BlockID = blockno;}
    BasicInstruction(){
        opcode = OTHER;
        insNo=insNoCounter.GetCount();
        insNoCounter.Inc();
    }
    void SetInstructionNo(int new_no){insNo = new_no;}
    static AutoCounter insNoCounter;//instruction No counter
    int GetOpcode(){return opcode;}//one solution: convert to pointer of subclasses

    virtual void PrintIR(std::ostream& s) = 0;
    virtual int GetResultRegNo() = 0;
    virtual Operand GetResultReg() = 0;
    virtual void ReplaceByMap(const std::map<int,int>&Rule) = 0;
    virtual std::vector<Operand> GetNonResultOperands() = 0;
    virtual void SetNonResultOperands(std::vector<Operand> ops) = 0;
    virtual Instruction CopyInstruction() = 0;
    virtual int IsFuncDef(){return 0;}

    
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map) = 0;
};

//load
//Syntax: <result>=load <ty>, ptr <pointer>
class LoadInstruction : public BasicInstruction
{
    enum LLVMType type;
    Operand pointer;
    Operand result;
public:
    enum LLVMType GetDataType(){return type;}
    Operand GetPointer(){return pointer;}
    Operand GetResultOperand(){return result;}

    LoadInstruction(enum LLVMType type,Operand pointer,Operand result){
        opcode=LLVMIROpcode::LOAD;
        this->type=type;
        this->result=result;
        this->pointer=pointer;
    }
    void PrintIR(std::ostream& s);
    int GetResultRegNo(){return ((RegOperand*)result)->GetRegNo();}
    int GetUseRegNo(){return ((RegOperand*)pointer)->GetRegNo();}
    Operand GetResultReg(){return result;}
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map);
};

//store
//Syntax: store <ty> <value>, ptr<pointer>
class StoreInstruction : public BasicInstruction
{
    enum LLVMType type;
    Operand pointer;
    Operand value;
public:
    enum LLVMType GetDataType(){return type;}
    Operand GetPointer(){return pointer;}
    Operand GetValue(){return value;}

    StoreInstruction(enum LLVMType type,Operand pointer,Operand value){
        opcode=LLVMIROpcode::STORE;
        this->type=type;
        this->pointer=pointer;
        this->value=value;
    }
    virtual void PrintIR(std::ostream& s);
    int GetResultRegNo(){return -1;}
    Operand GetResultReg(){return nullptr;}
    int GetDefRegNo(){return ((RegOperand*)pointer)->GetRegNo();}
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map);
};

//<result>=add <ty> <op1>,<op2>
//<result>=sub <ty> <op1>,<op2>
//<result>=mul <ty> <op1>,<op2>
//<result>=div <ty> <op1>,<op2>
class ArithmeticInstruction : public BasicInstruction
{
    enum LLVMType type;
    Operand op1;
    Operand op2;
    Operand result;
public:
    enum LLVMType GetDataType(){return type;}
    Operand GetOperand1(){return op1;}
    Operand GetOperand2(){return op2;}
    Operand GetResultOperand(){return result;}
    Operand GetResultReg(){return result;}
    ArithmeticInstruction(LLVMIROpcode opcode,enum LLVMType type,Operand op1,Operand op2,Operand result){
        this->opcode=opcode;
        this->op1=op1;
        this->op2=op2;
        this->result=result;
        this->type=type;
    }
    virtual void PrintIR(std::ostream& s);
    int GetResultRegNo(){return ((RegOperand*)result)->GetRegNo();}
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map);
};

//<result>=icmp <cond> <ty> <op1>,<op2>
class IcmpInstruction : public BasicInstruction
{
    enum LLVMType type;
    Operand op1;
    Operand op2;
    IcmpCond cond;
    Operand result;
public:
    enum LLVMType getDataType(){return type;}
    Operand getOp1(){return op1;}
    Operand getOp2(){return op2;}
    IcmpCond getCompareCondition(){return cond;}
    Operand getResult(){return result;}

    IcmpInstruction(enum LLVMType type,Operand op1,Operand op2,IcmpCond cond,Operand result){
        this->opcode=LLVMIROpcode::ICMP;
        this->type=type;
        this->op1=op1;
        this->op2=op2;
        this->cond=cond;
        this->result=result;
    }
    virtual void PrintIR(std::ostream& s);
    int GetResultRegNo(){return ((RegOperand*)result)->GetRegNo();}
    Operand GetResultReg(){return result;}
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map);
};

//<result>=fadd <ty> <op1>,<op2>
class FcmpInstruction : public BasicInstruction
{
    enum LLVMType type;
    Operand op1;
    Operand op2;
    FcmpCond cond;
    Operand result;
public:
    enum LLVMType getDataType(){return type;}
    Operand getOp1(){return op1;}
    Operand getOp2(){return op2;}
    FcmpCond getCompareCondition(){return cond;}
    Operand getResult(){return result;}

    FcmpInstruction(enum LLVMType type,Operand op1,Operand op2,FcmpCond cond,Operand result){
        this->opcode=LLVMIROpcode::FCMP;
        this->type=type;
        this->op1=op1;
        this->op2=op2;
        this->cond=cond;
        this->result=result;
    }
    virtual void PrintIR(std::ostream& s);
    int GetResultRegNo(){return ((RegOperand*)result)->GetRegNo();}
    Operand GetResultReg(){return result;}
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map);
};

//phi syntax:
//<result>=phi <ty> [val1,label1],[val2,label2],……
class PhiInstruction : public BasicInstruction
{
private: 
    enum LLVMType type; 
    Operand result; 
    // std::map<operand,operand>val_labels;
    std::vector<std::pair<Operand,Operand> >val_labels;
public:
    enum LLVMType GetDataType(){return type;}
    Operand GetResultOp(){return result;}
    decltype(val_labels)& getPhiList(){return val_labels;}
    Operand GetResultReg(){return result;}
    PhiInstruction(enum LLVMType type,Operand result,decltype(val_labels) val_labels){
        this->opcode=LLVMIROpcode::PHI;
        this->type=type;
        this->result=result;
        this->val_labels=val_labels;
    }
    PhiInstruction(enum LLVMType type,Operand result){
        this->opcode=LLVMIROpcode::PHI;
        this->type=type;
        this->result=result;
    }
    void Insert_phi(Operand val,Operand label){val_labels.push_back(std::make_pair(label,val));}
    virtual void PrintIR(std::ostream& s);
    int GetResultRegNo(){return ((RegOperand*)result)->GetRegNo();}

    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map){return 0;}
};

//alloca
//usage 1: <result>=alloca <type>
//usage 2: %3 = alloca [20 x [20 x i32]]
class AllocaInstruction:public BasicInstruction
{
    enum LLVMType type;
    Operand result;
    std::vector<int>dims;
public:
    enum LLVMType GetDataType(){return type;}
    Operand GetResultOp(){return result;}
    std::vector<int>GetDims(){return dims;}
    Operand GetResultReg(){return result;}
    AllocaInstruction(enum LLVMType dttype,Operand result){
        this->opcode=LLVMIROpcode::ALLOCA;
        this->type=dttype;
        this->result=result;
    }
    AllocaInstruction(enum LLVMType dttype,std::vector<int>ArrDims,Operand result){
        this->opcode=LLVMIROpcode::ALLOCA;
        this->type=dttype;
        this->result=result;
        dims=ArrDims;
    }
    virtual void PrintIR(std::ostream& s);
    int GetResultRegNo(){return ((RegOperand*)result)->GetRegNo();}
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands(){return std::vector<Operand>{};}
    void SetNonResultOperands(std::vector<Operand> ops){}
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map){return 0;}
};

//Conditional branch
//Syntax:
//br i1 <cond>, label <iftrue>, label <iffalse>
class BrCondInstruction:public BasicInstruction{
    Operand cond;
    Operand trueLabel;
    Operand falseLabel;
public:
    Operand getCond(){return cond;}
    Operand getTrueLabel(){return trueLabel;}
    Operand getFalseLabel(){return falseLabel;}
    Operand GetResultReg(){return NULL;}
    BrCondInstruction(Operand cond,Operand trueLabel,Operand falseLabel){
        this->opcode=BR_COND;
        this->cond=cond;
        this->trueLabel=trueLabel;
        this->falseLabel=falseLabel;
    }

    virtual void PrintIR(std::ostream& s);
    int GetResultRegNo(){return -1;}
    void SetCond(Operand r1){cond = r1;}
    void SetTrueLabel(Operand l1){trueLabel = l1;}
    void SetFalseLabel(Operand l1){falseLabel = l1;}

    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map){return 0;}
};

//Unconditional branch
//Syntax:
//br label <dest>
class BrUncondInstruction:public BasicInstruction{
    Operand destLabel;
public:
    Operand GetDestLabel(){return destLabel;}
    Operand GetResultReg(){return nullptr;}
    BrUncondInstruction(Operand destLabel){
        this->opcode=BR_UNCOND;
        this->destLabel=destLabel;
    }
    virtual void PrintIR(std::ostream& s);
    int GetResultRegNo(){return -1;}
    int GetTarget(){return ((LabelOperand*)destLabel)->GetLabelNo();}
    void SetTarget(Operand l1){destLabel = l1;}

    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands(){return std::vector<Operand>{};}
    void SetNonResultOperands(std::vector<Operand> ops){}
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map){return 0;}
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
class GlobalVarDefineInstruction:public BasicInstruction{
//Datas About the Instruction
public:
    //Construction Function:Set All datas
    //Getters
    enum LLVMType type;
    std::string name;
    Operand init_val;
    VarAttribute arval;
    GlobalVarDefineInstruction(std::string nam,enum LLVMType typ,Operand i_val)
    :name(nam),type(typ),init_val(i_val){}
    GlobalVarDefineInstruction(std::string nam,enum LLVMType typ,VarAttribute v)
    :name(nam),type(typ),arval(v),init_val{nullptr}{}
    virtual void PrintIR(std::ostream& s);
    int GetResultRegNo(){return -1;}

    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands(){return std::vector<Operand>{};}
    Operand GetResultReg(){return NULL;}
    void SetNonResultOperands(std::vector<Operand> ops){}
    virtual Instruction CopyInstruction(){return nullptr;}
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map){return 0;}
};

class GlobalStringConstInstruction:public BasicInstruction{
public:
    std::string str_val;
    std::string str_name;
    GlobalStringConstInstruction(std::string strval,std::string strname)
    :str_val(strval),str_name(strname){}

    virtual void PrintIR(std::ostream& s);
    int GetResultRegNo(){return -1;}

    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands(){return std::vector<Operand>();}
    Operand GetResultReg(){return NULL;}
    void SetNonResultOperands(std::vector<Operand> ops){}
    virtual Instruction CopyInstruction(){return nullptr;}
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map){return 0;}
};

/*
Call Instruction Syntax
Example 1:
    %12 = call i32 (ptr, ...)@printf(ptr @.str,i32 %11)
Example 2:
    call void @DFS(i32 0,i32 %4)
*/
class CallInstruction:public BasicInstruction{
//Datas About the Instruction
private:
    enum LLVMType ret_type;
    Operand result;//result can be null
    std::string name;
    std::vector<std::pair<enum LLVMType,Operand> > args;
public:
    //Construction Function:Set All datas
    CallInstruction(enum LLVMType retType,Operand res,std::string FuncName,std::vector<std::pair<enum LLVMType,Operand> >arguments):
    ret_type(retType),result(res),name(FuncName),args(arguments)
    {
        this->opcode = CALL;
        if(res != NULL && res->GetOperandType() == BasicOperand::REG){
            if(((RegOperand*)res)->GetRegNo()==-1){
                result = NULL;
            }
        }
    }
    CallInstruction(enum LLVMType retType,Operand res,std::string FuncName):
    ret_type(retType),result(res),name(FuncName)
    {
        this->opcode = CALL;
        if(res != NULL && res->GetOperandType() == BasicOperand::REG){
            if(((RegOperand*)res)->GetRegNo()==-1){
                result = NULL;
            }
        }
    }

    //Getters
    enum LLVMType GetRetType(){return ret_type;}
    Operand GetResult(){return result;}
    Operand GetResultReg(){return result;}
    std::string GetFunctionName(){return name;}
    std::vector<std::pair<enum LLVMType,Operand> > get_parameterList(){return args;}
    void push_back_Parameter(std::pair<enum LLVMType,Operand> newPara){args.push_back(newPara);}
    void push_back_Parameter(enum LLVMType type,Operand val){args.push_back(std::make_pair(type,val));}

    virtual void PrintIR(std::ostream& s);
    int GetResultRegNo();
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map);
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
class RetInstruction:public BasicInstruction{
//Datas About the Instruction
private:
    enum LLVMType ret_type;
    Operand ret_val;
public:
    //Construction Function:Set All datas
    RetInstruction(enum LLVMType retType,Operand res):ret_type(retType),ret_val(res){
        this->opcode=RET;
    }
    Operand GetResultReg(){return NULL;}
    //Getters
    enum LLVMType GetType(){return ret_type;}
    Operand GetResult(){return ret_val;}

    virtual void PrintIR(std::ostream& s);
    int GetResultRegNo(){return -1;}
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map){return 0;}
};

/*
Syntax:
<result> = getelementptr <ty>, ptr <ptrval>{, [inrange] <ty> <idx>}*
<result> = getelementptr inbounds <ty>, ptr <ptrval>{, [inrange] <ty> <idx>}*
<result> = getelementptr <ty>, <N x ptr> <ptrval>, [inrange] <vector index type> <idx>
*/
class GetElementprtInstruction:public BasicInstruction{
private:
    enum LLVMType type;
    Operand result;
    Operand ptrval;

    std::vector<int>dims;
    std::vector<Operand>indexes;
public:
    GetElementprtInstruction(enum LLVMType typ,Operand res,Operand ptr):type(typ),result(res),ptrval(ptr){
        opcode = GETELEMENTPTR;
    }
    GetElementprtInstruction(enum LLVMType typ,Operand res,Operand ptr,std::vector<int>dim)
    :type(typ),result(res),ptrval(ptr),dims(dim){
        opcode = GETELEMENTPTR;
    }
    GetElementprtInstruction(enum LLVMType typ,Operand res,Operand ptr,std::vector<int>dim,std::vector<Operand> index)
    :type(typ),result(res),ptrval(ptr),dims(dim),indexes(index){
        opcode = GETELEMENTPTR;
    }
    //get_elementptr_Instruction(enum llvm_type typ,operand res,operand ptr,std::vector<int>dim,std::vector<int>idx):type(typ),result(res),ptrval(ptr),dims(dim),indexes(idx){}
    void push_dim(int d){dims.push_back(d);}
    void push_idx_reg(int idx_reg_no){indexes.push_back(new RegOperand(idx_reg_no));}
    void push_idx_imm32(int imm_idx){indexes.push_back(new ImmI32Operand(imm_idx));}
    void push_index(Operand idx){indexes.push_back(idx);}

    Operand GetResultReg(){return result;}
    enum LLVMType GetType(){return type;}
    Operand GetResult(){return result;}
    Operand GetPtrVal(){return ptrval;}
    std::vector<int> GetDims(){return dims;}
    std::vector<Operand> GetIndexes(){return indexes;}

    void PrintIR(std::ostream& s);
    int GetResultRegNo(){return ((RegOperand*)result)->GetRegNo();}
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map);
};

class FunctionDefineInstruction:public BasicInstruction{
private:
    enum LLVMType return_type;
    std::string Func_name;
public:
    std::vector<enum LLVMType> formals;
    std::vector<Operand> formals_reg;
    Operand GetResultReg(){return NULL;}
    FunctionDefineInstruction(enum LLVMType t,std::string n){
        return_type = t;
        Func_name = n;
    }
    void InsertFormal(enum LLVMType t);
    int GetFormalSize(){return formals.size();}
    enum LLVMType GetReturnType(){return return_type;}
    std::string GetFunctionName(){return Func_name;}

    void PrintIR(std::ostream &s);
    int GetResultRegNo(){return -1;}
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops){}
    virtual Instruction CopyInstruction(){return nullptr;}
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map){return 0;}
    virtual int IsFuncDef(){return 1;}
};
typedef FunctionDefineInstruction* FuncDefInstruction;

class FunctionDeclareInstruction:public BasicInstruction{
private:
    enum LLVMType return_type;
    std::string Func_name;
public:
    Operand GetResultReg(){return NULL;}
    std::vector<enum LLVMType> formals;
    FunctionDeclareInstruction(enum LLVMType t,std::string n){
        return_type = t;
        Func_name = n;
    }
    void InsertFormal(enum LLVMType t){formals.push_back(t);}
    enum LLVMType GetReturnType(){return return_type;}
    std::string GetFunctionName(){return Func_name;}

    void PrintIR(std::ostream &s);
    int GetResultRegNo(){return -1;}
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops){}
    virtual Instruction CopyInstruction(){return nullptr;}
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map){return 0;}
};

class FptosiInstruction:public BasicInstruction{
private:
    Operand result;
    Operand value;
public:
    FptosiInstruction(Operand result_receiver,Operand value_for_cast)
        :result(result_receiver),
        value(value_for_cast){
            this->opcode = FPTOSI;
        }
    Operand GetResultReg(){return result;}
    void PrintIR(std::ostream& s);
    int GetResultRegNo(){return ((RegOperand*)result)->GetRegNo();}
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map);
};

class SitofpInstruction:public BasicInstruction{
private:
    Operand result;
    Operand value;
public:
    SitofpInstruction(Operand result_receiver,Operand value_for_cast)
        :result(result_receiver),
        value(value_for_cast){
            this->opcode = SITOFP;
        }
    Operand GetResultReg(){return result;}
    void PrintIR(std::ostream& s);
    int GetResultRegNo(){return ((RegOperand*)result)->GetRegNo();}
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map);
};

class ZextInstruction:public BasicInstruction{
private:
    LLVMType from_type;
    LLVMType to_type;
    Operand result;
    Operand value;
public:
    Operand GetResultReg(){return result;}
    Operand GetSrc(){return value;}
    Operand GetDst(){return result;}
    ZextInstruction(LLVMType to_type,Operand result_receiver,
                    LLVMType from_type,Operand value_for_cast)
        :to_type(to_type),
        result(result_receiver),
        from_type(from_type),
        value(value_for_cast){
            this->opcode = ZEXT;
        }
    void PrintIR(std::ostream& s);
    int GetResultRegNo(){return ((RegOperand*)result)->GetRegNo();}
    void ReplaceByMap(const std::map<int,int>&Rule);
    std::vector<Operand> GetNonResultOperands();
    void SetNonResultOperands(std::vector<Operand> ops);
    virtual Instruction CopyInstruction();
    virtual int ConstPropagate(std::map<int,Instruction>& regresult_map);
};

std::ostream& operator<<(std::ostream&s,LLVMType type);
std::ostream& operator<<(std::ostream&s,LLVMIROpcode type);
std::ostream& operator<<(std::ostream&s,IcmpCond type);
std::ostream& operator<<(std::ostream&s,FcmpCond type);
std::ostream& operator<<(std::ostream&s,Operand op);
#endif
