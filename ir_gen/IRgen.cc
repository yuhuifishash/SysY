#include "IRgen.h"
#include "../include/ir.h"
#include "semant.h"

extern StringTable str_table;
extern SemantTable semant_table;
static FuncDefInstruction function_now;
static Type::ty function_returntype = Type::VOID;
static int now_label = 0;
static int loop_start_label = -1;    // continue;
static int loop_end_label = -1;      // break;

std::map<FuncDefInstruction, int> max_label_map{};
std::map<FuncDefInstruction, int> max_reg_map{};

int max_reg = -1;
int max_label = -1;

IRgenTable irgen_table;
LLVMIR llvmIR;

extern void (*IRgenSingleNode[6])(tree_node *a, NodeAttribute::opcode opcode, LLVMBlock B);
extern void (*IRgenBinaryNode[6][6])(tree_node *a, tree_node *b, NodeAttribute::opcode opcode, LLVMBlock B);

extern LLVMType Type2LLvm[6];

void AddLibFunctionDeclare();

void IRgenArithmeticI32(LLVMBlock B, LLVMIROpcode opcode, int reg1, int reg2, int result_reg);
void IRgenArithmeticF32(LLVMBlock B, LLVMIROpcode opcode, int reg1, int reg2, int result_reg);
void IRgenArithmeticI32ImmLeft(LLVMBlock B, LLVMIROpcode opcode, int val1, int reg2, int result_reg);
void IRgenArithmeticF32ImmLeft(LLVMBlock B, LLVMIROpcode opcode, float val1, int reg2, int result_reg);
void IRgenArithmeticI32ImmAll(LLVMBlock B, LLVMIROpcode opcode, int val1, int val2, int result_reg);
void IRgenArithmeticF32ImmAll(LLVMBlock B, LLVMIROpcode opcode, float val1, float val2, int result_reg);

void IRgenIcmp(LLVMBlock B, IcmpCond cmp_op, int reg1, int reg2, int result_reg);
void IRgenFcmp(LLVMBlock B, FcmpCond cmp_op, int reg1, int reg2, int result_reg);
void IRgenIcmpImmRight(LLVMBlock B, IcmpCond cmp_op, int reg1, int val2, int result_reg);
void IRgenFcmpImmRight(LLVMBlock B, FcmpCond cmp_op, int reg1, float val2, int result_reg);

void IRgenFptosi(LLVMBlock B, int src, int dst);
void IRgenSitofp(LLVMBlock B, int src, int dst);
void IRgenZextI1toI32(LLVMBlock B, int src, int dst);

void IRgenGetElementptr(LLVMBlock B, LLVMType type, int result_reg, Operand ptr, std::vector<int> dims,
                        std::vector<Operand> indexs);
void IRgenLoad(LLVMBlock B, LLVMType type, int result_reg, Operand ptr);
void IRgenStore(LLVMBlock B, LLVMType type, int value_reg, Operand ptr);
void IRgenStore(LLVMBlock B, LLVMType type, Operand value, Operand ptr);

void IRgenCall(LLVMBlock B, LLVMType type, int result_reg, std::vector<std::pair<enum LLVMType, Operand>> args,
               std::string name);
void IRgenCallVoid(LLVMBlock B, LLVMType type, std::vector<std::pair<enum LLVMType, Operand>> args, std::string name);

void IRgenCallNoArgs(LLVMBlock B, LLVMType type, int result_reg, std::string name);
void IRgenCallVoidNoArgs(LLVMBlock B, LLVMType type, std::string name);

void IRgenRetReg(LLVMBlock B, LLVMType type, int reg);
void IRgenRetImmInt(LLVMBlock B, LLVMType type, int val);
void IRgenRetImmFloat(LLVMBlock B, LLVMType type, float val);
void IRgenRetVoid(LLVMBlock B);

void IRgenBRUnCond(LLVMBlock B, int dst_label);
void IRgenBrCond(LLVMBlock B, int cond_reg, int true_label, int false_label);

void IRgenAlloca(LLVMBlock B, LLVMType type, int reg);
void IRgenAllocaArray(LLVMBlock B, LLVMType type, int reg, std::vector<int> dims);

void IRgenTypeConverse(LLVMBlock B, Type::ty type_src, Type::ty type_dst, int src);
RegOperand *GetNewRegOperand(int RegNo);

