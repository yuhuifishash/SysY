#ifndef SIMPLE_ALIAS_ANALYSIS_H
#define SIMPLE_ALIAS_ANALYSIS_H

#include "alias_analysis.h"
#include <assert.h>

// in SysY, we only need to analyse Arrays, so the algorithm is very simple

class PtrRegMemInfo {
public:
    // if we do not know where the ptr points, the is_fullmem is true
    // for example, the formal ptr( void f(int a[]), we can not know a's value )
    // in SysY2022, the ptr can not points to global, so it is is_fullarraymem
    bool is_fullmem = false;

    // alloc in function, the array can not be used in other functions
    bool is_local = true;

    std::vector<Operand> PossiblePtrs;

    // if the ptr op is new, return true.
    // else, return false.
    bool InsertNewPtrs(Operand op, std::map<int, PtrRegMemInfo> &ptrmap, CFG *C);
    bool PushPossiblePtr(Operand op);

    void PrintDebugInfo();
};

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
    bool MergeCall(CallInstruction *CallI, FunctionMemRWInfo rwinfo, std::map<int, PtrRegMemInfo> &ptrmap);

    bool isIndependent() { return (!have_external_call) && ReadPtrs.size() == 0 && WritePtrs.size() == 0; }
    bool isNoSideEffect() { return (!have_external_call) && WritePtrs.size() == 0; }
    bool isReadMem() { return ReadPtrs.size() != 0 || have_external_call; }
    bool isWriteMem() { return WritePtrs.size() != 0 || have_external_call; }
};

class SimpleAliasAnalyser : public AliasAnalyser {
private:
    std::map<CFG *, FunctionMemRWInfo> CFGMemRWMap;
    std::map<CFG *, std::map<int, PtrRegMemInfo>> PtrRegMemMap;

public:
    virtual void AliasAnalysis();
    virtual void AliasAnalysis(CFG *C);    // simple_alias_analysis in single function

    // return alias information of op1 and op2
    // the type of op1 and op2 maybe RegOperand or GlobalOperand
    //(op1 and op2 must be ptr)
    virtual AliasResult QueryAlias(Operand op1, Operand op2, CFG *C);

    // return modify/reference information of inst and op
    // return if the inst will read/write the op
    //(the op must be ptr)
    virtual ModRefResult QueryInstModRef(Instruction I, Operand op, CFG *C);

    virtual bool CFG_isReadMem(CFG *C) { return CFGMemRWMap[C].isReadMem(); }
    virtual bool CFG_isWriteMem(CFG *C) { return CFGMemRWMap[C].isWriteMem(); }
    virtual bool CFG_isIndependent(CFG *C) { return CFGMemRWMap[C].isIndependent(); }
    virtual bool CFG_isNoSideEffect(CFG *C) { return CFGMemRWMap[C].isNoSideEffect(); }
    virtual bool CFG_haveExternalCall(CFG *C) { return CFGMemRWMap[C].have_external_call; }
    virtual std::vector<Operand> GetWritePtrs(CFG *C) { return CFGMemRWMap[C].WritePtrs; }
    virtual std::vector<Operand> GetReadPtrs(CFG *C) { return CFGMemRWMap[C].ReadPtrs; }

    virtual void PrintAAResult(bool is_printptr);
    virtual void AAtest();
};

#endif