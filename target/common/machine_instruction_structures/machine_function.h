#ifndef MACHINE_FUNCTION_H
#define MACHINE_FUNCTION_H
#include "machine_classdecl.h"
class MachineFunction{
public:
//private:
    std::string func_name;
    MachineUnit* parent;
    MachineCFG* mcfg;
public:
    MachineCFG* getMachineCFG(){return mcfg;}
    MachineUnit* getParentMachineUnit(){return parent;}
    std::string getFunctionName(){return func_name;}

// private:
    // May be removed in future (?), or become private
    // You can also iterate blocks in MachineCFG
    std::vector<MachineBlock*> blocks{};
    // auto GetBFSBlockIterator(){return mcfg->getBFSIterator();}
    // auto GetDFSBlockIterator(){return mcfg->getDFSIterator();}
public:
// private:
    std::map<int,AmRegisterInfo> am_registers{};
    auto GetAmRegisterInfo(int id){return am_registers[id];}
public:
    int GetNewRegister(int regtype,int regwidth);

protected:
    // Only change branch instruction, don't change cfg or phi instruction
    // Arch-relevant, should be abstract

    // br_cond is still br_cond, br_uncond is still br_uncond
    virtual void MoveAllPredecessorsBranchTargetToNewBlock(int original_target,int new_target)= 0;
    virtual void MoveOnePredecessorBranchTargetToNewBlock(int pre,int original_target,int new_target)= 0;

    // Branch instruction in block[id] will change to br_uncond, 
    // passing original branch instruction on to block[new_block]
    virtual void YankBranchInstructionToNewBlock(int original_block_id,int new_block) = 0;
    virtual void AppendUncondBranchInstructionToNewBlock(int new_block,int br_target) = 0;

    // Only change phi instruction, don't change cfg or branch instruction
    // Arch-irrelevant
    void RedirectPhiNodePredecessor(int phi_block,int old_predecessor,int new_predecessor);

public:
    // Not implemented by now
    // Not only CFG but also instructions need to be changed
    // There are helper functions (declared above) for you to change branch instructions and phi instructions
    MachineBlock* CreateNewEmptyBlock(std::vector<int>pre,std::vector<int>succ);
    MachineBlock* InsertNewBranchOnlyBlockBetweenEdge(int begin,int end);

    // Not sure if it'll be used
    MachineBlock* InsertNewBranchOnlyPreheaderBetweenThisAndAllPredecessors(int id);
    MachineBlock* InsertNewBranchOnlySuccessorBetweenThisAndAllSuccessors(int id);

protected:
    virtual void InitializeNewVirtualRegister(int vregno) = 0;
public:
    void PassExecutor(void (*Pass)(MachineFunction*)){
        Pass(this);
    }
    
    MachineFunction(std::string name):func_name(name){}
};
#endif