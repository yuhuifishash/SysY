#ifndef RISCV64_LOWERIMM_H
#define RISCV64_LOWERIMM_H

#include "../riscv64.h"

class RiscV64LowerImm : public MachinePass {
public:
    RiscV64LowerImm(MachineUnit *unit) : MachinePass(unit) {}
    void Execute();
};

#endif