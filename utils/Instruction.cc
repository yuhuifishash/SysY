#include "../include/Instruction.h"
#include "../include/basic_block.h"
#include <assert.h>

void IRgenArithmeticI32(LLVMBlock B, LLVMIROpcode opcode, int reg1, int reg2, int result_reg) {
    B->InsertInstruction(1, new ArithmeticInstruction(opcode, LLVMType::I32, new RegOperand(reg1), new RegOperand(reg2),
                                                      new RegOperand(result_reg)));
}

void IRgenArithmeticF32(LLVMBlock B, LLVMIROpcode opcode, int reg1, int reg2, int result_reg) {
    B->InsertInstruction(1, new ArithmeticInstruction(opcode, LLVMType::FLOAT32, new RegOperand(reg1),
                                                      new RegOperand(reg2), new RegOperand(result_reg)));
}

void IRgenArithmeticI32ImmLeft(LLVMBlock B, LLVMIROpcode opcode, int val1, int reg2, int result_reg) {
    B->InsertInstruction(1, new ArithmeticInstruction(opcode, LLVMType::I32, new ImmI32Operand(val1),
                                                      new RegOperand(reg2), new RegOperand(result_reg)));
}

void IRgenArithmeticF32ImmLeft(LLVMBlock B, LLVMIROpcode opcode, float val1, int reg2, int result_reg) {
    B->InsertInstruction(1, new ArithmeticInstruction(opcode, LLVMType::FLOAT32, new ImmF32Operand(val1),
                                                      new RegOperand(reg2), new RegOperand(result_reg)));
}

void IRgenArithmeticI32ImmAll(LLVMBlock B, LLVMIROpcode opcode, int val1, int val2, int result_reg) {
    B->InsertInstruction(1, new ArithmeticInstruction(opcode, LLVMType::I32, new ImmI32Operand(val1),
                                                      new ImmI32Operand(val2), new RegOperand(result_reg)));
}

void IRgenArithmeticF32ImmAll(LLVMBlock B, LLVMIROpcode opcode, float val1, float val2, int result_reg) {
    B->InsertInstruction(1, new ArithmeticInstruction(opcode, LLVMType::FLOAT32, new ImmF32Operand(val1),
                                                      new ImmF32Operand(val2), new RegOperand(result_reg)));
}

void IRgenIcmp(LLVMBlock B, IcmpCond cmp_op, int reg1, int reg2, int result_reg) {
    B->InsertInstruction(1, new IcmpInstruction(LLVMType::I32, new RegOperand(reg1), new RegOperand(reg2), cmp_op,
                                                new RegOperand(result_reg)));
}

void IRgenFcmp(LLVMBlock B, FcmpCond cmp_op, int reg1, int reg2, int result_reg) {
    B->InsertInstruction(1, new FcmpInstruction(LLVMType::FLOAT32, new RegOperand(reg1), new RegOperand(reg2), cmp_op,
                                                new RegOperand(result_reg)));
}

void IRgenIcmpImmRight(LLVMBlock B, IcmpCond cmp_op, int reg1, int val2, int result_reg) {
    B->InsertInstruction(1, new IcmpInstruction(LLVMType::I32, new RegOperand(reg1), new ImmI32Operand(val2), cmp_op,
                                                new RegOperand(result_reg)));
}

void IRgenFcmpImmRight(LLVMBlock B, FcmpCond cmp_op, int reg1, float val2, int result_reg) {
    B->InsertInstruction(1, new FcmpInstruction(LLVMType::FLOAT32, new RegOperand(reg1), new ImmF32Operand(val2),
                                                cmp_op, new RegOperand(result_reg)));
}

void IRgenFptosi(LLVMBlock B, int src, int dst) {
    B->InsertInstruction(1, new FptosiInstruction(new RegOperand(dst), new RegOperand(src)));
}

void IRgenSitofp(LLVMBlock B, int src, int dst) {
    B->InsertInstruction(1, new SitofpInstruction(new RegOperand(dst), new RegOperand(src)));
}

void IRgenZextI1toI32(LLVMBlock B, int src, int dst) {
    B->InsertInstruction(1, new ZextInstruction(LLVMType::I32, new RegOperand(dst), LLVMType::I1, new RegOperand(src)));
}

