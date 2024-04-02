#include "scev_expr.h"

void ScalarEvolution(CFG* C)
{
    for(auto loop:C->LoopForest.loop_set){
        loop->ScalarEvolution(C);
    }
}

void NaturalLoop::ScalarEvolution(CFG* C)
{
    scev.C = C;
    scev.L = this;
    scev.FindBasicIndVar();
}

void SCEV::FindInvariantVar()
{

}

void SCEV::FindBasicIndVar()
{
    
}

void SCEV::FindRecurrences()
{

}

