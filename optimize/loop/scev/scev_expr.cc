#include "scev_expr.h"
#include "../../../include/cfg.h"
#include <assert.h>

std::optional<int> SCEVValue::GetConstantValue() {
    if (type != OTHER) {
        return std::nullopt;
    }
    if (op1->GetOperandType() == BasicOperand::IMMI32) {
        auto imm = ((ImmI32Operand *)op1)->GetIntImmVal();
        return imm;
    }
    return std::nullopt;
}

Instruction SCEVValue::GenerateValueInst(CFG *C) {
    if (type == OTHER) {
        return new ArithmeticInstruction(ADD, I32, op1, new ImmI32Operand(0), GetNewRegOperand(++C->max_reg));
    } else {
        return new ArithmeticInstruction(type, I32, op1, op2, GetNewRegOperand(++C->max_reg));
    }
}

bool SCEVValue::operator==(SCEVValue b) {
    if (op1->GetOperandType() != b.op1->GetOperandType()) {
        return false;
    }
    if (type != b.type) {
        return false;
    }

    if (type == OTHER) {
        assert(op1->GetOperandType() != BasicOperand::IMMF32);
        if (op1->GetOperandType() == BasicOperand::IMMI32) {
            auto imm1 = ((ImmI32Operand *)op1)->GetIntImmVal();
            auto b_imm1 = ((ImmI32Operand *)b.op1)->GetIntImmVal();
            return imm1 == b_imm1;
        } else {
            return op1 == b.op1;
        }
    }

    if (op2->GetOperandType() != b.op2->GetOperandType()) {
        return false;
    }

    bool eq1 = false, eq2 = false;
    if (op1->GetOperandType() == BasicOperand::IMMI32) {
        auto imm1 = ((ImmI32Operand *)op1)->GetIntImmVal();
        auto b_imm1 = ((ImmI32Operand *)b.op1)->GetIntImmVal();
        eq1 = (imm1 == b_imm1);
    } else {
        eq1 = (op1 == b.op1);
    }

    if (op2->GetOperandType() == BasicOperand::IMMI32) {
        auto imm2 = ((ImmI32Operand *)op2)->GetIntImmVal();
        auto b_imm2 = ((ImmI32Operand *)b.op2)->GetIntImmVal();
        eq2 = (imm2 == b_imm2);
    } else {
        eq2 = (op2 == b.op2);
    }
    return eq1 && eq2;
}

SCEVValue SCEVValue::operator-() {
    if (type != OTHER) {
        return {nullptr, OTHER, nullptr};
    }
    SCEVValue res;
    res.op1 = new ImmI32Operand(0);
    res.op2 = op1;
    res.type = SUB;

    if (res.op2->GetOperandType() == BasicOperand::IMMI32) {
        auto imm2 = ((ImmI32Operand *)res.op2)->GetIntImmVal();
        if (res.op1->GetOperandType() == BasicOperand::IMMI32) {
            auto imm1 = ((ImmI32Operand *)res.op1)->GetIntImmVal();
            res.op1 = new ImmI32Operand(imm1 - imm2);
            res.type = OTHER;
        } else if (res.op1->GetOperandType() == BasicOperand::REG) {
            if (imm2 == 0) {
                res.type = OTHER;
            }
        }
    }
    return res;
}

