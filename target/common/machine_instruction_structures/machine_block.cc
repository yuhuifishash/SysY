#include "machine.h"
void MachineUnit::PassExecutor(void (*Pass)(MachineFunction*)){
    for(auto func : functions){
        func->PassExecutor(Pass);
    }
}