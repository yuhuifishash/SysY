#include   "SysY_tree.h"

std::string ast_symbol_type_str(int type,int _bool = 0)
{
    switch(type)
    {
        case 0:return std::string("void");
        case 1:
        if(!_bool)
            return std::string("int");
        else
            return std::string("bool");
        case 2:return std::string("float");
        case 3:return std::string("string");
        default:break;
    }
    return NULL;
}

void __Program::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"Program\n";
    //printf("__Program\n");
    if(comp_list!=nullptr)
    for(auto comp:(*comp_list))
    {
        comp->printAST(s,pad+2);
    }
}

void CompUnit_Decl::printAST(std::ostream& s,int pad)
{
    //s<<std::string(pad,' ')<<"CompUnit_Decl\n";
    //if(decl!=nullptr)
    // std::cout<<std::string(pad,' ')<<"Decl in CompUnit_Decl:"<<decl<<"\n";
    // std::cout<<"decl\n";
    decl->printAST(s,pad);
}

/*
DeclStmt
    Id name:a scope:0 type:int
*/
void VarDecl::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"VarDecls   "<<"Type:"<<ast_symbol_type_str(type_decl)<<"\n";
    if(var_def_list!=nullptr)
    for(auto var:(*var_def_list))
    {
        var->printAST(s,pad+2);
    }
}

void VarDef_no_init::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"VarDef   name:"<<name->get_string()<<"   "<<"scope:"<<scope<<"\n";
    if(dims!=nullptr)
    {
        s<<std::string(pad+2,' ')<<" Dimensions:\n";
        for(auto dim:(*dims))
        {
            //s<<"["<<dim->get_string()<<"]";
            //s<<"["<<((Intconst*)dim)->val<<"]";
            dim->printAST(s,pad+4);
        }
    }
    s<<"\n";
}

void VarDef::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"VarDef   name:"<<name->get_string()<<"   "<<"scope:"<<scope<<"\n";
    if(dims!=nullptr)
    {
        s<<std::string(pad+2,' ')<<"Dimensions:\n";
        for(auto dim:(*dims))
        {
            //s<<"["<<dim->get_string()<<"]";
            //s<<"["<<((Intconst*)dim)->val<<"]";
            dim->printAST(s,pad+4);
        }
    }
    //Are you sure?
    s<<std::string(pad+2,' ')<<"init:\n";
    init->printAST(s,pad+4);
}

void ConstDef::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"ConstDef   name:"<<name->get_string()<<"   "<<"scope:"<<scope<<"\n";
    if(dims!=nullptr){
        for(auto dim:(*dims))
        {
            s<<std::string(pad+2,' ')<<"Dimensions:\n";
            //s<<"["<<dim->get_string()<<"]";
            //s<<"["<<((Intconst*)dim)->val<<"]";
            dim->printAST(s,pad+4);
        }
    }
    s<<std::string(pad+2,' ')<<"init:";
    init->printAST(s,pad+4);
}

void ConstInitVal::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"ConstInitVal\n";
    for(auto initval:(*initval))
    {
        initval->printAST(s,pad+2);
    }
}

void ConstInitVal_exp::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"ConstInitVal_exp   type:"<<ast_symbol_type_str(type)<<"\n";
    if(exp!=nullptr){
        exp->printAST(s,pad+2);
    }
    else {
        s<<std::string(pad+2,' ')<<"Empty Exp\n";
    }
}

void VarInitVal::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"VarInitVal\n";
    for(auto initval:(*initval))
    {
        initval->printAST(s,pad+2);
    }
}

void VarInitVal_exp::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"VarInitVal_exp\n";
    if(exp!=nullptr){
        exp->printAST(s,pad+2);
    }else{
        s<<std::string(pad+2,' ')<<"Empty Exp\n";
    }
}

void ConstDecl::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"ConstDecls   "<<"Type:"<<ast_symbol_type_str(type_decl)<<"\n";
    for(auto var:(*var_def_list))
    {
        var->printAST(s,pad+2);
    }
}

