#ifndef MACHINE_SELECTOR_H
#define MACHINE_SELECTOR_H
#include "../machine_instruction_structures/machine.h"
class MachineSelector {
protected:
    MachineUnit *dest;
    MachineFunction *cur_func;
    MachineBlock *cur_block;
    LLVMIR *IR;

public:
    MachineSelector(MachineUnit *dest, LLVMIR *IR) : dest(dest), IR(IR) {}
    virtual void SelectInstructionAndBuildCFG() = 0;
    MachineUnit *GetMachineUnit() { return dest; }
};
#endif