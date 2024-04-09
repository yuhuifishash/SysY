#ifndef MACHINE
#define MACHINE

#include "ir.h"
#include "MachineBaseInstruction.h"
class MachineFunction;
class MachineBlock;
class MachineUnit;
class MachineCFG;

class MachineBlock{
public:
    int label_id;
private:
    std::deque<MachineBaseInstruction*> instructions;
public:
    MachineFunction* parent;
public:
    auto begin(){return instructions.begin();}
    auto end(){return instructions.end();}
    void push_back(MachineBaseInstruction* ins){instructions.push_back(ins);}
    void push_front(MachineBaseInstruction* ins){instructions.push_front(ins);}
    MachineBlock(int id):label_id(id){}
};

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
    std::map<int,VirtualRegisterInfo> virtual_registers{};
    auto GetVirtualRegisterInfo(int id){return virtual_registers[id];}
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

class MachineUnit{
public:
    std::vector<Instruction> global_def{};
    std::vector<MachineFunction*> functions;
    void PassExecutor(void (*Pass)(MachineFunction*));
    void PassExecutor(void (*Pass)(MachineUnit*)){
        Pass(this);
    }
};

class MachineCFG{
private:
    class MachineCFGNode{
    public:
        MachineBlock* Mblock;
    public:
    };
private:
    std::map<int,MachineCFGNode*> block_map{};
    std::vector<std::vector<MachineCFGNode*> > G{},invG{};
public:
    void AssignEmptyNode(int id,MachineBlock* Mblk);

    // Just modify CFG edge, no change on branch instructions
    void MakeEdge(int edg_begin,int edg_end);
    void RemoveEdge(int edg_begin,int edg_end);

    MachineCFGNode* GetNodeByBlockId(int id){return block_map[id];}
    std::vector<MachineCFGNode*> GetSuccessorsByBlockId(int id){return G[id];}
    std::vector<MachineCFGNode*> GetPredecessorsByBlockId(int id){return G[id];}

private:
    class Iterator{
    protected:
        MachineCFG* mcfg;
    public:
        Iterator(MachineCFG* mcfg):mcfg(mcfg){}
        MachineCFG* getMachineCFG(){return mcfg;}
        virtual void open() = 0;
        virtual MachineCFGNode* next() = 0;
        virtual bool hasNext() = 0;
        virtual void rewind() = 0;
        virtual void close() = 0;
    };
    class SeqScanIterator;
    class ReverseIterator;
    class DFSIterator;
    class BFSIterator;
public:
    DFSIterator* getDFSIterator();
    BFSIterator* getBFSIterator();
    SeqScanIterator* getSeqScanIterator();
    ReverseIterator* getReverseIterator(Iterator*);
};
#include "cfg_iterators/cfg_iterators.h"
#endif