void BasicBlock::InsertInstruction(int pos, Instruction Ins) {
    assert(pos == 0 || pos == 1);
    if (pos == 0) {
        Instruction_list.push_front(Ins);
    } else if (pos == 1) {
        Instruction_list.push_back(Ins);
    }
}

bool IsBr(Instruction ins) {
    int opcode = ins->GetOpcode();
    return opcode == BR_COND || opcode == BR_UNCOND;
}

bool IsRet(Instruction ins) {
    int opcode = ins->GetOpcode();
    return opcode == RET;
}

void AddNoReturnBlock() {
    for (auto block : llvmIR.function_block_map[function_now]) {
        LLVMBlock B = block.second;
        if (B->Instruction_list.empty() || (!IsRet(B->Instruction_list.back()) && !IsBr(B->Instruction_list.back()))) {
            if (function_returntype == Type::VOID) {
                IRgenRetVoid(B);
            } else if (function_returntype == Type::INT) {
                IRgenRetImmInt(B, LLVMType::I32, 0);
            } else if (function_returntype == Type::FLOAT) {
                IRgenRetImmFloat(B, LLVMType::FLOAT32, 0);
            }
        }
    }
}

void __Program::codeIR() {
    AddLibFunctionDeclare();
    auto comp_vector = *comp_list;
    for (auto comp : comp_vector) {
        comp->codeIR();
    }
}

void Exp::codeIR() { addexp->codeIR(); }

void AddExp_plus::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenBinaryNode[addexp->attribute.T.type][mulexp->attribute.T.type](addexp, mulexp, NodeAttribute::ADD, B);
}

void AddExp_sub::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenBinaryNode[addexp->attribute.T.type][mulexp->attribute.T.type](addexp, mulexp, NodeAttribute::SUB, B);
}

void MulExp_mul::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenBinaryNode[mulexp->attribute.T.type][unary_exp->attribute.T.type](mulexp, unary_exp, NodeAttribute::MUL, B);
}

void MulExp_div::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenBinaryNode[mulexp->attribute.T.type][unary_exp->attribute.T.type](mulexp, unary_exp, NodeAttribute::DIV, B);
}

void MulExp_mod::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenBinaryNode[mulexp->attribute.T.type][unary_exp->attribute.T.type](mulexp, unary_exp, NodeAttribute::MOD, B);
}

void RelExp_leq::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenBinaryNode[relexp->attribute.T.type][addexp->attribute.T.type](relexp, addexp, NodeAttribute::LEQ, B);
}

void RelExp_lt::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenBinaryNode[relexp->attribute.T.type][addexp->attribute.T.type](relexp, addexp, NodeAttribute::LT, B);
}

void RelExp_geq::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenBinaryNode[relexp->attribute.T.type][addexp->attribute.T.type](relexp, addexp, NodeAttribute::GEQ, B);
}

void RelExp_gt::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenBinaryNode[relexp->attribute.T.type][addexp->attribute.T.type](relexp, addexp, NodeAttribute::GT, B);
}

void EqExp_eq::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenBinaryNode[eqexp->attribute.T.type][relexp->attribute.T.type](eqexp, relexp, NodeAttribute::EQ, B);
}

void EqExp_neq::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenBinaryNode[eqexp->attribute.T.type][relexp->attribute.T.type](eqexp, relexp, NodeAttribute::NE, B);
}

// short circuit &&
// we assume that this expression is only used in Cond in SysY
// i.e. true_label and false_label is not -1
void LAndExp_and::codeIR() {
    assert((true_label != -1) && (false_label != -1));
    int start_label = now_label;
    int lefttrue_label = llvmIR.NewBlock(function_now, max_label)->block_id;

    landexp->true_label = lefttrue_label;
    landexp->false_label = this->false_label;
    landexp->codeIR();
    LLVMBlock B1 = llvmIR.GetBlock(function_now, now_label);
    IRgenTypeConverse(B1, landexp->attribute.T.type, Type::BOOL, max_reg);
    IRgenBrCond(B1, max_reg, lefttrue_label, this->false_label);

    now_label = lefttrue_label;
    eqexp->true_label = this->true_label;
    eqexp->false_label = this->false_label;
    eqexp->codeIR();
    LLVMBlock B2 = llvmIR.GetBlock(function_now, now_label);
    IRgenTypeConverse(B2, eqexp->attribute.T.type, Type::BOOL, max_reg);
}