//FunctionDefine function name:main, type:int()
//  FuncParams
//  BlockStmt
void CompUnit_FuncDef::printAST(std::ostream& s,int pad)
{
    // s<<std::string(pad,' ')<<"CompUnit_FuncDef   ";
    // FuncDef fdef=(FuncDef)func_def;
    // s<<"name:"<<fdef->name->get_string()<<", type:"<<fdef->name->get_string()<<"(";
    // //print formals
    // for(std::vector<FuncParam>::iterator it=fdef->formals->begin();it!=fdef->formals->end();++it)
    // {
    //     s<<(*it)->type_decl->get_string();
    //     for(std::vector<Expression>::iterator jt=(*it)->dims->begin();jt!=(*it)->dims->end();++jt)
    //     {
    //         //s<<"["<<(*jt)->get_string()<<"]";
    //     }
    //     if(it!=(fdef->formals->end()-1))s<<",";
    // }
    // s<<")\n";
    // for(FuncParam param:(*fdef->formals))
    // {
    //     param->printAST(s,pad+2);
    // }
    // fdef->block->printAST(s,pad+2);
    func_def->printAST(s,pad);
}

//FunctionDefine function name:main, type:int()
void __FuncDef::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"FuncDef   name:"<<name->get_string()<<"   return_type:"<<ast_symbol_type_str(return_type)<<"\n";
    //s<<std::string(pad+2,' ')<<"FuncParams\n";
    for(auto param:(*formals))
    {
        // std::cout<<std::string(pad,' ')<<"param in __FuncDef:"<<param<<"\n";
        param->printAST(s,pad+2);
    }
    //s<<std::string(pad+2,' ')<<"BlockStmt\n";
    block->printAST(s,pad+2);
}

void __FuncFParam::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"FuncFParam   name:"<<name->get_string()<<"   type:"<<ast_symbol_type_str(type_decl)<<"   "<<"scope:"<<scope<<"\n";
    // std::cout<<std::string(pad,' ')<<"Dims in FuncFParam:"<<dims<<"\n";
    if(dims != nullptr){
        s<<std::string(pad+2,' ')<<"Dimensions:\n";
        for(auto dim:(*dims))
        {
            //s<<"["<<dim->get_string()<<"]";
            //s<<"["<<((Intconst*)dim)->val<<"]";
            if(dim==nullptr){
                s<<std::string(pad+4,' ')<<"Null dim\n";
            }
            else{
                dim->printAST(s,pad+4);
            }
        }
    }
    s<<"\n";

}

void __Block::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"Block   "<<"Size:"<<item_list->size()<<"\n";
    // std::cout<<std::string(pad,' ')<<"item_list in Block:"<<item_list<<"\n";
    // std::cout<<std::string(pad,' ')<<<<"\n";
    for(auto stmt:(*item_list))
    {
        // std::cout<<std::string(pad,' ')<<"item in Block:"<<stmt<<"\n";
        stmt->printAST(s,pad+2);
    }
}

void BlockItem_Decl::printAST(std::ostream& s,int pad)
{
    // std::cout<<std::string(pad,' ')<<"Decl"<<"\n";
    decl->printAST(s,pad);
}

void BlockItem_Stmt::printAST(std::ostream& s,int pad)
{
    // std::cout<<std::string(pad,' ')<<"Stmt"<<"\n";
    stmt->printAST(s,pad);
}

void assign_stmt::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"AssignStmt:\n";
    //s<<std::string(pad+2,' ')<<"Id name:"<<lval->get_string()<<"\n";
    //rhs->printAST(s,pad+2);
    //std::string(pad,' ')<<
    // std::cout<<"Assign\n";
    lval->printAST(s,pad+2);
    exp->printAST(s,pad+2);
}

