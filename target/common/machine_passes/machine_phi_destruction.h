#ifndef MACHINE_PHI_DESTRUCTION_H
#define MACHINE_PHI_DESTRUCTION_H
#include "machine_pass.h"
class MachinePhiDestruction : public MachinePass{
private:
    void PhiDestructionInCurrentFunction();
    std::map<int,std::map<int,MachineBaseOperand*> > ParallelCopyList{};
    /*<block_id, <phi_label_id, phi_operand> >*/
protected:
    // Data Type And Width is implied in current_function->virtual_registers[dest_reg]
    // virtual MachineBaseInstruction* GetMoveInstruction(int dest_reg,int src_reg) = 0;
    // virtual MachineBaseInstruction* GetMoveImmInstruction(int dest_reg,long long imm_value) = 0;
public:
    void Execute();
    MachinePhiDestruction(MachineUnit* unit):MachinePass(unit){}

};
#endif