// short circuit ||
// we assume that this expression is only used in Cond in SysY
// i.e. true_label and false_label is not -1
void LOrExp_or::codeIR() {
    assert((true_label != -1) && (false_label != -1));

    int start_label = now_label;
    int leftfalse_label = llvmIR.NewBlock(function_now, max_label)->block_id;

    lorexp->true_label = this->true_label;
    lorexp->false_label = leftfalse_label;
    lorexp->codeIR();
    LLVMBlock B1 = llvmIR.GetBlock(function_now, now_label);
    IRgenTypeConverse(B1, lorexp->attribute.T.type, Type::BOOL, max_reg);
    IRgenBrCond(B1, max_reg, this->true_label, leftfalse_label);

    now_label = leftfalse_label;
    landexp->true_label = this->true_label;
    landexp->false_label = this->false_label;
    landexp->codeIR();
    LLVMBlock B2 = llvmIR.GetBlock(function_now, now_label);
    IRgenTypeConverse(B2, landexp->attribute.T.type, Type::BOOL, max_reg);
}

void ConstExp::codeIR() { addexp->codeIR(); }

void Lval::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    std::vector<Operand> arrayindexs;
    if (dims != nullptr) {
        for (auto d : *dims) {
            d->codeIR();
            IRgenTypeConverse(B, d->attribute.T.type, Type::INT, max_reg);
            arrayindexs.push_back(GetNewRegOperand(max_reg));
        }
    }
    Operand ptr_operand;
    VarAttribute lval_attribute;
    bool formal_array_tag = false;
    int alloca_reg = irgen_table.symbol_table.lookup(name);
    if (alloca_reg != -1) {    // local, use var's alloca_reg
        ptr_operand = GetNewRegOperand(alloca_reg);
        lval_attribute = irgen_table.RegTable[alloca_reg];
        formal_array_tag = irgen_table.FormalArrayTable[alloca_reg];
    } else {    // global, use var's name
        ptr_operand = GetNewGlobalOperand(name->get_string());
        lval_attribute = semant_table.GlobalTable[name];
    }

    auto lltype = Type2LLvm[lval_attribute.type];
    if (arrayindexs.empty() == false ||
        attribute.T.type == Type::PTR) {    // lval is array, first use getelementptr to get address
        if (formal_array_tag) {             // formal array ptr, getelementptr first does not use 0
            IRgenGetElementptr(B, lltype, ++max_reg, ptr_operand, lval_attribute.dims, arrayindexs);
        } else {    // array ptr, getelementptr first use 0
            arrayindexs.insert(arrayindexs.begin(), new ImmI32Operand(0));
            IRgenGetElementptr(B, lltype, ++max_reg, ptr_operand, lval_attribute.dims, arrayindexs);
        }
        ptr_operand = GetNewRegOperand(max_reg);    // final address of ptr
    }

    // store the ptr_operand in ptr, if this lval is left value, we can use this to get the address
    // you can see it in assign_stmt::codeIR()
    ptr = ptr_operand;
    if (is_left == false) {                     // lval is right value, use load
        if (attribute.T.type != Type::PTR) {    // not ptr, we need to use load to get the value of the array
            IRgenLoad(B, lltype, ++max_reg, ptr_operand);
        }
    }
}

void FuncRParams::codeIR() {}

void Func_call::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    Type::ty return_type = semant_table.FunctionTable[name]->return_type;
    LLVMType ret_type = Type2LLvm[return_type];

    if (funcr_params != nullptr) {
        std::vector<std::pair<LLVMType, Operand>> args;
        auto params = ((FuncRParams *)funcr_params)->params;
        auto fparams = semant_table.FunctionTable[name]->formals;
        assert(params->size() == fparams->size());
        for (int i = 0; i < (*params).size(); ++i) {
            auto param = (*params)[i];
            auto fparam = (*fparams)[i];
            param->codeIR();
            IRgenTypeConverse(B, param->attribute.T.type, fparam->attribute.T.type, max_reg);
            args.push_back({Type2LLvm[fparam->attribute.T.type], GetNewRegOperand(max_reg)});
        }
        if (return_type == Type::VOID) {
            IRgenCallVoid(B, ret_type, args, name->get_string());
        } else {
            IRgenCall(B, ret_type, ++max_reg, args, name->get_string());
        }
    } else {
        if (return_type == Type::VOID) {
            IRgenCallVoidNoArgs(B, ret_type, name->get_string());
        } else {
            IRgenCallNoArgs(B, ret_type, ++max_reg, name->get_string());
        }
    }
}

