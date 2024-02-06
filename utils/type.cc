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
NodeAttr BinaryAddInt(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::INT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.IntVal = a.V.val.IntVal + b.V.val.IntVal;
    }
    return result;
}

NodeAttr BinarySubInt(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::INT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.IntVal = a.V.val.IntVal - b.V.val.IntVal;
    }
    return result;
}

NodeAttr BinaryMulInt(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::INT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.IntVal = a.V.val.IntVal * b.V.val.IntVal;
    }
    return result;
}

NodeAttr BinaryDivInt(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::INT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.IntVal = a.V.val.IntVal / b.V.val.IntVal;
    }
    return result;
}

NodeAttr BinaryModInt(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::INT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.IntVal = a.V.val.IntVal % b.V.val.IntVal;
    }
    return result;
}

NodeAttr BinaryGeqInt(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal >= b.V.val.IntVal;
    }
    return result;
}

NodeAttr BinaryGtInt(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal > b.V.val.IntVal;
    }
    return result;
}

NodeAttr BinaryLeqInt(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal <= b.V.val.IntVal;
    }
    return result;
}

NodeAttr BinaryLtInt(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal < b.V.val.IntVal;
    }
    return result;
}

NodeAttr BinaryEqInt(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal == b.V.val.IntVal;
    }
    return result;
}

NodeAttr BinaryNeInt(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal != b.V.val.IntVal;
    }
    return result;
}

NodeAttr BinaryOrInt(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal || b.V.val.IntVal;
    }
    return result;
}


NodeAttr BinaryAndInt(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.IntVal && b.V.val.IntVal;
    }
    return result;
}


NodeAttr (*BinaryCalculatedInt[15])(NodeAttr a,NodeAttr b)={
    [NodeAttr::ADD] = BinaryAddInt,
    [NodeAttr::SUB] = BinarySubInt,
    [NodeAttr::MUL] = BinaryMulInt,
    [NodeAttr::DIV] = BinaryDivInt,
    [NodeAttr::MOD] = BinaryModInt,
    [NodeAttr::GEQ] = BinaryGeqInt,
    [NodeAttr::GT]  = BinaryGtInt,
    [NodeAttr::LEQ] = BinaryLeqInt,
    [NodeAttr::LT]  = BinaryLtInt,
    [NodeAttr::EQ]  = BinaryEqInt,
    [NodeAttr::NE]  = BinaryNeInt,
    [NodeAttr::OR]  = BinaryOrInt,
    [NodeAttr::AND] = BinaryAndInt,
};






NodeAttr BinaryAddFloat(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::FLOAT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.FloatVal = a.V.val.FloatVal + b.V.val.FloatVal;
    }
    return result;
}

NodeAttr BinarySubFloat(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::FLOAT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.FloatVal = a.V.val.FloatVal - b.V.val.FloatVal;
    }
    return result;
}

NodeAttr BinaryMulFloat(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::FLOAT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.FloatVal = a.V.val.FloatVal * b.V.val.FloatVal;
    }
    return result;
}

NodeAttr BinaryDivFloat(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::FLOAT;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.FloatVal = a.V.val.FloatVal / b.V.val.FloatVal;
    }
    return result;
}

NodeAttr BinaryModFloat(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::VOID;
    result.V.ConstTag = 0;

    error_msgs.push_back("mod on float type in line " + std::to_string(a.line_number) + "\n");

    return result;
}

NodeAttr BinaryGeqFloat(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal >= b.V.val.FloatVal;
    }
    return result;
}

NodeAttr BinaryGtFloat(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal > b.V.val.FloatVal;
    }
    return result;
}

NodeAttr BinaryLeqFloat(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal <= b.V.val.FloatVal;
    }
    return result;
}

NodeAttr BinaryLtFloat(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal < b.V.val.FloatVal;
    }
    return result;
}

NodeAttr BinaryEqFloat(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal == b.V.val.FloatVal;
    }
    return result;
}

NodeAttr BinaryNeFloat(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal != b.V.val.FloatVal;
    }
    return result;
}

NodeAttr BinaryOrFloat(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal || b.V.val.FloatVal;
    }
    return result;
}

NodeAttr BinaryAndFloat(NodeAttr a,NodeAttr b)
{
    NodeAttr result;
    result.T.type = Type::BOOL;
    result.V.ConstTag = a.V.ConstTag & b.V.ConstTag;
    if(result.V.ConstTag){
        result.V.val.BoolVal = a.V.val.FloatVal && b.V.val.FloatVal;
    }
    return result;
}