void expr_stmt::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"Expression   Stmt   type:"<<ast_symbol_type_str(type)<<"\n";
    // std::cout<<"Expr\n";
    exp->printAST(s,pad+2);
}

void block_stmt::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"BlockStmt:\n";
    // std::cout<<"block\n";
    b->printAST(s,pad+2);
}

void Exp::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"Expression   type:"<<ast_symbol_type_str(type)<<"\n";
    addexp->printAST(s,pad+2);
}

void AddExp_plus::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"AddExp_plus: (+)   type:"<<ast_symbol_type_str(type)<<"\n";
    addexp->printAST(s,pad+2);
    mulexp->printAST(s,pad+2);
}

void AddExp_sub::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"AddExp_sub: (-)   type:"<<ast_symbol_type_str(type)<<"\n";
    addexp->printAST(s,pad+2);
    mulexp->printAST(s,pad+2);
}

void MulExp_mul::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"MulExp_mul: (*)   type:"<<ast_symbol_type_str(type)<<"\n";
    mulexp->printAST(s,pad+2);
    unary_exp->printAST(s,pad+2);
}

void MulExp_div::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"MulExp_div: (/)   type:"<<ast_symbol_type_str(type)<<"\n";
    mulexp->printAST(s,pad+2);
    unary_exp->printAST(s,pad+2);
}

void MulExp_mod::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"MulExp_mod: (%)   type:"<<ast_symbol_type_str(type)<<"\n";
    mulexp->printAST(s,pad+2);
    unary_exp->printAST(s,pad+2);
}

void RelExp_leq::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"RelExp_leq: (<=)   type:"<<ast_symbol_type_str(type,1)<<"\n";
    relexp->printAST(s,pad+2);
    addexp->printAST(s,pad+2);
}

void RelExp_lt::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"RelExp_lt: (<)   type:"<<ast_symbol_type_str(type,1)<<"\n";
    // std::cout<<std::string(pad,' ')<<"relexp in RelExp_lt:"<<relexp<<"\n";
    relexp->printAST(s,pad+2);
    // std::cout<<std::string(pad,' ')<<"addexp in RelExp_lt:"<<addexp<<"\n";
    addexp->printAST(s,pad+2);
}

void RelExp_geq::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"RelExp_geq: (>=)   type:"<<ast_symbol_type_str(type,1)<<"\n";
    relexp->printAST(s,pad+2);
    addexp->printAST(s,pad+2);
}

void RelExp_gt::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"RelExp_gt: (>)   type:"<<ast_symbol_type_str(type,1)<<"\n";
    relexp->printAST(s,pad+2);
    addexp->printAST(s,pad+2);
}

void EqExp_eq::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"EqExp_eq: (==)   type:"<<ast_symbol_type_str(type,1)<<"\n";
    eqexp->printAST(s,pad+2);
    relexp->printAST(s,pad+2);
}

void EqExp_neq::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"EqExp_neq: (!=)   type:"<<ast_symbol_type_str(type,1)<<"\n";
    eqexp->printAST(s,pad+2);
    relexp->printAST(s,pad+2);
}

void LAndExp_and::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"LAndExp_and: (&&)   type:"<<ast_symbol_type_str(type,1)<<"\n";
    landexp->printAST(s,pad+2);
    eqexp->printAST(s,pad+2);
}

void LOrExp_or::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"LOrExp_or: (||)   type:"<<ast_symbol_type_str(type,1)<<"\n";
    lorexp->printAST(s,pad+2);
    landexp->printAST(s,pad+2);
}

void ConstExp::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"ConstExp   type:"<<ast_symbol_type_str(type)<<"\n";
    addexp->printAST(s,pad+2);
}

void Lval::printAST(std::ostream& s,int pad)
{
    // std::cout<<"lval\n";
    s<<std::string(pad,' ')<<"Lval   type:"<<ast_symbol_type_str(type)<<"   name:"<<name->get_string()<<"   "<<"scope:"<<scope<<"\n";
    if(dims!=nullptr){
        s<<std::string(pad+2,' ')<<"dims:\n";
        for(auto dim:(*dims))
        {
            dim->printAST(s,pad+4);
        }
    }
}