void IRgenGetElementptr(LLVMBlock B, LLVMType type, int result_reg, Operand ptr, std::vector<int> dims,
                        std::vector<Operand> indexs) {
    B->InsertInstruction(1, new GetElementptrInstruction(type, new RegOperand(result_reg), ptr, dims, indexs));
}

void IRgenLoad(LLVMBlock B, LLVMType type, int result_reg, Operand ptr) {
    B->InsertInstruction(1, new LoadInstruction(type, ptr, new RegOperand(result_reg)));
}

void IRgenStore(LLVMBlock B, LLVMType type, int value_reg, Operand ptr) {
    B->InsertInstruction(1, new StoreInstruction(type, ptr, new RegOperand(value_reg)));
}

void IRgenStore(LLVMBlock B, LLVMType type, Operand value, Operand ptr) {
    B->InsertInstruction(1, new StoreInstruction(type, ptr, value));
}

void IRgenCall(LLVMBlock B, LLVMType type, int result_reg, std::vector<std::pair<enum LLVMType, Operand>> args,
               std::string name) {
    B->InsertInstruction(1, new CallInstruction(type, new RegOperand(result_reg), name, args));
}

void IRgenCallVoid(LLVMBlock B, LLVMType type, std::vector<std::pair<enum LLVMType, Operand>> args, std::string name) {
    B->InsertInstruction(1, new CallInstruction(type, new RegOperand(-1), name, args));
}

void IRgenCallNoArgs(LLVMBlock B, LLVMType type, int result_reg, std::string name) {
    B->InsertInstruction(1, new CallInstruction(type, new RegOperand(result_reg), name));
}

void IRgenCallVoidNoArgs(LLVMBlock B, LLVMType type, std::string name) {
    B->InsertInstruction(1, new CallInstruction(type, new RegOperand(-1), name));
}

void IRgenRetReg(LLVMBlock B, LLVMType type, int reg) {
    B->InsertInstruction(1, new RetInstruction(type, new RegOperand(reg)));
}

void IRgenRetImmInt(LLVMBlock B, LLVMType type, int val) {
    B->InsertInstruction(1, new RetInstruction(type, new ImmI32Operand(val)));
}

void IRgenRetImmFloat(LLVMBlock B, LLVMType type, float val) {
    B->InsertInstruction(1, new RetInstruction(type, new ImmF32Operand(val)));
}

void IRgenRetVoid(LLVMBlock B) { B->InsertInstruction(1, new RetInstruction(LLVMType::VOID, nullptr)); }

void IRgenBRUnCond(LLVMBlock B, int dst_label) {
    B->InsertInstruction(1, new BrUncondInstruction(new LabelOperand(dst_label)));
}

void IRgenBrCond(LLVMBlock B, int cond_reg, int true_label, int false_label) {
    B->InsertInstruction(
    1, new BrCondInstruction(new RegOperand(cond_reg), new LabelOperand(true_label), new LabelOperand(false_label)));
}

void IRgenAlloca(LLVMBlock B, LLVMType type, int reg) {
    B->InsertInstruction(0, new AllocaInstruction(type, new RegOperand(reg)));
}

void IRgenAllocaArray(LLVMBlock B, LLVMType type, int reg, std::vector<int> dims) {
    B->InsertInstruction(0, new AllocaInstruction(type, dims, new RegOperand(reg)));
}

void PhiInstruction::ErasePhi(int label_id) {
    for (auto it = phi_list.begin(); it != phi_list.end(); ++it) {
        auto [label, val] = *it;
        if (((LabelOperand *)label)->GetLabelNo() == label_id) {
            phi_list.erase(it);
            break;
        }
    }
}

Operand PhiInstruction::GetValOperand(int label_id) {
    for (auto [label, val] : phi_list) {
        if (((LabelOperand *)label)->GetLabelNo() == label_id) {
            return val;
        }
    }
    assert(false);
    return nullptr;
}

void PhiInstruction::SetValOperand(int label_id, Operand val) {
    for (auto &[label, v] : phi_list) {
        if (((LabelOperand *)label)->GetLabelNo() == label_id) {
            v = val;
            return;
        }
    }
    assert(false);
}

