#ifndef SYSY_TREE_H
#define SYSY_TREE_H

// AST definition
#include "Instruction.h"
#include "symtab.h"
#include "tree.h"
#include <iostream>
#include <vector>

// exp basic_class
class __Expression : public tree_node {
public:
    int true_label = -1;
    int false_label = -1;
};
typedef __Expression *Expression;

// AddExp
class Exp : public __Expression {
public:
    Expression addexp;
    Exp(Expression add) : addexp(add) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// AddExp + MulExp
/*
    addexp->codeIR();
    val(addexp)  ->  %r(m1)
    mulexp->codeIR();
    val(mulexp)  ->  %r(m2)
    %r(m2+1) = add %r(m1),%r(m2)
*/
class AddExp_plus : public __Expression {
public:
    Expression addexp;
    Expression mulexp;
    AddExp_plus(Expression add, Expression mul) : addexp(add), mulexp(mul) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// AddExp - MulExp
class AddExp_sub : public __Expression {
public:
    Expression addexp;
    Expression mulexp;
    AddExp_sub(Expression add, Expression mul) : addexp(add), mulexp(mul) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// MulExp * UnaryExp
class MulExp_mul : public __Expression {
public:
    Expression mulexp;
    Expression unary_exp;
    MulExp_mul(Expression mul, Expression unary) : mulexp(mul), unary_exp(unary) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// MulExp / UnaryExp
class MulExp_div : public __Expression {
public:
    Expression mulexp;
    Expression unary_exp;
    MulExp_div(Expression mul, Expression unary) : mulexp(mul), unary_exp(unary) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// MulExp % UnaryExp
class MulExp_mod : public __Expression {
public:
    Expression mulexp;
    Expression unary_exp;
    MulExp_mod(Expression mul, Expression unary) : mulexp(mul), unary_exp(unary) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// RelExp <= AddExp
class RelExp_leq : public __Expression {
public:
    Expression relexp;
    Expression addexp;
    // add constructor
    RelExp_leq(Expression relexp, Expression addexp) : relexp(relexp), addexp(addexp) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// RelExp < AddExp
class RelExp_lt : public __Expression {
public:
    Expression relexp;
    Expression addexp;
    RelExp_lt(Expression relexp, Expression addexp) : relexp(relexp), addexp(addexp) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// RelExp >= AddExp
class RelExp_geq : public __Expression {
public:
    Expression relexp;
    Expression addexp;
    RelExp_geq(Expression relexp, Expression addexp) : relexp(relexp), addexp(addexp) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// RelExp > AddExp
class RelExp_gt : public __Expression {
public:
    Expression relexp;
    Expression addexp;
    RelExp_gt(Expression relexp, Expression addexp) : relexp(relexp), addexp(addexp) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// EqExp == RelExp
class EqExp_eq : public __Expression {
public:
    Expression eqexp;
    Expression relexp;
    EqExp_eq(Expression eqexp, Expression relexp) : eqexp(eqexp), relexp(relexp) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// EqExp != RelExp
class EqExp_neq : public __Expression {
public:
    Expression eqexp;
    Expression relexp;
    EqExp_neq(Expression eqexp, Expression relexp) : eqexp(eqexp), relexp(relexp) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// LAndExp && EqExp
/*
......
%r(m1)  ->  LAndExp
br (bne) start_right,end

end:
%r(m2+1)  ->  %r(m1)  and  %r(m2)

......
start_right:
%r(m2)   ->  EqExp
br end

*/
class LAndExp_and : public __Expression {
public:
    Expression landexp;
    Expression eqexp;
    LAndExp_and(Expression landexp, Expression eqexp) : landexp(landexp), eqexp(eqexp) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// LOrExp || LAndExp
/*
......
%r(m1)  ->  LorExp
br (bne) start_right,end

end:
%r(m2+1)  ->  %r(m1)  or  %r(m2)

......
start_right:
%r(m2)   ->  LAndExp
br end
*/
class LOrExp_or : public __Expression {
public:
    Expression lorexp;
    Expression landexp;
    ;
    LOrExp_or(Expression lorexp, Expression landexp) : lorexp(lorexp), landexp(landexp) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// AddExp
class ConstExp : public __Expression {
public:
    Expression addexp;
    ConstExp(Expression addexp) : addexp(addexp) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// lval   name{[dim]}   eg. a[4][5+4][3+4*9]
/*
address of Lval
*/
class Lval : public __Expression {
public:
    Symbol name;
    std::vector<Expression> *dims;
    bool is_left = true;    // left value or right value
    int scope = -1;
    Operand ptr;            // use IRgen, determine the ptr of this lval
    Lval(Symbol n, std::vector<Expression> *d) : name(n), dims(d) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

//{Exp,Exp,Exp,Exp}
class FuncRParams : public __Expression {
public:
    std::vector<Expression> *params{};
    FuncRParams(std::vector<Expression> *p) : params(p) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// name(FuncRParams)
class Func_call : public __Expression {
public:
    Symbol name;
    Expression funcr_params;
    Func_call(Symbol n, Expression f) : name(n), funcr_params(f) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// + UnaryExp
class UnaryExp_plus : public __Expression {
public:
    Expression unary_exp;
    UnaryExp_plus(Expression unary_exp) : unary_exp(unary_exp) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// - UnaryExp
class UnaryExp_neg : public __Expression {
public:
    Expression unary_exp;
    UnaryExp_neg(Expression unary_exp) : unary_exp(unary_exp) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// ! UnaryExp
class UnaryExp_not : public __Expression {
public:
    Expression unary_exp;
    UnaryExp_not(Expression unary_exp) : unary_exp(unary_exp) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

/*
%r(m) = add 0,val
*/
class IntConst : public __Expression {
public:
    int val;
    IntConst(int v) : val(v) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

class FloatConst : public __Expression {
public:
    float val;
    FloatConst(float v) : val(v) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

class StringConst : public __Expression {
public:
    Symbol str;
    StringConst(Symbol s) : str(s) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

//( Exp )
class PrimaryExp_branch : public __Expression {
public:
    Expression exp;
    PrimaryExp_branch(Expression exp) : exp(exp) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

class __Block;
typedef __Block *Block;
// stmt basic_class
class __Stmt : public tree_node {
public:
};
typedef __Stmt *Stmt;

class null_stmt : public __Stmt {
public:
    void codeIR() {}
    void TypeCheck() {}
    void printAST(std::ostream &s, int pad);
};

// lval = exp;
/*
lval->codeIR();
get address of lval
exp->codeIR();
get value of exp
store
*/
class assign_stmt : public __Stmt {
public:
    Expression lval;
    Expression exp;
    // construction
    assign_stmt(Expression l, Expression e) : lval(l), exp(e) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// exp;
class expr_stmt : public __Stmt {
public:
    Expression exp;
    expr_stmt(Expression e) : exp(e) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// block
class block_stmt : public __Stmt {
public:
    Block b;
    block_stmt(Block b) : b(b) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// if(Cond) if_stmt then then_stmt
/*
if(cond1){}
else if(cond2){}
else{}
1:
    cond1->codeIR(1);
    br ne 2,3
2:
    stmt->codeIR(2)
    br 4
3:
    cond2->codeIR(3)
    br ne 5,6
5:
    stmt->codeIR(5)
    br 4
6:
    stmt->codeIR(6)
    br 4
4(end):

*/
class ifelse_stmt : public __Stmt {
public:
    Expression Cond;
    Stmt ifstmt;
    Stmt elsestmt;    // else
    // construction
    ifelse_stmt(Expression c, Stmt i, Stmt t) : Cond(c), ifstmt(i), elsestmt(t) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// only if
class if_stmt : public __Stmt {
public:
    Expression Cond;
    Stmt ifstmt;
    // construction
    if_stmt(Expression c, Stmt i) : Cond(c), ifstmt(i) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// while(Cond) body
/*
int n = 3;
while(1){
    while(1){

    }
    int a = 5 + 4;
    a++;
    (continue;)
}

while_stmt->codeIR(1)
1:
    (int n = 3;)
    br 2
2:
    cond->codeIR(2)
    br ne 3,4
3:  (br 2)
    stmt->codeIR(3)
{
    br 5
5:
    cond2->codeIR(5)
    br ne 6,7
6:  (br 5)
    stmt->codeIR(6)
......
7:
    int a = 5 + 4;
    a++;
    br 2
}
4:

*/
class while_stmt : public __Stmt {
public:
    Expression Cond;
    Stmt body;
    // construction
    while_stmt(Expression c, Stmt b) : Cond(c), body(b) {}
    void codeIR();
    void code_dowhileIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// continue;
class continue_stmt : public __Stmt {
public:
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// break;
class break_stmt : public __Stmt {
public:
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// return return_exp;
class return_stmt : public __Stmt {
public:
    Expression return_exp;
    return_stmt(Expression r) : return_exp(r) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

class return_stmt_void : public __Stmt {
public:
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

class __InitVal : public tree_node {
public:
    virtual int IsExp() = 0;
    virtual int IsConst() = 0;
    virtual std::vector<__InitVal *> *GetList() = 0;
    virtual Expression GetExp() = 0;
};
typedef __InitVal *InitVal;

// InitVal -> {InitVal,InitVal,InitVal,...}
// eg. {2,3,{4,5,6},{3,{4,5,6,{3,5}}}}
class ConstInitVal : public __InitVal {
public:
    std::vector<InitVal> *initval;
    ConstInitVal(std::vector<InitVal> *i) : initval(i) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
    int IsExp() { return 0; }
    int IsConst() { return 1; }
    std::vector<InitVal> *GetList() { return initval; }
    Expression GetExp() { return NULL; }
};

class ConstInitVal_exp : public __InitVal {
public:
    Expression exp;
    ConstInitVal_exp(Expression e) : exp(e) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
    int IsExp() { return 1; }
    int IsConst() { return 1; }
    std::vector<InitVal> *GetList() { return NULL; }
    Expression GetExp() { return exp; }
};

// InitVal -> {InitVal,InitVal,InitVal,...}
class VarInitVal : public __InitVal {
public:
    std::vector<InitVal> *initval;
    VarInitVal(std::vector<InitVal> *i) : initval(i) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
    int IsExp() { return 0; }
    int IsConst() { return 0; }
    std::vector<InitVal> *GetList() { return initval; }
    Expression GetExp() { return NULL; }
};

class VarInitVal_exp : public __InitVal {
public:
    Expression exp;
    VarInitVal_exp(Expression e) : exp(e) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
    int IsExp() { return 1; }
    int IsConst() { return 0; }
    std::vector<InitVal> *GetList() { return NULL; }
    Expression GetExp() { return exp; }
};

class __Def : public tree_node {
public:
    int scope = -1;
    virtual int IsInit() = 0;
    virtual int IsConst() = 0;
    virtual Symbol GetName() = 0;
    virtual std::vector<Expression> *GetDims() = 0;
    virtual InitVal GetInit() = 0;
};
typedef __Def *Def;

class VarDef_no_init : public __Def {
public:
    Symbol name;
    std::vector<Expression> *dims;
    VarDef_no_init(Symbol n, std::vector<Expression> *d) : name(n), dims(d) {}

