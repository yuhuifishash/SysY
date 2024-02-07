%{
#include <fstream>
#include "SysY_tree.h"
#include "type.h"
Program ast_root;

void yyerror(char *s, ...);
int yylex();
int error_num = 0;
extern int line_number;
extern std::ofstream fout;
extern IdTable id_table;
%}
%union{
    char* error_msg;
    Symbol symbol_token;
    double float_token;
    int int_token;
    Program program;  
    CompUnit comp_unit;  std::vector<CompUnit>* comps; 
    Decl decl;
    Def def;  std::vector<Def>* defs;
    FuncDef func_def;
    Expression expression;  std::vector<Expression>* expressions;//added *
    Stmt stmt;
    Block block;
    InitVal initval;  std::vector<InitVal>* initvals;//added *
    FuncFParam formal;   std::vector<FuncFParam>* formals;//added *
    BlockItem block_item;   std::vector<BlockItem>* block_items;//added *
}
//declare the terminals
%token <symbol_token> STR_CONST IDENT
%token <float_token> FLOAT_CONST
%token <int_token> INT_CONST
%token LEQ GEQ EQ NE // <=   >=   ==   != 
%token AND OR // &&    ||
%token CONST IF ELSE WHILE NONE_TYPE INT FLOAT
%token RETURN BREAK CONTINUE ERROR

//give the type of nonterminals
%type <program> Program
%type <comp_unit> CompUnit 
%type <comps> Comp_list
%type <decl> Decl VarDecl ConstDecl
%type <def> ConstDef VarDef
%type <defs> ConstDef_list VarDef_list 
%type <func_def> FuncDef 
%type <expression> Exp LOrExp AddExp MulExp RelExp EqExp LAndExp UnaryExp PrimaryExp
%type <expression> ConstExp Lval FuncRParams Cond
%type <expression> IntConst FloatConst StringConst 
%type <expression> ArrayDim ConstArrayDim
%type <expressions> ArrayDim_list ConstArrayDim_list Exp_list;
%type <stmt> Stmt 
%type <block> Block
%type <block_item> BlockItem
%type <block_items> BlockItem_list
%type <initval> ConstInitVal VarInitVal  
%type <initvals> VarInitVal_list ConstInitVal_list
%type <formal> FuncFParam 
%type <formals> FuncFParams

%precedence THEN
%precedence ELSE
%%
Program 
:Comp_list
{
    @$ = @1;
    ast_root = new __Program($1);
    ast_root->set_line_number(line_number);
};

Comp_list
:CompUnit 
{
    $$ = new std::vector<CompUnit>;
    ($$)->push_back($1);
}
|Comp_list CompUnit
{
    ($1)->push_back($2);
    $$ = $1;
};

CompUnit
:Decl{$$ = new CompUnit_Decl($1); $$->set_line_number(line_number);}
|FuncDef{$$ = new CompUnit_FuncDef($1); $$->set_line_number(line_number);}
;

Decl
:VarDecl{$$ = $1; $$->set_line_number(line_number);}
|ConstDecl{$$ = $1; $$->set_line_number(line_number);}
;

VarDecl
:INT VarDef_list ';'{$$ = new VarDecl(Type::INT,$2); $$->set_line_number(line_number);}
|FLOAT VarDef_list ';'{$$ = new VarDecl(Type::FLOAT,$2); $$->set_line_number(line_number);}
;

ConstDecl
:CONST INT ConstDef_list ';'{$$ = new ConstDecl(Type::INT,$3); $$->set_line_number(line_number);}
|CONST FLOAT ConstDef_list ';'{$$ = new ConstDecl(Type::FLOAT,$3); $$->set_line_number(line_number);}
;

VarDef_list
:VarDef
{
    $$ = new std::vector<Def>;
    ($$)->push_back($1);
}
|VarDef_list ',' VarDef
{
    ($1)->push_back($3);
    $$ = $1;
}
;

ConstDef_list
:ConstDef
{
    $$ = new std::vector<Def>;
    ($$)->push_back($1);
}
|ConstDef_list ',' ConstDef
{
    ($1)->push_back($3);
    $$ = $1;
}
;

