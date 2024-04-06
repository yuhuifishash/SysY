#ifndef BASIC_REGISTER_ALLOCATION_H
#define BASIC_REGISTER_ALLOCATION_H
#include "liveinterval.h"
#include "../machine_instruction_structures/machine.h"
#include <vector>
#include "physical_register.h"
#include "../machine_passes/machine_pass.h"
class RegisterAlloc{
protected:
    std::map<int,LiveInterval> intervals;
    MachineFunction* mfun;
    PhysicalRegisters* phy_regs;
public:
    RegisterAlloc(MachineFunction* mfun,PhysicalRegisters* phy):mfun(mfun),phy_regs(phy){}
    void UpdateIntervals();
    virtual void DoAlloc() = 0;
};
class InsertLoadStore{
    MachineFunction* func;
public:
    InsertLoadStore(MachineFunction* func):func(func){}
    void ExecuteInFunc();
};


#endif