    int IsInit() { return 0; }
    virtual int IsConst() { return 0; }
    Symbol GetName() { return name; }
    std::vector<Expression> *GetDims() { return dims; }
    InitVal GetInit() { return nullptr; }

    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

class VarDef : public __Def {
public:
    Symbol name;
    std::vector<Expression> *dims;
    InitVal init;
    VarDef(Symbol n, std::vector<Expression> *d, InitVal i) : name(n), dims(d), init(i) {}

    int IsInit() { return 1; }
    virtual int IsConst() { return 0; }
    Symbol GetName() { return name; }
    std::vector<Expression> *GetDims() { return dims; }
    InitVal GetInit() { return init; }

    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

class ConstDef : public __Def {
public:
    Symbol name;
    std::vector<Expression> *dims;
    InitVal init;
    ConstDef(Symbol n, std::vector<Expression> *d, InitVal i) : name(n), dims(d), init(i) {}

    int IsInit() { return 1; }
    virtual int IsConst() { return 1; }
    Symbol GetName() { return name; }
    std::vector<Expression> *GetDims() { return dims; }
    InitVal GetInit() { return init; }

    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// decl basic_class
class __Decl : public tree_node {
public:
    virtual int IsConst() = 0;
    virtual std::vector<Def> *GetDefs() = 0;
    virtual Type::ty GetTypedecl() = 0;
};
typedef __Decl *Decl;

// var definition
class VarDecl : public __Decl {
public:
    Type::ty type_decl;
    std::vector<Def> *var_def_list{};
    // construction
    VarDecl(Type::ty t, std::vector<Def> *v) : type_decl(t), var_def_list(v) {}

