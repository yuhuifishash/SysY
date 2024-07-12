//DOING(): ValueHashTable
#include "hash_table.h"
#include <set>
#include <string>
#include <utility>

static std::map<LLVMType,std::string> TypeMap={{I32,"i32"},{FLOAT32,"float32"},
    {PTR,"ptr"},{VOID,"void"},{I8,"i8"},{I1,"i1"},{I64,"i64"},{DOUBLE,"double"}};
// enum LLVMType { I32 = 1, FLOAT32 = 2, PTR = 3, VOID = 4, I8 = 5, I1 = 6, I64 = 7, DOUBLE = 8 };
static std::map<LLVMIROpcode,std::string> OpcodeMap={{OTHER , "other"},{LOAD , "load"},{STORE , "store"},{ADD , "add"},{SUB , "sub"},
{ICMP , "icmp"},{PHI , "phi"},{ALLOCA , "alloca"},{MUL , "mul"},{DIV , "div"},{BR_COND , "br_cond"},{BR_UNCOND , "br_uncond"},{FADD , "fadd"},{FSUB , "fsub"},
{FMUL , "fmul"},{FDIV , "fdiv"},{FCMP , "fcmp"},{MOD , "mod"},{XOR , "xor"},{RET , "ret"},{ZEXT , "zext"},{SHL , "shl"},{FPTOSI , "fptosi"},
{GETELEMENTPTR , "getelementptr"},{CALL , "call"},{SITOFP , "sitofp"},{GLOBAL_VAR , "global_var"},{GLOBAL_STR , "global_str"},{LL_ADDMOD , "ll_addmod"},{UMIN , "umin"},
{UMAX , "umax"},{SMIN , "smin"},{SMAX , "smax"}};

static std::map<IcmpCond,std::string> IcmpCondMap={{eq,"eq"},{ne,"ne"},{ult,"ult"},
    {ule,"ule"},{slt,"slt"},{sle,"sle"}};

static std::map<FcmpCond,std::string> FcmpCondMap={{FALSE,"FALSE"},{OEQ,"OEQ"},{OLT,"OLT"},
    {OLE,"OLE"},{ONE,"ONE"},{ORD,"ORD"},{TRUE,"TRUE"}};

//add3 sub4 mul8 div9
//fadd12 fsub13 fmul14 fdiv15
//mod17 xor18
//add_mod30 umin31 umax32 smin33 smax34
//3,4,8,9,12,13,14,15,17,18,30,31,32,33,34
static std::set<int> ArithmeticSet={3,4,8,9,12,13,14,15,17,18,30,31,32,33,34};


int HashTable::lookupOrAdd(Instruction I){
    auto opcode_ = I->GetOpcode();
    switch (opcode_)
    {
    case STORE:
        return lookupOrAddStore(I);
        break;
    case ICMP:
        return lookupOrAddIcmp(I);
        break;
    case FCMP:
        return lookupOrAddFcmp(I);
        break;
    case CALL:
        return lookupOrAddCall(I);
        break;
    case GETELEMENTPTR:
        return lookupOrAddGep(I);
        break;
    case PHI:
        return lookupOrAddPhi(I);
        break;
    default:
        break;
    }
    if(ArithmeticSet.find(opcode_) != ArithmeticSet.end()){
        return lookupOrAddArithmetic(I);
    }
    return -1;
}

int HashTable::lookupOrAddReg(Operand op){
    if(op == nullptr){
        return -1;
    }
    auto opstr = op->GetFullName();
    if(valuemap.find(opstr) == valuemap.end()){
        valuemap[opstr] = expr_number++;
    }
    return valuemap[opstr];
}
// load
// Syntax: load <ty>, ptr <pointer>
int HashTable::lookupOrAddLoad(Instruction I){
    // auto LoadI = (LoadInstruction*)I;
    // auto ptrValue = lookupOrAddReg(LoadI->GetPointer());
    // std::string str = "load " + TypeMap[LoadI->GetDataType()] + ", ptr %v" + std::to_string(ptrValue);
    // if(valuemap.find(str) == valuemap.end()){
    //     valuemap[str] = expr_number++;
    // }
    return -1;
}

// store
// Syntax: store <ty> <value>, ptr<pointer>
int HashTable::lookupOrAddStore(Instruction I){
    auto StoreI = (StoreInstruction*)I;
    auto valueValue = lookupOrAddReg(StoreI->GetValue());
    auto ptrValue = lookupOrAddReg(StoreI->GetPointer());
    std::string str = "store " + TypeMap[StoreI->GetDataType()] + " %v" + std::to_string(valueValue) + ", ptr %v" + std::to_string(ptrValue);
    if(valuemap.find(str) == valuemap.end()){
        valuemap[str] = expr_number;
        stringmap[expr_number++] = str;
    }
    return valuemap[str];
}

