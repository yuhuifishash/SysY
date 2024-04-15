#include "alias_analysis.h"

AliasAnalyser alias_analyser;

AliasAnalyser::AliasResult AliasAnalyser::QueryAlias(Operand op1, Operand op2,CFG* C)
{
    return AliasResult::MustAlias;
}

AliasAnalyser::ModRefResult AliasAnalyser::QueryInstModRef(Instruction* I,Operand op,CFG* C)
{
    return ModRefResult::ModRef;
}

void AliasAnalyser::AliasAnalysis()
{

}



void AliasAnalysis(LLVMIR* IR)
{
    alias_analyser.SetLLVMIR(IR);
    alias_analyser.AliasAnalysis();
}