void UnaryExp_plus::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenSingleNode[unary_exp->attribute.T.type](unary_exp, NodeAttribute::ADD, B);
}

void UnaryExp_neg::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenSingleNode[unary_exp->attribute.T.type](unary_exp, NodeAttribute::SUB, B);
}

void UnaryExp_not::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenSingleNode[unary_exp->attribute.T.type](unary_exp, NodeAttribute::NOT, B);
}

void IntConst::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    ++max_reg;
    IRgenArithmeticI32ImmAll(B, LLVMIROpcode::ADD, val, 0, max_reg);
}

void FloatConst::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    ++max_reg;
    IRgenArithmeticF32ImmAll(B, LLVMIROpcode::FADD, val, 0, max_reg);
}

void StringConst::codeIR() {}

void PrimaryExp_branch::codeIR() { exp->codeIR(); }

void assign_stmt::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    lval->codeIR();
    exp->codeIR();
    IRgenTypeConverse(B, exp->attribute.T.type, lval->attribute.T.type, max_reg);
    IRgenStore(B, Type2LLvm[lval->attribute.T.type], GetNewRegOperand(max_reg), ((Lval *)lval)->ptr);
}

void expr_stmt::codeIR() { exp->codeIR(); }

void block_stmt::codeIR() {
    irgen_table.symbol_table.enter_scope();
    b->codeIR();
    irgen_table.symbol_table.exit_scope();
}

void ifelse_stmt::codeIR() {
    int if_label = llvmIR.NewBlock(function_now, max_label)->block_id;
    int else_label = llvmIR.NewBlock(function_now, max_label)->block_id;
    int end_label = llvmIR.NewBlock(function_now, max_label)->block_id;

    Cond->true_label = if_label;
    Cond->false_label = else_label;
    Cond->codeIR();
    LLVMBlock B1 = llvmIR.GetBlock(function_now, now_label);
    IRgenTypeConverse(B1, Cond->attribute.T.type, Type::BOOL, max_reg);
    IRgenBrCond(B1, max_reg, if_label, else_label);

    now_label = if_label;
    ifstmt->codeIR();
    LLVMBlock B2 = llvmIR.GetBlock(function_now, now_label);
    IRgenBRUnCond(B2, end_label);

    now_label = else_label;
    elsestmt->codeIR();
    LLVMBlock B3 = llvmIR.GetBlock(function_now, now_label);
    IRgenBRUnCond(B3, end_label);

    now_label = end_label;
}

void if_stmt::codeIR() {
    int if_label = llvmIR.NewBlock(function_now, max_label)->block_id;
    int end_label = llvmIR.NewBlock(function_now, max_label)->block_id;

    Cond->true_label = if_label;
    Cond->false_label = end_label;
    Cond->codeIR();
    LLVMBlock B1 = llvmIR.GetBlock(function_now, now_label);
    IRgenTypeConverse(B1, Cond->attribute.T.type, Type::BOOL, max_reg);
    IRgenBrCond(B1, max_reg, if_label, end_label);

    now_label = if_label;
    ifstmt->codeIR();
    LLVMBlock B2 = llvmIR.GetBlock(function_now, now_label);
    IRgenBRUnCond(B2, end_label);

    now_label = end_label;
}

void while_stmt::codeIR() {
    int judge_label = llvmIR.NewBlock(function_now, max_label)->block_id;
    int body_label = llvmIR.NewBlock(function_now, max_label)->block_id;
    int end_label = llvmIR.NewBlock(function_now, max_label)->block_id;

    int t1 = loop_start_label;
    int t2 = loop_end_label;
    loop_start_label = judge_label;
    loop_end_label = end_label;

    LLVMBlock B1 = llvmIR.GetBlock(function_now, now_label);
    IRgenBRUnCond(B1, judge_label);

    now_label = judge_label;
    Cond->true_label = body_label;
    Cond->false_label = end_label;
    Cond->codeIR();
    LLVMBlock B2 = llvmIR.GetBlock(function_now, now_label);
    IRgenTypeConverse(B2, Cond->attribute.T.type, Type::BOOL, max_reg);
    IRgenBrCond(B2, max_reg, body_label, end_label);

    now_label = body_label;
    body->codeIR();
    LLVMBlock B3 = llvmIR.GetBlock(function_now, now_label);
    IRgenBRUnCond(B3, judge_label);

    now_label = end_label;

    loop_start_label = t1;
    loop_end_label = t2;
}

