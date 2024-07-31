#include "semant.h"
#include "../include/SysY_tree.h"
#include "../include/ir.h"
#include "../include/type.h"

extern LLVMIR llvmIR;
extern StringTable str_table;

static int GlobalVarCnt = 0;
std::map<std::string, VarAttribute> ConstGlobalMap;
std::map<std::string, VarAttribute> StaticGlobalMap;    // in SysY2022, we assume all the global are static

SemantTable semant_table;
std::vector<std::string> error_msgs{};

static bool MainTag = 0;
static int InWhileCount = 0;

// Type::VOID -> VOID    Type::Int -> I32    Type::FLOAT -> FLOAT32
LLVMType Type2LLvm[6] = {LLVMType::VOID, LLVMType::I32, LLVMType::FLOAT32,
                         LLVMType::I1,   LLVMType::PTR, LLVMType::DOUBLE};

extern NodeAttribute (*SemantBinaryNode[6][6])(NodeAttribute a, NodeAttribute b, NodeAttribute::opcode opcode);
extern NodeAttribute (*SemantSingleNode[6])(NodeAttribute a, NodeAttribute::opcode opcode);
/*
Find Max Alignable Size
For example, int a[3][4][5]
If relative pos can be divided by 4*5, them 20 is the max alignable size, so min_dim_step = 1, initialize 4*5
size If relative pos can be divided by 5, can't divided by 4*5, them 5 is the max alignable size, so
min_dim_step = 2, initialize 5 size If relative pos can't be divided by 5, them 1 is the max alignable size,
so min_dim_step = 3, initialize 1 size But For a pair of { }, pos = 0, although it can be divided by 3*4*5,
but the dim_step should be at least 1, so min_dim_step = 1

Another Example, int a[][2][2] = {{0},1,2,3,4,5,6,7}, 0 for the block 2*2, dim step = 1
int a[][2][2] = {0,{1},2,3,4,5,6,7}, pos 0 at [0][0][0], pos 1 can't be aligned, so block size = 1, dim step =
3

Suppose We are initializing array, dims are: [val.dims[dimsIdx],val.dims[dimsIdx+1],... val.dims[end]]
And now We need to find a minimal dim_step, s.t.
    the block : [val.dims[dimsIdx+dim_step],...,val.dims[end]]
    relative pos should at a alignable pos,
        i.e. relative pos % (val.dims[dimsIdx]*val.dims[dimsIdx+1]*...*val.dims[dimsIdx+dim_step-1]) == 0
        (the relative pos begin from 0)

@const VarAttribute& val: just used for get dims
@int relativePos: relative pos in the block
@int dimsIdx: current dim index
@int& max_subBlock_sz: parameter for output,return max alignable size
@return: min dim step
*/
int FindMinDimStep(const VarAttribute &val, int relativePos, int dimsIdx, int &max_subBlock_sz) {
    int min_dim_step = 1;
    int blockSz = 1;
    for (int i = dimsIdx + 1; i < val.dims.size(); i++) {
        blockSz *= val.dims[i];
    }
    while (relativePos % blockSz != 0) {
        min_dim_step++;
        blockSz /= val.dims[dimsIdx + min_dim_step - 1];
    }
    max_subBlock_sz = blockSz;
    return min_dim_step;
}

void RecursiveArrayInit(InitVal init, VarAttribute &val, int begPos, int endPos, int dimsIdx) {
    // dimsIdx from 0
    int pos = begPos;

    // Old Policy: One { } for one dim

    for (InitVal iv : *(init->GetList())) {
        if (iv->IsExp()) {
            if (iv->attribute.T.type == Type::VOID) {
                error_msgs.push_back("exp can not be void in initval in line " + std::to_string(init->GetLineNumber()) +
                                     "\n");
            }
            if (val.type == Type::INT) {
                if (iv->attribute.T.type == Type::INT) {
                    val.IntInitVals[pos] = iv->attribute.V.val.IntVal;
                } else if (iv->attribute.T.type == Type::FLOAT) {
                    val.IntInitVals[pos] = iv->attribute.V.val.FloatVal;
                }
            }
            if (val.type == Type::FLOAT) {
                if (iv->attribute.T.type == Type::INT) {
                    val.FloatInitVals[pos] = iv->attribute.V.val.IntVal;
                } else if (iv->attribute.T.type == Type::FLOAT) {
                    val.FloatInitVals[pos] = iv->attribute.V.val.FloatVal;
                }
            }
            pos++;
        } else {
            // New Policy: One { } for the max align-able dim
            // More informations see comments above FindMinDimStep
            int max_subBlock_sz = 0;
            int min_dim_step = FindMinDimStep(val, pos - begPos, dimsIdx, max_subBlock_sz);
            RecursiveArrayInit(iv, val, pos, pos + max_subBlock_sz - 1, dimsIdx + min_dim_step);
            pos += max_subBlock_sz;
        }
    }
}