    int IsConst() { return 0; }
    std::vector<Def> *GetDefs() { return var_def_list; }
    Type::ty GetTypedecl() { return type_decl; }

    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// const var definition
class ConstDecl : public __Decl {
public:
    Type::ty type_decl;
    std::vector<Def> *var_def_list{};
    // construction
    ConstDecl(Type::ty t, std::vector<Def> *v) : type_decl(t), var_def_list(v) {}

    int IsConst() { return 1; }
    Type::ty GetTypedecl() { return type_decl; }
    std::vector<Def> *GetDefs() { return var_def_list; }

    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

class __BlockItem : public tree_node {
public:
};
typedef __BlockItem *BlockItem;

class BlockItem_Decl : public __BlockItem {
public:
    Decl decl;
    BlockItem_Decl(Decl d) : decl(d) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

class BlockItem_Stmt : public __BlockItem {
public:
    Stmt stmt;
    BlockItem_Stmt(Stmt s) : stmt(s) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// block
class __Block : public tree_node {
public:
    std::vector<BlockItem> *item_list{};
    // construction
    __Block() {}
    __Block(std::vector<BlockItem> *i) : item_list(i) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

// FuncParam -> Type IDENT
// FuncParam -> Type IDENT [] {[Exp]}

// FuncParam -> Type IDENT [],EXPLIST
// EXPLIST -> [EXP],EXPLIST
class __FuncFParam : public tree_node {
public:
    Type::ty type_decl;
    std::vector<Expression> *dims;
    Symbol name;
    int scope = -1;

