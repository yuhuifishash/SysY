#include "type.h"
#include "Instruction.h"
#include "basic_block.h"
#include "tree.h"
#include <assert.h>
/*
-------------------------------------------------------------
|                         Semant                             |
-------------------------------------------------------------
*/

extern std::vector<std::string> error_msgs;


//binary 
NodeAttribute BinaryAddInt(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::INT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.IntVal = a.V.val.IntVal + b.V.val.IntVal;
    }
    return result;
}

NodeAttribute BinarySubInt(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::INT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.IntVal = a.V.val.IntVal - b.V.val.IntVal;
    }
    return result;
}

NodeAttribute BinaryMulInt(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::INT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.IntVal = a.V.val.IntVal * b.V.val.IntVal;
    }
    return result;
}

NodeAttribute BinaryDivInt(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::INT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.IntVal = a.V.val.IntVal / b.V.val.IntVal;
    }
    return result;
}

NodeAttribute BinaryModInt(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::INT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.IntVal = a.V.val.IntVal % b.V.val.IntVal;
    }
    return result;
}

NodeAttribute BinaryGeqInt(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal >= b.V.val.IntVal;
    }
    return result;
}

NodeAttribute BinaryGtInt(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal > b.V.val.IntVal;
    }
    return result;
}

NodeAttribute BinaryLeqInt(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal <= b.V.val.IntVal;
    }
    return result;
}

NodeAttribute BinaryLtInt(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal < b.V.val.IntVal;
    }
    return result;
}

NodeAttribute BinaryEqInt(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal == b.V.val.IntVal;
    }
    return result;
}

NodeAttribute BinaryNeInt(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal != b.V.val.IntVal;
    }
    return result;
}

NodeAttribute BinaryOrInt(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal || b.V.val.IntVal;
    }
    return result;
}


NodeAttribute BinaryAndInt(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal && b.V.val.IntVal;
    }
    return result;
}


NodeAttribute (*BinaryCalculatedInt[15])(NodeAttribute a,NodeAttribute b)={
    [NodeAttribute::ADD] = BinaryAddInt,
    [NodeAttribute::SUB] = BinarySubInt,
    [NodeAttribute::MUL] = BinaryMulInt,
    [NodeAttribute::DIV] = BinaryDivInt,
    [NodeAttribute::MOD] = BinaryModInt,
    [NodeAttribute::GEQ] = BinaryGeqInt,
    [NodeAttribute::GT]  = BinaryGtInt,
    [NodeAttribute::LEQ] = BinaryLeqInt,
    [NodeAttribute::LT]  = BinaryLtInt,
    [NodeAttribute::EQ]  = BinaryEqInt,
    [NodeAttribute::NE]  = BinaryNeInt,
    [NodeAttribute::OR]  = BinaryOrInt,
    [NodeAttribute::AND] = BinaryAndInt,
};






NodeAttribute BinaryAddFloat(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::FLOAT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.FloatVal = a.V.val.FloatVal + b.V.val.FloatVal;
    }
    return result;
}

NodeAttribute BinarySubFloat(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::FLOAT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.FloatVal = a.V.val.FloatVal - b.V.val.FloatVal;
    }
    return result;
}

NodeAttribute BinaryMulFloat(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::FLOAT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.FloatVal = a.V.val.FloatVal * b.V.val.FloatVal;
    }
    return result;
}

NodeAttribute BinaryDivFloat(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::FLOAT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.FloatVal = a.V.val.FloatVal / b.V.val.FloatVal;
    }
    return result;
}

NodeAttribute BinaryModFloat(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::VOID;
    result.V.ConstTag = 0;

    error_msgs.push_back("mod on float type in line " + std::to_string(a.line_number) + "\n");

    return result;
}

NodeAttribute BinaryGeqFloat(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal >= b.V.val.FloatVal;
    }
    return result;
}

NodeAttribute BinaryGtFloat(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal > b.V.val.FloatVal;
    }
    return result;
}

NodeAttribute BinaryLeqFloat(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal <= b.V.val.FloatVal;
    }
    return result;
}

NodeAttribute BinaryLtFloat(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal < b.V.val.FloatVal;
    }
    return result;
}

NodeAttribute BinaryEqFloat(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal == b.V.val.FloatVal;
    }
    return result;
}

NodeAttribute BinaryNeFloat(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal != b.V.val.FloatVal;
    }
    return result;
}

NodeAttribute BinaryOrFloat(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal || b.V.val.FloatVal;
    }
    return result;
}

NodeAttribute BinaryAndFloat(NodeAttribute a,NodeAttribute b)
{
    NodeAttribute result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal && b.V.val.FloatVal;
    }
    return result;
}


