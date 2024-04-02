#ifndef SCEV_EXPR_H
#define SCEV_EXPR_H

#include "../../include/cfg.h"
#include <map>

class NaturalLoop;
class CFG;

class SCEVExpr
{
    Operand st;
    SCEVExpr* RecurExpr;
    enum SCEVExprType{
        Invariant = 1,
        AddRecurrences = 2,
    };
};

class SCEV
{
public:
    CFG* C;
    NaturalLoop* L;

    std::map<int, bool> InvariantMap;//<RegNo, is_invariant>
    std::map<int, SCEVExpr> SCEVMap;//<RegNo, SCEVExpr>

    bool is_simpleforloop;
    Operand lowerbound;//if is_simpleforloop is true, this must be invariant i32
    Operand upperbound;//if is_simpleforloop is true, this must be invariant i32
    Operand step;//if is_simpleforloop is true, this must be invariant i32

    void FindInvariantVar();
    void FindBasicIndVar();
    void FindRecurrences();
};

#endif