void continue_stmt::codeIR() {
    LLVMBlock B = llvmIR.function_block_map[function_now][now_label];
    IRgenBRUnCond(B, loop_start_label);
    now_label = llvmIR.NewBlock(function_now, max_label)->block_id;
}

void break_stmt::codeIR() {
    LLVMBlock B = llvmIR.function_block_map[function_now][now_label];
    IRgenBRUnCond(B, loop_end_label);
    now_label = llvmIR.NewBlock(function_now, max_label)->block_id;
}

void return_stmt::codeIR() {
    return_exp->codeIR();
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenTypeConverse(B, return_exp->attribute.T.type, function_returntype, max_reg);
    IRgenRetReg(B, Type2LLvm[function_returntype], max_reg);
}

void return_stmt_void::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, now_label);
    IRgenRetVoid(B);
}

void ConstInitVal::codeIR() {}

void ConstInitVal_exp::codeIR() { exp->codeIR(); }

void VarInitVal::codeIR() {}

void VarInitVal_exp::codeIR() { exp->codeIR(); }

void VarDef_no_init::codeIR() {}

void VarDef::codeIR() {}

void ConstDef::codeIR() {}

int FindMinDimStepIR(const std::vector<int> dims, int relativePos, int dimsIdx, int &max_subBlock_sz) {
    int min_dim_step = 1;
    int blockSz = 1;
    for (int i = dimsIdx + 1; i < dims.size(); i++) {
        blockSz *= dims[i];
    }
    while (relativePos % blockSz != 0) {
        min_dim_step++;
        blockSz /= dims[dimsIdx + min_dim_step - 1];
    }
    max_subBlock_sz = blockSz;
    return min_dim_step;
}

std::vector<int> GetIndexes(std::vector<int> dims, int absoluteIndex) {
    //[3][4]
    // 0-> {0,0}  {absoluteIndex/4,absoluteIndex%4}
    // 1-> {0,1}
    // 2-> {0,2}
    // 3-> {0,3}
    // 4-> {1,0}
    // 5-> {1,1}
    std::vector<int> ret;
    for (std::vector<int>::reverse_iterator it = dims.rbegin(); it != dims.rend(); ++it) {
        int dim = *it;
        ret.insert(ret.begin(), absoluteIndex % dim);
        absoluteIndex /= dim;
    }
    return ret;
}

void RecursiveArrayInitIR(LLVMBlock block, const std::vector<int> dims, int arrayaddr_reg_no, InitVal init,
                          int beginPos, int endPos, int dimsIdx, Type::ty ArrayType) {
    int pos = beginPos;
    for (InitVal iv : *(init->GetList())) {
        if (iv->IsExp()) {
            iv->codeIR();
            int init_val_reg = max_reg;
            IRgenTypeConverse(block, iv->attribute.T.type, ArrayType, init_val_reg);
            init_val_reg = max_reg;

            int addr_reg = ++max_reg;
            auto gep = new GetElementptrInstruction(Type2LLvm[ArrayType], GetNewRegOperand(addr_reg),
                                                    GetNewRegOperand(arrayaddr_reg_no), dims);
            // pos, dims -> [][][]...
            // gep->pushidx()
            gep->push_idx_imm32(0);
            std::vector<int> indexes = GetIndexes(dims, pos);
            for (int idx : indexes) {
                gep->push_idx_imm32(idx);
            }
            // %addr_reg = getelementptr i32, ptr %arrayaddr_reg_no, i32 0, i32 ...
            block->InsertInstruction(1, gep);
            // store i32 %init_val_reg,ptr %addr_reg
            IRgenStore(block, Type2LLvm[ArrayType], GetNewRegOperand(init_val_reg), GetNewRegOperand(addr_reg));
            pos++;
        } else {
            int max_subBlock_sz = 0;
            int min_dim_step = FindMinDimStepIR(dims, pos - beginPos, dimsIdx, max_subBlock_sz);
            RecursiveArrayInitIR(block, dims, arrayaddr_reg_no, iv, pos, pos + max_subBlock_sz - 1,
                                 dimsIdx + min_dim_step, ArrayType);
            pos += max_subBlock_sz;
        }
    }
}

