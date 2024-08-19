#ifndef RISCV64_LOWERSELECT_H
#define RISCV64_LOWERSELECT_H

#include "../riscv64.h"

class RiscV64LowerSelect : public MachinePass {
protected:
public:
    RiscV64LowerSelect(MachineUnit *unit) : MachinePass(unit) {}
    void Execute();
};

#endif