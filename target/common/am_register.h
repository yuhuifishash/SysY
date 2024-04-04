#ifndef AM_REGISTER_H
#define AM_REGISTER_H
#include <vector>
struct AmRegisterInfo{
    enum {INT,FLOAT};
    enum {B32,B64,B128};
    unsigned data_type:1;
    unsigned data_length:2;

    // int reg_no;
    // VRegister number is implied in MachineFunction::am_registers

    int physical_register_descriptor_index;
    // RegisterAlloc result

    int mem_offset;
    // Only valid when spilled

    std::vector<int> accessible_physical_registers;
};

#endif