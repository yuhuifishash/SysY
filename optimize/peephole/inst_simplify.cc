#include "../include/ir.h"
/*
%r1 = add i32 4,%r0 will be transformed to %r1 = add i32 %r0,4
*/
void I32ConstantSimplify(Instruction I) {
    if (I->GetOpcode() == ADD || I->GetOpcode() == MUL) {
        auto ArithI = (ArithmeticInstruction *)I;
        if (ArithI->GetOperand1()->GetOperandType() == BasicOperand::IMMI32) {
            ArithI->SwapOperand();
        }
    }
}

void InstSimplify(CFG *C) {
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            I32ConstantSimplify(I);
        }
    }
}