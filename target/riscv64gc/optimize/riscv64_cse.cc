#include "riscv64_cse.h"
void RiscV64CSE::Execute(){
    for (auto func : unit->functions) {
        current_func = func;
        CSEInCurrFunc();
    }
}

static bool IsNeedCSE(MachineBaseInstruction* I) {
    if(I->arch == MachineBaseInstruction::COPY){
        return true;
    }
    if(I->arch == MachineBaseInstruction::RiscV){
        auto rvI = (RiscV64Instruction*)I;
        if(rvI->getOpcode() == RISCV_LUI || rvI->getOpcode() == RISCV_ADDI || 
            rvI->getOpcode() == RISCV_ADD || rvI->getOpcode() == RISCV_MUL){
            return true;
        }
    }
    return false;
}

void RiscV64CSE::CSEInCurrFunc(){

}