//add <ty> <op1>,<op2>
//sub <ty> <op1>,<op2>
//mul <ty> <op1>,<op2>
//div <ty> <op1>,<op2>
//add_mod <ty> <op1>,<op2>,<op3>
//add3 sub4 mul8 div9
//fadd12 fsub13 fmul14 fdiv15
//mod17 xor18
//add_mod30 umin31 umax32 smin33 smax34
//3,4,8,9,12,13,14,15,17,18,30,31,32,33,34
static std::set<int> ArithmeticNeedSort = {3,8,12,14,18,30,31,32,33,34};
int HashTable::lookupOrAddArithmetic(Instruction I){
    auto ArithmeticI = (ArithmeticInstruction*)I;
    auto type_ = ArithmeticI->GetDataType();
    auto op1Value = lookupOrAddReg(ArithmeticI->GetOperand1());
    auto op2Value = lookupOrAddReg(ArithmeticI->GetOperand2());
    auto opcode_ = ArithmeticI->GetOpcode();
    int op3Value = -1;
    if(ArithmeticI->GetOperand3() != nullptr){
        op3Value = lookupOrAddReg(ArithmeticI->GetOperand3());
    }
    if(ArithmeticNeedSort.find((LLVMIROpcode)ArithmeticI->GetOpcode()) != ArithmeticNeedSort.end() 
        && op1Value > op2Value){
        std::swap(op1Value,op2Value);
    }
    std::string str;
    if (opcode_ == LL_ADDMOD) {
        str = "call i32 @___llvm_ll_add_mod(i32 %v" + std::to_string(op1Value) + ",i32 %v" + std::to_string(op2Value) + ",i32 %v" + std::to_string(op3Value) + ")";
    } else if (opcode_ == UMIN) {
        str = "call i32 @llvm.umin.i32(i32 %v" + std::to_string(op1Value) + ",i32 %v" + std::to_string(op2Value) + ")";
    } else if (opcode_ == UMAX) {
        str = "call i32 @llvm.umax.i32(i32 %v" + std::to_string(op1Value) + ",i32 %v" + std::to_string(op2Value) + ")";
    } else if (opcode_ == SMIN) {
        str = "call i32 @llvm.smin.i32(i32 %v" + std::to_string(op1Value) + ",i32 %v" + std::to_string(op2Value) + ")";
    } else if (opcode_ == SMAX) {
        str = " call i32 @llvm.smax.i32(i32 %v" + std::to_string(op1Value) + ",i32 %v" + std::to_string(op2Value) + ")";
    }else{
        str =  OpcodeMap[(LLVMIROpcode)opcode_] + " " + TypeMap[type_] + " %v" + std::to_string(op1Value) + ",%v" + std::to_string(op2Value);
    }
    
    if(valuemap.find(str) == valuemap.end()){
        valuemap[str] = expr_number;
        stringmap[expr_number++] = str;
    }
    return valuemap[str];
}

// icmp <cond> <ty> <op1>,<op2>
// eq = 1,     //: equal
// ne = 2,     //: not equal
// ugt = 3,    //: unsigned greater than
// uge = 4,    //: unsigned greater or equal
// ult = 5,    //: unsigned less than
// ule = 6,    //: unsigned less or equal
// sgt = 7,    //: signed greater than
// sge = 8,    //: signed greater or equal
// slt = 9,    //: signed less than
// sle = 10    //: signed less or equal

static std::map<int,int> IcmpNeedSortMap = {{3,6},{4,5},{7,10},{8,9}};
int HashTable::lookupOrAddIcmp(Instruction I){
    auto IcmpI = (IcmpInstruction*)I;
    auto opcode_ = IcmpI->GetOpcode();
    auto cond_ = IcmpI->GetCompareCondition();
    auto type_ = IcmpI->GetDataType();
    auto op1Value = lookupOrAddReg(IcmpI->GetOp1());
    auto op2Value = lookupOrAddReg(IcmpI->GetOp2());
    if(cond_ == 1||cond_ == 2){
        if(op1Value > op2Value){
            std::swap(op1Value,op2Value);
        }
        
    }else if(IcmpNeedSortMap.find(cond_) != IcmpNeedSortMap.end()){
        cond_ = (IcmpCond)IcmpNeedSortMap[cond_];
        std::swap(op1Value,op2Value);
    }
    std::string str = "icmp " + IcmpCondMap[cond_] + " " + TypeMap[type_] + " %v" + std::to_string(op1Value) + ",%v" + std::to_string(op2Value);

    
    if(valuemap.find(str) == valuemap.end()){
        valuemap[str] = expr_number;
        stringmap[expr_number++] = str;
    }
    return valuemap[str];
}

