#include "arm.h"
std::ostream& operator<<(std::ostream& s,ShiftType typ){
    switch (typ)
    {
    case LSL:
        s<<"lsl";
        break;
    case LSR:
        s<<"lsr";
        break;
    case ASR:
        s<<"asr";
        break;
    case ROR:
        s<<"ror";
        break;
    case RRX:
        s<<"rrx";
        break;
    }
    return s;
}
std::ostream& operator<<(std::ostream& s,Register reg){
    reg.printArm(s);
    return s;
}
std::ostream& operator<<(std::ostream& s,RmOpsh rmo){
    rmo.printArm(s);
    return s;
}
std::ostream& operator<<(std::ostream& s,Operand2 op2){
    op2.printArm(s);
    return s;
}
std::ostream& operator<<(std::ostream& s,Rssh rsh){
    rsh.printArm(s);
    return s;
}
std::ostream& operator<<(std::ostream& s,Label lbl){
    lbl.printArm(s);
    return s;
}
//-----Arm Field Print-----
void Register::printArm(std::ostream& s){
    // s<<
}

void RmOpsh::printArm(std::ostream& s){

}

void Operand2::printArm(std::ostream& s){
    switch (type)
    {
    case IMM8M:
        s<<"#"<<properties.imm8m;
        break;
    case RSHIFTR:
        s<<properties.regShiftReg.Rm<<", "<<properties.regShiftReg.shift_type<<" "<<properties.regShiftReg.Rs;
        break;
    case RSHIFTI:
        s<<properties.regShiftImm.Rm<<", "<<properties.regShiftImm.shift_type<<" #"<<properties.regShiftImm.shift;
        break;
    case RRX:
        s<<properties.RRX.Rm<<", RRX";
        break;
    }
}

void Rssh::printArm(std::ostream& s){

}

void Label::printArm(std::ostream& s){

}
//-------------------------

//-----Arm Instruction Print-----
void Arm_binary::printArm(std::ostream& s){
    // s<<
}


void Arm_addsubImm::printArm(std::ostream& s){
    // s<<
}


void Arm_parallelAddsub::printArm(std::ostream& s){
    // s<<
}


void Arm_mulas::printArm(std::ostream& s){
    // s<<
}


void Arm_move::printArm(std::ostream& s){
    switch (opcode)
    {
    case Arm_move::MOV:
        s<<"mov";
        break;
    case Arm_move::MVN:
        s<<"mvn";
        break;
    }
    if(S){
        s<<"s";
    }
    s<<" "<<Rd<<", "<<op2<<" @"<<comment<<"\n";
}


void Arm_movwt::printArm(std::ostream& s){
    // s<<
}


void Arm_shift::printArm(std::ostream& s){
    // s<<
}


void Arm_cmp::printArm(std::ostream& s){
    // s<<
}


void Arm_it::printArm(std::ostream& s){
    // s<<
}


void Arm_branch_label::printArm(std::ostream& s){
    // s<<
}


void Arm_branch_reg::printArm(std::ostream& s){
    // s<<
}


void Arm_branch_labelreg::printArm(std::ostream& s){
    // s<<
}


void Arm_LoadStore::printArm(std::ostream& s){
    // s<<
}


void Arm_LoadStoreM::printArm(std::ostream& s){
    // s<<
}


void Arm_pushpop::printArm(std::ostream& s){
    // s<<
}


void VFP_vbin::printArm(std::ostream& s){
    // s<<
}


void VFP_vcmp::printArm(std::ostream& s){
    // s<<
}


void VFP_vcvt::printArm(std::ostream& s){
    // s<<
}


void VFP_vmov::printArm(std::ostream& s){
    // s<<
}


void VFP_vldst::printArm(std::ostream& s){
    // s<<
}


void VFP_vpushpop::printArm(std::ostream& s){
    // s<<
}


void VFP_vstm::printArm(std::ostream& s){
    // s<<
}