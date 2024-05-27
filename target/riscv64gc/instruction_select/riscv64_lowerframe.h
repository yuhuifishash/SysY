#ifndef RISCV64_LOWERFRAME_H
#define RISCV64_LOWERFRAME_H

#include "../riscv64.h"

class RiscV64LowerFrame : public MachinePass {
public:
    RiscV64LowerFrame(MachineUnit* unit) : MachinePass(unit) {}
    void Execute();
};

#endif // RISCV64_LOWERFRAME_H