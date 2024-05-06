#include "../../../include/cfg.h"
#include "scev_expr.h"
#include <assert.h>

static std::map<int, Instruction> ResultMap;

AddSCEVExpr *SCEVadd(AddSCEVExpr *a, AddSCEVExpr *b);
AddSCEVExpr *SCEVsub(AddSCEVExpr *a, AddSCEVExpr *b);
AddSCEVExpr *SCEVmul(AddSCEVExpr *a, AddSCEVExpr *b);

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
    scev.FindRecurrences();

    // scev.PrintLoopSCEVInfo();

    scev.CheckSimpleForLoop();
}

AddSCEVExpr *SCEV::GetOperandSCEV(Operand op) {
    if (op == nullptr) {
        assert(false);
    }

    if (op->GetOperandType() == BasicOperand::REG) {
        int r = ((RegOperand *)op)->GetRegNo();
        if (SCEVMap.find(r) == SCEVMap.end()) {
            return nullptr;
        }
        return SCEVMap[r];
    } else if (op->GetOperandType() == BasicOperand::IMMI32) {
        int imm = ((ImmI32Operand *)op)->GetIntImmVal();
        return new AddSCEVExpr(new ImmI32Operand(imm));
    } else {
        return nullptr;
    }
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

    // function formal
    for (int i = 0; i < C->function_def->GetFormalSize(); ++i) {
        ResultMap[i] = C->function_def;
        InvariantSet.insert(i);
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
    // nowI op2 is invariant
    return {op1, op2};
}

// we only care about ADD and SUB
// r2 = f(st) , f is ADD or SUB
// example: r2 = st + 1
// return {step, type(ADD,SUB)}
std::pair<Operand, LLVMIROpcode> SCEV::FindBasicIndVarCycleVarDef(int st, int r2) {
    // for simple, now we only optimize cycle with size 2
    Operand ans;
    Instruction nowI = ResultMap[r2];    // r2 = st +/- invariant
    // std::cerr<<"FindBasicIndVarCycleVarDef  "<<st<<" "<<r2<<" ";
    // nowI->PrintIR(std::cerr);

    auto [r, d] = is_AddSubInvariant(nowI, st, this);    // [r, d] should be {st, step}
    // r2 = st + d
    if (r == nullptr) {
        return {nullptr, OTHER};
    }

    assert(r->GetOperandType() == BasicOperand::REG);
    int op1 = ((RegOperand *)r)->GetRegNo();
    if (op1 == st) {
        return {d, (LLVMIROpcode)nowI->GetOpcode()};
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
        if (PhiI->GetDataType() != I32) {
            continue;
        }

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
        if (d != nullptr) {
            // now we find one BasicIndVar
            if (type == ADD) {
                SCEVMap[PhiI->GetResultRegNo()] = new AddSCEVExpr(st, AddSCEVExpr::AddRecurrences, d);
            } else if (type == SUB) {
                SCEVMap[PhiI->GetResultRegNo()] =
                new AddSCEVExpr(st, AddSCEVExpr::AddRecurrences, -SCEVValue{d, OTHER, nullptr});
            }
        }
    }
    // create loop invariant
    for (auto r : InvariantSet) {
        SCEVMap[r] = new AddSCEVExpr(new RegOperand(r));
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
    bool changed = true;
    while (changed) {
        changed = false;
        for (auto bb : L->loop_nodes) {
            for (auto I : bb->Instruction_list) {
                auto r = I->GetResultReg();
                if (r == nullptr) {
                    continue;
                }
                if (GetOperandSCEV(r) != nullptr) {
                    continue;
                }

                if (I->GetOpcode() == ADD) {
                    auto ArithI = (ArithmeticInstruction *)I;
                    auto scev1 = GetOperandSCEV(ArithI->GetOperand1());
                    auto scev2 = GetOperandSCEV(ArithI->GetOperand2());
                    auto res_scev = SCEVadd(scev1, scev2);
                    if (res_scev != nullptr) {
                        changed = true;
                        SCEVMap[I->GetResultRegNo()] = res_scev;
                    }
                } else if (I->GetOpcode() == SUB) {
                    auto ArithI = (ArithmeticInstruction *)I;
                    auto scev1 = GetOperandSCEV(ArithI->GetOperand1());
                    auto scev2 = GetOperandSCEV(ArithI->GetOperand2());
                    auto res_scev = SCEVsub(scev1, scev2);
                    if (res_scev != nullptr) {
                        changed = true;
                        SCEVMap[I->GetResultRegNo()] = res_scev;
                    }
                } else if (I->GetOpcode() == MUL) {
                    auto ArithI = (ArithmeticInstruction *)I;
                    auto scev1 = GetOperandSCEV(ArithI->GetOperand1());
                    auto scev2 = GetOperandSCEV(ArithI->GetOperand2());
                    auto res_scev = SCEVmul(scev1, scev2);
                    if (res_scev != nullptr) {
                        changed = true;
                        SCEVMap[I->GetResultRegNo()] = res_scev;
                    }
                }
            }
        }
        // TODO(): calculate more phi in header
    }
}

IcmpCond GetInveriseIcmpCond(IcmpCond cond) {
    if (cond == IcmpCond::eq) {
        return IcmpCond::ne;
    } else if (cond == IcmpCond::ne) {
        return IcmpCond::eq;
    } else if (cond == IcmpCond::sle) {
        return IcmpCond::sgt;
    } else if (cond == IcmpCond::sgt) {
        return IcmpCond::sle;
    } else if (cond == IcmpCond::slt) {
        return IcmpCond::sge;
    } else if (cond == IcmpCond::sge) {
        return IcmpCond::slt;
    }

    // should not reach here
    assert(false);
    return IcmpCond::eq;
}

// return {is_simpleloop, forloop_info}
std::pair<bool, ForLoopInfo> GetLoopBound(IcmpCond cond, SCEVValue ub, AddSCEVExpr *IndVar) {
    // IndVar->PrintSCEVExpr();
    ForLoopInfo ans;
    if (cond == ne || cond == eq) {
        return {false, ans};
    }
    ans.is_upperbound_closed = (cond == sle || cond == sge);
    ans.upperbound = ub;
    ans.lowerbound = IndVar->st;
    ans.step = IndVar->RecurExpr->st;

    return {true, ans};
}

void SCEV::CheckSimpleForLoop() {
    if (L->exit_nodes.size() > 1) {
        is_simpleloop = false;
        return;
    }

    if (L->exiting_nodes.size() > 1) {
        is_simpleloop = false;
        return;
    }

    auto exit = *L->exit_nodes.begin();
    auto exiting = *L->exiting_nodes.begin();
    auto latch = *L->latches.begin();
    if (exiting != latch) {
        return;
    }
    auto I = *(latch->Instruction_list.end() - 2);
    if (I->GetOpcode() == FCMP) {
        is_simpleloop = false;
        return;
    }
    assert(I->GetOpcode() == ICMP);
    auto I2 = *(latch->Instruction_list.end() - 1);
    assert(I2->GetOpcode() == BR_COND);
    auto BrCondI = (BrCondInstruction *)I2;

    // ture exit or false exit
    bool exit_tag;
    if (((LabelOperand *)BrCondI->GetFalseLabel())->GetLabelNo() == exit->block_id) {
        exit_tag = false;
    } else {
        exit_tag = true;
    }

    // then we need to calculate the loop lowerbound, upperbound and step
    auto IcmpI = (IcmpInstruction *)I;
    auto cond = IcmpI->GetCompareCondition();
    auto op1 = IcmpI->GetOp1(), op2 = IcmpI->GetOp2();
    auto scev1 = GetOperandSCEV(op1), scev2 = GetOperandSCEV(op2);

    if (scev1 == nullptr || scev2 == nullptr) {
        is_simpleloop = false;
        return;
    }

    if (scev1->len > 2 || scev2->len > 2) {
        is_simpleloop = false;
        return;
    }

    if (scev1->len == 2 && scev2->len == 2) {
        is_simpleloop = false;
        return;
    }

    if (scev1->len == 1 && scev2->len == 1) {
        is_simpleloop = false;
        return;
    }

    if (scev1->len == 1 && scev2->len == 2) {
        std::swap(scev1, scev2);
        cond = GetInveriseIcmpCond(cond);
    }
    // scev1->PrintSCEVExpr();
    // scev2->PrintSCEVExpr();

    // assert(scev1->len == 2 && scev2->len == 1);
    // now we can use scev1 and scev2 to check the for loop
    // scev1   cond   scev2

    auto [tag, info] = GetLoopBound(cond, scev2->st, scev1);
    if (tag == false) {
        is_simpleloop = false;
        return;
    }

    forloop_info = info;
    is_simpleloop = true;

    // info.lowerbound.PrintSCEVValue();std::cerr<<" ";
    // info.upperbound.PrintSCEVValue();std::cerr<<" ";
    // info.step.PrintSCEVValue();std::cerr<<" ";
    // std::cerr<<info.is_upperbound_closed<<"\n";
}

void SCEV::PrintLoopSCEVInfo() {
    std::cerr << "Loop: " << L->loop_id << "  header:" << L->header->block_id << " ------------------------\n";
    for (auto [regno, expr] : SCEVMap) {
        if (expr->len == 1) {
            continue;
        }
        std::cerr << regno << "  ";
        expr->PrintSCEVExpr();
    }
}
