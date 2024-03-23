#ifndef MACHINE_BLOCK_H
#define MACHINE_BLOCK_H
#include "ir.h"
#include "MachineBaseInstruction.h"
#include "am_register.h"

class MachineFunction;
class MachineBlock;
class MachineUnit;
class MachineCFG;
class MachineUnit{
public:
    std::vector<Instruction> global_def{};
    std::vector<MachineFunction*> functions;
    void PassExecutor(void (*Pass)(MachineCFG*));
    void PassExecutor(void (*Pass)(MachineUnit*)){
        Pass(this);
    }
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

    // May be removed in future (?)
    // You can also iterate blocks in MachineCFG
    std::vector<MachineBlock*> blocks{};
    
    std::map<int,AmRegisterInfo> am_registers{};

    int GetNewRegister(int regtype,int regwidth);

    // Not implemented by now
    // Not only CFG but also instructions need to be changed
    MachineBlock* CreateNewEmptyBlock(std::vector<int>pre,std::vector<int>succ);
    MachineBlock* InsertNewEmptyBlockBetweenEdge(int begin,int end);
    MachineBlock* InsertNewEmptyPreheaderBetweenThisAndAllPredecessors(int id);
    MachineBlock* InsertNewEmptySuccessorBetweenThisAndAllSuccessors(int id);

protected:
    virtual void InitializeNewVirtualRegister(int vregno) = 0;
public:
    void PassExecutor(void (*Pass)(MachineCFG*)){
        Pass(mcfg);
    }
    
    MachineFunction(std::string name):func_name(name){}
};

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
private:
    std::map<int,MachineCFGNode*> block_map{};
    std::vector<std::vector<MachineCFGNode*> > G{},invG{};
    // std::vector<std::vector<int> > G{},invG{};
public:
    void AssignEmptyNode(int id,MachineBlock* Mblk);
    void MakeEdge(int edg_begin,int edg_end);
    void RemoveEdge(int edg_begin,int edg_end);

    MachineCFGNode* GetNodeByBlockId(int id){return block_map[id];}
    std::vector<MachineCFGNode*> GetSuccessorsByBlockId(int id){return G[id];}
    std::vector<MachineCFGNode*> GetPredecessorsByBlockId(int id){return G[id];}

    void UpdateLiveness();
    std::set<int> GetIN(int bid){return block_map[bid]->IN;}
    std::set<int> GetOUT(int bid){return block_map[bid]->OUT;}
    std::set<int> GetDef(int bid){return block_map[bid]->DEF;}
    std::set<int> GetUse(int bid){return block_map[bid]->USE;}

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
#include "cfg_iterators/CFGIterators.h"
};

class MachineSelector{
protected:
    MachineUnit* dest;
    MachineFunction* cur_func;
    MachineBlock* cur_block;
    LLVMIR* IR;
public:
    MachineSelector(MachineUnit* dest,LLVMIR* IR):dest(dest),IR(IR){}
    virtual void SelectInstructionAndBuildCFG() = 0;
    MachineUnit* GetMachineUnit(){return dest;}
};

class MachinePrinter{
protected:
    MachineUnit* printee;
    MachineFunction* current_func;
    MachineBlock* cur_block;
    std::ostream& s;
    bool output_physical_reg;
public:
    virtual void emit() = 0;
    virtual void printMahcineIR() = 0;
    MachinePrinter(std::ostream& s,MachineUnit* printee):s(s),printee(printee),output_physical_reg(false){}
    void SetOutputPhysicalReg(bool outputPhy){output_physical_reg = outputPhy;}
    std::ostream& GetPrintStream(){return s;}
};


#endif