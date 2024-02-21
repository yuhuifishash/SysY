#include "arm.h"
void Register::printMachineIR(std::ostream& s){
    printArm(s);
}
void RmOpsh::printMachineIR(std::ostream& s){
    if(type == RRX){
        s<<"("<<properties.RRX.Rm<<" RRX)";
    }else if(type == RSHIFTI){
        s<<"("<<properties.regShiftImm.Rm<<" "<<properties.regShiftImm.shift_type<<" #"<<properties.regShiftImm.shift<<")";
    }
}
void Operand2::printMachineIR(std::ostream& s){
    switch (type)
    {
    case IMM8M:
        s<<"#"<<properties.imm8m;
        break;
    case RSHIFTR:
        s<<"("<<properties.regShiftReg.Rm<<" "<<properties.regShiftReg.shift_type<<" "<<properties.regShiftReg.Rs<<")";
        break;
    case RSHIFTI:
        s<<"("<<properties.regShiftImm.Rm<<" "<<properties.regShiftImm.shift_type<<" #"<<properties.regShiftImm.shift<<")";
        break;
    case RRX:
        s<<"("<<properties.RRX.Rm<<" RRX)";
        break;
    }
}
void Rssh::printMachineIR(std::ostream& s){
    s<<"Unused_struct_Rssh";
}
void Label::printMachineIR(std::ostream& s){
    s<<label_name;
}
void ArmBinary::printMachineIR(std::ostream& s){
    Rd.printMachineIR(s);
    s<<" = ";
    Rn.printMachineIR(s);
    switch (opcode)
    {
    case ArmBinary::ADD:
        s<<"+";
        break;
    case ArmBinary::ADC:
        s<<"adc";
        break;
    case ArmBinary::SUB:
        s<<"-";
        break;
    case ArmBinary::SBC:
        s<<"sbc";
        break;
    case ArmBinary::RSB:
        s<<"rsb";
        break;
    case ArmBinary::RSC:
        s<<"rsc";
        break;
    case ArmBinary::AND:
        s<<"&";
        break;
    case ArmBinary::EOR:
        s<<"^";
        break;
    case ArmBinary::ORR:
        s<<"|";
        break;
    case ArmBinary::ORN:
        s<<"orn";
        break;
    case ArmBinary::BIC:
        s<<"bic";
        break;
    }
    op2.printMachineIR(s);
}
void ArmAddsubImm::printMachineIR(std::ostream& s){

}
void ArmParallelAddsub::printMachineIR(std::ostream& s){

}
void ArmMulas::printMachineIR(std::ostream& s){

}
void ArmMove::printMachineIR(std::ostream& s){

}
void ArmMovwt::printMachineIR(std::ostream& s){

}
void ArmShift::printMachineIR(std::ostream& s){

}
void ArmCmp::printMachineIR(std::ostream& s){

}
void ArmIt::printMachineIR(std::ostream& s){

}
void ArmBranchLabel::printMachineIR(std::ostream& s){

}
void ArmBranchReg::printMachineIR(std::ostream& s){

}
void ArmBranchLabelreg::printMachineIR(std::ostream& s){

}
void ArmLoadStore::printMachineIR(std::ostream& s){

}
void ArmLoadStoreM::printMachineIR(std::ostream& s){

}
void ArmPushpop::printMachineIR(std::ostream& s){

}
void VFPVbin::printMachineIR(std::ostream& s){

}
void VFPVcmp::printMachineIR(std::ostream& s){

}
void VFPVcvt::printMachineIR(std::ostream& s){

}
void VFPVmov::printMachineIR(std::ostream& s){

}
void VFPVldst::printMachineIR(std::ostream& s){

}
void VFPVpushpop::printMachineIR(std::ostream& s){

}
void VFPVstm::printMachineIR(std::ostream& s){

}
void ArmPhiInstruction::printMachineIR(std::ostream& s){
    
}