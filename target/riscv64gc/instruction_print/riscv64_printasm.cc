#include "riscv64_printer.h"
#include <assert.h>

template<>
void RiscV64Printer::printRVfield<Register*>(Register* printee){
    if(output_physical_reg){
        s<<RiscV64RegDescriptor[current_func->am_registers[printee->am_reg_no].physical_register_descriptor_index].name;
    }else{
        s<<"%"<<printee->am_reg_no;
    }
}

template<>
void RiscV64Printer::printRVfield<Label*>(Label* ins){
	if(ins->is_data_address){
        // Just an example
        // May change in future
        s<<".LPIC"<<ins->mem_label_id;
    }else{
        s<<current_func->func_name<<ins->jmp_label_id;
    }
}

void RiscV64Printer::printAsm(RiscV64Instruction* ins){
    s<<OpTable[ins->getOpcode()].name<<" ";
    switch(OpTable[ins->getOpcode()].ins_formattype){
        case RvOpInfo::R_type:
        return;
        case RvOpInfo::I_type:
        return;
        case RvOpInfo::S_type:
        return;
        case RvOpInfo::B_type:
        return;
        case RvOpInfo::U_type:
        return;
        case RvOpInfo::J_type:
        return;
    }
    assert(false);
}
void RiscV64Printer::printMachineIR(RiscV64Instruction* ins){

}