    __FuncFParam(Type::ty t, Symbol n, std::vector<Expression> *d) {
        type_decl = t;
        name = n;
        dims = d;
    }
    __FuncFParam(Type::ty t, std::vector<Expression> *d) {
        type_decl = t;
        dims = d;
    }
    __FuncFParam(Type::ty t) : type_decl(t) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};
typedef __FuncFParam *FuncFParam;

// return_type name '(' [formals] ')' block
class __FuncDef : public tree_node {
public:
    Type::ty return_type;
    Symbol name;
    std::vector<FuncFParam> *formals;
    Block block;
    __FuncDef(Type::ty t, Symbol functionName, std::vector<FuncFParam> *f, Block b) {
        formals = f;
        name = functionName;
        return_type = t;
        block = b;
    }
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};
typedef __FuncDef *FuncDef;

class __CompUnit : public tree_node {
public:
};
typedef __CompUnit *CompUnit;

class CompUnit_Decl : public __CompUnit {
public:
    Decl decl;
    CompUnit_Decl(Decl d) : decl(d) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

class CompUnit_FuncDef : public __CompUnit {
public:
    FuncDef func_def;
    CompUnit_FuncDef(FuncDef f) : func_def(f) {}
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};

class __Program : public tree_node {
public:
    std::vector<CompUnit> *comp_list;

    __Program(std::vector<CompUnit> *c) { comp_list = c; }
    void codeIR();
    void TypeCheck();
    void printAST(std::ostream &s, int pad);
};
typedef __Program *Program;
#endif