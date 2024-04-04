#ifndef ARM_PHI_DESTRUCTION_H
#define ARM_PHI_DESTRUCTION_H
#include "../../common/machine_passes/machine_phi_destruction.h"
class ArmPhiDestruction : public MachinePhiDestruction{
protected:
    MachineBaseInstruction* GetMoveInstruction(int dest_reg,int src_reg);
    MachineBaseInstruction* GetMoveImmInstruction(int dest_reg,long long imm_value);
};
#endif