NodeAttribute (*BinaryCalculatedFloat[15])(NodeAttribute a,NodeAttribute b)={
    [NodeAttribute::ADD] = BinaryAddFloat,
    [NodeAttribute::SUB] = BinarySubFloat,
    [NodeAttribute::MUL] = BinaryMulFloat,
    [NodeAttribute::DIV] = BinaryDivFloat,
    [NodeAttribute::MOD] = BinaryModFloat,
    [NodeAttribute::GEQ] = BinaryGeqFloat,
    [NodeAttribute::GT]  = BinaryGtFloat,
    [NodeAttribute::LEQ] = BinaryLeqFloat,
    [NodeAttribute::LT]  = BinaryLtFloat,
    [NodeAttribute::EQ]  = BinaryEqFloat,
    [NodeAttribute::NE]  = BinaryNeFloat,
    [NodeAttribute::OR]  = BinaryOrFloat,
    [NodeAttribute::AND] = BinaryAndFloat,
};





NodeAttribute SemantIntInt(NodeAttribute a,NodeAttribute b,NodeAttribute::opcode opcode)
{
    return BinaryCalculatedInt[opcode](a,b);
}

NodeAttribute SemantIntFloat(NodeAttribute a,NodeAttribute b,NodeAttribute::opcode opcode)
{
    NodeAttribute tmp_a = a;
    tmp_a.T.type = Type::FLOAT;
    tmp_a.V.val.FloatVal = (float)tmp_a.V.val.IntVal; 
    return BinaryCalculatedFloat[opcode](tmp_a,b);
}

NodeAttribute SemantFloatInt(NodeAttribute a,NodeAttribute b,NodeAttribute::opcode opcode)
{
    NodeAttribute tmp_b = b;
    tmp_b.T.type = Type::FLOAT;
    tmp_b.V.val.FloatVal = (float)tmp_b.V.val.IntVal; 
    return BinaryCalculatedFloat[opcode](a,tmp_b);
}

NodeAttribute SemantFloatFloat(NodeAttribute a,NodeAttribute b,NodeAttribute::opcode opcode)
{
    return BinaryCalculatedFloat[opcode](a,b);
}

NodeAttribute SemantBoolBool(NodeAttribute a,NodeAttribute b,NodeAttribute::opcode opcode)
{
    NodeAttribute tmp_a = a,tmp_b = b;
    tmp_a.T.type = Type::INT;
    tmp_b.T.type = Type::INT;
    tmp_a.V.val.IntVal = tmp_a.V.val.BoolVal;
    tmp_b.V.val.IntVal = tmp_b.V.val.BoolVal;
    return BinaryCalculatedInt[opcode](tmp_a,tmp_b);
}

NodeAttribute SemantError(NodeAttribute a,NodeAttribute b,NodeAttribute::opcode opcode)
{
    error_msgs.push_back("invalid operators in line " + std::to_string(a.line_number) + "\n");
    NodeAttribute result;
    result.T.type = Type::VOID;
    result.V.ConstTag = 0;
    return result;
}

NodeAttribute (*SemantBinaryNode[5][5])(NodeAttribute a,NodeAttribute b,NodeAttribute::opcode opcode)={
    [Type::INT][Type::INT] = SemantIntInt,
    [Type::INT][Type::FLOAT] = SemantIntFloat,
    [Type::INT][Type::BOOL] = SemantError,
    [Type::INT][Type::PTR] = SemantError,
    [Type::INT][Type::VOID] = SemantError,
    [Type::FLOAT][Type::INT] = SemantFloatInt,
    [Type::FLOAT][Type::FLOAT] = SemantFloatFloat,
    [Type::FLOAT][Type::BOOL] = SemantError,
    [Type::FLOAT][Type::PTR] = SemantError,
    [Type::FLOAT][Type::VOID] = SemantError,
    [Type::BOOL][Type::INT] = SemantError,
    [Type::BOOL][Type::FLOAT] = SemantError,
    [Type::BOOL][Type::BOOL] = SemantBoolBool,
    [Type::BOOL][Type::PTR] = SemantError,
    [Type::BOOL][Type::VOID] = SemantError,
    [Type::PTR][Type::INT] = SemantError,
    [Type::PTR][Type::FLOAT] = SemantError,
    [Type::PTR][Type::BOOL] = SemantError,
    [Type::PTR][Type::PTR] = SemantError,
    [Type::PTR][Type::VOID] = SemantError,
    [Type::VOID][Type::INT] = SemantError,
    [Type::VOID][Type::FLOAT] = SemantError,
    [Type::VOID][Type::BOOL] = SemantError,
    [Type::VOID][Type::PTR] = SemantError,
    [Type::VOID][Type::VOID] = SemantError,
};


