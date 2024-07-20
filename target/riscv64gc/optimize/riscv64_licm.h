#ifndef RISCV64_LICM
#define RISCV64_LICM
#include "../riscv64.h"
class RiscV64LICM : public MachinePass{
private:
    MachineNaturalLoop* curr_loop;

    std::map<int,MachineBaseInstruction*> InstResultMap;
    std::set<int> InvariantSet; // currLoop  result_regno
    std::vector<MachineBaseInstruction*> InvariantInstList; // currLoop,  we need vector to keep order

    void InitResultMapInCurrFunc();
    void GetInvariantInCurrLoop();
    void AddPreheader();
    void LICMInCurrLoop();
public:
    RiscV64LICM(MachineUnit* unit) : MachinePass(unit){}
    void Execute();
};
#endif