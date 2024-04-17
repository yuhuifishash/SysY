#ifndef BASIC_REGISTER_ALLOCATION_H
#define BASIC_REGISTER_ALLOCATION_H
#include "../../machine_instruction_structures/machine.h"
#include "../machine_pass.h"
#include "liveinterval.h"
#include "physical_register.h"
#include <vector>
class RegisterAllocation : public MachinePass {
protected:
    std::map<int, LiveInterval> intervals;

    // a = COPY b ==> copy_sources[a].push_back[b]
    std::map<int, std::vector<int>> copy_sources; // For coalescing

    PhysicalRegisters *phy_regs;
    virtual void DoAllocInCurrentFunc() = 0;
    void UpdateIntervalsInCurrentFunc();

public:
    RegisterAllocation(MachineUnit *unit, PhysicalRegisters *phy) : MachinePass(unit), phy_regs(phy) {}
    void Execute();
};
class InsertLoadStore {
    MachineFunction *func;

public:
    InsertLoadStore(MachineFunction *func) : func(func) {}
    void ExecuteInFunc();
};

#endif