void SolveIntInitVal(InitVal init, VarAttribute &val)    // used for global or const
{
    val.type = Type::INT;
    int arraySz = 1;
    for (auto d : val.dims) {
        arraySz *= d;
    }
    val.IntInitVals.resize(arraySz, 0);
    if (val.dims.empty()) {
        if (init->GetExp() != nullptr) {
            if (init->GetExp()->attribute.T.type == Type::VOID) {
                error_msgs.push_back("Expression can not be void in initval in line " +
                                     std::to_string(init->GetLineNumber()) + "\n");
            } else if (init->GetExp()->attribute.T.type == Type::INT) {
                val.IntInitVals[0] = init->GetExp()->attribute.V.val.IntVal;
            } else if (init->GetExp()->attribute.T.type == Type::FLOAT) {
                val.IntInitVals[0] = init->GetExp()->attribute.V.val.FloatVal;
            }
        }
        return;
    } else {
        if (init->IsExp()) {
            if ((init)->GetExp() != nullptr) {
                error_msgs.push_back("InitVal can not be exp in line " + std::to_string(init->GetLineNumber()) + "\n");
            }
            return;
        } else {
            RecursiveArrayInit(init, val, 0, arraySz - 1, 0);
        }
    }
}

void SolveFloatInitVal(InitVal init, VarAttribute &val)    // used for global or const
{
    val.type = Type::FLOAT;
    int arraySz = 1;
    for (auto d : val.dims) {
        arraySz *= d;
    }
    val.FloatInitVals.resize(arraySz, 0);
    if (val.dims.empty()) {
        if (init->GetExp() != nullptr) {
            if (init->GetExp()->attribute.T.type == Type::VOID) {
                error_msgs.push_back("exp can not be void in initval in line " + std::to_string(init->GetLineNumber()) +
                                     "\n");
            } else if (init->GetExp()->attribute.T.type == Type::FLOAT) {
                val.FloatInitVals[0] = init->GetExp()->attribute.V.val.FloatVal;
            } else if (init->GetExp()->attribute.T.type == Type::INT) {
                val.FloatInitVals[0] = init->GetExp()->attribute.V.val.IntVal;
            }
        }
        return;
    } else {
        if (init->IsExp()) {
            if ((init)->GetExp() != nullptr) {
                error_msgs.push_back("InitVal can not be exp in line " + std::to_string(init->GetLineNumber()) + "\n");
            }
            return;
        } else {
            RecursiveArrayInit(init, val, 0, arraySz - 1, 0);
        }
    }
}

// int b = a[3][4]
int GetArrayIntVal(VarAttribute &val, std::vector<int> &indexs) {
    //[i] + i
    //[i][j] + i*dim[1] + j
    //[i][j][k] + i*dim[1]*dim[2] + j*dim[2] + k
    //[i][j][k][w] + i*dim[1]*dim[2]*dim[3] + j*dim[2]*dim[3] + k*dim[3] + w
    int idx = 0;
    for (int curIndex = 0; curIndex < indexs.size(); curIndex++) {
        idx *= val.dims[curIndex];
        idx += indexs[curIndex];
    }
    return val.IntInitVals[idx];
}

