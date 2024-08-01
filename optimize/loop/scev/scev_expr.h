#ifndef SCEV_EXPR_H
#define SCEV_EXPR_H

#include "../../../include/Instruction.h"
#include <map>
#include <optional>
#include <set>

class NaturalLoop;
class CFG;

class SCEVValue {
public:
    // we only consider calculation of 2 invariant, if > 2, we consider it as invalid
    // if type == OTHER, the value is op1
    // else, the value is op1 type op2
    Operand op1;
    LLVMIROpcode type;
    Operand op2;

    SCEVValue operator+(SCEVValue b);
    SCEVValue operator-(SCEVValue b);
    SCEVValue operator*(SCEVValue b);
    SCEVValue operator-();
    bool operator==(SCEVValue b);

    void PrintSCEVValue();
    Instruction GenerateValueInst(CFG *C);
    std::optional<int> GetConstantValue();
};

class AddSCEVExpr {
public:
    uint32_t len;
    SCEVValue st;
    AddSCEVExpr *RecurExpr;
    enum SCEVExprType {
        Invariant = 1,
        AddRecurrences = 2,
    } type;
    AddSCEVExpr() = default;
    AddSCEVExpr(Operand d);                                           // create invariant SCEVexpr
    AddSCEVExpr(Operand s, SCEVExprType t, Operand d);                // create basic SCEVexpr
    AddSCEVExpr(Operand s, SCEVExprType t, SCEVValue d);              // create basic SCEVexpr
    AddSCEVExpr(Operand s, SCEVExprType t, AddSCEVExpr *rec_expr);    // create Recurrence SCEVexpr

    void PrintSCEVExpr();
};

class ForLoopInfo {
public:
    SCEVValue lowerbound;
    SCEVValue upperbound;
    SCEVValue step;
    IcmpCond cond;
    bool is_upperbound_closed;    // false -> (i < n)    true -> (i <= n)
};

class SCEV {
private:
public:
    CFG *C;
    NaturalLoop *L;

    std::set<int> InvariantSet;              //<RegNo>
    std::map<int, AddSCEVExpr *> SCEVMap;    //<RegNo, AddSCEVExpr>

    /*this indicates that the loop is the formal:
    i = lowerbound
    do{
        ......
        i += step
    }while(i <(<=)(>)(>=) upperbound)
    */
    bool is_simpleloop;
    ForLoopInfo forloop_info;

    AddSCEVExpr *GetOperandSCEV(Operand op);
    void FindInvariantVar();
    void FindBasicIndVar();
    void FindRecurrences();
    void CheckSimpleForLoop();

    void PrintLoopSCEVInfo();

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

AddSCEVExpr *SCEVadd(AddSCEVExpr *a, AddSCEVExpr *b);
AddSCEVExpr *SCEVsub(AddSCEVExpr *a, AddSCEVExpr *b);
AddSCEVExpr *SCEVmul(AddSCEVExpr *a, AddSCEVExpr *b);
AddSCEVExpr *SCEVneg(AddSCEVExpr *a);

#endif