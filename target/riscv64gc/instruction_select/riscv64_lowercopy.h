#ifndef RV64_PHI_DESTRUCTION_H
#define RV64_PHI_DESTRUCTION_H
#include "../../common/machine_passes/machine_phi_destruction.h"
class RiscV64LowerCopy : public MachinePass {
protected:
public:
    RiscV64LowerCopy(MachineUnit *m_unit) : MachinePass(m_unit) {}
    void Execute();
};
class RiscV64LowerFImmCopy : public MachinePass {
protected:
public:
    RiscV64LowerFImmCopy(MachineUnit *m_unit) : MachinePass(m_unit) {}
    void Execute();
};
class RiscV64LowerIImmCopy : public MachinePass {
protected:
public:
    RiscV64LowerIImmCopy(MachineUnit *m_unit) : MachinePass(m_unit) {}
    void Execute();
};
#endif