//single
NodeAttribute SingleAddInt(NodeAttribute a)
{

}

NodeAttribute SingleSubInt(NodeAttribute a)
{

}

NodeAttribute SingleNotInt(NodeAttribute a)
{

}

NodeAttribute (*SingleCalculatedInt[15])(NodeAttribute a)={
    [NodeAttribute::ADD] = SingleAddInt,
    [NodeAttribute::SUB] = SingleSubInt,
    [NodeAttribute::NOT] = SingleNotInt,
};




NodeAttribute SingleAddFloat(NodeAttribute a)
{

}

NodeAttribute SingleSubFloat(NodeAttribute a)
{

}

NodeAttribute SingleNotFloat(NodeAttribute a)
{

}

NodeAttribute (*SingleCalculatedFloat[15])(NodeAttribute a)={
    [NodeAttribute::ADD] = SingleAddFloat,
    [NodeAttribute::SUB] = SingleSubFloat,
    [NodeAttribute::NOT] = SingleNotFloat,
};




NodeAttribute SemantInt(NodeAttribute a,NodeAttribute::opcode opcode)
{

}

NodeAttribute SemantFloat(NodeAttribute a,NodeAttribute::opcode opcode)
{

}

NodeAttribute SemantError(NodeAttribute a,NodeAttribute::opcode opcode)
{
    error_msgs.push_back("invalid operators in line " + std::to_string(a.line_number) + "\n");
    NodeAttribute result;
    result.T.type = Type::VOID;
    result.V.ConstTag = 0;
    return result;
}

NodeAttribute (*SemantSingleNode[5])(NodeAttribute a,NodeAttribute::opcode opcode)={
    [Type::INT] = SemantInt,
    [Type::FLOAT] = SemantFloat,
    [Type::BOOL] = SemantError,
    [Type::PTR] = SemantError,
    [Type::VOID] = SemantError,
    
};



/*
-------------------------------------------------------------
|                         IRgen                             |
-------------------------------------------------------------
*/

extern int max_reg;

Instruction IRgenArithmeticI32(LLVMBlock B,LLVMIROpcode opcode,int reg1,int reg2,int result_reg);
Instruction IRgenArithmeticF32(LLVMBlock B,LLVMIROpcode opcode,int reg1,int reg2,int result_reg);
Instruction IRgenIcmp(LLVMBlock B,IcmpCond cmp_op,int reg1,int reg2,int result_reg);
Instruction IRgenFcmp(LLVMBlock B,IcmpCond cmp_op,int reg1,int reg2,int result_reg);
Instruction IRgenFptosi(LLVMBlock B,int src,int dst);
Instruction IRgenSitofp(LLVMBlock B,int src,int dst);
Instruction IRgenZext(LLVMBlock B,int src,int dst);


//binary
void BinaryAddIRInt(LLVMBlock B,int reg1,int reg2)
{
    IRgenArithmeticI32(B,LLVMIROpcode::ADD,reg1,reg2,++max_reg);
}

void BinarySubIRInt(LLVMBlock B,int reg1,int reg2)
{
    IRgenArithmeticI32(B,LLVMIROpcode::SUB,reg1,reg2,++max_reg);
}

void BinaryMulIRInt(LLVMBlock B,int reg1,int reg2)
{
    IRgenArithmeticI32(B,LLVMIROpcode::MUL,reg1,reg2,++max_reg);
}

void BinaryDivIRInt(LLVMBlock B,int reg1,int reg2)
{
    IRgenArithmeticI32(B,LLVMIROpcode::DIV,reg1,reg2,++max_reg);
}

void BinaryModIRInt(LLVMBlock B,int reg1,int reg2)
{
    IRgenArithmeticI32(B,LLVMIROpcode::MOD,reg1,reg2,++max_reg);
}

void BinaryGeqIRInt(LLVMBlock B,int reg1,int reg2)
{
    
}

void BinaryGtIRInt(LLVMBlock B,int reg1,int reg2)
{

}

void BinaryLeqIRInt(LLVMBlock B,int reg1,int reg2)
{

}

void BinaryLtIRInt(LLVMBlock B,int reg1,int reg2)
{

}

void BinaryEqIRInt(LLVMBlock B,int reg1,int reg2)
{

}

void BinaryNeIRInt(LLVMBlock B,int reg1,int reg2)
{

}


