#ifndef RISCV64_LICM
#define RISCV64_LICM
#include "../riscv64.h"
class RiscV64LICM : public MachinePass {
private:
    MachineNaturalLoop *curr_loop;
    uint32_t max_motion_count = 0;
    uint32_t currloop_motion_count = 0;

    std::map<int, MachineBlock *> InstDefMap;                   //<regno, def_block>
    std::set<int> InvariantSet;                                 // currLoop  result_regno
    std::vector<MachineBaseInstruction *> InvariantInstList;    // currLoop,  we need vector to keep order
    std::set<MachineBaseInstruction *> InvariantInstSet;

    int GetMaxInstMotionNumber(MachineNaturalLoop *L);

    void InitResultMapInCurrFunc();
    bool isInvariant(MachineCFG *C, MachineBaseInstruction *I, MachineNaturalLoop *L);
    void GetInvariantInCurrLoop();
    void AddPreheader();
    void LICMInCurrLoop();

public:
    RiscV64LICM(MachineUnit *unit) : MachinePass(unit) {}
    void Execute();
};
#endif