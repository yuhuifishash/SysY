#ifndef RISCV64_LICM
#define RISCV64_LICM
#include "../riscv64.h"
class RiscV64LICM : public MachinePass{
private:
    std::vector<MachineBaseInstruction*> InvariantInstList;
    
    void GetInvariantInCurrLoop(MachineNaturalLoop*);
    void AddPreheader(MachineNaturalLoop*);
    void LICMInCurrLoop(MachineNaturalLoop*);
public:
    RiscV64LICM(MachineUnit* unit) : MachinePass(unit){}
    void Execute();
};
#endif