FuncDef
:INT IDENT '(' FuncFParams ')' Block
{$$ = new __FuncDef(Type::INT,$2,$4,$6); $$->set_line_number(line_number);}
|INT IDENT '(' ')' Block
{$$ = new __FuncDef(Type::INT,$2,new std::vector<FuncFParam>(),$5); $$->set_line_number(line_number);}
|FLOAT IDENT '(' FuncFParams ')' Block
{$$ = new __FuncDef(Type::FLOAT,$2,$4,$6); $$->set_line_number(line_number);}
|FLOAT IDENT '(' ')' Block
{$$ = new __FuncDef(Type::FLOAT,$2,new std::vector<FuncFParam>(),$5); $$->set_line_number(line_number);}
|NONE_TYPE IDENT '(' FuncFParams ')' Block
{$$ = new __FuncDef(Type::VOID,$2,$4,$6); $$->set_line_number(line_number);}
|NONE_TYPE IDENT '(' ')' Block
{$$ = new __FuncDef(Type::VOID,$2,new std::vector<FuncFParam>(),$5);$$->set_line_number(line_number);}
;

VarDef
:IDENT ArrayDim_list '=' VarInitVal
{$$ = new VarDef($1,$2,$4); $$->set_line_number(line_number);}
|IDENT ArrayDim_list
{$$ = new VarDef_no_init($1,$2); $$->set_line_number(line_number);}
|IDENT '=' VarInitVal
{$$ = new VarDef($1,nullptr,$3); $$->set_line_number(line_number);}
|IDENT
{$$ = new VarDef_no_init($1,nullptr); $$->set_line_number(line_number);}
;

ConstDef
:IDENT ConstArrayDim_list '=' ConstInitVal
{$$ = new ConstDef($1,$2,$4); $$->set_line_number(line_number);}
|IDENT '=' ConstInitVal
{$$ = new ConstDef($1,nullptr,$3); $$->set_line_number(line_number);}
;

ConstInitVal
:ConstExp{$$ = new ConstInitVal_exp($1); $$->set_line_number(line_number);}
|'{' ConstInitVal_list '}'{$$ = new ConstInitVal($2); $$->set_line_number(line_number);}
|'{' '}'{$$ = new ConstInitVal(new std::vector<InitVal>()); $$->set_line_number(line_number);}
;

VarInitVal
:Exp{$$ = new VarInitVal_exp($1); $$->set_line_number(line_number);}
|'{' VarInitVal_list '}'{$$ = new VarInitVal($2); $$->set_line_number(line_number);}
|'{' '}'{$$ = new VarInitVal(new std::vector<InitVal>()); $$->set_line_number(line_number);}
;

ConstInitVal_list
:ConstInitVal{
    $$ = new std::vector<InitVal>;
    ($$)->push_back($1);
}
|ConstInitVal_list ',' ConstInitVal{
    ($1)->push_back($3);
    $$ = $1;
}
;

VarInitVal_list
:VarInitVal{
    $$ = new std::vector<InitVal>;
    ($$)->push_back($1);
}
|VarInitVal_list ',' VarInitVal{
    ($1)->push_back($3);
    $$ = $1;
}
;

FuncFParams
:FuncFParam{
    $$ = new std::vector<FuncFParam>;
    ($$)->push_back($1);
}
|FuncFParams ',' FuncFParam{
    ($1)->push_back($3);
    $$ = $1;
}

;

FuncFParam
:INT IDENT{
    $$ = new __FuncFParam(Type::INT,$2,nullptr);
    $$->set_line_number(line_number);
}
|FLOAT IDENT{
    $$ = new __FuncFParam(Type::FLOAT,$2,nullptr);
    $$->set_line_number(line_number);
}
|INT IDENT '[' ']' ArrayDim_list{
    $5->insert($5->begin(),nullptr);
    $$ = new __FuncFParam(Type::INT,$2,$5);
    $$->set_line_number(line_number);
}
|FLOAT IDENT '[' ']' ArrayDim_list{
    $5->insert($5->begin(),nullptr);
    $$ = new __FuncFParam(Type::FLOAT,$2,$5);
    $$->set_line_number(line_number);
}
|INT IDENT '['  ']' {
    std::vector<Expression>* temp = new std::vector<Expression>;
    temp->push_back(nullptr);
    $$ = new __FuncFParam(Type::INT,$2,temp);
    $$->set_line_number(line_number);
}
|FLOAT IDENT '['  ']' {
    std::vector<Expression>* temp = new std::vector<Expression>;
    temp->push_back(nullptr);
    $$ = new __FuncFParam(Type::FLOAT,$2,temp);
    $$->set_line_number(line_number);
}
;

