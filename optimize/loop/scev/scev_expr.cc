#include "scev_expr.h"
#include <assert.h>

SCEVValue SCEVValue::operator+(SCEVValue b) {
    if(type != OTHER || b.type != OTHER){
        return {nullptr,OTHER,nullptr};
    }
    SCEVValue res;
    res.op1 = op1;
    res.op2 = b.op1;
    res.type = ADD;

    if(res.op1->GetOperandType() == BasicOperand::IMMI32){
        std::swap(res.op1, res.op2);
    }

    if(res.op2->GetOperandType() == BasicOperand::IMMI32){
        auto imm2 = ((ImmI32Operand*)res.op2)->GetIntImmVal();
        if(res.op1->GetOperandType() == BasicOperand::IMMI32){
            auto imm1 = ((ImmI32Operand*)res.op1)->GetIntImmVal();
            res.op1 = new ImmI32Operand(imm1+imm2);
            res.type = OTHER;
        }else if(res.op1->GetOperandType() == BasicOperand::REG){
            if(imm2 == 0){
                res.type = OTHER;
            }
        }
    }

    return res;
}

SCEVValue SCEVValue::operator-(SCEVValue b) {
    if(type != OTHER || b.type != OTHER){
        return {nullptr,OTHER,nullptr};
    }

    SCEVValue res;
    res.op1 = op1;
    res.op2 = b.op1;
    res.type = MUL;

    if(res.op2->GetOperandType() == BasicOperand::IMMI32){
        auto imm2 = ((ImmI32Operand*)res.op2)->GetIntImmVal();
        if(res.op1->GetOperandType() == BasicOperand::IMMI32){
            auto imm1 = ((ImmI32Operand*)res.op1)->GetIntImmVal();
            res.op1 = new ImmI32Operand(imm1-imm2);
            res.type = OTHER;
        }else if(res.op1->GetOperandType() == BasicOperand::REG){
            if(imm2 == 0){
                res.type = OTHER;
            }
        }
    }
    return res;
}

SCEVValue SCEVValue::operator*(SCEVValue b) {
    if(type != OTHER || b.type != OTHER){
        return {nullptr,OTHER,nullptr};
    }

    SCEVValue res;
    res.op1 = op1;
    res.op2 = b.op1;
    res.type = MUL;

    if(res.op1->GetOperandType() == BasicOperand::IMMI32){
        std::swap(res.op1, res.op2);
    }
    if(res.op2->GetOperandType() == BasicOperand::IMMI32){
        auto imm2 = ((ImmI32Operand*)res.op2)->GetIntImmVal();
        if(res.op1->GetOperandType() == BasicOperand::IMMI32){
            auto imm1 = ((ImmI32Operand*)res.op1)->GetIntImmVal();
            res.op1 = new ImmI32Operand(imm1*imm2);
            res.type = OTHER;
        }else if(res.op1->GetOperandType() == BasicOperand::REG){
            if(imm2 == 1){
                res.type = OTHER;
            }
        }
    }

    return res;
}

