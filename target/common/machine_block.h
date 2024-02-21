#ifndef MACHINE_BLOCK_H
#define MACHINE_BLOCK_H
#include "ir.h"

template<class FUNCPTR>
class MachineUnit{
public:
    std::vector<Instruction> global_def{};
    std::vector<FUNCPTR> functions;
    virtual void emit(std::ostream& s) = 0;
    // MachineUnit(LLVM_IR& IR);
};

template<class BLKPTR,class UNITPTR>
class MachineFunction{
public:
    std::string func_name;
    std::vector<BLKPTR> blocks{};
    UNITPTR parent;
    virtual void emit(std::ostream& s) = 0;
    MachineFunction(std::string name):func_name(name){}
};

template<class INSPTR,class FUNCPTR>
class MachineBlock{
public:
    int label_id;
    std::deque<INSPTR> instructions;
    FUNCPTR parent;
    virtual void emit(std::ostream& s) = 0;
    MachineBlock(int id):label_id(id){}
    // template<class T>
    // virtual void ConvertAndAppend(T ins) = 0;
};

template<class MachineBlk>
class MachineCFG{
private:
    class MachineCFGNode{
    public:
        MachineBlk* Mblock;
    public:
        std::set<int>IN{},OUT{},DEF{},USE{};
        void UpdateDefUse();
    };
    void UpdateDefUse();
public:
    std::map<int,MachineCFGNode*> block_map{};
    std::vector<std::vector<MachineCFGNode*> > G{},invG{};
    void AssignEmptyNode(int id,MachineBlk* Mblk){
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

template<class MachineUnit,class MachineBlk>
class MachineSelector{
protected:
    MachineUnit* Dest;
    LLVMIR* IR;
public:
    MachineSelector(MachineUnit* Dest,LLVMIR* IR):Dest(Dest),IR(IR){}
    virtual void SelectInstruction() = 0;
    virtual MachineCFG<MachineBlk>* SelectInstructionAndBuildCFG() = 0;
    MachineUnit* GetMachineUnit(){return Dest;}
    // template<class INSPTR>
    // virtual void ConvertAndAppend(INSPTR,MachineBlk*) = 0;
};


#endif