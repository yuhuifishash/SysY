#ifndef RISCV64_PEEHOLE_H
#define RISCV64_PEEHOLE_H
#include "../riscv64.h"

class RiscV64SSAPeehole : public MachinePass {
    const int length = 10;

public:
    RiscV64SSAPeehole(MachineUnit *unit) : MachinePass(unit) {}
    void Execute();
};

class RiscV64SSADeadDefElimate : public MachinePass {
public:
    RiscV64SSADeadDefElimate(MachineUnit *unit) : MachinePass(unit) {}
    void Execute();
};
#endif