SCEVValue SCEVValue::operator+(SCEVValue b) {
    if (type != OTHER && b.type != OTHER) {
        return {nullptr, OTHER, nullptr};
    }

    if (type != OTHER && b.type == OTHER) {
        if (b.op1->GetOperandType() == BasicOperand::IMMI32) {
            auto imm1 = ((ImmI32Operand *)b.op1)->GetIntImmVal();
            if (imm1 == 0) {
                return {op1, type, op2};
            }
        }

        if (type != ADD) {
            return {nullptr, OTHER, nullptr};
        }

        if (op2->GetOperandType() == BasicOperand::IMMI32 && b.op1->GetOperandType() == BasicOperand::IMMI32) {
            auto imm1 = ((ImmI32Operand *)b.op1)->GetIntImmVal();
            auto imm2 = ((ImmI32Operand *)op2)->GetIntImmVal();
            auto imm = imm1 + imm2;
            if (imm == 0) {
                return {op1, OTHER, nullptr};
            } else {
                return {op1, ADD, new ImmI32Operand(imm)};
            }
        }
        return {nullptr, OTHER, nullptr};
    }

    if (type == OTHER && b.type != OTHER) {
        if (op1->GetOperandType() == BasicOperand::IMMI32) {
            auto imm1 = ((ImmI32Operand *)op1)->GetIntImmVal();
            if (imm1 == 0) {
                return b;
            }
        }
        if (b.type != ADD) {
            return {nullptr, OTHER, nullptr};
        }
        if (op1->GetOperandType() == BasicOperand::IMMI32 && b.op2->GetOperandType() == BasicOperand::IMMI32) {
            auto imm1 = ((ImmI32Operand *)op1)->GetIntImmVal();
            auto imm2 = ((ImmI32Operand *)b.op2)->GetIntImmVal();
            auto imm = imm1 + imm2;
            if (imm == 0) {
                return {b.op1, OTHER, nullptr};
            } else {
                return {b.op1, ADD, new ImmI32Operand(imm)};
            }
        }
        return {nullptr, OTHER, nullptr};
    }

    SCEVValue res;
    res.op1 = op1;
    res.op2 = b.op1;
    res.type = ADD;

    if (res.op1->GetOperandType() == BasicOperand::IMMI32) {
        std::swap(res.op1, res.op2);
    }

    if (res.op2->GetOperandType() == BasicOperand::IMMI32) {
        auto imm2 = ((ImmI32Operand *)res.op2)->GetIntImmVal();
        if (res.op1->GetOperandType() == BasicOperand::IMMI32) {
            auto imm1 = ((ImmI32Operand *)res.op1)->GetIntImmVal();
            res.op1 = new ImmI32Operand(imm1 + imm2);
            res.type = OTHER;
        } else if (res.op1->GetOperandType() == BasicOperand::REG) {
            if (imm2 == 0) {
                res.type = OTHER;
            }
        }
    }

    return res;
}

SCEVValue SCEVValue::operator-(SCEVValue b) {
    if (type != OTHER && b.type != OTHER) {
        return {nullptr, OTHER, nullptr};
    }
    if (type != OTHER && b.type == OTHER) {
        if (type == MUL) {
            return {nullptr, OTHER, nullptr};
        }
        if (op2->GetOperandType() == BasicOperand::IMMI32 && b.op1->GetOperandType() == BasicOperand::IMMI32) {
            auto imm1 = ((ImmI32Operand *)b.op1)->GetIntImmVal();
            auto imm2 = ((ImmI32Operand *)op2)->GetIntImmVal();
            auto imm = imm1 - imm2;
            if (type == SUB) {
                imm = imm1 + imm2;
            }
            if (imm == 0) {
                return {op1, OTHER, nullptr};
            } else {
                return {op1, SUB, new ImmI32Operand(imm)};
            }
        }
        return {nullptr, OTHER, nullptr};
    }

    if (type == OTHER && b.type != OTHER) {
        return {nullptr, OTHER, nullptr};
    }

    SCEVValue res;
    res.op1 = op1;
    res.op2 = b.op1;
    res.type = SUB;

    if (res.op2->GetOperandType() == BasicOperand::IMMI32) {
        auto imm2 = ((ImmI32Operand *)res.op2)->GetIntImmVal();
        if (res.op1->GetOperandType() == BasicOperand::IMMI32) {
            auto imm1 = ((ImmI32Operand *)res.op1)->GetIntImmVal();
            res.op1 = new ImmI32Operand(imm1 - imm2);
            res.type = OTHER;
        } else if (res.op1->GetOperandType() == BasicOperand::REG) {
            if (imm2 == 0) {
                res.type = OTHER;
            }
        }
    }
    return res;
}

SCEVValue SCEVValue::operator*(SCEVValue b) {
    if (type != OTHER && b.type != OTHER) {
        return {nullptr, OTHER, nullptr};
    }

    if (type != OTHER && b.type == OTHER) {
        if (type != MUL) {
            return {nullptr, OTHER, nullptr};
        }
        if (op2->GetOperandType() == BasicOperand::IMMI32 && b.op1->GetOperandType() == BasicOperand::IMMI32) {
            auto imm1 = ((ImmI32Operand *)b.op1)->GetIntImmVal();
            auto imm2 = ((ImmI32Operand *)op2)->GetIntImmVal();
            auto imm = imm1 * imm2;
            if (imm == 1) {
                return {op1, OTHER, nullptr};
            } else {
                return {op1, MUL, new ImmI32Operand(imm)};
            }
        }
        return {nullptr, OTHER, nullptr};
    }

    if (type == OTHER && b.type != OTHER) {
        if (type != MUL) {
            return {nullptr, OTHER, nullptr};
        }
        if (op1->GetOperandType() == BasicOperand::IMMI32 && b.op2->GetOperandType() == BasicOperand::IMMI32) {
            auto imm1 = ((ImmI32Operand *)op1)->GetIntImmVal();
            auto imm2 = ((ImmI32Operand *)b.op2)->GetIntImmVal();
            auto imm = imm1 * imm2;
            if (imm == 1) {
                return {b.op1, OTHER, nullptr};
            } else {
                return {b.op1, MUL, new ImmI32Operand(imm)};
            }
        }
        return {nullptr, OTHER, nullptr};
    }

    SCEVValue res;
    res.op1 = op1;
    res.op2 = b.op1;
    res.type = MUL;

    if (res.op1->GetOperandType() == BasicOperand::IMMI32) {
        std::swap(res.op1, res.op2);
    }
    if (res.op2->GetOperandType() == BasicOperand::IMMI32) {
        auto imm2 = ((ImmI32Operand *)res.op2)->GetIntImmVal();
        if (res.op1->GetOperandType() == BasicOperand::IMMI32) {
            auto imm1 = ((ImmI32Operand *)res.op1)->GetIntImmVal();
            res.op1 = new ImmI32Operand(imm1 * imm2);
            res.type = OTHER;
        } else if (res.op1->GetOperandType() == BasicOperand::REG) {
            if (imm2 == 1) {
                res.type = OTHER;
            } else if (imm2 == 0) {
                res.type = OTHER;
                res.op1 = new ImmI32Operand(0);
            }
        }
    }

    return res;
}

