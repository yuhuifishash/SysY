#ifndef SCEV_EXPR_H
#define SCEV_EXPR_H

class SCEVExpr
{
    enum SCEVExprType{
        Invariant = 1,
        AddRecurrences = 2,
    };
};

#endif