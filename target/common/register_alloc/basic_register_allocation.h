#ifndef BASIC_REGISTER_ALLOCATION_H
#define BASIC_REGISTER_ALLOCATION_H
#include "liveinterval.h"
#include "../machine_instruction_structures/machine.h"
#include <vector>
class RegisterAlloc{
protected:
    std::vector<LiveInterval> intervals;
    MachineCFG* mcfg;
public:
    RegisterAlloc(MachineCFG* mcfg):mcfg(mcfg){}
    void UpdateIntervals();
    virtual void DoAlloc() = 0;
};


#endif