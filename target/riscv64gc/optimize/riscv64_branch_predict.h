#ifndef RISCV64_BRANCH_PREDICT
#define RISCV64_BRANCH_PREDICT
#include "../riscv64.h"
class RiscV64BranchPredict : public MachinePass{
public:
    RiscV64BranchPredict(MachineUnit* unit) : MachinePass(unit){}
    void Execute();
    void StaticBranchPredict();
};
#endif