#include "SysY_tree.h"
#include "type.h"

std::string type_status[5] = {"Void", "Int", "Float", "Bool", "Ptr"};

std::string Type::GetTypeInfo() { return "Type: " + type_status[type]; }

std::string ConstValue::GetConstValueInfo(Type ty) {
    if (!ConstTag) {
        return "";
    }

    if (ty.type == Type::INT) {
        return "ConstValue: " + std::to_string(val.IntVal);
    } else if (ty.type == Type::FLOAT) {
        return "ConstValue: " + std::to_string(val.FloatVal);
    } else if (ty.type == Type::BOOL) {
        return "ConstValue: " + std::to_string(val.BoolVal);
    } else {
        return "";
    }
}

std::string NodeAttribute::GetAttributeInfo() { return T.GetTypeInfo() + "   " + V.GetConstValueInfo(T); }

void __Program::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "Program\n";
    if (comp_list != nullptr) {
        for (auto comp : (*comp_list)) {
            comp->printAST(s, pad + 2);
        }
    }
}

void CompUnit_Decl::printAST(std::ostream &s, int pad) { decl->printAST(s, pad); }

/*
DeclStmt
    Id name:a scope:0 type:int
*/
void VarDecl::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "VarDecls   "
      << "Type: " << type_status[type_decl] << "\n";
    if (var_def_list != nullptr)
        for (auto var : (*var_def_list)) {
            var->printAST(s, pad + 2);
        }
}

void VarDef_no_init::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "VarDef   name:" << name->get_string() << "   "
      << "scope:" << scope << "\n";
    if (dims != nullptr) {
        s << std::string(pad + 2, ' ') << " Dimensions:\n";
        for (auto dim : (*dims)) {
            dim->printAST(s, pad + 4);
        }
    }
    s << "\n";
}

void VarDef::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "VarDef   name:" << name->get_string() << "   "
      << "scope:" << scope << "\n";
    if (dims != nullptr) {
        s << std::string(pad + 2, ' ') << "Dimensions:\n";
        for (auto dim : (*dims)) {
            dim->printAST(s, pad + 4);
        }
    }
    s << std::string(pad + 2, ' ') << "init:\n";
    init->printAST(s, pad + 4);
}

void ConstDef::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "ConstDef   name:" << name->get_string() << "   "
      << "scope:" << scope << "\n";
    if (dims != nullptr) {
        for (auto dim : (*dims)) {
            s << std::string(pad + 2, ' ') << "Dimensions:\n";
            dim->printAST(s, pad + 4);
        }
    }
    s << std::string(pad + 2, ' ') << "init:\n";
    init->printAST(s, pad + 4);
}

void ConstInitVal::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "ConstInitVal\n";
    for (auto initval : (*initval)) {
        initval->printAST(s, pad + 2);
    }
}

void ConstInitVal_exp::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "ConstInitVal_exp   " << attribute.GetAttributeInfo() << "\n";
    if (exp != nullptr) {
        exp->printAST(s, pad + 2);
    } else {
        s << std::string(pad + 2, ' ') << "Empty Exp\n";
    }
}

void VarInitVal::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "VarInitVal\n";
    for (auto initval : (*initval)) {
        initval->printAST(s, pad + 2);
    }
}

void VarInitVal_exp::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "VarInitVal_exp\n";
    if (exp != nullptr) {
        exp->printAST(s, pad + 2);
    } else {
        s << std::string(pad + 2, ' ') << "Empty Exp\n";
    }
}

void ConstDecl::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "ConstDecls   "
      << "Type: " << type_status[type_decl] << "\n";
    for (auto var : (*var_def_list)) {
        var->printAST(s, pad + 2);
    }
}

// FunctionDefine function name:main, type:int()
//   FuncParams
//   BlockStmt
void CompUnit_FuncDef::printAST(std::ostream &s, int pad) { func_def->printAST(s, pad); }

