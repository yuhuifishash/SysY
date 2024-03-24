#ifndef ARM_STRUCTURES_H
#define ARM_STRUCTURES_H
#include "arm_instructions.h"
#include <deque>
#include <string>
#include <iostream>
#include "machine.h"

class ArmFunction;
class ArmUnit;
class ArmBlock : public MachineBlock{
public:
    ArmBlock(int id):MachineBlock(id){}
};

class ArmFunction : public MachineFunction{
public:
    ArmFunction(std::string name):MachineFunction(name){}
protected:
    void InitializeNewVirtualRegister(int vregno);
    void MoveAllPredecessorsBranchTargetToNewBlock(int original_target,int new_target);
    void MoveOnePredecessorBranchTargetToNewBlock(int pre,int original_target,int new_target);
    void YankBranchInstructionToNewBlock(int original_block_id,int new_block);
};

class ArmUnit : public MachineUnit{
public:
};


#endif