void VarDecl::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, 0);
    LLVMBlock InitB = llvmIR.GetBlock(function_now, now_label);
    auto def_vector = *var_def_list;
    for (auto def : def_vector) {

        VarAttribute val;
        val.type = type_decl;    // init val.type
        irgen_table.symbol_table.add_Symbol(def->GetName(), ++max_reg);
        int alloca_reg = max_reg;
        if (def->GetDims() != nullptr) {    // this var is array
            auto dim_vector = *def->GetDims();
            for (auto d : dim_vector) {    // init val.dims
                val.dims.push_back(d->attribute.V.val.IntVal);
            }
            IRgenAllocaArray(B, Type2LLvm[type_decl], alloca_reg, val.dims);
            irgen_table.RegTable[alloca_reg] = val;

            InitVal init = def->GetInit();
            if (init != nullptr) {
                int array_sz = 1;
                for (auto d : val.dims) {
                    array_sz *= d;
                }

                CallInstruction *memsetCall = new CallInstruction(VOID, nullptr, std::string("llvm.memset.p0.i32"));
                memsetCall->push_back_Parameter(PTR, GetNewRegOperand(alloca_reg));    // array address
                memsetCall->push_back_Parameter(I8, new ImmI32Operand(0));
                memsetCall->push_back_Parameter(I32, new ImmI32Operand(array_sz * sizeof(int)));
                memsetCall->push_back_Parameter(I1, new ImmI32Operand(0));
                llvmIR.function_block_map[function_now][now_label]->InsertInstruction(1, memsetCall);
                // recursive_Array_Init_IR
                RecursiveArrayInitIR(InitB, val.dims, alloca_reg, init, 0, array_sz - 1, 0, type_decl);
            }
        } else {    // this var is not array
            IRgenAlloca(B, Type2LLvm[type_decl], alloca_reg);
            irgen_table.RegTable[alloca_reg] = val;

            Operand val_operand;

            InitVal init = def->GetInit();
            if (init != nullptr) {
                Expression initExp = init->GetExp();
                initExp->codeIR();
                IRgenTypeConverse(InitB, initExp->attribute.T.type, type_decl, max_reg);
                val_operand = GetNewRegOperand(max_reg);
            } else {    // we consume that no init will be 0 by default
                if (type_decl == Type::INT) {
                    IRgenArithmeticI32ImmAll(InitB, LLVMIROpcode::ADD, 0, 0, ++max_reg);
                    val_operand = GetNewRegOperand(max_reg);
                } else if (type_decl == Type::FLOAT) {
                    IRgenArithmeticF32ImmAll(InitB, LLVMIROpcode::FADD, 0, 0, ++max_reg);
                    val_operand = GetNewRegOperand(max_reg);
                }
            }
            // store the value
            IRgenStore(InitB, Type2LLvm[type_decl], val_operand, GetNewRegOperand(alloca_reg));
        }
    }
}

// we assume ConstDecl is equal to VarDecl, we can optimize it in next step
void ConstDecl::codeIR() {
    LLVMBlock B = llvmIR.GetBlock(function_now, 0);
    LLVMBlock InitB = llvmIR.GetBlock(function_now, now_label);
    auto def_vector = *var_def_list;
    for (auto def : def_vector) {
        VarAttribute val;
        val.type = type_decl;    // init val.type
        irgen_table.symbol_table.add_Symbol(def->GetName(), ++max_reg);
        int alloca_reg = max_reg;
        if (def->GetDims() != nullptr) {    // this var is array
            auto dim_vector = *def->GetDims();
            for (auto d : dim_vector) {    // init val.dims
                val.dims.push_back(d->attribute.V.val.IntVal);
            }
            IRgenAllocaArray(B, Type2LLvm[type_decl], alloca_reg, val.dims);
            irgen_table.RegTable[alloca_reg] = val;

            InitVal init = def->GetInit();

            if (init != nullptr) {
                int array_sz = 1;
                for (auto d : val.dims) {
                    array_sz *= d;
                }

                CallInstruction *memsetCall = new CallInstruction(VOID, nullptr, std::string("llvm.memset.p0.i32"));
                memsetCall->push_back_Parameter(PTR, GetNewRegOperand(alloca_reg));    // array address
                memsetCall->push_back_Parameter(I8, new ImmI32Operand(0));
                memsetCall->push_back_Parameter(I32, new ImmI32Operand(array_sz * sizeof(int)));
                memsetCall->push_back_Parameter(I1, new ImmI32Operand(0));
                llvmIR.function_block_map[function_now][now_label]->InsertInstruction(1, memsetCall);
                // recursive_Array_Init_IR
                RecursiveArrayInitIR(InitB, val.dims, alloca_reg, init, 0, array_sz - 1, 0, type_decl);
            }
        } else {    // this var is not array
            IRgenAlloca(B, Type2LLvm[type_decl], alloca_reg);
            irgen_table.RegTable[alloca_reg] = val;
            Operand val_operand;
            InitVal init = def->GetInit();

            assert(init != nullptr);
            Expression initExp = init->GetExp();
            initExp->codeIR();
            IRgenTypeConverse(InitB, initExp->attribute.T.type, type_decl, max_reg);
            val_operand = GetNewRegOperand(max_reg);

            IRgenStore(InitB, Type2LLvm[type_decl], val_operand, GetNewRegOperand(alloca_reg));
        }
    }
}