Block
:'{' BlockItem_list '}'{
    $$ = new __Block($2);
    $$->set_line_number(line_number);
}
|'{' '}'{
    $$ = new __Block(new std::vector<BlockItem>);
    $$->set_line_number(line_number);
}
;

BlockItem_list
:BlockItem{
    $$ = new std::vector<BlockItem>;
    ($$)->push_back($1);
}
|BlockItem_list BlockItem{
    ($1)->push_back($2);
    $$ = $1;
}
;

BlockItem
:Decl{
    $$ = new BlockItem_Decl($1);
    $$->set_line_number(line_number);
}
|Stmt{
    $$ = new BlockItem_Stmt($1);
    $$->set_line_number(line_number);
}
;

Stmt
:Lval '=' Exp ';'{
    $$ = new assign_stmt($1,$3);
    $$->set_line_number(line_number);
}
|Exp ';'{
    $$ = new expr_stmt($1);
    $$->set_line_number(line_number);
}
|';'{
    $$ = new null_stmt();
    $$->set_line_number(line_number);
}
|Block{
    $$ = new block_stmt($1);
    $$->set_line_number(line_number);
}
|IF '(' Cond ')' Stmt %prec THEN{
    $$ = new if_stmt($3,$5);
    $$->set_line_number(line_number);
}
|IF '(' Cond ')' Stmt ELSE Stmt{
    $$ = new ifelse_stmt($3,$5,$7);
    $$->set_line_number(line_number);
}
|WHILE '(' Cond ')' Stmt{
    $$ = new while_stmt($3,$5);
    $$->set_line_number(line_number);
}
|BREAK ';'{
    $$ = new break_stmt();
    $$->set_line_number(line_number);
}
|CONTINUE ';'{
    $$ = new continue_stmt();
    $$->set_line_number(line_number);
}
|RETURN Exp ';'{
    $$ = new return_stmt($2);
    $$->set_line_number(line_number);
}
|RETURN ';'{
    $$ = new return_stmt_void();
    $$->set_line_number(line_number);
}
;

Exp
:AddExp{$$ = $1; $$->set_line_number(line_number);}
;

Cond
:LOrExp{$$ = $1; $$->set_line_number(line_number);}
;

Lval
:IDENT{
    $$ = new Lval($1,nullptr);
    $$->set_line_number(line_number);
}
|IDENT ArrayDim_list{
    $$ = new Lval($1,$2);
    $$->set_line_number(line_number);
}
;

PrimaryExp
:'(' Exp ')'{
    $$ = new PrimaryExp_branch($2);
    $$->set_line_number(line_number);
}
|Lval {$$ = $1; $$->set_line_number(line_number);}
|IntConst{$$ = $1; $$->set_line_number(line_number);}
|FloatConst{$$ = $1; $$->set_line_number(line_number);}
|StringConst{$$ = $1; $$->set_line_number(line_number);}
;

IntConst
:INT_CONST{
    $$ = new IntConst($1);
    $$->set_line_number(line_number);
}
;

FloatConst
:FLOAT_CONST{
    $$ = new FloatConst($1);
    $$->set_line_number(line_number);
}
;

StringConst
:STR_CONST{
    $$ = new StringConst($1);
    $$->set_line_number(line_number);
}
;

