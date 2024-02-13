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

template<class BLKPTR,class FUNCPTR>
class MachineFunc{
public:
    std::string func_name;
    std::vector<BLKPTR>blocks{};
    MachineUnit<FUNCPTR>* parent;
    virtual void emit(std::ostream& s) = 0;
    MachineFunc(std::string name):func_name(name){}
};

template<class INSPTR,class BLKPTR>
class MachineBlock{
public:
    int label_id;
    std::deque<INSPTR>instructions;
    MachineFunc<BLKPTR>* parent;
    virtual void emit(std::ostream& s) = 0;
    MachineBlock(int id):label_id(id){}
    template<class T>
    virtual void ConvertAndAppend(T ins) = 0;
};


#endif