void (*BinaryIRgenInt[15])(LLVMBlock B,int reg1,int reg2)={
    [NodeAttribute::ADD] = BinaryAddIRInt,
    [NodeAttribute::SUB] = BinarySubIRInt,
    [NodeAttribute::MUL] = BinaryMulIRInt,
    [NodeAttribute::DIV] = BinaryDivIRInt,
    [NodeAttribute::MOD] = BinaryModIRInt,
    [NodeAttribute::GEQ] = BinaryGeqIRInt,
    [NodeAttribute::GT]  = BinaryGtIRInt,
    [NodeAttribute::LEQ] = BinaryLeqIRInt,
    [NodeAttribute::LT]  = BinaryLtIRInt,
    [NodeAttribute::EQ]  = BinaryEqIRInt,
    [NodeAttribute::NE]  = BinaryNeIRInt,
};






void BinaryAddIRFloat(LLVMBlock B,int reg1,int reg2)
{

}

void BinarySubIRFloat(LLVMBlock B,int reg1,int reg2)
{

}

void BinaryMulIRFloat(LLVMBlock B,int reg1,int reg2)
{

}

void BinaryDivIRFloat(LLVMBlock B,int reg1,int reg2)
{

}

void BinaryModIRFloat(LLVMBlock B,int reg1,int reg2)
{
    assert(false);
}

void BinaryGeqIRFloat(LLVMBlock B,int reg1,int reg2)
{

}

void BinaryGtIRFloat(LLVMBlock B,int reg1,int reg2)
{

}

void BinaryLeqIRFloat(LLVMBlock B,int reg1,int reg2)
{

}

void BinaryLtIRFloat(LLVMBlock B,int reg1,int reg2)
{

}

void BinaryEqIRFloat(LLVMBlock B,int reg1,int reg2)
{

}

void BinaryNeIRFloat(LLVMBlock B,int reg1,int reg2)
{
    
}


void (*BinaryIRgenFloat[15])(LLVMBlock B,int reg1,int reg2)={
    [NodeAttribute::ADD] = BinaryAddIRFloat,
    [NodeAttribute::SUB] = BinarySubIRFloat,
    [NodeAttribute::MUL] = BinaryMulIRFloat,
    [NodeAttribute::DIV] = BinaryDivIRFloat,
    [NodeAttribute::MOD] = BinaryModIRFloat,
    [NodeAttribute::GEQ] = BinaryGeqIRFloat,
    [NodeAttribute::GT]  = BinaryGtIRFloat,
    [NodeAttribute::LEQ] = BinaryLeqIRFloat,
    [NodeAttribute::LT]  = BinaryLtIRFloat,
    [NodeAttribute::EQ]  = BinaryEqIRFloat,
    [NodeAttribute::NE]  = BinaryNeIRFloat,
};


void IRgenIntInt(tree_node* a,tree_node* b,NodeAttribute::opcode opcode,LLVMBlock B)
{
    a->codeIR();
    int reg1 = max_reg;

    b->codeIR();
    int reg2 = max_reg;

    BinaryIRgenInt[opcode](B,reg1,reg2);
}

void IRgenIntFloat(tree_node* a,tree_node* b,NodeAttribute::opcode opcode,LLVMBlock B)
{
    a->codeIR();
    int reg1 = max_reg;

    b->codeIR();
    int reg2 = max_reg;

    ++max_reg;
    IRgenSitofp(B,reg1,max_reg);//a int->float
    reg1 = max_reg;

    BinaryIRgenFloat[opcode](B,reg1,reg2);
}

void IRgenFloatInt(tree_node* a,tree_node* b,NodeAttribute::opcode opcode,LLVMBlock B)
{
    a->codeIR();
    int reg1 = max_reg;

    b->codeIR();
    int reg2 = max_reg;

    ++max_reg;
    IRgenSitofp(B,reg2,max_reg);//b int->float
    reg2 = max_reg;

    BinaryIRgenFloat[opcode](B,reg1,reg2);
}

void IRgenFloatFloat(tree_node* a,tree_node* b,NodeAttribute::opcode opcode,LLVMBlock B)
{
    a->codeIR();
    int reg1 = max_reg;

    b->codeIR();
    int reg2 = max_reg;

    BinaryIRgenFloat[opcode](B,reg1,reg2);
}

void IRgenBoolBool(tree_node* a,tree_node* b,NodeAttribute::opcode opcode,LLVMBlock B)
{
    a->codeIR();
    int reg1 = max_reg;

    b->codeIR();
    int reg2 = max_reg;

    ++max_reg;
    IRgenZext(B,reg1,max_reg);//bool -> int
    reg1 = max_reg;

    ++max_reg;
    IRgenZext(B,reg2,max_reg);//bool -> int
    reg2 = max_reg;

    BinaryIRgenInt[opcode](B,reg1,reg2);
}

