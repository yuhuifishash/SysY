#include "../../include/cfg.h"
#include "scev/scev_expr.h"

void LoopIdomRecognize(CFG *C) {}

/*
c is positive const
p is positive const
S = 0
i = l
do{
    S += c;
    S %= p;
    i = i + 1;
}while(i < u)
----------------------------------------
S = S0 + 1ll*(u-l)*c%p
*/

void ReduceSimpleAddMod(CFG *C, NaturalLoop *L) {}

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
void ReduceSimpleAdd(CFG *C, NaturalLoop *L) {}


/*
i is invariant
j is only used for loop iteration
if(j < n)
do{
    if (i < j){ //j >= i
        j = j + 1;
        continue;
    }
    something;
    j = j + 1;
}while(j < n)
-------------------------------
if(j < n)
do{
    something;
    j = j + 1;
}while (j < min(i,n)) // min(i,n) can be motion
*/
void LoopUselessContinue2Break(CFG *C, NaturalLoop *L) {

}

void NaturalLoop::LoopIdomRecognize(CFG *C) {}