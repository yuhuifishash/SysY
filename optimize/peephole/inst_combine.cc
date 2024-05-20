#include "../../include/cfg.h"

bool ApplyCombineRules(std::deque<Instruction> &InstList, std::deque<Instruction>::iterator begin);
bool EliminateDoubleI32AddSub(Instruction a, Instruction b);
bool EliminateSubEq(Instruction a, Instruction b);

void InstCombine(CFG *C) {
    for (auto [id, bb] : *C->block_map) {
        bool changed = true;
        while (changed) {
            changed = false;
            for (auto it = bb->Instruction_list.begin(); it != bb->Instruction_list.end(); ++it) {
                changed |= ApplyCombineRules(bb->Instruction_list, it);
            }
        }
    }
}

bool ApplyCombineRules(std::deque<Instruction> &InstList, std::deque<Instruction>::iterator begin) {
    int win_size = 4;
    int cnt = 0;

    bool changed = false;
    for (auto it = begin + 1; it != InstList.end() && cnt < win_size; ++it, ++cnt) {
        changed |= EliminateDoubleI32AddSub(*begin, *it);
    }
    return changed;
}

// c1 and c2 is const
// %r = (a + c1) + c2  ->  %r = a + (c1 + c2)
// %r = (a - c1) + c2  ->  %r = a + (c2 - c1)
// %r = (a + c1) - c2  ->  %r = a + (c1 - c2)
// %r = (a - c1) - c2  ->  %r = a + (-c1 - c2)

// a must be i32
// (+/- c1 +/- c2) can not overflow
bool EliminateDoubleI32AddSub(Instruction a, Instruction b) {
    // TODO(): combine sub
    if (a->GetOpcode() != ADD || b->GetOpcode() != ADD) {
        return false;
    }
    auto Ia = (ArithmeticInstruction *)a;
    auto Ib = (ArithmeticInstruction *)b;

    auto opa2 = Ia->GetOperand2();
    auto opb2 = Ib->GetOperand2();

    /*
      resulta = add i32 opa1,   opa2(const i32)
      resultb = add i32 resulta,opb2(const i32)
    */
    if (opa2->GetOperandType() == BasicOperand::IMMI32 && opb2->GetOperandType() == BasicOperand::IMMI32) {
        int resulta_regno = Ia->GetResultRegNo();
        int opb1_regno = -1;

        auto opa1 = Ia->GetOperand1();
        auto opb1 = Ib->GetOperand1();
        if (opb1->GetOperandType() == BasicOperand::REG) {
            opb1_regno = ((RegOperand *)opb1)->GetRegNo();
            if (opb1_regno == resulta_regno) {
                Ib->SetOperand1(opa1->CopyOperand());

                int consta = ((ImmI32Operand *)opa2)->GetIntImmVal();
                int constb = ((ImmI32Operand *)opb2)->GetIntImmVal();

                Ib->SetOperand2(new ImmI32Operand(consta + constb));
                // Ib->PrintIR(std::cerr);
                return true;
            }
        }
    }

    return false;
}

// TODO():
// %r = {a - (a - b)}  ->  %r = {(a - a) - b}  ->  %r = {0 - b}
// %r = {(a - b) + b}  ->  %r = {a - (b - b)}  ->  %r = {a + 0}
bool EliminateSubEq(Instruction a, Instruction b) {
    TODO("EliminateSubEq");
    return false;
}


// TODO():
// %r = a*b + a  ->  %r = a*(b + 1)
// %r = a*b + b  ->  %r = b*(a + 1)
bool EliminateSameMulAdd(Instruction a, Instruction b) {
    TODO("EliminateSameMulAdd");
    return false;
}