void PhiInstruction::SetNewFrom(int old_id, int new_id) {
    for (auto &[label, v] : phi_list) {
        if (((LabelOperand *)label)->GetLabelNo() == old_id) {
            ((LabelOperand *)label)->SetLabelNo(new_id);
        }
    }
}

void BrCondInstruction::SetNewTarget(int oldlabel, int newlabel) {
    auto t_target = (LabelOperand *)GetTrueLabel();
    auto f_target = (LabelOperand *)GetFalseLabel();
    if (t_target->GetLabelNo() == oldlabel) {
        t_target->SetLabelNo(newlabel);
    } else if (f_target->GetLabelNo() == oldlabel) {
        f_target->SetLabelNo(newlabel);
    } else {
        std::cerr << "oldlabel is not existed\n";
        assert(false);
    }
}

std::vector<Operand> LoadInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    ret.push_back(pointer);
    return ret;
}

void LoadInstruction::SetNonResultOperands(std::vector<Operand> ops) { pointer = ops[0]; }

std::vector<Operand> StoreInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    ret.push_back(pointer);
    ret.push_back(value);
    return ret;
}

void StoreInstruction::SetNonResultOperands(std::vector<Operand> ops) {
    pointer = ops[0];
    value = ops[1];
}

std::vector<Operand> ArithmeticInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    ret.push_back(op1);
    ret.push_back(op2);
    return ret;
}

void ArithmeticInstruction::SetNonResultOperands(std::vector<Operand> ops) {
    op1 = ops[0];
    op2 = ops[1];
}

std::vector<Operand> IcmpInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    ret.push_back(op1);
    ret.push_back(op2);
    // ret.push_back(cond);
    return ret;
}

void IcmpInstruction::SetNonResultOperands(std::vector<Operand> ops) {
    op1 = ops[0];
    op2 = ops[1];
}

std::vector<Operand> FcmpInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    ret.push_back(op1);
    ret.push_back(op2);
    // ret.push_back(cond);
    return ret;
}

void FcmpInstruction::SetNonResultOperands(std::vector<Operand> ops) {
    op1 = ops[0];
    op2 = ops[1];
}

std::vector<Operand> PhiInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    for (auto label_val_pair : phi_list) {
        ret.push_back(label_val_pair.second);
    }
    return ret;
}
void PhiInstruction::SetNonResultOperands(std::vector<Operand> ops) {
    int i = 0;
    for (auto &label_val_pair : phi_list) {
        label_val_pair.second = ops[i];
        i++;
    }
}

std::vector<Operand> BrCondInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    ret.push_back(cond);
    return ret;
}
void BrCondInstruction::SetNonResultOperands(std::vector<Operand> ops) { cond = ops[0]; }

int CallInstruction::GetResultRegNo() {
    if (result != NULL)
        return ((RegOperand *)result)->GetRegNo();
    else
        return -1;
}

std::vector<Operand> CallInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    for (auto arg_pair : args) {
        ret.push_back(arg_pair.second);
    }
    return ret;
}

void CallInstruction::SetNonResultOperands(std::vector<Operand> ops) {
    int i = 0;
    for (auto &arg_pair : args) {
        arg_pair.second = ops[i];
        i++;
    }
}

std::vector<Operand> RetInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    if (ret_val != NULL)
        ret.push_back(ret_val);
    return ret;
}
void RetInstruction::SetNonResultOperands(std::vector<Operand> ops) {
    if (ops.empty()) {
        ret_val = NULL;
    } else {
        ret_val = ops[0];
    }
}

std::pair<int, int> GetElementptrInstruction::GetConstIndexes() {
    int ans = 0;
    int Siz = 1;

    for (auto sz : dims) {
        Siz *= sz;
    }

    for (int i = 0; i < indexes.size(); i++) {
        // std::cerr<<i<<" "<<indexes[i]->getFullName()<<"\n";
        if (indexes[i]->GetOperandType() == BasicOperand::IMMI32) {
            ans += (((ImmI32Operand *)indexes[i])->GetIntImmVal()) * Siz;
        } else if (indexes[i]->GetOperandType() == BasicOperand::REG) {
            return {-1, -1};
        }
        if (i < dims.size()) {
            Siz /= dims[i];
        }
    }

    return {ans, Siz};
}

