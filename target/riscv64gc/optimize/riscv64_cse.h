#ifndef RISCV64_CSE
#define RISCV64_CSE
#include "../riscv64.h"
class RiscV64CSE : public MachinePass{
public:
    RiscV64CSE(MachineUnit* unit) : MachinePass(unit){}
    void Execute();
};
#endif