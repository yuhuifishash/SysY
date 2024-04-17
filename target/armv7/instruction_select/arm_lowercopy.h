#ifndef ARM_PHI_DESTRUCTION_H
#define ARM_PHI_DESTRUCTION_H
#include "../../common/machine_passes/machine_pass.h"
class ArmLowerCopy : public MachinePass {
protected:
public:
    void Execute();
};
#endif