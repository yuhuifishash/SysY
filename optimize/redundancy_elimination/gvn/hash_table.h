#ifndef HASH_TABLE_H
#define HASH_TABLE_H

// N_H

#include "../../../include/Instruction.h"
#include <iostream>
#include <map>
#include <string>
#include <vector>

class BasicExpr;
typedef BasicExpr *Expr;
// @expr
class BasicExpr{
protected:
    LLVMIROpcode opcode;

public:
    int GetOpcode() { return opcode; }

    virtual void PrintIR(std::ostream &s) = 0;
    virtual std::vector<Operand> GetNonResultOperands() = 0;
    virtual Expr InstructiontoExpr(Instruction I) = 0;
}

#endif