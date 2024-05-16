#ifndef ALIAS_ANALYSIS_H
#define ALIAS_ANALYSIS_H

#include "../../include/ir.h"
#include <assert.h>

// basic AliasAnalyser
class AliasAnalyser {
protected:
    LLVMIR *IR;

public:
    enum AliasResult {
        NoAlias = 1,
        MayAlias = 2,    // may alias is useless now
        MustAlias = 3,
    };

    enum ModRefResult {
        NoModRef = 0,
        Ref = 1,
        Mod = 2,
        ModRef = 3,
    };

    void SetLLVMIR(LLVMIR *ir) { this->IR = ir; }

    virtual void AliasAnalysis() = 0;

    // return alias information of op1 and op2
    // the type of op1 and op2 maybe RegOperand or GlobalOperand
    //(op1 and op2 must be ptr)
    virtual AliasResult QueryAlias(Operand op1, Operand op2, CFG *C) = 0;

    // return modify/reference information of inst and op
    // return if the inst will read/write the op
    //(the op must be ptr)
    virtual ModRefResult QueryInstModRef(Instruction I, Operand op, CFG *C) = 0;

    virtual bool CFG_isReadMem(CFG *C) = 0;
    virtual bool CFG_isWriteMem(CFG *C) = 0;
    virtual bool CFG_isIndependent(CFG *C) = 0;
    virtual bool CFG_isNoSideEffect(CFG *C) = 0;
    virtual bool CFG_haveExternalCall(CFG *C) = 0;
    virtual bool is_localptrs(CFG *C, Operand ptr) = 0;
    virtual std::vector<Operand> GetWritePtrs(CFG *C) = 0;
    virtual std::vector<Operand> GetReadPtrs(CFG *C) = 0;

    virtual void PrintAAResult(bool is_printptr) = 0;
    virtual void AAtest() = 0;
};

#endif