float GetArrayFloatVal(VarAttribute &val, std::vector<int> &indexs) {
    int idx = 0;
    for (int curIndex = 0; curIndex < indexs.size(); curIndex++) {
        idx *= val.dims[curIndex];
        idx += indexs[curIndex];
    }
    return val.FloatInitVals[idx];
}

void __Program::TypeCheck() {
    semant_table.symbol_table.enter_scope();
    auto comp_vector = *comp_list;
    for (auto comp : comp_vector) {
        comp->TypeCheck();
    }
    if (!MainTag) {
        error_msgs.push_back("main function does not exist.\n");
    }
}

void Exp::TypeCheck() {
    addexp->TypeCheck();

    attribute = addexp->attribute;
}

void AddExp_plus::TypeCheck() {
    addexp->TypeCheck();
    mulexp->TypeCheck();

    attribute = SemantBinaryNode[addexp->attribute.T.type][mulexp->attribute.T.type](
    addexp->attribute, mulexp->attribute, NodeAttribute::ADD);
}

void AddExp_sub::TypeCheck() {
    addexp->TypeCheck();
    mulexp->TypeCheck();

    attribute = SemantBinaryNode[addexp->attribute.T.type][mulexp->attribute.T.type](
    addexp->attribute, mulexp->attribute, NodeAttribute::SUB);
}

void MulExp_mul::TypeCheck() {
    mulexp->TypeCheck();
    unary_exp->TypeCheck();

    attribute = SemantBinaryNode[mulexp->attribute.T.type][unary_exp->attribute.T.type](
    mulexp->attribute, unary_exp->attribute, NodeAttribute::MUL);
}

void MulExp_div::TypeCheck() {
    mulexp->TypeCheck();
    unary_exp->TypeCheck();

    attribute = SemantBinaryNode[mulexp->attribute.T.type][unary_exp->attribute.T.type](
    mulexp->attribute, unary_exp->attribute, NodeAttribute::DIV);
}

void MulExp_mod::TypeCheck() {
    mulexp->TypeCheck();
    unary_exp->TypeCheck();

    attribute = SemantBinaryNode[mulexp->attribute.T.type][unary_exp->attribute.T.type](
    mulexp->attribute, unary_exp->attribute, NodeAttribute::MOD);
}

void RelExp_leq::TypeCheck() {
    relexp->TypeCheck();
    addexp->TypeCheck();

    attribute = SemantBinaryNode[relexp->attribute.T.type][addexp->attribute.T.type](
    relexp->attribute, addexp->attribute, NodeAttribute::LEQ);
}

void RelExp_lt::TypeCheck() {
    relexp->TypeCheck();
    addexp->TypeCheck();

    attribute = SemantBinaryNode[relexp->attribute.T.type][addexp->attribute.T.type](
    relexp->attribute, addexp->attribute, NodeAttribute::LT);
}

void RelExp_geq::TypeCheck() {
    relexp->TypeCheck();
    addexp->TypeCheck();

    attribute = SemantBinaryNode[relexp->attribute.T.type][addexp->attribute.T.type](
    relexp->attribute, addexp->attribute, NodeAttribute::GEQ);
}

void RelExp_gt::TypeCheck() {
    relexp->TypeCheck();
    addexp->TypeCheck();

    attribute = SemantBinaryNode[relexp->attribute.T.type][addexp->attribute.T.type](
    relexp->attribute, addexp->attribute, NodeAttribute::GT);
}

void EqExp_eq::TypeCheck() {
    eqexp->TypeCheck();
    relexp->TypeCheck();

    attribute = SemantBinaryNode[eqexp->attribute.T.type][relexp->attribute.T.type](eqexp->attribute, relexp->attribute,
                                                                                    NodeAttribute::EQ);
}

void EqExp_neq::TypeCheck() {
    eqexp->TypeCheck();
    relexp->TypeCheck();

    attribute = SemantBinaryNode[eqexp->attribute.T.type][relexp->attribute.T.type](eqexp->attribute, relexp->attribute,
                                                                                    NodeAttribute::NE);
}

void LAndExp_and::TypeCheck() {
    landexp->TypeCheck();
    eqexp->TypeCheck();

    attribute = SemantBinaryNode[landexp->attribute.T.type][eqexp->attribute.T.type](
    landexp->attribute, eqexp->attribute, NodeAttribute::AND);
}

