#include "riscv64.h"
#pragma GCC diagnostic ignored "-Wwritable-strings"
#pragma GCC diagnostic ignored "-Wc99-designator"
struct RiscV64PhysicalRegisterDescriptor RiscV64RegDescriptor[]={
    [RiscV64PhysicalRegisterDescriptor::x0]={"x0"},
    [RiscV64PhysicalRegisterDescriptor::x1]={"x1"},
    [RiscV64PhysicalRegisterDescriptor::x2]={"x2"},
    [RiscV64PhysicalRegisterDescriptor::x3]={"x3"},
    [RiscV64PhysicalRegisterDescriptor::x4]={"x4"},
    [RiscV64PhysicalRegisterDescriptor::x5]={"x5"},
    [RiscV64PhysicalRegisterDescriptor::x6]={"x6"},
    [RiscV64PhysicalRegisterDescriptor::x7]={"x7"},
    [RiscV64PhysicalRegisterDescriptor::x8]={"x8"},
    [RiscV64PhysicalRegisterDescriptor::x9]={"x9"},
    [RiscV64PhysicalRegisterDescriptor::x10]={"x10"},
    [RiscV64PhysicalRegisterDescriptor::x11]={"x11"},
    [RiscV64PhysicalRegisterDescriptor::x12]={"x12"},
    [RiscV64PhysicalRegisterDescriptor::x13]={"x13"},
    [RiscV64PhysicalRegisterDescriptor::x14]={"x14"},
    [RiscV64PhysicalRegisterDescriptor::x15]={"x15"},
    [RiscV64PhysicalRegisterDescriptor::x16]={"x16"},
    [RiscV64PhysicalRegisterDescriptor::x17]={"x17"},
    [RiscV64PhysicalRegisterDescriptor::x18]={"x18"},
    [RiscV64PhysicalRegisterDescriptor::x19]={"x19"},
    [RiscV64PhysicalRegisterDescriptor::x20]={"x20"},
    [RiscV64PhysicalRegisterDescriptor::x21]={"x21"},
    [RiscV64PhysicalRegisterDescriptor::x22]={"x22"},
    [RiscV64PhysicalRegisterDescriptor::x23]={"x23"},
    [RiscV64PhysicalRegisterDescriptor::x24]={"x24"},
    [RiscV64PhysicalRegisterDescriptor::x25]={"x25"},
    [RiscV64PhysicalRegisterDescriptor::x26]={"x26"},
    [RiscV64PhysicalRegisterDescriptor::x27]={"x27"},
    [RiscV64PhysicalRegisterDescriptor::x28]={"x28"},
    [RiscV64PhysicalRegisterDescriptor::x29]={"x29"},
    [RiscV64PhysicalRegisterDescriptor::x30]={"x30"},
    [RiscV64PhysicalRegisterDescriptor::x31]={"x31"},
    [RiscV64PhysicalRegisterDescriptor::INVALID]={"INVALID"},
    [RiscV64PhysicalRegisterDescriptor::spilled_in_memory]={"spilled_in_memory"},
};

void RiscV64Function::InitializeNewVirtualRegister(int vregno){
    am_registers[vregno].physical_register_descriptor_index = RiscV64PhysicalRegisterDescriptor::INVALID;
    if(am_registers[vregno].data_type == AmRegisterInfo::FLOAT){
        if(am_registers[vregno].data_length == AmRegisterInfo::B128){

        }else if(am_registers[vregno].data_length == AmRegisterInfo::B64){

        }else if(am_registers[vregno].data_length == AmRegisterInfo::B32){

        }
    }else if(am_registers[vregno].data_type == AmRegisterInfo::INT){
        if(am_registers[vregno].data_length == AmRegisterInfo::B128){

        }else if(am_registers[vregno].data_length == AmRegisterInfo::B64){

        }else if(am_registers[vregno].data_length == AmRegisterInfo::B32){

        }
    }
}