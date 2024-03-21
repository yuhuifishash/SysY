#include "arm_block.h"

// Printing Instructions

template<>
void ArmPrinter::printArm<ArmBinary*>(ArmBinary* ins){
	
}

template<>
void ArmPrinter::printArm<ArmAddsubImm*>(ArmAddsubImm* ins){
	
}

template<>
void ArmPrinter::printArm<ArmParallelAddsub*>(ArmParallelAddsub* ins){
	
}

template<>
void ArmPrinter::printArm<ArmMulas*>(ArmMulas* ins){
	
}

template<>
void ArmPrinter::printArm<ArmMove*>(ArmMove* ins){
	
}

template<>
void ArmPrinter::printArm<ArmMovwt*>(ArmMovwt* ins){
	
}

template<>
void ArmPrinter::printArm<ArmShift*>(ArmShift* ins){
	
}

template<>
void ArmPrinter::printArm<ArmCmp*>(ArmCmp* ins){
	
}

template<>
void ArmPrinter::printArm<ArmIt*>(ArmIt* ins){
	
}

template<>
void ArmPrinter::printArm<ArmBranchLabel*>(ArmBranchLabel* ins){
	
}

template<>
void ArmPrinter::printArm<ArmBranchReg*>(ArmBranchReg* ins){
	
}

template<>
void ArmPrinter::printArm<ArmBranchLabelreg*>(ArmBranchLabelreg* ins){
	
}

template<>
void ArmPrinter::printArm<ArmLoadStore*>(ArmLoadStore* ins){
	
}

template<>
void ArmPrinter::printArm<ArmLoadStoreM*>(ArmLoadStoreM* ins){
	
}

template<>
void ArmPrinter::printArm<ArmPushpop*>(ArmPushpop* ins){
	
}

template<>
void ArmPrinter::printArm<VFPVbin*>(VFPVbin* ins){
	
}

template<>
void ArmPrinter::printArm<VFPVcmp*>(VFPVcmp* ins){
	
}

template<>
void ArmPrinter::printArm<VFPVcvt*>(VFPVcvt* ins){
	
}

template<>
void ArmPrinter::printArm<VFPVmov*>(VFPVmov* ins){
	
}

template<>
void ArmPrinter::printArm<VFPVldst*>(VFPVldst* ins){
	
}

template<>
void ArmPrinter::printArm<VFPVpushpop*>(VFPVpushpop* ins){
	
}

template<>
void ArmPrinter::printArm<VFPVstm*>(VFPVstm* ins){
	
}

template<>
void ArmPrinter::printArm<ArmPhiInstruction*>(ArmPhiInstruction* ins){
	
}



template<>
void ArmPrinter::printArm<ArmBaseInstruction*>(ArmBaseInstruction* ins){
    switch(ins->ins_type){
        case ArmBaseInstruction::BINARY:
            printArm<ArmBinary*>((ArmBinary*)ins);
            break;
        case ArmBaseInstruction::ADDSUBIMM:
            printArm<ArmAddsubImm*>((ArmAddsubImm*)ins);
            break;
        case ArmBaseInstruction::PARALLELADDSUB:
            printArm<ArmParallelAddsub*>((ArmParallelAddsub*)ins);
            break;
        case ArmBaseInstruction::MULAS:
            printArm<ArmMulas*>((ArmMulas*)ins);
            break;
        case ArmBaseInstruction::MOVE:
            printArm<ArmMove*>((ArmMove*)ins);
            break;
        case ArmBaseInstruction::MOVWT:
            printArm<ArmMovwt*>((ArmMovwt*)ins);
            break;
        case ArmBaseInstruction::SHIFT:
            printArm<ArmShift*>((ArmShift*)ins);
            break;
        case ArmBaseInstruction::_CMP:
            printArm<ArmCmp*>((ArmCmp*)ins);
            break;
        case ArmBaseInstruction::IT:
            printArm<ArmIt*>((ArmIt*)ins);
            break;
        case ArmBaseInstruction::BRANCH_LABEL:
            printArm<ArmBranchLabel*>((ArmBranchLabel*)ins);
            break;
        case ArmBaseInstruction::BRANCH_REG:
            printArm<ArmBranchReg*>((ArmBranchReg*)ins);
            break;
        case ArmBaseInstruction::BRANCH_LABELREG:
            printArm<ArmBranchLabelreg*>((ArmBranchLabelreg*)ins);
            break;
        case ArmBaseInstruction::LOADSTORE:
            printArm<ArmLoadStore*>((ArmLoadStore*)ins);
            break;
        case ArmBaseInstruction::LOADSTOREM:
            printArm<ArmLoadStoreM*>((ArmLoadStoreM*)ins);
            break;
        case ArmBaseInstruction::PUSHPOP:
            printArm<ArmPushpop*>((ArmPushpop*)ins);
            break;
        case ArmBaseInstruction::VBIN:
            printArm<VFPVbin*>((VFPVbin*)ins);
            break;
        case ArmBaseInstruction::VCMP:
            printArm<VFPVcmp*>((VFPVcmp*)ins);
            break;
        case ArmBaseInstruction::VCVT:
            printArm<VFPVcvt*>((VFPVcvt*)ins);
            break;
        case ArmBaseInstruction::VLDST:
            printArm<VFPVldst*>((VFPVldst*)ins);
            break;
        case ArmBaseInstruction::VMOV:
            printArm<VFPVmov*>((VFPVmov*)ins);
            break;
        case ArmBaseInstruction::VPUSHPOP:
            printArm<VFPVpushpop*>((VFPVpushpop*)ins);
            break;
        case ArmBaseInstruction::_VSTM:
            printArm<VFPVstm*>((VFPVstm*)ins);
            break;
        case ArmBaseInstruction::PHI:
            printArm<ArmPhiInstruction*>((ArmPhiInstruction*)ins);
            break;
    }
}