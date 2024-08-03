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
