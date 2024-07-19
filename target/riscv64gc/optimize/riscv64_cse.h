#ifndef RISCV64_CSE
#define RISCV64_CSE
#include "../riscv64.h"
class RiscV64CSE : public MachinePass{
private:
    void CSEInCurrFunc();
public:
    RiscV64CSE(MachineUnit* unit) : MachinePass(unit){}
    void Execute();
};
#endif