void BlockItem_Decl::codeIR() { decl->codeIR(); }

void BlockItem_Stmt::codeIR() { stmt->codeIR(); }

void __Block::codeIR() {
    irgen_table.symbol_table.enter_scope();

    auto item_vector = *item_list;
    for (auto item : item_vector) {
        item->codeIR();
    }

    irgen_table.symbol_table.exit_scope();
}

void __FuncFParam::codeIR() {}

void __FuncDef::codeIR() {
    // add FuncDef llvm Instructions
    irgen_table.symbol_table.enter_scope();

    LLVMType FuncDeclRetType = Type2LLvm[return_type];
    FuncDefInstruction FuncDefIns = new FunctionDefineInstruction(FuncDeclRetType, name->get_string());

    max_reg = -1;
    irgen_table.RegTable.clear();
    irgen_table.FormalArrayTable.clear();

    now_label = 0;
    max_label = -1;
    function_now = FuncDefIns;
    function_returntype = return_type;

    llvmIR.NewFunction(function_now);
    LLVMBlock B = llvmIR.NewBlock(function_now, max_label);
    auto formal_vector = *formals;
    max_reg = formal_vector.size() - 1;
    for (int i = 0; i < formal_vector.size(); ++i) {
        auto formal = formal_vector[i];
        VarAttribute val;
        val.type = formal->type_decl;
        LLVMType lltype = Type2LLvm[formal->type_decl];
        if (formal->dims != nullptr) {    // formal is array
            // in SysY, we can assume that we can not modify the array address, so we do not need alloca
            FuncDefIns->InsertFormal(LLVMType::PTR);

            for (int i = 1; i < formal->dims->size(); ++i) {    // in IRgen, we ignore the first dim of the
                                                                // formal
                auto d = formal->dims->at(i);
                val.dims.push_back(d->attribute.V.val.IntVal);
            }

            irgen_table.FormalArrayTable[i] = 1;
            irgen_table.symbol_table.add_Symbol(formal->name, i);
            irgen_table.RegTable[i] = val;
        } else {    // formal is not array
            FuncDefIns->InsertFormal(lltype);
            IRgenAlloca(B, lltype, ++max_reg);
            IRgenStore(B, lltype, GetNewRegOperand(i), GetNewRegOperand(max_reg));
            irgen_table.symbol_table.add_Symbol(formal->name, max_reg);
            irgen_table.RegTable[max_reg] = val;
        }
    }
    IRgenBRUnCond(B, 1);

    B = llvmIR.NewBlock(function_now, max_label);
    now_label = max_label;
    block->codeIR();

    AddNoReturnBlock();
    max_reg_map[FuncDefIns] = max_reg;
    max_label_map[FuncDefIns] = max_label;

    irgen_table.symbol_table.exit_scope();
}

void CompUnit_Decl::codeIR() {}

void CompUnit_FuncDef::codeIR() { func_def->codeIR(); }