UnaryExp
:PrimaryExp{$$ = $1;}
|IDENT '(' FuncRParams ')'{
    $$ = new Func_call($1,$3);
    $$->set_line_number(line_number);
}
|IDENT '(' ')'{
    if($1->get_string() == "starttime"){
        auto params = new std::vector<Expression>;
        params->push_back(new IntConst(line_number));
        Expression temp = new FuncRParams(params);
        $$ = new Func_call(id_table.add_id("_sysy_starttime"),temp);
        $$->set_line_number(line_number);
    }
    else if($1->get_string() == "stoptime"){
        auto params = new std::vector<Expression>;
        params->push_back(new IntConst(line_number));
        Expression temp = new FuncRParams(params);
        $$ = new Func_call(id_table.add_id("_sysy_stoptime"),temp);
        $$->set_line_number(line_number);
    }
    else{
        $$ = new Func_call($1,nullptr);
        $$->set_line_number(line_number);
    }
}
|'+' UnaryExp{
    $$ = new UnaryExp_plus($2);
    $$->set_line_number(line_number);
}
|'-' UnaryExp{
    $$ = new UnaryExp_neg($2);
    $$->set_line_number(line_number);
}
|'!' UnaryExp{
    $$ = new UnaryExp_not($2);
    $$->set_line_number(line_number);
}
;

FuncRParams
:Exp_list{
    $$ = new FuncRParams($1);
    $$->set_line_number(line_number);
}
;

Exp_list
:Exp{
    $$ = new std::vector<Expression>;
    ($$)->push_back($1);
}
|Exp_list ',' Exp{
    ($1)->push_back($3);
    $$ = $1;
}
;

MulExp
:UnaryExp{$$ = $1;$$->set_line_number(line_number);}
|MulExp '*' UnaryExp{$$ = new MulExp_mul($1,$3); $$->set_line_number(line_number);}
|MulExp '/' UnaryExp{$$ = new MulExp_div($1,$3); $$->set_line_number(line_number);}
|MulExp '%' UnaryExp{$$ = new MulExp_mod($1,$3); $$->set_line_number(line_number);}
;

AddExp
:MulExp{$$ = $1;$$->set_line_number(line_number);}
|AddExp '+' MulExp{$$ = new AddExp_plus($1,$3); $$->set_line_number(line_number);}
|AddExp '-' MulExp{$$ = new AddExp_sub($1,$3); $$->set_line_number(line_number);}
;

RelExp
:AddExp{$$ = $1;$$->set_line_number(line_number);}
|RelExp '<' AddExp{$$ = new RelExp_lt($1,$3); $$->set_line_number(line_number);}
|RelExp '>' AddExp{$$ = new RelExp_gt($1,$3); $$->set_line_number(line_number);}
|RelExp LEQ AddExp{$$ = new RelExp_leq($1,$3); $$->set_line_number(line_number);}
|RelExp GEQ AddExp{$$ = new RelExp_geq($1,$3); $$->set_line_number(line_number);}
;

EqExp
:RelExp{$$ = $1;$$->set_line_number(line_number);}
|EqExp EQ RelExp{$$ = new EqExp_eq($1,$3); $$->set_line_number(line_number);}
|EqExp NE RelExp{$$ = new EqExp_neq($1,$3); $$->set_line_number(line_number);}
;

LAndExp
:EqExp{$$ = $1;$$->set_line_number(line_number);}
|LAndExp AND EqExp{$$ = new LAndExp_and($1,$3); $$->set_line_number(line_number);}
;

LOrExp
:LAndExp{$$ = $1;$$->set_line_number(line_number);}
|LOrExp OR LAndExp{$$ = new LOrExp_or($1,$3); $$->set_line_number(line_number);}
;

ConstExp
:AddExp{$$ = $1;$$->set_line_number(line_number);}
;

ArrayDim
:'[' Exp ']'{$$ = $2;$$->set_line_number(line_number);}
;

ArrayDim_list
:ArrayDim
{
    $$ = new std::vector<Expression>;
    ($$)->push_back($1);
}
|ArrayDim_list ArrayDim
{
    ($1)->push_back($2);
    $$ = $1;
}
;

ConstArrayDim
:'[' ConstExp ']'{$$ = $2;$$->set_line_number(line_number);}
;

ConstArrayDim_list
:ConstArrayDim
{
    $$ = new std::vector<Expression>;
    ($$)->push_back($1);
}
|ConstArrayDim_list ConstArrayDim
{
    ($1)->push_back($2);
    $$ = $1;
}
;

%% 

void yyerror(char* s, ...)
{
    ++error_num;
    fout<<"parser error in line "<<line_number<<"\n";
}