void LOrExp_or::TypeCheck() {
    lorexp->TypeCheck();
    landexp->TypeCheck();

    attribute = SemantBinaryNode[lorexp->attribute.T.type][landexp->attribute.T.type](
    lorexp->attribute, landexp->attribute, NodeAttribute::OR);
}

void ConstExp::TypeCheck() {
    addexp->TypeCheck();
    attribute = addexp->attribute;
    if (!attribute.V.ConstTag) {    // addexp is not const
        error_msgs.push_back("Expression is not const " + std::to_string(line_number) + "\n");
    }
}

void Lval::TypeCheck() {
    is_left = false;
    std::vector<int> arrayindexs;
    bool arrayindexConstTag = true;
    if (dims != nullptr) {
        for (auto d : *dims) {
            d->TypeCheck();
            if (d->attribute.T.type == Type::VOID) {
                error_msgs.push_back("Array Dim can not be void in line " + std::to_string(line_number) + "\n");
            } else if (d->attribute.T.type == Type::FLOAT) {
                error_msgs.push_back("Array Dim can not be float in line " + std::to_string(line_number) + "\n");
            }
            arrayindexs.push_back(d->attribute.V.val.IntVal);
            arrayindexConstTag &= d->attribute.V.ConstTag;
        }
    }

    VarAttribute val = semant_table.symbol_table.lookup_val(name);
    if (val.type != Type::VOID) {    // local var
        scope = semant_table.symbol_table.lookup_scope(name);
    } else if (semant_table.GlobalTable.find(name) != semant_table.GlobalTable.end()) {    // global var
        val = semant_table.GlobalTable[name];
        scope = 0;
    } else {
        error_msgs.push_back("Undefined var in line " + std::to_string(line_number) + "\n");
        return;
    }

    if (arrayindexs.size() == val.dims.size()) {    // lval is a number(not a array)
        attribute.V.ConstTag = val.ConstTag & arrayindexConstTag;
        attribute.T.type = val.type;
        if (attribute.V.ConstTag) {
            if (attribute.T.type == Type::INT) {
                attribute.V.val.IntVal = GetArrayIntVal(val, arrayindexs);
            } else if (attribute.T.type == Type::FLOAT) {
                attribute.V.val.FloatVal = GetArrayFloatVal(val, arrayindexs);
            }
        }
    } else if (arrayindexs.size() < val.dims.size()) {    // lval is a array
        attribute.V.ConstTag = false;
        attribute.T.type = Type::PTR;
    } else {
        error_msgs.push_back("Array is unmatched in line " + std::to_string(line_number) + "\n");
    }
}

void FuncRParams::TypeCheck() {}

void Func_call::TypeCheck() {
    int funcr_params_len = 0;
    if (funcr_params != nullptr) {
        auto params = ((FuncRParams *)funcr_params)->params;
        funcr_params_len = params->size();
        for (auto param : *params) {
            param->TypeCheck();
            if (param->attribute.T.type == Type::VOID) {
                error_msgs.push_back("FuncRParam is void in line " + std::to_string(line_number) + "\n");
            }
        }
    }
    // check name exist
    // set type
    auto it = semant_table.FunctionTable.find(name);
    if (it == semant_table.FunctionTable.end()) {
        error_msgs.push_back("Function is undefined in line " + std::to_string(line_number) + "\n");
        return;
    }
    FuncDef funcdef = it->second;
    if ((funcdef->formals)->size() != funcr_params_len) {
        error_msgs.push_back("Function FuncFParams and FuncRParams are not matched in line " +
                             std::to_string(line_number) + "\n");
    }

    attribute.T.type = semant_table.FunctionTable[name]->return_type;
    attribute.V.ConstTag = false;
}

void UnaryExp_plus::TypeCheck() {
    unary_exp->TypeCheck();
    attribute = SemantSingleNode[unary_exp->attribute.T.type](unary_exp->attribute, NodeAttribute::ADD);
}

