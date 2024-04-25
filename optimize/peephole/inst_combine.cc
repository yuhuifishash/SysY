#include "inst_combine.h"
#include "../../include/cfg.h"

extern std::map<std::string, VarAttribute> GlobalConstMap;

void GlobalConstReplace(CFG *C) {
    for (auto [id, bb] : *C->block_map) {
        for (auto &I : bb->Instruction_list) {
            if (I->GetOpcode() != LOAD) {
                continue;
            }
            auto LoadI = (LoadInstruction *)I;
            if (LoadI->GetPointer()->GetOperandType() != BasicOperand::GLOBAL) {
                continue;
            }

            auto pointer = (GlobalOperand *)LoadI->GetPointer();
            if (GlobalConstMap.find(pointer->getName()) != GlobalConstMap.end()) {
                VarAttribute val = GlobalConstMap[pointer->getName()];
                if (val.type == Type::INT) {
                    I = new ArithmeticInstruction(ADD, I32, new ImmI32Operand(0), new ImmI32Operand(val.IntInitVals[0]),
                                                  LoadI->GetResultReg());
                } else if (val.type == Type::FLOAT) {
                    I = new ArithmeticInstruction(FADD, FLOAT32, new ImmF32Operand(0),
                                                  new ImmF32Operand(val.FloatInitVals[0]), LoadI->GetResultReg());
                }
            }
        }
    }
}

void EliminateSimpleConstInstructions(CFG *C) { GlobalConstReplace(C); }

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
        changed |= EliminateDoubleI32Add(*begin, *it);
    }
    return changed;
}

bool EliminateDoubleI32Add(Instruction a, Instruction b) {
    if (a->GetOpcode() != ADD || b->GetOpcode() != ADD) {
        return false;
    }
    auto Ia = (ArithmeticInstruction *)a;
    auto Ib = (ArithmeticInstruction *)b;

    auto opa2 = Ia->GetOperand2();
    auto opb2 = Ib->GetOperand2();

    /*resulta = add i32 opa1,   opa2(const i32)
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