NodeAttr (*BinaryCalculatedFloat[15])(NodeAttr a,NodeAttr b)={
    [NodeAttr::ADD] = BinaryAddFloat,
    [NodeAttr::SUB] = BinarySubFloat,
    [NodeAttr::MUL] = BinaryMulFloat,
    [NodeAttr::DIV] = BinaryDivFloat,
    [NodeAttr::MOD] = BinaryModFloat,
    [NodeAttr::GEQ] = BinaryGeqFloat,
    [NodeAttr::GT]  = BinaryGtFloat,
    [NodeAttr::LEQ] = BinaryLeqFloat,
    [NodeAttr::LT]  = BinaryLtFloat,
    [NodeAttr::EQ]  = BinaryEqFloat,
    [NodeAttr::NE]  = BinaryNeFloat,
    [NodeAttr::OR]  = BinaryOrFloat,
    [NodeAttr::AND] = BinaryAndFloat,
};





NodeAttr SemantIntInt(NodeAttr a,NodeAttr b,NodeAttr::opcode opcode)
{
    return BinaryCalculatedInt[opcode](a,b);
}

NodeAttr SemantIntFloat(NodeAttr a,NodeAttr b,NodeAttr::opcode opcode)
{
    NodeAttr tmp_a = a;
    tmp_a.T.type = Type::FLOAT;
    tmp_a.V.val.FloatVal = (float)tmp_a.V.val.IntVal; 
    return BinaryCalculatedFloat[opcode](tmp_a,b);
}

NodeAttr SemantFloatInt(NodeAttr a,NodeAttr b,NodeAttr::opcode opcode)
{
    NodeAttr tmp_b = b;
    tmp_b.T.type = Type::FLOAT;
    tmp_b.V.val.FloatVal = (float)tmp_b.V.val.IntVal; 
    return BinaryCalculatedFloat[opcode](a,tmp_b);
}

NodeAttr SemantFloatFloat(NodeAttr a,NodeAttr b,NodeAttr::opcode opcode)
{
    return BinaryCalculatedFloat[opcode](a,b);
}

NodeAttr SemantBoolBool(NodeAttr a,NodeAttr b,NodeAttr::opcode opcode)
{
    NodeAttr tmp_a = a,tmp_b = b;
    tmp_a.T.type = Type::INT;
    tmp_b.T.type = Type::INT;
    tmp_a.V.val.IntVal = tmp_a.V.val.BoolVal;
    tmp_b.V.val.IntVal = tmp_b.V.val.BoolVal;
    return BinaryCalculatedInt[opcode](tmp_a,tmp_b);
}

NodeAttr SemantError(NodeAttr a,NodeAttr b,NodeAttr::opcode opcode)
{
    error_msgs.push_back("invalid operators in line " + std::to_string(a.line_number) + "\n");
    NodeAttr result;
    result.T.type = Type::VOID;
    result.V.ConstTag = 0;
    return result;
}

