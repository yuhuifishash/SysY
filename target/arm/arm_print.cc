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
    switch (opcode)
    {
    case Arm_binary::ADD:
        s<<"add";
        break;
    case Arm_binary::ADC:
        s<<"adc";
        break;
    case Arm_binary::SUB:
        s<<"sub";
        break;
    case Arm_binary::SBC:
        s<<"sbc";
        break;
    case Arm_binary::RSB:
        s<<"rsb";
        break;
    case Arm_binary::RSC:
        s<<"rsc";
        break;
    case Arm_binary::AND:
        s<<"add";
        break;
    case Arm_binary::EOR:
        s<<"eor";
        break;
    case Arm_binary::ORR:
        s<<"orr";
        break;
    case Arm_binary::ORN:
        s<<"orn";
        break;
    case Arm_binary::BIC:
        s<<"bic";
        break;
    }
    if(S){
        s<<"s";
    }
    s<<" "<<Rd<<", "<<Rn<<", "<<op2<<" @"<<comment<<"\n";
}


void Arm_addsubImm::printArm(std::ostream& s){
    switch (opcode)
    {
    case Arm_addsubImm::ADD:
        s<<"addw";
        break;
    case Arm_addsubImm::SUB:
        s<<"subw";
        break;
    }
    s<<" "<<Rd<<", "<<Rn<<", "<<imm12<<" @"<<comment<<"\n";
}


void Arm_parallelAddsub::printArm(std::ostream& s){
    s<<prefix;
    switch (opcode)
    {
    case Arm_parallelAddsub::ADD16:
        s<<"add16";
        break;
    case Arm_parallelAddsub::SUB16:
        s<<"sub16";
        break;
    case Arm_parallelAddsub::ADD8:
        s<<"add8";
        break;
    case Arm_parallelAddsub::SUB8:
        s<<"sub8";
        break;
    case Arm_parallelAddsub::ASX:
        s<<"asx";
        break;
    case Arm_parallelAddsub::SAX:
        s<<"sax";
        break;
    }
    s<<" "<<Rd<<", "<<Rn<<", "<<Rm<<" @"<<comment<<"\n";
}


void Arm_mulas::printArm(std::ostream& s){
    switch (opcode)
    {
    case Arm_mulas::MUL:
        s<<"mul";
        if(SR){
            s<<"s";
        }
        s<<" "<<Rd<<", "<<Rm<<", "<<Rs;
        break;
    case Arm_mulas::MLA:
        s<<"mla";
        if(SR){
            s<<"s";
        }
        s<<" "<<Rd<<", "<<Rm<<", "<<Rs<<", "<<Rn;
        break;
    case Arm_mulas::MLS:
        s<<"mls"<<" "<<Rd<<", "<<Rm<<", "<<Rs<<", "<<Rn;
        break;
    case Arm_mulas::SMULL:
        s<<"smull";
        if(SR){
            s<<"s";
        }
        s<<" "<<Rd<<", "<<Rn<<", "<<Rm<<", "<<Rs;
        break;
    case Arm_mulas::SMLAL:
        s<<"smlal";
        if(SR){
            s<<"s";
        }
        s<<" "<<Rd<<", "<<Rn<<", "<<Rm<<", "<<Rs;
        break;
    case Arm_mulas::SMMUL:
        s<<"smmul";
        if(SR){
            s<<"r";
        }
        s<<" "<<Rd<<", "<<Rm<<", "<<Rs;
        break;
    }
    s<<" @"<<comment<<"\n";
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
    switch (opcode)
    {
    case Arm_movwt::MOVW:
        s<<"movw";
        break;
    case Arm_movwt::MOVT:
        s<<"movt";
        break;
    }
    s<<" "<<R<<", "<<imm16<<" @"<<comment<<"\n";
}


void Arm_shift::printArm(std::ostream& s){
    s<<"asr";
    if(S){
        s<<"s";
    }
    s<<" "<<Rd<<", "<<Rmsh<<" @"<<comment<<"\n";
}


void Arm_cmp::printArm(std::ostream& s){
    switch (opcode)
    {
    case Arm_cmp::CMP:
        s<<"cmp";
        break;
    case Arm_cmp::CMN:
        s<<"cmn";
        break;
    }
    s<<" "<<Rn<<", "<<op2<<" @"<<comment<<"\n";
}