// FunctionDefine function name:main, type:int()
void __FuncDef::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "FuncDef   Name:" << name->get_string()
      << "   ReturnType: " << type_status[return_type] << "\n";
    for (auto param : (*formals)) {
        param->printAST(s, pad + 2);
    }
    block->printAST(s, pad + 2);
}

void __FuncFParam::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "FuncFParam   name:" << name->get_string()
      << "   Type:" << type_status[type_decl] << "   "
      << "scope:" << scope << "\n";
    if (dims != nullptr) {
        s << std::string(pad + 2, ' ') << "Dimensions:\n";
        for (auto dim : (*dims)) {
            if (dim == nullptr) {
                s << std::string(pad + 4, ' ') << "Null dim\n";
            } else {
                dim->printAST(s, pad + 4);
            }
        }
    }
    s << "\n";
}

void __Block::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "Block   "
      << "Size:" << item_list->size() << "\n";

    for (auto stmt : (*item_list)) {
        stmt->printAST(s, pad + 2);
    }
}

void BlockItem_Decl::printAST(std::ostream &s, int pad) { decl->printAST(s, pad); }

void BlockItem_Stmt::printAST(std::ostream &s, int pad) { stmt->printAST(s, pad); }

void assign_stmt::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "AssignStmt:\n";

    lval->printAST(s, pad + 2);
    exp->printAST(s, pad + 2);
}

void expr_stmt::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "ExpressionStmt:   " << attribute.GetAttributeInfo() << "\n";
    exp->printAST(s, pad + 2);
}

void block_stmt::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "BlockStmt:\n";
    b->printAST(s, pad + 2);
}

void Exp::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "Expression   " << attribute.GetAttributeInfo() << "\n";
    addexp->printAST(s, pad + 2);
}

void AddExp_plus::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "AddExp_plus: (+)   " << attribute.GetAttributeInfo() << "\n";
    addexp->printAST(s, pad + 2);
    mulexp->printAST(s, pad + 2);
}

void AddExp_sub::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "AddExp_sub: (-)   " << attribute.GetAttributeInfo() << "\n";
    addexp->printAST(s, pad + 2);
    mulexp->printAST(s, pad + 2);
}

void MulExp_mul::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "MulExp_mul: (*)   " << attribute.GetAttributeInfo() << "\n";
    mulexp->printAST(s, pad + 2);
    unary_exp->printAST(s, pad + 2);
}

void MulExp_div::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "MulExp_div: (/)   " << attribute.GetAttributeInfo() << "\n";
    mulexp->printAST(s, pad + 2);
    unary_exp->printAST(s, pad + 2);
}

void MulExp_mod::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "MulExp_mod: (%)   " << attribute.GetAttributeInfo() << "\n";
    mulexp->printAST(s, pad + 2);
    unary_exp->printAST(s, pad + 2);
}

void RelExp_leq::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "RelExp_leq: (<=)   " << attribute.GetAttributeInfo() << "\n";
    relexp->printAST(s, pad + 2);
    addexp->printAST(s, pad + 2);
}

void RelExp_lt::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "RelExp_lt: (<)   " << attribute.GetAttributeInfo() << "\n";
    relexp->printAST(s, pad + 2);
    addexp->printAST(s, pad + 2);
}

void RelExp_geq::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "RelExp_geq: (>=)   " << attribute.GetAttributeInfo() << "\n";
    relexp->printAST(s, pad + 2);
    addexp->printAST(s, pad + 2);
}

void RelExp_gt::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "RelExp_gt: (>)   " << attribute.GetAttributeInfo() << "\n";
    relexp->printAST(s, pad + 2);
    addexp->printAST(s, pad + 2);
}

void EqExp_eq::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "EqExp_eq: (==)   " << attribute.GetAttributeInfo() << "\n";
    eqexp->printAST(s, pad + 2);
    relexp->printAST(s, pad + 2);
}

void EqExp_neq::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "EqExp_neq: (!=)   " << attribute.GetAttributeInfo() << "\n";
    eqexp->printAST(s, pad + 2);
    relexp->printAST(s, pad + 2);
}