void IRgenError(tree_node* a,tree_node* b,NodeAttribute::opcode opcode,LLVMBlock B)
{
    assert(false);
}


void (*IRgenBinaryNode[5][5])(tree_node* a,tree_node* b,NodeAttribute::opcode opcode,LLVMBlock B)={
    [Type::INT][Type::INT] = IRgenIntInt,
    [Type::INT][Type::FLOAT] = IRgenIntFloat,
    [Type::INT][Type::BOOL] = IRgenError,
    [Type::INT][Type::PTR] = IRgenError,
    [Type::INT][Type::VOID] = IRgenError,
    [Type::FLOAT][Type::INT] = IRgenFloatInt,
    [Type::FLOAT][Type::FLOAT] = IRgenFloatFloat,
    [Type::FLOAT][Type::BOOL] = IRgenError,
    [Type::FLOAT][Type::PTR] = IRgenError,
    [Type::FLOAT][Type::VOID] = IRgenError,
    [Type::BOOL][Type::INT] = IRgenError,
    [Type::BOOL][Type::FLOAT] = IRgenError,
    [Type::BOOL][Type::BOOL] = IRgenBoolBool,
    [Type::BOOL][Type::PTR] = IRgenError,
    [Type::BOOL][Type::VOID] = IRgenError,
    [Type::PTR][Type::INT] = IRgenError,
    [Type::PTR][Type::FLOAT] = IRgenError,
    [Type::PTR][Type::BOOL] = IRgenError,
    [Type::PTR][Type::PTR] = IRgenError,
    [Type::PTR][Type::VOID] = IRgenError,
    [Type::VOID][Type::INT] = IRgenError,
    [Type::VOID][Type::FLOAT] = IRgenError,
    [Type::VOID][Type::BOOL] = IRgenError,
    [Type::VOID][Type::PTR] = IRgenError,
    [Type::VOID][Type::VOID] = IRgenError,
};


//single
void SingleAddIRInt(LLVMBlock B,int reg1)
{

}

void SingleSubIRInt(LLVMBlock B,int reg1)
{

}

void SingleNotIRInt(LLVMBlock B,int reg1)
{

}

void (*SingleIRgenInt[15])(LLVMBlock B,int reg1)={
    [NodeAttribute::ADD] = SingleAddIRInt,
    [NodeAttribute::SUB] = SingleSubIRInt,
    [NodeAttribute::NOT] = SingleNotIRInt,
};




void SingleAddIRFloat(LLVMBlock B,int reg1)
{

}

void SingleSubIRFloat(LLVMBlock B,int reg1)
{

}

void SingleNotIRFloat(LLVMBlock B,int reg1)
{

}

void (*SingleIRgenFloat[15])(LLVMBlock B,int reg1)={
    [NodeAttribute::ADD] = SingleAddIRFloat,
    [NodeAttribute::SUB] = SingleSubIRFloat,
    [NodeAttribute::NOT] = SingleNotIRFloat,
};




void IRgenInt(tree_node* a,NodeAttribute::opcode opcode,LLVMBlock B)
{
    a->codeIR();
    int reg1 = max_reg;
    SingleIRgenInt[opcode](B,reg1);
}

void IRgenFloat(tree_node* a,NodeAttribute::opcode opcode,LLVMBlock B)
{
    a->codeIR();
    int reg1 = max_reg;
    SingleIRgenFloat[opcode](B,reg1);
}

void IRgenError(tree_node* a,NodeAttribute::opcode opcode,LLVMBlock B)
{
    assert(false);
}

void (*IRgenSingleNode[5])(tree_node* a,NodeAttribute::opcode opcode,LLVMBlock B)={
    [Type::INT] = IRgenInt,
    [Type::FLOAT] = IRgenFloat,
    [Type::BOOL] = IRgenError,
    [Type::PTR] = IRgenError,
    [Type::VOID] = IRgenError,
};

void IRgenTypeConverse(LLVMBlock B,Type::ty type_src,Type::ty type_dst,int src,int dst)
{
    if(type_src == type_dst){return;}
    if(type_src == Type::INT && type_dst == Type::FLOAT){
        IRgenSitofp(B,src,dst);
    }
    else if(type_src == Type::BOOL && type_dst == Type::INT){
        IRgenZext(B,src,dst);
    }
    else if(type_src == Type::FLOAT && type_dst == Type::INT){
        IRgenFptosi(B,src,dst);
    }
}