// fcmp <ty> <op1>,<op2>
// FALSE = 1,    //: no comparison, always returns false
// OEQ = 2,      // ordered and equal
// OGT = 3,      //: ordered and greater than
// OGE = 4,      //: ordered and greater than or equal
// OLT = 5,      //: ordered and less than
// OLE = 6,      //: ordered and less than or equal
// ONE = 7,      //: ordered and not equal
// ORD = 8,      //: ordered (no nans)
// TRUE = 16
static std::map<int,int> FcmpNeedSortMap = {{3,6},{4,5}};
int HashTable::lookupOrAddFcmp(Instruction I){
    auto FcmpI = (FcmpInstruction*)I;
    auto opcode_ = FcmpI->GetOpcode();
    auto cond_ = FcmpI->GetCompareCondition();
    auto type_ = FcmpI->GetDataType();
    auto op1Value = lookupOrAddReg(FcmpI->GetOp1());
    auto op2Value = lookupOrAddReg(FcmpI->GetOp2());
    if(cond_ == 2||cond_ == 7 || cond_ == 1 ||cond_ == 16){
        if(op1Value > op2Value){
            std::swap(op1Value,op2Value);
        }
        
    }else if(FcmpNeedSortMap.find(cond_) != FcmpNeedSortMap.end()){
        cond_ = (FcmpCond)FcmpNeedSortMap[cond_];
        std::swap(op1Value,op2Value);
    }
    std::string str = "fcmp " + FcmpCondMap[cond_] + " " + TypeMap[type_] + " %v" + std::to_string(op1Value) + ",%v" + std::to_string(op2Value);

    
    if(valuemap.find(str) == valuemap.end()){
        valuemap[str] = expr_number;
        stringmap[expr_number++] = str;
    }
    return valuemap[str];
}
int HashTable::lookupOrAddCall(Instruction I){
    auto CallI = (CallInstruction*)I;
    auto type_ = CallI->GetRetType();
    if(type_ == VOID){
        return -1;
    }
    auto ParamVec = CallI->GetParameterList();
    std::string str = "call " + TypeMap[type_] + " @" + CallI->GetFunctionName() + "(";
    for(auto [paramtype,op] : ParamVec){
        if(paramtype == PTR){
            return -1;
        }
        auto opValue = lookupOrAddReg(op);
        str += TypeMap[paramtype] + " %v" + std::to_string(opValue) + ",";
    }
    str += ")";

    if(valuemap.find(str) == valuemap.end()){
        valuemap[str] = expr_number;
        stringmap[expr_number++] = str;
    }
    return valuemap[str];
}
// getelementptr <ty>, <N x ptr> <ptrval>, [inrange] <vector index type> <idx>
int HashTable::lookupOrAddGep(Instruction I){
    auto GepI = (GetElementptrInstruction*)I;
    std::string str = "getelementptr ";
    auto dims_ = GepI->GetDims();
    if (dims_.empty())
        str += TypeMap[GepI->GetType()];
    else {
        for (int dim : dims_) {
            str += "[" + std::to_string(dim) + " x ";
        }
        str += TypeMap[GepI->GetType()] + std::string(dims_.size(), ']');
    }
    // auto valueValue = lookupOrAddReg(StoreI->GetValue());
    auto ptrValue = lookupOrAddReg(GepI->GetPtrVal());
    str += ", ptr %v" + std::to_string(ptrValue);
    for (Operand idx : GepI->GetIndexes())
        str += ", i32 %v" + std::to_string(lookupOrAddReg(idx));

    if(valuemap.find(str) == valuemap.end()){
        valuemap[str] = expr_number;
        stringmap[expr_number++] = str;
    }
    return valuemap[str];
}
// phi <ty> [val1,label1],[val2,label2],……
int HashTable::lookupOrAddPhi(Instruction I){
    auto PhiI = (PhiInstruction*)I;
    std::string str = "phi " + TypeMap[PhiI->GetDataType()] + " ";
    std::set<std::pair<int,Operand>> PairSet;
    auto phi_list = PhiI->GetPhiList();
    for (auto it = phi_list.begin(); it != phi_list.end(); ++it) {
        auto value_ = lookupOrAddReg(it->second);
        PairSet.insert(std::make_pair(value_, it->first));
    }
    for (auto it = PairSet.begin(); it != PairSet.end(); ++it) {
        str += "[%v" + std::to_string(it->first) + "," + it->second->GetFullName() + "]";
        auto jt = it;
        if ((++jt) != PairSet.end())
            str += ",";
    }

    if(valuemap.find(str) == valuemap.end()){
        valuemap[str] = expr_number;
        stringmap[expr_number++] = str;
    }
    return valuemap[str];
}