void FuncRParams::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"FuncRParams:\n";
    for(auto param:(*params))
    {
        param->printAST(s,pad+2);
    }
}

void Func_call::printAST(std::ostream& s,int pad)
{
    // std::cout<<"FuncCall\n";
    s<<std::string(pad,' ')<<"FuncCall   name:"<<name->get_string()<<"   type:"<<ast_symbol_type_str(type)<<"\n";
    if(funcr_params!=nullptr){
        funcr_params->printAST(s,pad+2);
    } else {
        s<<std::string(pad+2,' ')<<"Empty params\n";
    }
}

void UnaryExp_plus::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"UnaryExp_plus:(+)   type:"<<ast_symbol_type_str(type)<<"\n";
    unary_exp->printAST(s,pad+2);
}

void UnaryExp_neg::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"UnaryExp_neg:(-)   type:"<<ast_symbol_type_str(type)<<"\n";
    unary_exp->printAST(s,pad+2);
}

void UnaryExp_not::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"UnaryExp_not:(!)   type:"<<ast_symbol_type_str(type,1)<<"\n";
    unary_exp->printAST(s,pad+2);
}

void IntConst::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"Intconst   val:"<<val<<"   type:"<<ast_symbol_type_str(type)<<"\n";
}

void FloatConst::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"Floatconst   val:"<<val<<"   type:"<<ast_symbol_type_str(type)<<"\n";
}

void PrimaryExp_branch::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"PrimaryExp_branch   type:"<<ast_symbol_type_str(type)<<"\n";
    exp->printAST(s,pad+2);
}

void ifelse_stmt::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"IfElseStmt:\n";
    s<<std::string(pad,' ')<<"Cond   type:bool\n";
    // std::cout<<"Cond in Ifelse:"<<Cond<<"\n";
    Cond->printAST(s,pad+2);
    s<<std::string(pad,' ')<<"if_stmt:\n";
    if_stmt->printAST(s,pad+2);
    s<<std::string(pad,' ')<<"else_Stmt:\n";
    else_stmt->printAST(s,pad+2);
}

void if_stmt::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"IfStmt:\n";
    s<<std::string(pad,' ')<<"Cond   type:bool\n";
    // std::cout<<std::string(pad,' ')<<"Cond in If:"<<Cond<<"\n";
    Cond->printAST(s,pad+2);
    s<<std::string(pad,' ')<<"if_stmt:\n";
    // std::cout<<std::string(pad,' ')<<"Stmt in if:"<<ifstmt<<"\n";
    ifstmt->printAST(s,pad+2);
}

void while_stmt::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"WhileStmt:\n";
    s<<std::string(pad,' ')<<"Cond   type:bool\n";
    // std::cout<<std::string(pad,' ')<<"Cond in while:"<<Cond<<"\n";
    Cond->printAST(s,pad+2);
    s<<std::string(pad,' ')<<"Body:\n";
    // std::cout<<std::string(pad,' ')<<"Body in while:"<<body<<"\n";
    body->printAST(s,pad+2);
}

void continue_stmt::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"ContinueStmt\n";
}

void break_stmt::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"BreakStmt\n";
}

void return_stmt::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"ReturnStmt:\n";
    // std::cout<<"Return Stmt void\n";
    return_exp->printAST(s,pad+2);
}

void return_stmt_void::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"ReturnStmt_void   type:void\n";
    // std::cout<<std::string(pad,' ')<<"Return Stmt void\n";
}

void StringConst::printAST(std::ostream& s,int pad)
{
    s<<std::string(pad,' ')<<"StringConst   type:string   val:"<<str->get_string()<<"\n";
}

void null_stmt::printAST(std::ostream& s,int pad){
    s<<std::string(pad,' ')<<"NullStmt\n";
}