NodeAttr (*SemantBinaryNode[5][5])(NodeAttr a,NodeAttr b,NodeAttr::opcode opcode)={
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
NodeAttr SingleAddInt(NodeAttr a)
{

}

NodeAttr SingleSubInt(NodeAttr a)
{

}

NodeAttr SingleNotInt(NodeAttr a)
{

}

NodeAttr (*SingleCalculatedInt[15])(NodeAttr a)={
    [NodeAttr::ADD] = SingleAddInt,
    [NodeAttr::SUB] = SingleSubInt,
    [NodeAttr::NOT] = SingleNotInt,
};




NodeAttr SingleAddFloat(NodeAttr a)
{

}

NodeAttr SingleSubFloat(NodeAttr a)
{

}

NodeAttr SingleNotFloat(NodeAttr a)
{

}

NodeAttr (*SingleCalculatedFloat[15])(NodeAttr a)={
    [NodeAttr::ADD] = SingleAddFloat,
    [NodeAttr::SUB] = SingleSubFloat,
    [NodeAttr::NOT] = SingleNotFloat,
};




NodeAttr SemantInt(NodeAttr a,NodeAttr::opcode opcode)
{

}

NodeAttr SemantFloat(NodeAttr a,NodeAttr::opcode opcode)
{

}

NodeAttr SemantError(NodeAttr a,NodeAttr::opcode opcode)
{
    error_msgs.push_back("invalid operators in line " + std::to_string(a.line_number) + "\n");
    NodeAttr result;
    result.T.type = Type::VOID;
    result.V.ConstTag = 0;
    return result;
}

NodeAttr (*SemantSingleNode[5])(NodeAttr a,NodeAttr::opcode opcode)={
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

Instruction IRgen_alg_i32_Ins(llvm_block B,llvm_ir_opcode opcode,int reg1,int reg2,int result_reg);
Instruction IRgen_alg_f32_Ins(llvm_block B,llvm_ir_opcode opcode,int reg1,int reg2,int result_reg);
Instruction IRgen_icmp_Ins(llvm_block B,cmp_cond cmp_op,int reg1,int reg2,int result_reg);
Instruction IRgen_fcmp_Ins(llvm_block B,cmp_cond cmp_op,int reg1,int reg2,int result_reg);
Instruction IRgen_fptosi_Ins(llvm_block B,int src,int dst);
Instruction IRgen_sitofp_Ins(llvm_block B,int src,int dst);
Instruction IRgen_zext_Ins(llvm_block B,int src,int dst);


//binary
void BinaryAddIRInt(llvm_block B,int reg1,int reg2)
{
    IRgen_alg_i32_Ins(B,llvm_ir_opcode::ADD,reg1,reg2,++max_reg);
}

void BinarySubIRInt(llvm_block B,int reg1,int reg2)
{
    IRgen_alg_i32_Ins(B,llvm_ir_opcode::SUB,reg1,reg2,++max_reg);
}

void BinaryMulIRInt(llvm_block B,int reg1,int reg2)
{
    IRgen_alg_i32_Ins(B,llvm_ir_opcode::MUL,reg1,reg2,++max_reg);
}

void BinaryDivIRInt(llvm_block B,int reg1,int reg2)
{
    IRgen_alg_i32_Ins(B,llvm_ir_opcode::DIV,reg1,reg2,++max_reg);
}

void BinaryModIRInt(llvm_block B,int reg1,int reg2)
{
    IRgen_alg_i32_Ins(B,llvm_ir_opcode::MOD,reg1,reg2,++max_reg);
}

void BinaryGeqIRInt(llvm_block B,int reg1,int reg2)
{
    
}

void BinaryGtIRInt(llvm_block B,int reg1,int reg2)
{

}

void BinaryLeqIRInt(llvm_block B,int reg1,int reg2)
{

}

void BinaryLtIRInt(llvm_block B,int reg1,int reg2)
{

}

void BinaryEqIRInt(llvm_block B,int reg1,int reg2)
{

}

void BinaryNeIRInt(llvm_block B,int reg1,int reg2)
{

}


void (*BinaryIRgenInt[15])(llvm_block B,int reg1,int reg2)={
    [NodeAttr::ADD] = BinaryAddIRInt,
    [NodeAttr::SUB] = BinarySubIRInt,
    [NodeAttr::MUL] = BinaryMulIRInt,
    [NodeAttr::DIV] = BinaryDivIRInt,
    [NodeAttr::MOD] = BinaryModIRInt,
    [NodeAttr::GEQ] = BinaryGeqIRInt,
    [NodeAttr::GT]  = BinaryGtIRInt,
    [NodeAttr::LEQ] = BinaryLeqIRInt,
    [NodeAttr::LT]  = BinaryLtIRInt,
    [NodeAttr::EQ]  = BinaryEqIRInt,
    [NodeAttr::NE]  = BinaryNeIRInt,
};






void BinaryAddIRFloat(llvm_block B,int reg1,int reg2)
{

}

void BinarySubIRFloat(llvm_block B,int reg1,int reg2)
{

}

void BinaryMulIRFloat(llvm_block B,int reg1,int reg2)
{

}

void BinaryDivIRFloat(llvm_block B,int reg1,int reg2)
{

}

void BinaryModIRFloat(llvm_block B,int reg1,int reg2)
{
    assert(false);
}

void BinaryGeqIRFloat(llvm_block B,int reg1,int reg2)
{

}

void BinaryGtIRFloat(llvm_block B,int reg1,int reg2)
{

}

void BinaryLeqIRFloat(llvm_block B,int reg1,int reg2)
{

}

void BinaryLtIRFloat(llvm_block B,int reg1,int reg2)
{

}

void BinaryEqIRFloat(llvm_block B,int reg1,int reg2)
{

}

void BinaryNeIRFloat(llvm_block B,int reg1,int reg2)
{
    
}


void (*BinaryIRgenFloat[15])(llvm_block B,int reg1,int reg2)={
    [NodeAttr::ADD] = BinaryAddIRFloat,
    [NodeAttr::SUB] = BinarySubIRFloat,
    [NodeAttr::MUL] = BinaryMulIRFloat,
    [NodeAttr::DIV] = BinaryDivIRFloat,
    [NodeAttr::MOD] = BinaryModIRFloat,
    [NodeAttr::GEQ] = BinaryGeqIRFloat,
    [NodeAttr::GT]  = BinaryGtIRFloat,
    [NodeAttr::LEQ] = BinaryLeqIRFloat,
    [NodeAttr::LT]  = BinaryLtIRFloat,
    [NodeAttr::EQ]  = BinaryEqIRFloat,
    [NodeAttr::NE]  = BinaryNeIRFloat,
};


void IRgenIntInt(tree_node* a,tree_node* b,NodeAttr::opcode opcode,llvm_block B)
{
    a->codeIR();
    int reg1 = max_reg;

    b->codeIR();
    int reg2 = max_reg;

    BinaryIRgenInt[opcode](B,reg1,reg2);
}

void IRgenIntFloat(tree_node* a,tree_node* b,NodeAttr::opcode opcode,llvm_block B)
{
    a->codeIR();
    int reg1 = max_reg;

    b->codeIR();
    int reg2 = max_reg;

    ++max_reg;
    IRgen_sitofp_Ins(B,reg1,max_reg);//a int->float
    reg1 = max_reg;

    BinaryIRgenFloat[opcode](B,reg1,reg2);
}

void IRgenFloatInt(tree_node* a,tree_node* b,NodeAttr::opcode opcode,llvm_block B)
{
    a->codeIR();
    int reg1 = max_reg;

    b->codeIR();
    int reg2 = max_reg;

    ++max_reg;
    IRgen_sitofp_Ins(B,reg2,max_reg);//b int->float
    reg2 = max_reg;

    BinaryIRgenFloat[opcode](B,reg1,reg2);
}

void IRgenFloatFloat(tree_node* a,tree_node* b,NodeAttr::opcode opcode,llvm_block B)
{
    a->codeIR();
    int reg1 = max_reg;

    b->codeIR();
    int reg2 = max_reg;

    BinaryIRgenFloat[opcode](B,reg1,reg2);
}

void IRgenBoolBool(tree_node* a,tree_node* b,NodeAttr::opcode opcode,llvm_block B)
{
    a->codeIR();
    int reg1 = max_reg;

    b->codeIR();
    int reg2 = max_reg;

    ++max_reg;
    IRgen_zext_Ins(B,reg1,max_reg);//bool -> int
    reg1 = max_reg;

    ++max_reg;
    IRgen_zext_Ins(B,reg2,max_reg);//bool -> int
    reg2 = max_reg;

    BinaryIRgenInt[opcode](B,reg1,reg2);
}

void IRgenError(tree_node* a,tree_node* b,NodeAttr::opcode opcode,llvm_block B)
{
    assert(false);
}


void (*IRgenBinaryNode[5][5])(tree_node* a,tree_node* b,NodeAttr::opcode opcode,llvm_block B)={
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
void SingleAddIRInt(llvm_block B,int reg1)
{

}

void SingleSubIRInt(llvm_block B,int reg1)
{

}

void SingleNotIRInt(llvm_block B,int reg1)
{

}

void (*SingleIRgenInt[15])(llvm_block B,int reg1)={
    [NodeAttr::ADD] = SingleAddIRInt,
    [NodeAttr::SUB] = SingleSubIRInt,
    [NodeAttr::NOT] = SingleNotIRInt,
};




void SingleAddIRFloat(llvm_block B,int reg1)
{

}

void SingleSubIRFloat(llvm_block B,int reg1)
{

}

void SingleNotIRFloat(llvm_block B,int reg1)
{

}

void (*SingleIRgenFloat[15])(llvm_block B,int reg1)={
    [NodeAttr::ADD] = SingleAddIRFloat,
    [NodeAttr::SUB] = SingleSubIRFloat,
    [NodeAttr::NOT] = SingleNotIRFloat,
};




void IRgenInt(tree_node* a,NodeAttr::opcode opcode,llvm_block B)
{
    a->codeIR();
    int reg1 = max_reg;
    SingleIRgenInt[opcode](B,reg1);
}

void IRgenFloat(tree_node* a,NodeAttr::opcode opcode,llvm_block B)
{
    a->codeIR();
    int reg1 = max_reg;
    SingleIRgenFloat[opcode](B,reg1);
}

void IRgenError(tree_node* a,NodeAttr::opcode opcode,llvm_block B)
{
    assert(false);
}

void (*IRgenSingleNode[5])(tree_node* a,NodeAttr::opcode opcode,llvm_block B)={
    [Type::INT] = IRgenInt,
    [Type::FLOAT] = IRgenFloat,
    [Type::BOOL] = IRgenError,
    [Type::PTR] = IRgenError,
    [Type::VOID] = IRgenError,
};

void IRgenTypeConverse(llvm_block B,Type::ty type_src,Type::ty type_dst,int src,int dst)
{
    if(type_src == type_dst){return;}
    if(type_src == Type::INT && type_dst == Type::FLOAT){
        IRgen_sitofp_Ins(B,src,dst);
    }
    else if(type_src == Type::BOOL && type_dst == Type::INT){
        IRgen_zext_Ins(B,src,dst);
    }
    else if(type_src == Type::FLOAT && type_dst == Type::INT){
        IRgen_fptosi_Ins(B,src,dst);
    }
}