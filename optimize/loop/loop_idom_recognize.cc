#include "../../include/cfg.h"
#include "scev/scev_expr.h"

void LoopIdomRecognize(CFG *C) {}



/*
c is loop invariant
p is const
S = S0 (S0 must > 0)
i = l
do{
    S += c;
    S %= p;
    i = i + 1;
}while(i < u)
----------------------------------------
S = S0 + 1ll*(u-l)*c%p
*/

void ReduceSimpleAddMod(CFG *C, NaturalLoop* L) {

}


/*
c is loop invariant
S = S0
i = l
do{
    S += c;
    i = i + 1;
}while(i < u)
-----------------------------------------
S = S0 + (u-l)*c
*/
void ReduceSimpleAdd(CFG *C) {

}




void NaturalLoop::LoopIdomRecognize(CFG *C) {}