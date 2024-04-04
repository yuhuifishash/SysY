#ifndef MACHINE_UNIT_H
#define MACHINE_UNIT_H
#include "machine_classdecl.h"
class MachineUnit{
public:
    std::vector<Instruction> global_def{};
    std::vector<MachineFunction*> functions;
    void PassExecutor(void (*Pass)(MachineFunction*));
    void PassExecutor(void (*Pass)(MachineUnit*)){
        Pass(this);
    }
};
#endif