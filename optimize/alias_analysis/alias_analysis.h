#ifndef ALIAS_ANALYSIS_H
#define ALIAS_ANALYSIS_H

#include "../../include/ir.h"
#include <assert.h>

// in SysY, we only need to analyse Arrays, so the algorithm is very simple

class MemRWInfo {
public:
    bool is_read_fullmem = false;
    bool is_write_fullmem = false;
    std::vector<Operand> ReadPtrs;
    std::vector<Operand> WritePtrs;

    bool isReadMem() { return ReadPtrs.size() != 0; }
    bool isWriteMem() { return WritePtrs.size() != 0; }
};

class AliasAnalyser {
private:
    std::map<CFG *, MemRWInfo> CFGMemRWMap;
    std::map<int, MemRWInfo> PtrRegMemMap;
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

    void PrintAAResult();
};

#endif