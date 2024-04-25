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
    scev.C = C;
    scev.L = this;
    scev.FindInvariantVar();
    scev.FindBasicIndVar();
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
    if (I->GetOpcode() != ADD || I->GetOpcode() != SUB) {
        return {nullptr, nullptr};
    }

    auto ArithI = (ArithmeticInstruction *)I;
    auto op1 = ArithI->GetOperand1();
    auto op2 = ArithI->GetOperand2();

    bool t1 = scev->SCEV_isI32Invariant(op1);
    bool t2 = scev->SCEV_isI32Invariant(op2);
    // both invariant or both not invariant, return nullptr
    if (t1 ^ t2) {
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
std::pair<Operand, LLVMIROpcode> SCEV::FindBasicIndVarCycleVarDef(int st, int r2) {
    // first solve step is reg. If step is reg, we only optimize cycle with size 2
    Operand ans;
    Instruction now = ResultMap[r2];

    auto [r, d] = is_AddSubInvariant(now, st, this);
    if (r == nullptr) {
        return {nullptr, OTHER};
    }

    assert(r->GetOperandType() == BasicOperand::REG);
    int op1 = ((RegOperand *)r)->GetRegNo();
    if (op1 == st) {
        return {d, (LLVMIROpcode)now->GetOpcode()};
    }

    int step;
    while (r2 != st) {
        if (now->GetOpcode() == ADD) {

        } else if (now->GetOpcode() == SUB) {

        } else {
            return {nullptr, OTHER};
        }
    }
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

        // step = FindBasicIndVarCycleVarDef(PhiI->GetResultRegNo(), ((RegOperand*)r2)->GetRegNo());
    }
}

void SCEV::FindRecurrences() {}
