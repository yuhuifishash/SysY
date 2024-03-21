#include "arm_block.h"

void ArmFunction::InitializeNewRegister(int vregno){
    am_registers[vregno].physical_register_descriptor_index = ArmPhysicalRegisterDescriptor::INVALID;
    if(am_registers[vregno].data_type == AmRegisterInfo::FLOAT){
        if(am_registers[vregno].data_length == AmRegisterInfo::B128){
            am_registers[vregno].accessible_physical_registers = {
                ArmPhysicalRegisterDescriptor::q0,
                ArmPhysicalRegisterDescriptor::q1,
                ArmPhysicalRegisterDescriptor::q2,
                ArmPhysicalRegisterDescriptor::q3,
            };
        }
    }
}

void MachineUnit::PassExecutor(void (*Pass)(MachineCFG*)){
    for(auto func : functions){
        func->PassExecutor(Pass);
    }
}