void SCEVValue::PrintSCEVValue() {
    if (type == OTHER) {
        std::cerr << op1;
    } else if (type == ADD) {
        std::cerr << "(" << op1 << "+" << op2 << ")";
    } else if (type == MUL) {
        std::cerr << "(" << op1 << "*" << op2 << ")";
    } else if (type == SUB) {
        std::cerr << "(" << op1 << "-" << op2 << ")";
    } else {
        assert(false);
    }
}

AddSCEVExpr::AddSCEVExpr(Operand d) {
    this->len = 1;
    this->st.op1 = d;
    this->st.type = OTHER;
    this->type = Invariant;
    this->RecurExpr = nullptr;
}

AddSCEVExpr::AddSCEVExpr(Operand s, SCEVExprType t, Operand d) {
    AddSCEVExpr *exp = new AddSCEVExpr(d);
    this->len = 2;
    this->st.op1 = s;
    this->st.type = OTHER;
    this->type = t;
    this->RecurExpr = exp;
}

AddSCEVExpr::AddSCEVExpr(Operand s, SCEVExprType t, SCEVValue d) {
    AddSCEVExpr *exp = new AddSCEVExpr();
    exp->len = 1;
    exp->st = d;
    exp->type = Invariant;
    exp->RecurExpr = nullptr;

    this->len = 2;
    this->st.op1 = s;
    this->st.type = OTHER;
    this->type = t;
    this->RecurExpr = exp;
}

AddSCEVExpr::AddSCEVExpr(Operand s, SCEVExprType t, AddSCEVExpr *rec_expr) {
    this->len = rec_expr->len + 1;
    this->st.op1 = s;
    this->st.type = OTHER;
    this->type = t;
    this->RecurExpr = rec_expr;
}

AddSCEVExpr *SCEVneg(AddSCEVExpr *a) {
    auto expr = a;
    if (expr == nullptr) {
        return nullptr;
    }
    auto now = expr;
    AddSCEVExpr *now_nexp = nullptr, *last_nexp = nullptr;
    AddSCEVExpr *ans;
    while (now != nullptr) {
        AddSCEVExpr *nexp = new AddSCEVExpr();
        if (now_nexp == nullptr) {
            ans = nexp;
            ans->len = expr->len;
        }

        now_nexp = nexp;
        now_nexp->st = -now->st;
        if (now_nexp->st.op1 == nullptr) {
            return nullptr;
        }

        now_nexp->type = now->type;

        if (last_nexp != nullptr) {
            last_nexp->RecurExpr = now_nexp;
            last_nexp = now_nexp;
        }

        last_nexp = now_nexp;
        now = now->RecurExpr;
    }
    return ans;
}

// if result is invalid, return nullptr
// we only consider calculation of 2 invariant, if > 2, we consider it as invalid, return nullptr

// {a,+,f} + {b,+,g} = {(a+b),+,(f+g)}
// {E} + {a,+,f} = {a+E,f}
AddSCEVExpr *SCEVadd(AddSCEVExpr *a, AddSCEVExpr *b) {
    auto expr1 = a, expr2 = b;
    if (expr1 == nullptr || expr2 == nullptr) {
        return nullptr;
    }
    // expr1->PrintSCEVExpr();expr2->PrintSCEVExpr();std::cerr<<"+\n";
    if (expr1->len < expr2->len) {    // we assume expr1->len  >  expr2->len
        std::swap(expr1, expr2);
    }
    auto now1 = expr1, now2 = expr2;
    AddSCEVExpr *now_nexp = nullptr, *last_nexp = nullptr;
    AddSCEVExpr *ans;

    while (now2 != nullptr) {
        AddSCEVExpr *nexp = new AddSCEVExpr();
        if (now_nexp == nullptr) {
            ans = nexp;
            ans->len = expr1->len;
        }
        now_nexp = nexp;
        now_nexp->st = now1->st + now2->st;
        if (now_nexp->st.op1 == nullptr) {
            return nullptr;
        }

        now_nexp->type = now1->type;

        if (last_nexp != nullptr) {
            last_nexp->RecurExpr = now_nexp;
            last_nexp = now_nexp;
        }
        last_nexp = now_nexp;
        now1 = now1->RecurExpr;
        now2 = now2->RecurExpr;
    }
    now_nexp->RecurExpr = now1;
    // ans->PrintSCEVExpr();
    return ans;
}