void LAndExp_and::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "LAndExp_and: (&&)   " << attribute.GetAttributeInfo() << "\n";
    landexp->printAST(s, pad + 2);
    eqexp->printAST(s, pad + 2);
}

void LOrExp_or::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "LOrExp_or: (||)   " << attribute.GetAttributeInfo() << "\n";
    lorexp->printAST(s, pad + 2);
    landexp->printAST(s, pad + 2);
}

void ConstExp::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "ConstExp   " << attribute.GetAttributeInfo() << "\n";
    addexp->printAST(s, pad + 2);
}

void Lval::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "Lval   " << attribute.GetAttributeInfo()
      << "   name:" << name->get_string() << "   "
      << "scope:" << scope << "\n";
    if (dims != nullptr) {
        s << std::string(pad + 2, ' ') << "dims:\n";
        for (auto dim : (*dims)) {
            dim->printAST(s, pad + 4);
        }
    }
}

void FuncRParams::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "FuncRParams:\n";
    for (auto param : (*params)) {
        param->printAST(s, pad + 2);
    }
}

void Func_call::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "FuncCall   name:" << name->get_string() << "   "
      << attribute.GetAttributeInfo() << "\n";
    if (funcr_params != nullptr) {
        funcr_params->printAST(s, pad + 2);
    } else {
        s << std::string(pad + 2, ' ') << "Empty params\n";
    }
}

void UnaryExp_plus::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "UnaryExp_plus:(+)   " << attribute.GetAttributeInfo() << "\n";
    unary_exp->printAST(s, pad + 2);
}

void UnaryExp_neg::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "UnaryExp_neg:(-)   " << attribute.GetAttributeInfo() << "\n";
    unary_exp->printAST(s, pad + 2);
}

void UnaryExp_not::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "UnaryExp_not:(!)   " << attribute.GetAttributeInfo() << "\n";
    unary_exp->printAST(s, pad + 2);
}

void IntConst::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "Intconst   val:" << val << "   " << attribute.GetAttributeInfo() << "\n";
}

void FloatConst::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "Floatconst   val:" << val << "   " << attribute.GetAttributeInfo() << "\n";
}

void PrimaryExp_branch::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "PrimaryExp_branch   " << attribute.GetAttributeInfo() << "\n";
    exp->printAST(s, pad + 2);
}

void ifelse_stmt::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "IfElseStmt:\n";
    s << std::string(pad, ' ') << "Cond   type:bool\n";
    Cond->printAST(s, pad + 2);
    s << std::string(pad, ' ') << "if_stmt:\n";
    ifstmt->printAST(s, pad + 2);
    s << std::string(pad, ' ') << "else_Stmt:\n";
    elsestmt->printAST(s, pad + 2);
}

void if_stmt::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "IfStmt:\n";
    s << std::string(pad, ' ') << "Cond   type:bool\n";
    Cond->printAST(s, pad + 2);
    s << std::string(pad, ' ') << "if_stmt:\n";
    ifstmt->printAST(s, pad + 2);
}

void while_stmt::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "WhileStmt:\n";
    s << std::string(pad, ' ') << "Cond   type:bool\n";
    Cond->printAST(s, pad + 2);
    s << std::string(pad, ' ') << "Body:\n";
    body->printAST(s, pad + 2);
}

void continue_stmt::printAST(std::ostream &s, int pad) { s << std::string(pad, ' ') << "ContinueStmt\n"; }

void break_stmt::printAST(std::ostream &s, int pad) { s << std::string(pad, ' ') << "BreakStmt\n"; }

void return_stmt::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "ReturnStmt:\n";
    return_exp->printAST(s, pad + 2);
}

void return_stmt_void::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "ReturnStmt_void   type:void\n";
}

void StringConst::printAST(std::ostream &s, int pad) {
    s << std::string(pad, ' ') << "StringConst   type:string   val:" << str->get_string() << "\n";
}

void null_stmt::printAST(std::ostream &s, int pad) { s << std::string(pad, ' ') << "NullStmt\n"; }