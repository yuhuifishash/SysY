#include "arm_block.h"
void ArmPrinter::emit(){
    ins_offset = 0;
    for(auto func:printee->functions){
        current_func = func;
        s<<func->func_name<<":\n";
        for(auto block:func->blocks){
            s<<func->func_name<<block->label_id<<":\n";
            cur_block = block;
            for(auto ins:block->instructions){
                s<<"\t";
                ins_offset += 4;

                printArm<ArmBaseInstruction*>((ArmBaseInstruction*)ins);
            }
        }
    }
}

void ArmPrinter::printMachineIR(){
    ins_offset = 0;
    for(auto func:printee->functions){
        current_func = func;
        s<<func->func_name<<":\n";
        for(auto block:func->blocks){
            s<<func->func_name<<block->label_id<<":\n";
            cur_block = block;
            for(auto ins:block->instructions){
                s<<"\t";
                printMachineIR<ArmBaseInstruction*>((ArmBaseInstruction*)ins);
            }
        }
    }
}