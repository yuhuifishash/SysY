#include "arm.h"
#pragma GCC diagnostic ignored "-Wwritable-strings"
#pragma GCC diagnostic ignored "-Wc99-designator"
struct ArmPhysicalRegisterDescriptor ArmRegDescriptor[]={
    [ArmPhysicalRegisterDescriptor::r0]={"r0"},
    [ArmPhysicalRegisterDescriptor::r1]={"r1"},
    [ArmPhysicalRegisterDescriptor::r2]={"r2"},
    [ArmPhysicalRegisterDescriptor::r3]={"r3"},
    [ArmPhysicalRegisterDescriptor::r4]={"r4"},
    [ArmPhysicalRegisterDescriptor::r5]={"r5"},
    [ArmPhysicalRegisterDescriptor::r6]={"r6"},
    [ArmPhysicalRegisterDescriptor::r7]={"r7"},
    [ArmPhysicalRegisterDescriptor::r8]={"r8"},
    [ArmPhysicalRegisterDescriptor::r9]={"r9"},
    [ArmPhysicalRegisterDescriptor::r10]={"r10"},
    [ArmPhysicalRegisterDescriptor::r11]={"r11"},
    [ArmPhysicalRegisterDescriptor::s0]={"s0"},
    [ArmPhysicalRegisterDescriptor::s1]={"s1"},
    [ArmPhysicalRegisterDescriptor::s2]={"s2"},
    [ArmPhysicalRegisterDescriptor::s3]={"s3"},
    [ArmPhysicalRegisterDescriptor::s4]={"s4"},
    [ArmPhysicalRegisterDescriptor::s5]={"s5"},
    [ArmPhysicalRegisterDescriptor::s6]={"s6"},
    [ArmPhysicalRegisterDescriptor::s7]={"s7"},
    [ArmPhysicalRegisterDescriptor::s8]={"s8"},
    [ArmPhysicalRegisterDescriptor::s9]={"s9"},
    [ArmPhysicalRegisterDescriptor::s10]={"s10"},
    [ArmPhysicalRegisterDescriptor::s11]={"s11"},
    [ArmPhysicalRegisterDescriptor::s12]={"s12"},
    [ArmPhysicalRegisterDescriptor::s13]={"s13"},
    [ArmPhysicalRegisterDescriptor::s14]={"s14"},
    [ArmPhysicalRegisterDescriptor::s15]={"s15"},
    [ArmPhysicalRegisterDescriptor::s16]={"s16"},
    [ArmPhysicalRegisterDescriptor::s17]={"s17"},
    [ArmPhysicalRegisterDescriptor::s18]={"s18"},
    [ArmPhysicalRegisterDescriptor::s19]={"s19"},
    [ArmPhysicalRegisterDescriptor::s20]={"s20"},
    [ArmPhysicalRegisterDescriptor::s21]={"s21"},
    [ArmPhysicalRegisterDescriptor::s22]={"s22"},
    [ArmPhysicalRegisterDescriptor::s23]={"s23"},
    [ArmPhysicalRegisterDescriptor::s24]={"s24"},
    [ArmPhysicalRegisterDescriptor::s25]={"s25"},
    [ArmPhysicalRegisterDescriptor::s26]={"s26"},
    [ArmPhysicalRegisterDescriptor::s27]={"s27"},
    [ArmPhysicalRegisterDescriptor::s28]={"s28"},
    [ArmPhysicalRegisterDescriptor::s29]={"s29"},
    [ArmPhysicalRegisterDescriptor::s30]={"s30"},
    [ArmPhysicalRegisterDescriptor::s31]={"s31"},
    [ArmPhysicalRegisterDescriptor::d0]={"d0"},
    [ArmPhysicalRegisterDescriptor::d1]={"d1"},
    [ArmPhysicalRegisterDescriptor::d2]={"d2"},
    [ArmPhysicalRegisterDescriptor::d3]={"d3"},
    [ArmPhysicalRegisterDescriptor::d4]={"d4"},
    [ArmPhysicalRegisterDescriptor::d5]={"d5"},
    [ArmPhysicalRegisterDescriptor::d6]={"d6"},
    [ArmPhysicalRegisterDescriptor::d7]={"d7"},
    [ArmPhysicalRegisterDescriptor::d8]={"d8"},
    [ArmPhysicalRegisterDescriptor::d9]={"d9"},
    [ArmPhysicalRegisterDescriptor::d10]={"d10"},
    [ArmPhysicalRegisterDescriptor::d11]={"d11"},
    [ArmPhysicalRegisterDescriptor::d12]={"d12"},
    [ArmPhysicalRegisterDescriptor::d13]={"d13"},
    [ArmPhysicalRegisterDescriptor::d14]={"d14"},
    [ArmPhysicalRegisterDescriptor::d15]={"d15"},
    [ArmPhysicalRegisterDescriptor::d16]={"d16"},
    [ArmPhysicalRegisterDescriptor::d17]={"d17"},
    [ArmPhysicalRegisterDescriptor::d18]={"d18"},
    [ArmPhysicalRegisterDescriptor::d19]={"d19"},
    [ArmPhysicalRegisterDescriptor::d20]={"d20"},
    [ArmPhysicalRegisterDescriptor::d21]={"d21"},
    [ArmPhysicalRegisterDescriptor::d22]={"d22"},
    [ArmPhysicalRegisterDescriptor::d23]={"d23"},
    [ArmPhysicalRegisterDescriptor::d24]={"d24"},
    [ArmPhysicalRegisterDescriptor::d25]={"d25"},
    [ArmPhysicalRegisterDescriptor::d26]={"d26"},
    [ArmPhysicalRegisterDescriptor::d27]={"d27"},
    [ArmPhysicalRegisterDescriptor::d28]={"d28"},
    [ArmPhysicalRegisterDescriptor::d29]={"d29"},
    [ArmPhysicalRegisterDescriptor::d30]={"d30"},
    [ArmPhysicalRegisterDescriptor::d31]={"d31"},
    [ArmPhysicalRegisterDescriptor::q0]={"q0"},
    [ArmPhysicalRegisterDescriptor::q1]={"q1"},
    [ArmPhysicalRegisterDescriptor::q2]={"q2"},
    [ArmPhysicalRegisterDescriptor::q3]={"q3"},
    [ArmPhysicalRegisterDescriptor::q4]={"q4"},
    [ArmPhysicalRegisterDescriptor::q5]={"q5"},
    [ArmPhysicalRegisterDescriptor::q6]={"q6"},
    [ArmPhysicalRegisterDescriptor::q7]={"q7"},
    [ArmPhysicalRegisterDescriptor::q8]={"q8"},
    [ArmPhysicalRegisterDescriptor::q9]={"q9"},
    [ArmPhysicalRegisterDescriptor::q10]={"q10"},
    [ArmPhysicalRegisterDescriptor::q11]={"q11"},
    [ArmPhysicalRegisterDescriptor::q12]={"q12"},
    [ArmPhysicalRegisterDescriptor::q13]={"q13"},
    [ArmPhysicalRegisterDescriptor::q14]={"q14"},
    [ArmPhysicalRegisterDescriptor::q15]={"q15"},
    [ArmPhysicalRegisterDescriptor::cpsr]={"cpsr"},
    [ArmPhysicalRegisterDescriptor::INVALID]={"INVALID"},
    [ArmPhysicalRegisterDescriptor::spilled_in_memory]={"spilled_in_memory"},
};