// {a,+,f} - {b,+,g} = {(a-b),+,(f-g)}
// {E} - {a,+,f} = {E-a,+,f}
// {a,+,f} - E = {a-E,+,f}
AddSCEVExpr *SCEVsub(AddSCEVExpr *a, AddSCEVExpr *b) {
    auto expr1 = a, expr2 = b;
    if (expr1 == nullptr || expr2 == nullptr) {
        return nullptr;
    }
    // expr1->PrintSCEVExpr();expr2->PrintSCEVExpr();std::cerr<<"-\n";

    bool is_rsb = false;
    if (expr1->len < expr2->len) {    // we assume expr1->len  >  expr2->len
        std::swap(expr1, expr2);
        is_rsb = true;
    }

    auto now1 = expr1, now2 = expr2;
    AddSCEVExpr *now_nexp = nullptr, *last_nexp = nullptr;
    AddSCEVExpr *ans;

    while (now2 != nullptr) {
        AddSCEVExpr *nexp = new AddSCEVExpr();
        if (now_nexp == nullptr) {
            ans = nexp;
            ans->len = expr1->len;
        }
        now_nexp = nexp;
        if (!is_rsb) {
            now_nexp->st = now1->st - now2->st;
        } else {
            now_nexp->st = now2->st - now1->st;
        }

        if (now_nexp->st.op1 == nullptr) {
            return nullptr;
        }

        now_nexp->type = now1->type;

        if (last_nexp != nullptr) {
            last_nexp->RecurExpr = now_nexp;
            last_nexp = now_nexp;
        }

        last_nexp = now_nexp;
        now1 = now1->RecurExpr;
        now2 = now2->RecurExpr;
    }
    if (is_rsb) {
        now_nexp->RecurExpr = SCEVneg(now1);
        if (now1 != nullptr && now_nexp->RecurExpr == nullptr) {
            return nullptr;
        }
    } else {
        now_nexp->RecurExpr = now1;
    }
    // ans->PrintSCEVExpr();
    return ans;
}

// {e,+,f}*{g,+,h} = {e*g,+,e*h+f*g+f*h,+,2*f*h}
// E*{a,+,f} = {E*a,+,E*f}
AddSCEVExpr *SCEVmul(AddSCEVExpr *a, AddSCEVExpr *b) {
    auto expr1 = a, expr2 = b;
    if (expr1 == nullptr || expr2 == nullptr) {
        return nullptr;
    }

    if (expr1->len < expr2->len) {
        std::swap(expr1, expr2);
    }
    // now we only consider E*{a,+,f} = {E*a,+,E*f}
    if (expr2->type != AddSCEVExpr::Invariant) {
        return nullptr;    // so return nullptr
    }
    auto now = expr1;
    AddSCEVExpr *now_nexp = nullptr, *last_nexp = nullptr;
    AddSCEVExpr *ans;
    while (now != nullptr) {
        AddSCEVExpr *nexp = new AddSCEVExpr();
        if (now_nexp == nullptr) {
            ans = nexp;
            ans->len = expr1->len;
        }
        now_nexp = nexp;
        now_nexp->st = now->st * expr2->st;
        if (now_nexp->st.op1 == nullptr) {
            return nullptr;
        }

        now_nexp->type = now->type;

        if (last_nexp != nullptr) {
            last_nexp->RecurExpr = now_nexp;
            last_nexp = now_nexp;
        }

        last_nexp = now_nexp;
        now = now->RecurExpr;
    }
    return ans;
}

std::string SCEVExprType_status[3] = {"ERROR", "Invariant", "+"};

void AddSCEVExpr::PrintSCEVExpr() {
    AddSCEVExpr *now = this;
    std::cerr << "len:" << this->len << " ";
    std::cerr << "{";
    while (now->RecurExpr) {
        now->st.PrintSCEVValue();
        std::cerr << "," << SCEVExprType_status[type] << ",";
        now = now->RecurExpr;
    }
    now->st.PrintSCEVValue();
    std::cerr << "}\n";
}
