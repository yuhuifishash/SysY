#ifndef RV64_PHI_DESTRUCTION_H
#define RV64_PHI_DESTRUCTION_H
#include "../../common/machine_passes/machine_phi_destruction.h"
class RiscV64LowerCopy : public MachinePass{
protected:
public:
    void Execute();
};
#endif