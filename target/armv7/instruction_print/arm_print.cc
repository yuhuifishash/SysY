#include "arm_printer.h"
void ArmPrinter::emit(){
    ins_offset = 0;
    for(auto func:printee->functions){
        current_func = func;
        s<<func->func_name<<":\n";
        // May use iterator instead of directly accessing vector<blocks> in future
        for(auto block:func->blocks){
            s<<func->func_name<<block->label_id<<":\n";
            cur_block = block;
            for(auto ins:*block){
                s<<"\t";
                ins_offset += 4;

                if(ins->arch == MachineBaseInstruction::ARM){
                    printArm<ArmBaseInstruction*>((ArmBaseInstruction*)ins);
                }else if(ins->arch == MachineBaseInstruction::PHI){
                    printArm<MachinePhiInstruction*>((MachinePhiInstruction*)ins);
                }
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
            for(auto ins:*block){
                s<<"\t";
                if(ins->arch == MachineBaseInstruction::ARM){
                    printMachineIR<ArmBaseInstruction*>((ArmBaseInstruction*)ins);
                }else if(ins->arch == MachineBaseInstruction::PHI){
                    printMachineIR<MachinePhiInstruction*>((MachinePhiInstruction*)ins);
                }
            }
        }
    }
}