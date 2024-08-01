#ifndef RV64_INS_SCHEDULE_H
#define RV64_INS_SCHEDULE_H
#include "riscv64.h"
class RiscV64InstructionSchedule : public MachinePass {
private:
    void ExecuteInBlock();
    void ExecuteInList(std::vector<MachineBaseInstruction *> &, std::vector<MachineBaseInstruction *> &);

public:
    RiscV64InstructionSchedule(MachineUnit *unit) : MachinePass(unit) {}
    void Execute();
};
#endif