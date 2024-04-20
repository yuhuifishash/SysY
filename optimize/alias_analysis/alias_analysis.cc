#include "alias_analysis.h"

extern std::map<std::string, CFG *> CFGMap;
AliasAnalyser alias_analyser;

AliasAnalyser::AliasResult AliasAnalyser::QueryAlias(Operand op1, Operand op2, CFG *C) {
    // TODO()
    return AliasResult::MustAlias;
}

AliasAnalyser::ModRefResult AliasAnalyser::QueryInstModRef(Instruction I, Operand op, CFG *C) {
    // TODO()
    return ModRefResult::ModRef;
}

//----------------------------------------
// implementation of alias analysis

bool isFunctionArgs(CFG *C, Operand op) {
    if (op->GetOperandType() == BasicOperand::REG) {
        int siz = C->function_def->formals.size();
        int regno = ((RegOperand *)op)->GetRegNo();
        return regno < siz;
    }
    return false;
}

void AliasAnalyser::AliasAnalysis() {
    PtrRegMemMap.clear();
    CFGMemRWMap.clear();
    for (auto [defI, cfg] : IR->llvm_cfg) {
        AliasAnalysis(cfg);
    }
    // then we should consider call inst(we need to do global R/W analysis)
}

bool PtrRegMemInfo::InsertNewPtrs(Operand op, int index) {}

// analysis all the ptr operand in CFG* C
// it will also analysis the read/write info of inst in C(but we do not consider call inst)
void AliasAnalyser::AliasAnalysis(CFG *C) {
    std::map<int, PtrRegMemInfo> ptrmap;
    FunctionMemRWInfo rwinfo;

    PtrRegMemMap[C] = ptrmap;
    CFGMemRWMap[C] = rwinfo;
}

void AliasAnalysis(LLVMIR *IR) {
    alias_analyser.SetLLVMIR(IR);
    alias_analyser.AliasAnalysis();
}

void AliasAnalyser::PrintAAResult() {}
