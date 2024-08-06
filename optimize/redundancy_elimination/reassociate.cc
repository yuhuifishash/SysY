#include "../../include/cfg.h"
// TODO():Reassociate

/*
int t1 = a + b;
int t2 = a + 2 + b;

will be transformed to:

int t1 = a + b;
int t2 = (a + b) + 2;

NaryReassociate works as follows. For every instruction in the form of (a +
b) + c, it checks whether a + c or b + c is already computed by a dominating
instruction. If so, it then reassociates (a + b) + c into (a + c) + b or (b +
c) + a and removes the redundancy accordingly. To efficiently look up whether
an expression is computed before, we need to store each instruction seen.

we need to run multiple iterations

we only consider add.
*/

// reference: LLVM  lib/Transforms/Scalar/NaryReassociate.cpp




/*
int t1 = i + b + c;
b and c are loop invariant,
we reassociate i + b + c into i + (b + c)
we consider add and sub
*/
void LoopInvariantReassociate(CFG* C)
{
    for(auto l:C->LoopForest.loop_set){
        auto scev = l->scev;
        // use scev.InvariantSet to find the invariant register in loop l;
        for(auto bb:l->loop_nodes){

        }
    }
}
