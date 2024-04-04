#ifndef MACHINE_BLOCK_H
#define MACHINE_BLOCK_H
#include "machine_classdecl.h"
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
#endif