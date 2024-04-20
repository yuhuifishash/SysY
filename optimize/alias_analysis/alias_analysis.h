#ifndef ALIAS_ANALYSIS_H
#define ALIAS_ANALYSIS_H

#include "../../include/ir.h"
#include <assert.h>

// in SysY, we only need to analyse Arrays, so the algorithm is very simple

class FunctionMemRWInfo {
public:
    bool have_external_call = false;

    std::vector<Operand> ReadPtrs;
    std::vector<Operand> WritePtrs;

    // if the ptr op is new, return true.
    // else, return false.
    bool InsertNewReadPtrs(Operand op);
    bool InsertNewWritePtrs(Operand op);
    bool InsertNewReadPtrs(std::vector<Operand> ops);
    bool InsertNewWritePtrs(std::vector<Operand> ops);

    bool isReadMem() { return ReadPtrs.size() != 0; }
    bool isWriteMem() { return WritePtrs.size() != 0; }
};



class PtrRegMemInfo {
public:
    // if we do not know where the ptr points, the is_fullmem is true
    // for example, the formal ptr( void f(int a[]), we can not know a's value )
    bool is_fullmem = false;

    // alloc in function, the array can not be used in other functions
    bool is_local = true;

    std::vector<Operand> PossiblePtrs;

    // if the ptr op is new, return true.
    // else, return false.
    bool InsertNewPtrs(Operand op, std::map<int, PtrRegMemInfo>& ptrmap, CFG* C);
    bool PushPossiblePtr(Operand op);

    void PrintDebugInfo();
};

class AliasAnalyser {
private:
    std::map<CFG *, FunctionMemRWInfo> CFGMemRWMap;
    std::map<CFG *, std::map<int, PtrRegMemInfo>> PtrRegMemMap;
    LLVMIR *IR;

public:
    enum AliasResult {
        NoAlias = 1,
        MayAlias = 2,
        MustAlias = 3,
    };

    enum ModRefResult {
        NoModRef = 0,
        Ref = 1,
        Mod = 2,
        ModRef = 3,
    };

    void SetLLVMIR(LLVMIR *ir) { this->IR = ir; }

    void AliasAnalysis();
    void AliasAnalysis(CFG *C);    // alias_analysis in single function

    // return alias information of op1 and op2
    // the type of op1 and op2 maybe RegOperand or GlobalOperand
    //(op1 and op2 must be ptr)
    AliasResult QueryAlias(Operand op1, Operand op2, CFG *C);

    // return modify/reference information of inst and op
    // return if the inst will read/write the op
    //(the op must be ptr)
    ModRefResult QueryInstModRef(Instruction I, Operand op, CFG *C);

    bool CFG_isReadMem(CFG *C) { return CFGMemRWMap[C].isReadMem(); }
    bool CFG_isWriteMem(CFG *C) { return CFGMemRWMap[C].isWriteMem(); }

    void PrintAAResult(bool is_printptr);
};

#endif