int AllocaInstruction::GetAllocaSize() {
    int sz = 1;
    for (auto d : dims) {
        sz *= d;
    }
    return sz;
}

std::vector<Operand> GetElementptrInstruction::GetNonResultOperands() {
    std::vector<Operand> ret(indexes);
    ret.push_back(ptrval);
    return ret;
}
void GetElementptrInstruction::SetNonResultOperands(std::vector<Operand> ops) {
    indexes = ops;
    indexes.pop_back();
    ptrval = ops[ops.size() - 1];
}

void FunctionDefineInstruction::InsertFormal(enum LLVMType t) {
    formals.push_back(t);
    formals_reg.push_back(new RegOperand(formals_reg.size()));
}

std::vector<Operand> FunctionDefineInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    std::cerr << "func_define_Instruction get_nonresult_operands()\n";
    return ret;
}

std::vector<Operand> FunctionDeclareInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    std::cerr << "func_declare_Instruction get_nonresult_operands()\n";
    return ret;
}

std::vector<Operand> FptosiInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    ret.push_back(value);
    return ret;
}
void FptosiInstruction::SetNonResultOperands(std::vector<Operand> ops) { value = ops[0]; }

std::vector<Operand> SitofpInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    ret.push_back(value);
    return ret;
}
void SitofpInstruction::SetNonResultOperands(std::vector<Operand> ops) { value = ops[0]; }

std::vector<Operand> ZextInstruction::GetNonResultOperands() {
    std::vector<Operand> ret;
    ret.push_back(value);
    return ret;
}
void ZextInstruction::SetNonResultOperands(std::vector<Operand> ops) { value = ops[0]; }

Operand RegOperand::CopyOperand() { return new RegOperand(reg_no); }

Operand ImmI32Operand::CopyOperand() { return new ImmI32Operand(immVal); }

Operand ImmF32Operand::CopyOperand() { return new ImmF32Operand(immVal); }

Operand LabelOperand::CopyOperand() { return new LabelOperand(label_no); }

Operand GlobalOperand::CopyOperand() { return new GlobalOperand(name); }

Instruction LoadInstruction::CopyInstruction() {
    Operand npointer = pointer->CopyOperand();
    Operand nresult = result->CopyOperand();
    return new LoadInstruction(type, npointer, nresult);
}

Instruction StoreInstruction::CopyInstruction() {
    Operand npointer = pointer->CopyOperand();
    Operand nvalue = value->CopyOperand();
    return new StoreInstruction(type, npointer, nvalue);
}

Instruction ArithmeticInstruction::CopyInstruction() {
    Operand nop1 = op1->CopyOperand();
    Operand nop2 = op2->CopyOperand();
    Operand nresult = result->CopyOperand();
    return new ArithmeticInstruction(opcode, type, nop1, nop2, nresult);
}

Instruction IcmpInstruction::CopyInstruction() {
    Operand nop1 = op1->CopyOperand();
    Operand nop2 = op2->CopyOperand();
    Operand nresult = result->CopyOperand();
    return new IcmpInstruction(type, nop1, nop2, cond, nresult);
}

Instruction FcmpInstruction::CopyInstruction() {
    Operand nop1 = op1->CopyOperand();
    Operand nop2 = op2->CopyOperand();
    Operand nresult = result->CopyOperand();
    return new FcmpInstruction(type, nop1, nop2, cond, nresult);
}

Instruction PhiInstruction::CopyInstruction() {
    Operand nresult = result->CopyOperand();
    std::vector<std::pair<Operand, Operand>> nval_labels;
    // std::map<operand,operand> nval_labels;

    for (auto Phiop : phi_list) {
        Operand nlabel = Phiop.first->CopyOperand();
        Operand nvalue = Phiop.second->CopyOperand();
        // nval_labels.push_back({nlabel,nvalue});
        nval_labels.push_back(std::make_pair(nlabel, nvalue));
    }

    return new PhiInstruction(type, nresult, nval_labels);
}

Instruction AllocaInstruction::CopyInstruction() { return nullptr; }

