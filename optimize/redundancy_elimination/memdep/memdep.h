#ifndef MEMDEP_H
#define MEMDEP_H
#include "../../../include/Instruction.h"

class CFG;
class LLVMIR;

class MemoryDependenceAnalyser {
protected:
    LLVMIR *IR;

public:
    void SetIR(LLVMIR *ir) { this->IR = ir; }

    // Instruction a,b may be load or store (each store will generate a new load)
    virtual bool isLoadSameMemory(Instruction a, Instruction b, CFG *) = 0;

    // a and b must be store instructions
    virtual bool isStoreBeUsedSame(Instruction a, Instruction b, CFG *C) = 0;

    // a must be store instructions
    virtual bool isStoreNotUsed(Instruction a, CFG *C) = 0;

    virtual void MemoryDependenceAnalysis() = 0;
    virtual void MemDepTest() = 0;
};

#endif