#include "../../../include/cfg.h"
#include "scev_expr.h"
#include <assert.h>

static std::map<int, Instruction> ResultMap;

void ScalarEvolution(CFG *C) {
    for (auto loop : C->LoopForest.loop_set) {
        loop->ScalarEvolution(C);
    }
}

void NaturalLoop::ScalarEvolution(CFG *C) {
    ResultMap.clear();
    scev.SCEVMap.clear();
    scev.InvariantSet.clear();

    scev.C = C;
    scev.L = this;
    scev.FindInvariantVar();
    scev.FindBasicIndVar();

    scev.PrintLoopSCEVInfo();
}

void SCEV::FindInvariantVar() {
    // because LICM, we only need to deal with the Inst out of the loop
    for (auto [id, bb] : *C->block_map) {
        if (L->loop_nodes.find(bb) != L->loop_nodes.end()) {
            continue;
        }
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() == PHI && L->exit_nodes.find(bb) != L->exit_nodes.end()) {
                continue;
            }
            if (I->GetResultRegNo() != -1) {
                InvariantSet.insert(I->GetResultRegNo());
            }
        }
    }

    // init the ResultMap
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            int v = I->GetResultRegNo();
            if (v != -1) {    // result exists
                ResultMap[v] = I;
            }
        }
    }
}

bool SCEV::SCEV_isI32Invariant(Operand op) {
    if (op->GetOperandType() == BasicOperand::IMMI32) {
        return true;
    } else if (op->GetOperandType() == BasicOperand::REG) {
        int regno = ((RegOperand *)op)->GetRegNo();
        auto I = ResultMap[regno];
        return (InvariantSet.find(regno) != InvariantSet.end()) && (I->GetResultType() == I32);
    } else {
        return false;
    }
}

// if ths instruction is like result = r +(-) d (d is invariant), return {r,d}
// else return {nullptr,nullptr}
std::pair<Operand, Operand> is_AddSubInvariant(Instruction I, int r, SCEV *scev) {
    if (I->GetOpcode() != ADD && I->GetOpcode() != SUB) {
        return {nullptr, nullptr};
    }

    auto ArithI = (ArithmeticInstruction *)I;
    auto op1 = ArithI->GetOperand1();
    auto op2 = ArithI->GetOperand2();

    bool t1 = scev->SCEV_isI32Invariant(op1);
    bool t2 = scev->SCEV_isI32Invariant(op2);
    // both invariant or both not invariant, return nullptr
    if ((t1 | t2) == 0 || (t1 & t2) == 1) {
        return {nullptr, nullptr};
    }

    if (t1) {
        std::swap(op1, op2);
    }
    // now op2 is invariant
    return {op1, op2};
}

// we only care about ADD and SUB
// r2 = f(st) , f is ADD or SUB
// example: r2 = st + 1
// return {step, type(ADD,SUB)}
std::pair<Operand, LLVMIROpcode> SCEV::FindBasicIndVarCycleVarDef(int st, int r2) {
    // for simple, now we only optimize cycle with size 2
    Operand ans;
    Instruction now = ResultMap[r2];    // r2 = st +/- invariant
    // std::cerr<<"FindBasicIndVarCycleVarDef  "<<st<<" "<<r2<<" ";
    // now->PrintIR(std::cerr);

    auto [r, d] = is_AddSubInvariant(now, st, this);    // [r, d] should be {st, step}
    // r2 = st + d
    if (r == nullptr) {
        return {nullptr, OTHER};
    }

    assert(r->GetOperandType() == BasicOperand::REG);
    int op1 = ((RegOperand *)r)->GetRegNo();
    if (op1 == st) {
        return {d, (LLVMIROpcode)now->GetOpcode()};
    }

    return {nullptr, OTHER};
}

void SCEV::FindBasicIndVar() {
    assert(L->latches.size() == 1);
    auto latch = *L->latches.begin();

    for (auto I : L->header->Instruction_list) {
        if (I->GetOpcode() != PHI) {
            break;
        }
        auto PhiI = (PhiInstruction *)I;
        assert(PhiI->GetPhiList().size() == 2);

        Operand st, step;
        st = PhiI->GetValOperand(L->preheader->block_id);
        if (!SCEV_isI32Invariant(st)) {
            continue;
        }

        Operand r2 = PhiI->GetValOperand(latch->block_id);
        if (r2->GetOperandType() != BasicOperand::REG) {
            continue;
        }

        auto [d, type] = FindBasicIndVarCycleVarDef(PhiI->GetResultRegNo(), ((RegOperand *)r2)->GetRegNo());
        // now we only consider step is IMMI32
        if (d != nullptr && d->GetOperandType() == BasicOperand::IMMI32) {
            // now we find one BasicIndVar
            SCEVMap[PhiI->GetResultRegNo()] = new SCEVExpr(st, SCEVExpr::AddRecurrences, d);
        }
    }
}

/*
int S = 0;
for(int i = 0; i < n; ++i){
    S += i;
}

int S0 = 0;
for(int i0 = 0; i1 < n; i1 = phi(i0,i2), S1 = phi(S0,S2)){
    S2 = S1 + i1;
    i2 = i1 + 1；
}

i1 -> {0,+,1}
i2 = i1 + 1 -> {1,+,1}
S1 -> {0,+,0,+,1}
S2 -> {0,+,0,+,1} + {0,+,1} = {0,+,1,+,1}
*/
void SCEV::FindRecurrences() {
    // first find SCEVRecurrences in the phi of header


    // then find other SCEVRecurrences


}


SCEVExpr::SCEVExpr(Operand d) {
    this->len = 1;
    this->st = d;
    this->type = Invariant;
    this->RecurExpr = nullptr;
}

SCEVExpr::SCEVExpr(Operand s, SCEVExprType t, Operand d) {
    SCEVExpr* exp = new SCEVExpr(d);
    this->len = 2;
    this->st = s;
    this->type = t;
    this->RecurExpr = exp;
}

SCEVExpr::SCEVExpr(Operand s, SCEVExprType t, SCEVExpr *rec_expr) {
    this->len = rec_expr->len + 1;
    this->st = s;
    this->type = t;
    this->RecurExpr = rec_expr;
}

SCEVExpr* SCEVExpr::operator+(SCEVExpr* b) {
    return nullptr;
}

SCEVExpr* SCEVExpr::operator-(SCEVExpr* b) {
    return nullptr;
}

SCEVExpr* SCEVExpr::operator*(SCEVExpr* b) {
    return nullptr;
}


std::string SCEVExprType_status[3] = {"ERROR", "Invariant", "+"};

void SCEVExpr::PrintSCEVExpr() {
    SCEVExpr* now = this;
    std::cerr<<"len:"<<this->len<<" ";
    std::cerr<<"{";
    while(now->RecurExpr){
        std::cerr<<st<<" "<<SCEVExprType_status[type]<<" ";
        now = now->RecurExpr;
    }
    std::cerr<<now->st<<"}\n";
}




void SCEV::PrintLoopSCEVInfo() {
    for(auto [regno, expr]: SCEVMap){
        std::cerr<<regno<<"  ";
        expr->PrintSCEVExpr();
    }
}
