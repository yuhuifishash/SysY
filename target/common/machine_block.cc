#include "machine_block.h"

int MachineFunction::GetNewRegister(int regtype,int reglength){
    int new_regno;
    if(am_registers.empty()){
        new_regno = 0;
    }else{
        new_regno = (am_registers.rbegin())->first+1;
    }
    am_registers[new_regno].data_type = regtype;
    am_registers[new_regno].data_length = reglength;
    InitializeNewRegister(new_regno);
    return new_regno;
}