#include "../../include/cfg.h"


/**
 * this function will elimate getelementptr instruction with empty index
 * you can see testcase output 081_exgcd.ll as a example
 * the instruction you will elimate will be %rx = getelementptr type, ptr %ry
 * you need to replace all the use of %rx to %ry and delete the instruction
 * ReplaceByMap function in file instruction.h will be useful
 * @param C the control flow graph of the function */
void EliminateEmptyIndexGEP(CFG *C) {
    std::map<int, int> reg_replace_map;
    std::set<Instruction> EraseSet;
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() != GETELEMENTPTR) {
                continue;
            }
            auto GetptrI = (GetElementptrInstruction *)I;
            if (!GetptrI->GetDims().empty() || !GetptrI->GetIndexes().empty()) {
                continue;
            }
            // auto rx = GetptrI->GetResultRegNo();
            auto rx = ((RegOperand *)GetptrI->GetResult())->GetRegNo();
            auto ry = ((RegOperand *)GetptrI->GetPtrVal())->GetRegNo();
            reg_replace_map[rx] = ry;
            EraseSet.insert(I);
        }
    }
    for (auto [id, bb] : *C->block_map) {
        auto tmp_Instruction_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for (auto I : tmp_Instruction_list) {
            if (EraseSet.find(I) != EraseSet.end()) {
                continue;
            }
            bb->InsertInstruction(1, I);
        }
    }
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            I->ReplaceByMap(reg_replace_map);
        }
    }
    reg_replace_map.clear();
    EraseSet.clear();
    // std::cerr<<"EliminateEmptyIndexGEP is not implemented now\n";
}

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