void UnaryExp_neg::TypeCheck() {
    unary_exp->TypeCheck();
    attribute = SemantSingleNode[unary_exp->attribute.T.type](unary_exp->attribute, NodeAttribute::SUB);
}

void UnaryExp_not::TypeCheck() {
    unary_exp->TypeCheck();
    attribute = SemantSingleNode[unary_exp->attribute.T.type](unary_exp->attribute, NodeAttribute::NOT);
}

void IntConst::TypeCheck() {
    attribute.T.type = Type::INT;
    attribute.V.ConstTag = true;
    attribute.V.val.IntVal = val;
}

void FloatConst::TypeCheck() {
    attribute.T.type = Type::FLOAT;
    attribute.V.ConstTag = true;
    attribute.V.val.FloatVal = val;
}

void StringConst::TypeCheck() { std::cerr << "StringConst is not implement now\n"; }

void PrimaryExp_branch::TypeCheck() {
    exp->TypeCheck();
    attribute = exp->attribute;
}

void assign_stmt::TypeCheck() {
    lval->TypeCheck();
    exp->TypeCheck();
    ((Lval *)lval)->is_left = true;    // assign_stmt -> leftvalue
    if (exp->attribute.T.type == Type::VOID) {
        error_msgs.push_back("void type can not be assign_stmt's expression " + std::to_string(line_number) + "\n");
    }
}

void expr_stmt::TypeCheck() {
    exp->TypeCheck();
    attribute = exp->attribute;
}

void block_stmt::TypeCheck() { b->TypeCheck(); }

void ifelse_stmt::TypeCheck() {
    Cond->TypeCheck();
    if (Cond->attribute.T.type == Type::VOID) {
        error_msgs.push_back("if cond type is invalid " + std::to_string(line_number) + "\n");
    }
    ifstmt->TypeCheck();
    elsestmt->TypeCheck();
}

void if_stmt::TypeCheck() {
    Cond->TypeCheck();
    if (Cond->attribute.T.type == Type::VOID) {
        error_msgs.push_back("if cond type is invalid " + std::to_string(line_number) + "\n");
    }
    ifstmt->TypeCheck();
}

void while_stmt::TypeCheck() {
    Cond->TypeCheck();

    if (Cond->attribute.T.type == Type::VOID) {
        error_msgs.push_back("while cond type is invalid " + std::to_string(line_number) + "\n");
    }

    InWhileCount++;
    body->TypeCheck();
    InWhileCount--;
}

void continue_stmt::TypeCheck() {
    if (!InWhileCount) {
        error_msgs.push_back("continue is not in while stmt in line " + std::to_string(line_number) + "\n");
    }
}

void break_stmt::TypeCheck() {
    if (!InWhileCount) {
        error_msgs.push_back("break is not in while stmt in line " + std::to_string(line_number) + "\n");
    }
}

void return_stmt::TypeCheck() {
    return_exp->TypeCheck();

    if (return_exp->attribute.T.type == Type::VOID) {
        error_msgs.push_back("return type is invalid in line " + std::to_string(line_number) + "\n");
    }
}

void return_stmt_void::TypeCheck() {}

void ConstInitVal::TypeCheck() {
    for (auto init : *initval) {
        init->TypeCheck();
    }
}

void ConstInitVal_exp::TypeCheck() {
    if (exp == nullptr) {
        return;
    }

    exp->TypeCheck();
    attribute = exp->attribute;

    if (attribute.T.type == Type::VOID) {
        error_msgs.push_back("Initval expression can not be void in line " + std::to_string(line_number) + "\n");
    }
    if (!attribute.V.ConstTag) {    // exp is not const
        error_msgs.push_back("Expression is not const " + std::to_string(line_number) + "\n");
    }
}

void VarInitVal::TypeCheck() {
    for (auto init : *initval) {
        init->TypeCheck();
    }
}

void VarInitVal_exp::TypeCheck() {
    if (exp == nullptr) {
        return;
    }

    exp->TypeCheck();
    attribute = exp->attribute;

    if (attribute.T.type == Type::VOID) {
        error_msgs.push_back("Initval expression can not be void in line " + std::to_string(line_number) + "\n");
    }
}

