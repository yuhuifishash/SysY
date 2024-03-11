#ifndef SCEV_EXPR_H
#define SCEV_EXPR_H
#include "ir.h"

class SCEVExpr
{
    enum SCEVExprType{
        Invariant = 1,
        AddRecurrences = 2,
    };
};

#endif