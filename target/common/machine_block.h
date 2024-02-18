#ifndef MACHINE_BLOCK_H
#define MACHINE_BLOCK_H
#include "llvm_ir.h"

template<class FUNCPTR>
class MachineUnit{
public:
    std::vector<Instruction> global_def{};
    std::vector<FUNCPTR>functions;
    virtual void emit(std::ostream& s) = 0;
    // MachineUnit(LLVM_IR& IR);
};

template<class BLKPTR,class UNITPTR>
class MachineFunc{
public:
    std::string func_name;
    std::vector<BLKPTR>blocks{};
    UNITPTR parent;
    virtual void emit(std::ostream& s) = 0;
    MachineFunc(std::string name):func_name(name){}
};

template<class INSPTR,class FUNCPTR>
class MachineBlock{
public:
    int label_id;
    std::deque<INSPTR>instructions;
    FUNCPTR parent;
    virtual void emit(std::ostream& s) = 0;
    MachineBlock(int id):label_id(id){}
    // template<class T>
    // virtual void ConvertAndAppend(T ins) = 0;
};

template<class MachineUnit,class MachineBlk>
class MachineSelector{
protected:
    MachineUnit* Dest;
    LLVM_IR* IR;
public:
    MachineSelector(MachineUnit* Dest,LLVM_IR* IR):Dest(Dest),IR(IR){}
    virtual void SelectInstruction() = 0;
    MachineUnit* GetMachineUnit(){return Dest;}
    // template<class INSPTR>
    // virtual void ConvertAndAppend(INSPTR,MachineBlk*) = 0;
};


template<class MachineBlk>
class MachineCFGNode{
private:
    MachineBlk* Mblock;
public:
    std::set<int>IN,OUT,DEF,USE;
    std::vector<MachineCFGNode<MachineBlk>*> edges_out;
    std::vector<MachineCFGNode<MachineBlk>*> edges_in;
};
#endif