Instruction BrCondInstruction::CopyInstruction() {
    Operand ncond = cond->CopyOperand();
    Operand ntrueLabel = trueLabel->CopyOperand();
    Operand nfalseLabel = falseLabel->CopyOperand();
    return new BrCondInstruction(ncond, ntrueLabel, nfalseLabel);
}

Instruction BrUncondInstruction::CopyInstruction() {
    Operand ndestLabel = destLabel->CopyOperand();
    return new BrUncondInstruction(ndestLabel);
}

Instruction CallInstruction::CopyInstruction() {
    Operand nresult = NULL;
    if (ret_type != VOID) {
        nresult = result->CopyOperand();
    }
    std::vector<std::pair<enum LLVMType, Operand>> nargs;
    for (auto n : args) {
        nargs.push_back({n.first, n.second->CopyOperand()});
    }
    return new CallInstruction(ret_type, nresult, name, nargs);
}

Instruction RetInstruction::CopyInstruction() { return nullptr; }

Instruction GetElementptrInstruction::CopyInstruction() {
    Operand nresult = result->CopyOperand();
    Operand nptrval = ptrval->CopyOperand();
    std::vector<Operand> nindexes;
    for (auto index : indexes) {
        Operand nindex = index->CopyOperand();
        nindexes.push_back(nindex);
    }

    return new GetElementptrInstruction(type, nresult, nptrval, dims, nindexes);
}

Instruction FptosiInstruction::CopyInstruction() {
    Operand nresult = result->CopyOperand();
    Operand nvalue = value->CopyOperand();

    return new FptosiInstruction(nresult, nvalue);
}

Instruction SitofpInstruction::CopyInstruction() {
    Operand nresult = result->CopyOperand();
    Operand nvalue = value->CopyOperand();

    return new SitofpInstruction(nresult, nvalue);
}

Instruction ZextInstruction::CopyInstruction() {
    Operand nresult = result->CopyOperand();
    Operand nvalue = value->CopyOperand();

    return new ZextInstruction(to_type, nresult, from_type, nvalue);
}

void LoadInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    if (pointer->GetOperandType() == BasicOperand::REG) {
        auto pointer_reg = (RegOperand *)pointer;
        if (Rule.find(pointer_reg->GetRegNo()) != Rule.end())
            pointer_reg->SetRegNo((*(Rule.find(pointer_reg->GetRegNo()))).second);
    }
    if (result->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)result;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void StoreInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    if (pointer->GetOperandType() == BasicOperand::REG) {
        auto pointer_reg = (RegOperand *)pointer;
        if (Rule.find(pointer_reg->GetRegNo()) != Rule.end())
            pointer_reg->SetRegNo((*(Rule.find(pointer_reg->GetRegNo()))).second);
    }
    if (value->GetOperandType() == BasicOperand::REG) {
        auto value_reg = (RegOperand *)value;
        if (Rule.find(value_reg->GetRegNo()) != Rule.end())
            value_reg->SetRegNo((*(Rule.find(value_reg->GetRegNo()))).second);
    }
}

void ArithmeticInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    if (op2->GetOperandType() == BasicOperand::REG) {
        auto op2_reg = (RegOperand *)op2;
        if (Rule.find(op2_reg->GetRegNo()) != Rule.end())
            op2_reg->SetRegNo((*(Rule.find(op2_reg->GetRegNo()))).second);
    }
    if (op1->GetOperandType() == BasicOperand::REG) {
        auto op1_reg = (RegOperand *)op1;
        if (Rule.find(op1_reg->GetRegNo()) != Rule.end())
            op1_reg->SetRegNo((*(Rule.find(op1_reg->GetRegNo()))).second);
    }
    if (result->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)result;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void IcmpInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    if (op2->GetOperandType() == BasicOperand::REG) {
        auto op2_reg = (RegOperand *)op2;
        if (Rule.find(op2_reg->GetRegNo()) != Rule.end())
            op2_reg->SetRegNo((*(Rule.find(op2_reg->GetRegNo()))).second);
    }
    if (op1->GetOperandType() == BasicOperand::REG) {
        auto op1_reg = (RegOperand *)op1;
        if (Rule.find(op1_reg->GetRegNo()) != Rule.end())
            op1_reg->SetRegNo((*(Rule.find(op1_reg->GetRegNo()))).second);
    }
    if (result->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)result;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void FcmpInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    if (op2->GetOperandType() == BasicOperand::REG) {
        auto op2_reg = (RegOperand *)op2;
        if (Rule.find(op2_reg->GetRegNo()) != Rule.end())
            op2_reg->SetRegNo((*(Rule.find(op2_reg->GetRegNo()))).second);
    }
    if (op1->GetOperandType() == BasicOperand::REG) {
        auto op1_reg = (RegOperand *)op1;
        if (Rule.find(op1_reg->GetRegNo()) != Rule.end())
            op1_reg->SetRegNo((*(Rule.find(op1_reg->GetRegNo()))).second);
    }
    if (result->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)result;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void PhiInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    for (auto label_pair : phi_list) {
        auto op1 = label_pair.first;
        if (op1->GetOperandType() == BasicOperand::REG) {
            auto op1_reg = (RegOperand *)op1;
            if (Rule.find(op1_reg->GetRegNo()) != Rule.end())
                op1_reg->SetRegNo((*(Rule.find(op1_reg->GetRegNo()))).second);
        }
        auto op2 = label_pair.second;
        if (op2->GetOperandType() == BasicOperand::REG) {
            auto op2_reg = (RegOperand *)op2;
            if (Rule.find(op2_reg->GetRegNo()) != Rule.end())
                op2_reg->SetRegNo((*(Rule.find(op2_reg->GetRegNo()))).second);
        }
    }
    if (result->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)result;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void AllocaInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    if (result->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)result;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void BrCondInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    if (cond->GetOperandType() == BasicOperand::REG) {
        auto cond_reg = (RegOperand *)cond;
        if (Rule.find(cond_reg->GetRegNo()) != Rule.end())
            cond_reg->SetRegNo((*(Rule.find(cond_reg->GetRegNo()))).second);
    }
}

void BrUncondInstruction::ReplaceByMap(const std::map<int, int> &Rule) {}

void GlobalVarDefineInstruction::ReplaceByMap(const std::map<int, int> &Rule) {}

void GlobalStringConstInstruction::ReplaceByMap(const std::map<int, int> &Rule) {}

void CallInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    for (auto arg_pair : args) {
        if (arg_pair.second->GetOperandType() == BasicOperand::REG) {
            auto op = (RegOperand *)arg_pair.second;
            if (Rule.find(op->GetRegNo()) != Rule.end())
                op->SetRegNo((*(Rule.find(op->GetRegNo()))).second);
        }
    }
    if (result != NULL) {
        if (result->GetOperandType() == BasicOperand::REG) {
            auto result_reg = (RegOperand *)result;
            if (Rule.find(result_reg->GetRegNo()) != Rule.end())
                result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
        }
    }
}

void RetInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    if (ret_val != NULL) {
        if (ret_val->GetOperandType() == BasicOperand::REG) {
            auto result_reg = (RegOperand *)ret_val;
            if (Rule.find(result_reg->GetRegNo()) != Rule.end())
                result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
        }
    }
}

void GetElementptrInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    if (result->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)result;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
    if (ptrval->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)ptrval;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
    for (auto idx_pair : indexes) {
        if (idx_pair->GetOperandType() == BasicOperand::REG) {
            auto idx_reg = (RegOperand *)idx_pair;
            if (Rule.find(idx_reg->GetRegNo()) != Rule.end())
                idx_reg->SetRegNo((*(Rule.find(idx_reg->GetRegNo()))).second);
        }
    }
}

void FunctionDefineInstruction::ReplaceByMap(const std::map<int, int> &Rule) {}

void FunctionDeclareInstruction::ReplaceByMap(const std::map<int, int> &Rule) {}

void FptosiInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    if (result->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)result;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
    if (value->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)value;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void SitofpInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    if (result->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)result;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
    if (value->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)value;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}

void ZextInstruction::ReplaceByMap(const std::map<int, int> &Rule) {
    if (result->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)result;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
    if (value->GetOperandType() == BasicOperand::REG) {
        auto result_reg = (RegOperand *)value;
        if (Rule.find(result_reg->GetRegNo()) != Rule.end())
            result_reg->SetRegNo((*(Rule.find(result_reg->GetRegNo()))).second);
    }
}
