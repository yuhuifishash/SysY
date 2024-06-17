#ifndef ARM_STRUCTURES_H
#define ARM_STRUCTURES_H
#include "../common/machine_instruction_structures/machine.h"
#include "arm_instructions.h"
#include <deque>
#include <iostream>
#include <string>

class ArmFunction;
class ArmUnit;
class ArmBlock : public MachineBlock {
public:
    ArmBlock(int id) : MachineBlock(id) {}
    std::list<MachineBaseInstruction *>::iterator getInsertBeforeBrIt(){
        TODO("Instruction iterator to insert before branch");
        return instructions.end();
    }
};

class ArmBlockFactory : public MachineBlockFactory{
public:
    MachineBlock* CreateBlock(int id) {
        return new ArmBlock(id);
    }
};

class ArmFunction : public MachineFunction {
public:
    ArmFunction(std::string name) : MachineFunction(name,new ArmBlockFactory()) {}

protected:
    void InitializeNewVirtualRegister(int vregno);
    void MoveAllPredecessorsBranchTargetToNewBlock(int original_target, int new_target);
    void MoveOnePredecessorBranchTargetToNewBlock(int pre, int original_target, int new_target);
    void YankBranchInstructionToNewBlock(int original_block_id, int new_block);
    void AppendUncondBranchInstructionToNewBlock(int new_block, int br_target);
};

class ArmUnit : public MachineUnit {
public:
};
#include "../common/machine_passes/register_alloc/physical_register.h"
class ArmRegisters : public PhysicalRegisters {
protected:
    std::vector<int> getValidRegs(LiveInterval interval);
    std::vector<int> getAliasRegs(int phy_id);
};
#endif