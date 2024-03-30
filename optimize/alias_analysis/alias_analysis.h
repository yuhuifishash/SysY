#ifndef ALIAS_ANALYSIS_H
#define ALIAS_ANALYSIS_H

#include "../../include/Instruction.h"

enum AliasResult{
    NoAlias = 1,
    MayAlias = 2,
    MustAlias = 3,
};

//return alias information of op1 and all other ptrs
//the type of op1 maybe RegOperand or GlobalOperand
AliasResult QueryAliasAll(Operand op1);

//return alias information of op1 and op2
//the type of op1 and op2 maybe RegOperand or GlobalOperand
AliasResult QueryAlias(Operand op1, Operand op2);

#endif