#include "alias_analysis.h"

AliasResult QueryAliasAll(Operand op1)
{
    return AliasResult::MustAlias;
}

AliasResult QueryAlias(Operand op1, Operand op2)
{
    return AliasResult::MustAlias;
}