void AddLibFunctionDeclare() {
    FunctionDeclareInstruction *getint = new FunctionDeclareInstruction(I32, "getint");
    llvmIR.function_declare.push_back(getint);

    FunctionDeclareInstruction *getchar = new FunctionDeclareInstruction(I32, "getch");
    llvmIR.function_declare.push_back(getchar);

    FunctionDeclareInstruction *getfloat = new FunctionDeclareInstruction(FLOAT32, "getfloat");
    llvmIR.function_declare.push_back(getfloat);

    FunctionDeclareInstruction *getarray = new FunctionDeclareInstruction(I32, "getarray");
    getarray->InsertFormal(PTR);
    llvmIR.function_declare.push_back(getarray);

    FunctionDeclareInstruction *getfloatarray = new FunctionDeclareInstruction(I32, "getfarray");
    getfloatarray->InsertFormal(PTR);
    llvmIR.function_declare.push_back(getfloatarray);

    FunctionDeclareInstruction *putint = new FunctionDeclareInstruction(VOID, "putint");
    putint->InsertFormal(I32);
    llvmIR.function_declare.push_back(putint);

    FunctionDeclareInstruction *putch = new FunctionDeclareInstruction(VOID, "putch");
    putch->InsertFormal(I32);
    llvmIR.function_declare.push_back(putch);

    FunctionDeclareInstruction *putfloat = new FunctionDeclareInstruction(VOID, "putfloat");
    putfloat->InsertFormal(FLOAT32);
    llvmIR.function_declare.push_back(putfloat);

    FunctionDeclareInstruction *putarray = new FunctionDeclareInstruction(VOID, "putarray");
    putarray->InsertFormal(I32);
    putarray->InsertFormal(PTR);
    llvmIR.function_declare.push_back(putarray);

    FunctionDeclareInstruction *putfarray = new FunctionDeclareInstruction(VOID, "putfarray");
    putfarray->InsertFormal(I32);
    putfarray->InsertFormal(PTR);
    llvmIR.function_declare.push_back(putfarray);

    // put format string
    FunctionDeclareInstruction *putf = new FunctionDeclareInstruction(VOID, "putf");
    putf->InsertFormal(PTR);
    llvmIR.function_declare.push_back(putf);

    FunctionDeclareInstruction *starttime = new FunctionDeclareInstruction(VOID, "_sysy_starttime");
    starttime->InsertFormal(I32);
    llvmIR.function_declare.push_back(starttime);

    FunctionDeclareInstruction *stoptime = new FunctionDeclareInstruction(VOID, "_sysy_stoptime");
    stoptime->InsertFormal(I32);
    llvmIR.function_declare.push_back(stoptime);

    FunctionDeclareInstruction *llvm_memset = new FunctionDeclareInstruction(VOID, "llvm.memset.p0.i32");
    llvm_memset->InsertFormal(PTR);
    llvm_memset->InsertFormal(I8);
    llvm_memset->InsertFormal(I32);
    llvm_memset->InsertFormal(I1);
    llvmIR.function_declare.push_back(llvm_memset);

    FunctionDeclareInstruction *llvm_ll_add_mod = new FunctionDeclareInstruction(VOID, "___llvm_ll_add_mod");
    llvm_ll_add_mod->InsertFormal(I32);
    llvm_ll_add_mod->InsertFormal(I32);
    llvm_ll_add_mod->InsertFormal(I32);
    llvmIR.function_declare.push_back(llvm_ll_add_mod);

    FunctionDeclareInstruction *llvm_umax = new FunctionDeclareInstruction(I32, "llvm.umax.i32");
    llvm_umax->InsertFormal(I32);
    llvm_umax->InsertFormal(I32);
    llvmIR.function_declare.push_back(llvm_umax);

    FunctionDeclareInstruction *llvm_umin = new FunctionDeclareInstruction(I32, "llvm.umin.i32");
    llvm_umin->InsertFormal(I32);
    llvm_umin->InsertFormal(I32);
    llvmIR.function_declare.push_back(llvm_umin);

    FunctionDeclareInstruction *llvm_smax = new FunctionDeclareInstruction(I32, "llvm.smax.i32");
    llvm_smax->InsertFormal(I32);
    llvm_smax->InsertFormal(I32);
    llvmIR.function_declare.push_back(llvm_smax);

    FunctionDeclareInstruction *llvm_smin = new FunctionDeclareInstruction(I32, "llvm.smin.i32");
    llvm_smin->InsertFormal(I32);
    llvm_smin->InsertFormal(I32);
    llvmIR.function_declare.push_back(llvm_smin);

    FunctionDeclareInstruction *llvm_fmin = new FunctionDeclareInstruction(FLOAT32, "___llvm_fmin_f32");
    llvm_fmin->InsertFormal(FLOAT32);
    llvm_fmin->InsertFormal(FLOAT32);
    llvmIR.function_declare.push_back(llvm_fmin);

    FunctionDeclareInstruction *llvm_fmax = new FunctionDeclareInstruction(FLOAT32, "___llvm_fmax_f32");
    llvm_fmax->InsertFormal(FLOAT32);
    llvm_fmax->InsertFormal(FLOAT32);
    llvmIR.function_declare.push_back(llvm_fmax);
}