void VarDef_no_init::TypeCheck() {}

void VarDef::TypeCheck() {}

void ConstDef::TypeCheck() {}

void VarDecl::TypeCheck() {
    auto def_vector = *var_def_list;
    for (auto def : def_vector) {
        // multiple def check
        if (semant_table.symbol_table.lookup_scope(def->GetName()) == semant_table.symbol_table.get_current_scope()) {
            error_msgs.push_back("multiple definition of " + def->GetName()->get_string() + " exists in line " +
                                 std::to_string(line_number) + "\n");
        }

        VarAttribute val;
        val.ConstTag = false;
        val.type = type_decl;

        def->scope = semant_table.symbol_table.get_current_scope();
        if (def->GetDims() != nullptr) {
            auto dim_vector = *def->GetDims();
            for (auto d : dim_vector) {
                d->TypeCheck();
                if (d->attribute.V.ConstTag == false) {
                    error_msgs.push_back("Array Dim must be const expression in line " + std::to_string(line_number) +
                                         "\n");
                }
                if (d->attribute.T.type == Type::FLOAT) {
                    error_msgs.push_back("Array Dim can not be float in line " + std::to_string(line_number) + "\n");
                }
                val.dims.push_back(d->attribute.V.val.IntVal);
            }
        }
        InitVal init = def->GetInit();
        if (init != nullptr) {
            init->TypeCheck();
        }

        semant_table.symbol_table.add_Symbol(def->GetName(), val);
    }
}

void ConstDecl::TypeCheck() {
    auto def_vector = *var_def_list;
    for (auto def : def_vector) {
        // multiple def check
        if (semant_table.symbol_table.lookup_scope(def->GetName()) == semant_table.symbol_table.get_current_scope()) {
            error_msgs.push_back("multiple definition of " + def->GetName()->get_string() + " in line " +
                                 std::to_string(line_number) + "\n");
        }

        VarAttribute val;
        val.ConstTag = true;
        val.type = type_decl;

        def->scope = semant_table.symbol_table.get_current_scope();
        if (def->GetDims() != nullptr) {
            auto dim_vector = *def->GetDims();
            for (auto d : dim_vector) {
                d->TypeCheck();
                if (d->attribute.V.ConstTag == false) {
                    error_msgs.push_back("Array Dim must be const expression in line " + std::to_string(line_number) +
                                         "\n");
                }
                if (d->attribute.T.type == Type::FLOAT) {
                    error_msgs.push_back("Array Dim can not be float in line " + std::to_string(line_number) + "\n");
                }
                val.dims.push_back(d->attribute.V.val.IntVal);
            }
        }
        InitVal init = def->GetInit();
        if (init != nullptr) {
            init->TypeCheck();
            if (type_decl == Type::INT) {
                SolveIntInitVal(init, val);
            } else if (type_decl == Type::FLOAT) {
                SolveFloatInitVal(init, val);
            }
        }

        semant_table.symbol_table.add_Symbol(def->GetName(), val);
    }
}

void BlockItem_Decl::TypeCheck() { decl->TypeCheck(); }

void BlockItem_Stmt::TypeCheck() { stmt->TypeCheck(); }

void __Block::TypeCheck() {
    semant_table.symbol_table.enter_scope();
    auto item_vector = *item_list;
    for (auto item : item_vector) {
        item->TypeCheck();
    }
    semant_table.symbol_table.exit_scope();
}

void __FuncFParam::TypeCheck() {
    VarAttribute val;
    val.ConstTag = false;
    val.type = type_decl;
    scope = 1;

    if (dims != nullptr) {
        auto dim_vector = *dims;
        val.dims.push_back(-1);
        for (int i = 1; i < dim_vector.size(); ++i) {
            auto d = dim_vector[i];
            d->TypeCheck();
            if (d->attribute.V.ConstTag == false) {
                error_msgs.push_back("Array Dim must be const expression in line " + std::to_string(line_number) +
                                     "\n");
            }
            if (d->attribute.T.type == Type::FLOAT) {
                error_msgs.push_back("Array Dim can not be float in line " + std::to_string(line_number) + "\n");
            }
            val.dims.push_back(d->attribute.V.val.IntVal);
        }
        attribute.T.type = Type::PTR;
    } else {
        attribute.T.type = type_decl;
    }

    if (name != nullptr) {
        if (semant_table.symbol_table.lookup_scope(name) != -1) {
            error_msgs.push_back("multiple difinitions of formals in function " + name->get_string() + " in line " +
                                 std::to_string(line_number) + "\n");
        }
        semant_table.symbol_table.add_Symbol(name, val);
    }
}

