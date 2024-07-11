#ifndef RISCV64_CSE
#define RISCV64_CSE
#include "../riscv64.h"
class RiscV64CSE : public MachinePass{
private:
    void ReplaceRegByMapInCurrFunc(std::map<int,int> regreplace_map);
public:
    RiscV64CSE(MachineUnit* unit) : MachinePass(unit){}
    void Execute();
};
#endif