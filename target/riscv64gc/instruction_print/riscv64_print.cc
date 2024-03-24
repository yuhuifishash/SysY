#include "riscv64_printer.h"
#include <assert.h>
void RiscV64Printer::emit(){
    for(auto func:printee->functions){
        current_func = func;
        s<<func->func_name<<":\n";
        // May use iterator instead of directly accessing vector<blocks> in future
        for(auto block:func->blocks){
            s<<func->func_name<<block->label_id<<":\n";
            cur_block = block;
            for(auto ins:*block){
                s<<"\t";

                if(ins->arch == MachineBaseInstruction::RiscV){
                    printAsm((RiscV64Instruction*)ins);
                }else if(ins->arch == MachineBaseInstruction::PHI){

                }
            }
        }
    }
}

void RiscV64Printer::printMachineIR(){
    for(auto func:printee->functions){
        current_func = func;
        s<<func->func_name<<":\n";
        for(auto block:func->blocks){
            s<<func->func_name<<block->label_id<<":\n";
            cur_block = block;
            for(auto ins:*block){
                s<<"\t";

                if(ins->arch == MachineBaseInstruction::RiscV){
                    printMachineIR((RiscV64Instruction*)ins);
                }else if(ins->arch == MachineBaseInstruction::PHI){

                }
            }
        }
    }
}