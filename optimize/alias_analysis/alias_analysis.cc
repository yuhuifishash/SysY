#include "alias_analysis.h"

extern std::map<std::string,CFG*> CFGMap;
AliasAnalyser alias_analyser;

AliasAnalyser::AliasResult AliasAnalyser::QueryAlias(Operand op1, Operand op2,CFG* C)
{
    return AliasResult::MustAlias;
}

AliasAnalyser::ModRefResult AliasAnalyser::QueryInstModRef(Instruction I,Operand op,CFG* C)
{
    return ModRefResult::ModRef;
}

bool isFunctionArgs(CFG* C, Operand op)
{
    if(op->GetOperandType() == BasicOperand::REG){
        int siz = C->function_def->formals.size();
        int regno = ((RegOperand*)op)->GetRegNo();
        return regno < siz; 
    }
    return false;
}

void AliasAnalyser::AliasAnalysis()
{
    for(auto [defI,cfg]:IR->llvm_cfg){
        AliasAnalysis(cfg);
    }

}

void AliasAnalyser::AliasAnalysis(CFG* C)
{

}



void AliasAnalysis(LLVMIR* IR)
{
    alias_analyser.SetLLVMIR(IR);
    alias_analyser.AliasAnalysis();
}


void AliasAnalyser::PrintAAResult()
{
    
}
