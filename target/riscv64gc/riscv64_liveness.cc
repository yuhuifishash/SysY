#include "riscv64.h"
#include <assert.h>
std::set<int> RiscV64Instruction::GetReadReg(){
    switch(OpTable[op].ins_formattype){
        case RvOpInfo::R_type: return GetR_typeReadreg();
        case RvOpInfo::I_type: return GetI_typeReadreg();
        case RvOpInfo::S_type: return GetS_typeReadreg();
        case RvOpInfo::B_type: return GetB_typeReadreg();
        case RvOpInfo::U_type: return GetU_typeReadreg();
        case RvOpInfo::J_type: return GetJ_typeReadreg();
    }
    assert(false);
}

std::set<int> RiscV64Instruction::GetWriteReg(){
    switch(OpTable[op].ins_formattype){
        case RvOpInfo::R_type: return GetR_typeWritereg();
        case RvOpInfo::I_type: return GetI_typeWritereg();
        case RvOpInfo::S_type: return GetS_typeWritereg();
        case RvOpInfo::B_type: return GetB_typeWritereg();
        case RvOpInfo::U_type: return GetU_typeWritereg();
        case RvOpInfo::J_type: return GetJ_typeWritereg();
    }
    assert(false);
}