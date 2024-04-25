#include "../../include/cfg.h"
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

// TODO():{sub X, X},{Mul 0, X} is represented as 0 + 0

/*TODO():eliminate the instructions like
%rx = 0 + %ry(replace all the use of %rx with %ry)
%rx = 1 * %ry(replace all the use of %rx with %ry)
%rx = %ry / 1(replace all the use of %rx with %ry)

I->ReplaceByMap(), I->GetNonResultOperands(), I->SetNonResultOperands() is Useful
*/

void InstSimplify(CFG *C) {
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            I32ConstantSimplify(I);
        }
    }
}