void __FuncDef::TypeCheck() {
    semant_table.symbol_table.enter_scope();
    // if (semant_table.FunctionTable.find(name) != semant_table.FunctionTable.end()) {
    //     error_msgs.push_back("multilpe difinitions of functions " + name->get_string() + " in line " +
    //                          std::to_string(line_number) + "\n");
    // }
    if (name->get_string() == "main") {
        MainTag = true;
    }
    semant_table.FunctionTable[name] = this;
    auto formal_vector = *formals;

    for (auto formal : formal_vector) {
        formal->TypeCheck();
    }

    // block TypeCheck
    if (block != nullptr) {
        auto item_vector = *(block->item_list);
        for (auto item : item_vector) {
            item->TypeCheck();
        }
    }

    semant_table.symbol_table.exit_scope();
}

/*
in this function,solve all the global decl
and in other decl function,we only solve the local
*/
void CompUnit_Decl::TypeCheck() {
    Type::ty type_decl = decl->GetTypedecl();
    auto def_vector = *decl->GetDefs();
    for (auto def : def_vector) {

        if (semant_table.GlobalTable.find(def->GetName()) != semant_table.GlobalTable.end()) {
            error_msgs.push_back("multilpe difinitions of vars in line " + std::to_string(line_number) + "\n");
        }

        VarAttribute val;
        val.ConstTag = def->IsConst();
        val.type = (Type::ty)type_decl;
        def->scope = 0;

        if (def->GetDims() != nullptr) {
            auto dim_vector = *def->GetDims();
            for (auto d : dim_vector) {
                d->TypeCheck();
                if (d->attribute.V.ConstTag == false) {
                    error_msgs.push_back("Array Dim must be const expression " + std::to_string(line_number) + "\n");
                }
                if (d->attribute.T.type == Type::FLOAT) {
                    error_msgs.push_back("Array Dim can not be float in line " + std::to_string(line_number) + "\n");
                }
            }
            for (auto d : dim_vector) {
                val.dims.push_back(d->attribute.V.val.IntVal);
            }
        }

        InitVal init = def->GetInit();
        if (init != nullptr) {
            init->TypeCheck();
            if (type_decl == Type::INT) {
                SolveIntInitVal(init, val);
            } else if (type_decl == Type::FLOAT) {
                SolveFloatInitVal(init, val);
            }
        }

        if (def->IsConst()) {
            ConstGlobalMap[def->GetName()->get_string()] = val;
        }
        StaticGlobalMap[def->GetName()->get_string()] = val;
        semant_table.GlobalTable[def->GetName()] = val;

        // add Global Decl llvm ins
        LLVMType lltype = Type2LLvm[type_decl];

        Instruction globalDecl;
        if (def->GetDims() != nullptr) {
            globalDecl = new GlobalVarDefineInstruction(def->GetName()->get_string(), lltype, val);
        } else if (init == nullptr) {
            globalDecl = new GlobalVarDefineInstruction(def->GetName()->get_string(), lltype, nullptr);
        } else if (lltype == I32) {
            globalDecl =
            new GlobalVarDefineInstruction(def->GetName()->get_string(), lltype, new ImmI32Operand(val.IntInitVals[0]));
        } else if (lltype == FLOAT32) {
            globalDecl = new GlobalVarDefineInstruction(def->GetName()->get_string(), lltype,
                                                        new ImmF32Operand(val.FloatInitVals[0]));
        }
        llvmIR.global_def.push_back(globalDecl);
    }
}

void CompUnit_FuncDef::TypeCheck() { func_def->TypeCheck(); }