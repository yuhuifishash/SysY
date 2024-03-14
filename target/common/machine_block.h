#ifndef MACHINE_BLOCK_H
#define MACHINE_BLOCK_H
#include "ir.h"

class MachineBaseInstruction;
class MachineFuntion;
class MachineBlock;
class MachineUnit;
class MachineUnit{
public:
    std::vector<Instruction> global_def{};
    std::vector<MachineFuntion*> functions;
    virtual void emit(std::ostream& s) = 0;
    // MachineUnit(LLVM_IR& IR);
};

class MachineFunction{
public:
    std::string func_name;
    std::vector<MachineBlock*> blocks{};
    MachineUnit* parent;
    virtual void emit(std::ostream& s) = 0;
    MachineFunction(std::string name):func_name(name){}
};

class MachineBlock{
public:
    int label_id;
    std::deque<MachineBaseInstruction*> instructions;
    MachineFunction* parent;
    virtual void emit(std::ostream& s) = 0;
    virtual void GetDefUse() = 0;
    MachineBlock(int id):label_id(id){}
    // template<class T>
    // virtual void ConvertAndAppend(T ins) = 0;
};

class MachineCFG{
private:
    class MachineCFGNode{
    public:
        MachineBlock* Mblock;
    public:
        std::set<int>IN{},OUT{},DEF{},USE{};
        void UpdateDefUse();
    };
    void UpdateDefUse();
public:
    std::map<int,MachineCFGNode*> block_map{};
    std::vector<std::vector<MachineCFGNode*> > G{},invG{};
    void AssignEmptyNode(int id,MachineBlock* Mblk){
        MachineCFGNode* node = new MachineCFGNode;
        node->Mblock = Mblk;
        block_map[id] = node;
    }
    void UpdateLiveness();
    std::set<int> GetIN(int bid){return block_map[bid]->IN;}
    std::set<int> GetOUT(int bid){return block_map[bid]->OUT;}
    std::set<int> GetDef(int bid){return block_map[bid]->DEF;}
    std::set<int> GetUse(int bid){return block_map[bid]->USE;}
    // std::vector<MachineCFGNode*> GetPredecessorNode(MachineBlk* B);
    // std::vector<MachineCFGNode*> GetPredecessorNode(int bbid);
    // std::vector<MachineCFGNode*> GetSuccessorNode(MachineBlk* B);
    // std::vector<MachineCFGNode*> GetSuccessorNode(int bbid);
    // MachineCFGNode* GetNode(int bbid);
};

class MachineSelector{
protected:
    MachineUnit* Dest;
    LLVMIR* IR;
public:
    MachineSelector(MachineUnit* Dest,LLVMIR* IR):Dest(Dest),IR(IR){}
    virtual void SelectInstruction() = 0;
    virtual MachineCFG* SelectInstructionAndBuildCFG() = 0;
    MachineUnit* GetMachineUnit(){return Dest;}
    // template<class INSPTR>
    // virtual void ConvertAndAppend(INSPTR,MachineBlk*) = 0;
};


#endif