void Arm_it::printArm(std::ostream& s){
    s<<"it "<<pattern;
    s<<" @"<<comment<<"\n";
}


void Arm_branch_label::printArm(std::ostream& s){
    switch (opcode)
    {
    case Arm_branch_label::B:
        s<<"b";
        break;
    case Arm_branch_label::BL:
        s<<"bl";
        break;
    case Arm_branch_label::BLX:
        s<<"blx";
        break;
    }
    s<<" "<<target<<" @"<<comment<<"\n";
}


void Arm_branch_reg::printArm(std::ostream& s){
    switch (opcode)
    {
    case Arm_branch_reg::BX:
        s<<"bx";
        break;
    case Arm_branch_reg::BLX:
        s<<"blx";
        break;
    case Arm_branch_reg::BXJ:
        s<<"bxj";
        break;
    }
    s<<" "<<Rm<<" @"<<comment<<"\n";
}


void Arm_branch_labelreg::printArm(std::ostream& s){
    s<<"cb";
    if(N){
        s<<"n";
    }
    s<<"z "<<Rn<<", "<<target<<" @"<<comment<<"\n";
}


void Arm_LoadStore::printArm(std::ostream& s){
    switch (op)
    {
    case Arm_LoadStore::LOAD:
        s<<"ldr";
        break;
    case Arm_LoadStore::STORE:
        s<<"str";
        break;
    }
    s<<size;
    if(T){
        s<<"t";
    }
    s<<" "<<Rd;
    s<<" @"<<comment<<"\n";

}


void Arm_LoadStoreM::printArm(std::ostream& s){
    switch (op)
    {
    case Arm_LoadStoreM::LOAD:
        s<<"ldm";
        break;
    case Arm_LoadStoreM::STORE:
        s<<"STM";
        break;
    }
    s<<" "<<Rn;
    if(dowriteback){
        s<<"!";
    }
    s<<", "<<reglist;
    if(hat){
        s<<"^";
    }
    s<<" @"<<comment<<"\n";
}


void Arm_pushpop::printArm(std::ostream& s){
    switch (opcode)
    {
    case Arm_pushpop::PUSH:
        s<<"push";
        break;
    case Arm_pushpop::POP:
        s<<"pop";
        break;
    }
    s<<" "<<reglist<<" @"<<comment<<"\n";
}


void VFP_vbin::printArm(std::ostream& s){
    switch (opcode)
    {
    case VFP_vbin::VADD:
        s<<"vadd";
        break;
    case VFP_vbin::VSUM:
        s<<"vsum";
        break;
    case VFP_vbin::VMUL:
        s<<"vmul";
        break;
    case VFP_vbin::VDIV:
        s<<"vdiv";
        break;
    }
    s<<cond<<"."<<P<<" "<<Fd<<", "<<Fn<<", "<<Fm<<" @"<<comment<<"\n";
}


void VFP_vcmp::printArm(std::ostream& s){
    s<<"vcmp";
    if(E){
        s<<"e";
    }
    s<<cond<<"."<<P<<" "<<Fd<<", "<<Fm<<" @"<<comment<<"\n";
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
    switch (opcode)
    {
    case VFP_vpushpop::VPUSH:
        s<<"vpush";
        break;
    case VFP_vpushpop::VPOP:
        s<<"vpop";
        break;
    }
    s<<cond<<" "<<VFPregs<<" @"<<comment<<"\n";
}


void VFP_vstm::printArm(std::ostream& s){
    switch (opcode)
    {
    case VFP_vstm::VSTM:
        s<<"vstm"<<cond<<" "<<Rn;
        if(dowriteback){
            s<<"!";
        }
        s<<", "<<VFPregs;
        break;
    case VFP_vstm::VSTMDB:
        s<<"vstmdb"<<cond<<" "<<Rn<<"!"<<", "<<VFPregs;
        break;
    case VFP_vstm::VLDM:
        s<<"vldm"<<cond<<" "<<Rn;
        if(dowriteback){
            s<<"!";
        }
        s<<", "<<VFPregs;
        break;
    case VFP_vstm::VLDMDB:
        s<<"vldmdb"<<cond<<" "<<Rn<<"!"<<", "<<VFPregs;
        break;
    }
    s<<" @"<<comment<<"\n";
}