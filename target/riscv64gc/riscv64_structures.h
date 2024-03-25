#ifndef RV64_STRUCTURES_H
#define RV64_STRUCTURES_H
#include "riscv64_instructions.h"
#include "../common/machine_instruction_structures/machine.h"
class RiscV64Function;
class RiscV64Unit;

class RiscV64Block : public MachineBlock{
public:
    RiscV64Block(int id):MachineBlock(id){}
};
class RiscV64Function : public MachineFunction{
public:
    RiscV64Function(std::string name):MachineFunction(name){}
protected:
    void InitializeNewVirtualRegister(int vregno);
    void MoveAllPredecessorsBranchTargetToNewBlock(int original_target,int new_target);
    void MoveOnePredecessorBranchTargetToNewBlock(int pre,int original_target,int new_target);
    void YankBranchInstructionToNewBlock(int original_block_id,int new_block);
    void AppendUncondBranchInstructionToNewBlock(int new_block,int br_target);
};
class RiscV64Unit : public MachineUnit{};
#endif