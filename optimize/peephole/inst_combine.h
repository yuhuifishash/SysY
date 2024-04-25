#ifndef INST_COMBINE_H
#define INST_COMBINE_H
#include "../../include/Instruction.h"
/*if instructions change, this function will return true*/
bool ApplyCombineRules(std::deque<Instruction> &InstList, std::deque<Instruction>::iterator begin);

/*  a :  %r1 = %r0 + c1
    b :  %r2 = %r1 + c2

    will be transformed to

    a :  %r1 = %r0 + c1
    b :  %r2 = %r0 + (c1+c2)
*/
bool EliminateDoubleI32Add(Instruction a, Instruction b);

#endif