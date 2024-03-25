#ifndef MACHINE_OTHER_PASS_H
#define MACHINE_OTHER_PASS_H
#include "../machine_instruction_structures/machine.h"
class MachinePass{
protected:
    MachineUnit* unit;
    MachineFunction* current_func;
    MachineBlock* cur_block;
public:

};
#endif