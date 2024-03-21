#include "arm_block.h"

void MachineUnit::PassExecutor(void (*Pass)(MachineCFG*)){
    for(auto func : functions){
        func->PassExecutor(Pass);
    }
}