void SCEVValue::PrintSCEVValue() {
    if(type == OTHER){
        std::cerr<<op1;
    }else if(type == ADD){
        std::cerr<<"("<<op1<<"+"<<op2<<")";
    }else if(type == MUL){
        std::cerr<<"("<<op1<<"*"<<op2<<")";
    }else if(type == SUB){
        std::cerr<<"("<<op1<<"-"<<op2<<")";
    }else{
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
    AddSCEVExpr* exp = new AddSCEVExpr(d);
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

// if result is invalid, return nullptr
// we only consider calculation of 2 invariant, if > 2, we consider it as invalid, return nullptr

// {a,+,f} + {b,+,g} = {(a+b),+,(f+g)}
// {E} + {a,+,f} = {a+E,f}
AddSCEVExpr* SCEVadd(AddSCEVExpr* a, AddSCEVExpr* b) {
    auto expr1 = a, expr2 = b;
    if(expr1 == nullptr || expr2 == nullptr){
        return nullptr;
    }
    std::cerr<<"+  ";expr1->PrintSCEVExpr();expr2->PrintSCEVExpr();

    if(expr1->len < expr2->len){//we assume expr1->len  >  expr2->len
        std::swap(expr1, expr2);
    }
    auto now1 = expr1, now2 = expr2;
    AddSCEVExpr* now_nexp = nullptr, *last_nexp = nullptr;
    AddSCEVExpr* ans;
    
    while(now2 != nullptr){
        AddSCEVExpr* nexp = new AddSCEVExpr();
        if(now_nexp == nullptr){
            ans = nexp;
            ans->len = expr1->len;
        }
        now_nexp = nexp;
        now_nexp->st = now1->st + now2->st;
        if(now_nexp->st.op1 == nullptr){
            return nullptr;
        }

        now_nexp->type = now1->type;

        if(last_nexp != nullptr){
            last_nexp->RecurExpr = now_nexp;
            last_nexp = now_nexp; 
        }

        now1 = now1->RecurExpr;
        now2 = now2->RecurExpr;
    }
    now_nexp->RecurExpr = now1;
    ans->PrintSCEVExpr();
    return ans;
}

// {a,+,f} - {b,+,g} = {(a-b),+,(f-g)}
// {E} - {a,+,f} = {E-a,+,f}
// {a,+,f} - E = {a-E,+,f}
AddSCEVExpr* SCEVsub(AddSCEVExpr* a, AddSCEVExpr* b) {
    auto expr1 = a, expr2 = b;
    if(expr1 == nullptr || expr2 == nullptr){
        return nullptr;
    }
    std::cerr<<"-  ";expr1->PrintSCEVExpr();expr2->PrintSCEVExpr();

    bool is_rsb = false;
    if(expr1->len < expr2->len){//we assume expr1->len  >  expr2->len
        std::swap(expr1, expr2);
        is_rsb = true;
    }

    auto now1 = expr1, now2 = expr2;
    AddSCEVExpr* now_nexp = nullptr, *last_nexp = nullptr;
    AddSCEVExpr* ans;
    
    while(now2 != nullptr){
        AddSCEVExpr* nexp = new AddSCEVExpr();
        if(now_nexp == nullptr){
            ans = nexp;
            ans->len = expr1->len;
        }
        now_nexp = nexp;
        if(!is_rsb){
            now_nexp->st = now1->st - now2->st;
        }else{
            now_nexp->st = now2->st - now1->st;
        }

        if(now_nexp->st.op1 == nullptr){
            return nullptr;
        }

        now_nexp->type = now1->type;

        if(last_nexp != nullptr){
            last_nexp->RecurExpr = now_nexp;
            last_nexp = now_nexp; 
        }

        now1 = now1->RecurExpr;
        now2 = now2->RecurExpr;
    }
    now_nexp->RecurExpr = now1;
    ans->PrintSCEVExpr();
    return ans;
}

AddSCEVExpr* SCEVmul(AddSCEVExpr* a, AddSCEVExpr* b) {
    auto expr1 = a, expr2 = b;
    if(expr1 == nullptr || expr2 == nullptr){
        return nullptr;
    }

    if(expr1->len < expr2->len){
        std::swap(expr1, expr2);
    }

    return nullptr;
}


std::string SCEVExprType_status[3] = {"ERROR", "Invariant", "+"};

void AddSCEVExpr::PrintSCEVExpr() {
    AddSCEVExpr* now = this;
    std::cerr<<"len:"<<this->len<<" ";
    std::cerr<<"{";
    while(now->RecurExpr){
        now->st.PrintSCEVValue();
        std::cerr<<","<<SCEVExprType_status[type]<<",";
        now = now->RecurExpr;
    }
    now->st.PrintSCEVValue();
    std::cerr<<"}\n";
}
