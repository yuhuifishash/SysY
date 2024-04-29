#ifndef SCEV_EXPR_H
#define SCEV_EXPR_H

#include "../../../include/Instruction.h"
#include <map>
#include <set>

class NaturalLoop;
class CFG;

class SCEVExpr {
public:
    Operand st;
    std::vector<SCEVExpr *> RecurExprs;
    enum SCEVExprType {
        Invariant = 1,
        AddRecurrences = 2,
    };
    SCEVExpr(Operand s, SCEVExprType t, Operand d);             // create basic SCEVexpr
    SCEVExpr(Operand s, SCEVExprType t, SCEVExpr *rec_expr);    // create Recurrence SCEVexpr
    void PrintSCEVExpr();
};

class SCEV {
public:
    CFG *C;
    NaturalLoop *L;

    std::set<int> InvariantSet;           //<RegNo>
    std::map<int, SCEVExpr *> SCEVMap;    //<RegNo, SCEVExpr>

    /*this indicates that the loop is the formal:
    i = lowerbound
    do{
        ......
        i += step
    }while(i < upperbound)
    */
    bool is_simpleloop;
    LLVMIROpcode step_way;    // we only consider ADD, SUB
    Operand lowerbound;       // if is_simpleloop is true, this must be invariant i32
    Operand upperbound;       // if is_simpleloop is true, this must be invariant i32
    Operand step;             // if is_simpleloop is true, this must be invariant i32

    void FindInvariantVar();
    void FindBasicIndVar();
    void FindRecurrences();

    bool SCEV_isI32Invariant(Operand op);

    /*
        %st = phi [%x, preheader], [%y, latch]
        %y = f(%st)    f is some instructions

        if %y = %st + t
            return t(t is invariant)
        else
            return nullptr
    */
    std::pair<Operand, LLVMIROpcode> FindBasicIndVarCycleVarDef(int st, int r2);    //(RegNO, RegNo)
};

#endif