void ArmFunction::InitializeNewVirtualRegister(int vregno){
    virtual_registers[vregno].physical_register_descriptor_index = ArmPhysicalRegisterDescriptor::INVALID;
    if(virtual_registers[vregno].type.data_type == MachineDataType::FLOAT){
        if(virtual_registers[vregno].type.data_length == MachineDataType::B128){
            virtual_registers[vregno].accessible_physical_registers = {
                ArmPhysicalRegisterDescriptor::q0,
                ArmPhysicalRegisterDescriptor::q1,
                ArmPhysicalRegisterDescriptor::q2,
                ArmPhysicalRegisterDescriptor::q3,
                ArmPhysicalRegisterDescriptor::q4,
                ArmPhysicalRegisterDescriptor::q5,
                ArmPhysicalRegisterDescriptor::q6,
                ArmPhysicalRegisterDescriptor::q7,
                ArmPhysicalRegisterDescriptor::q8,
                ArmPhysicalRegisterDescriptor::q9,
                ArmPhysicalRegisterDescriptor::q10,
                ArmPhysicalRegisterDescriptor::q11,
                ArmPhysicalRegisterDescriptor::q12,
                ArmPhysicalRegisterDescriptor::q13,
                ArmPhysicalRegisterDescriptor::q14,
                ArmPhysicalRegisterDescriptor::q15,
            };
        }else if(virtual_registers[vregno].type.data_length == MachineDataType::B64){

        }else if(virtual_registers[vregno].type.data_length == MachineDataType::B32){

        }
    }else if(virtual_registers[vregno].type.data_type == MachineDataType::INT){
        if(virtual_registers[vregno].type.data_length == MachineDataType::B128){

        }else if(virtual_registers[vregno].type.data_length == MachineDataType::B64){

        }else if(virtual_registers[vregno].type.data_length == MachineDataType::B32){

        }
    }
    // Adjust accessible_physical_register for forced alloc
}
