#include "../include/ir.h"

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
            auto GetptrI = (GetElementprtInstruction *)I;
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

/**
    * this function will transform getelementptr to add and mul
    * ************************************************
    * example: (get the value of A[x][y])
    * %d2 = mul i32 %r5,5                   ;(the value of %r5 is x) x*5
      %d1 = add i32 %d2,%r6                 ;(the value of %r6 is y) x*5 + y
      %d = mul i32 %d1,4                    ;x*20 + y*4 (sizeof(int) is 4)
      %D = sext i32 %d to i64
      %r7 = ptrtoint ptr %r2 to i64         ;(%r2 is the address of the array A)
      %address = add i64 %D, %r7
      %p = inttoptr i64 %add to ptr         ;(the final address)
      %ans = load i32, ptr %p               ;(use load to get the value)
    * *************************************************
    * you must calculate the bias fisrt and then use sext to transform the bias to i64
    * after this function, the program will not contain any getelementptr
    * you may add inttoptr,ptrtoint,sext class in Instruction.h, Instruction.cc, Instruction_out.cc
    * you should set CFG::max_reg correctly
    * @param C the control flow graph of the function */
void LowerGEP(CFG *C) {}