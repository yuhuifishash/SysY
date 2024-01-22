#ifndef LLVM_OUTPUT_TEST_H
#define LLVM_OUTPUT_TEST_H

#include "llvm_ir.h"

void SimpleTests();
void PhiInstructionTest();
void CallInstructionTest();
void OneBlockTest();
void OneFunctionTest();
void MultipleFunctionTest();
void Full_llvm_Test();
void RetInstructionTest();
void GEPInstructionPrintTest();
void SimplePhiInsertTestPrepare(std::ostream& out);
void GlobalArrayTest();
void fptosi_test();
void sitofp_test();
void zext_test();
void xor_test();
#endif