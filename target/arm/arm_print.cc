#include "arm.h"
#include "arm_block.h"
void printCond(std::ostream& s,int cond){
    switch(cond){
        case ArmBaseInstruction::EQ:
        s<<"eq";
        break;
        case ArmBaseInstruction::NE:
        s<<"ne";
        break;
    }
}

void printRegList(std::ostream& s,const std::vector<Register>& reglist){
    s<<"{";
    for(auto it = reglist.begin();it!=reglist.end();++it){
        s<<*it;
        if(it+1 != reglist.end()){
            s<<",";
        }
    }
    s<<"}";
}

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
    if(Virtual){
        s<<"%";
    }
    if(type == I32){
        s<<"r";
    }else if(type == FLOAT){
        s<<"s";
    }else if(type == DOUBLE){
        s<<"d";
    }
    s<<reg_no;
}

void RmOpsh::printArm(std::ostream& s){
    if(type == RRX){
        s<<properties.RRX.Rm<<", RRX";
    }else if(type == RSHIFTI){
        s<<properties.regShiftImm.Rm<<", "<<properties.regShiftImm.shift_type<<" #"<<properties.regShiftImm.shift;
    }
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
    s<<"Unused_struct_Rssh";
}

void Label::printArm(std::ostream& s){
    s<<label_name;
}
//-------------------------

//-----Arm Instruction Print-----
void ArmBinary::printArm(std::ostream& s){
    switch (opcode)
    {
    case ArmBinary::ADD:
        s<<"add";
        break;
    case ArmBinary::ADC:
        s<<"adc";
        break;
    case ArmBinary::SUB:
        s<<"sub";
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
        s<<"and";
        break;
    case ArmBinary::EOR:
        s<<"eor";
        break;
    case ArmBinary::ORR:
        s<<"orr";
        break;
    case ArmBinary::ORN:
        s<<"orn";
        break;
    case ArmBinary::BIC:
        s<<"bic";
        break;
    }
    if(S){
        s<<"s";
    }
    s<<" "<<Rd<<", "<<Rn<<", "<<op2<<" @"<<comment<<"\n";
}


void ArmAddsubImm::printArm(std::ostream& s){
    switch (opcode)
    {
    case ArmAddsubImm::ADD:
        s<<"addw";
        break;
    case ArmAddsubImm::SUB:
        s<<"subw";
        break;
    }
    s<<" "<<Rd<<", "<<Rn<<", "<<imm12<<" @"<<comment<<"\n";
}


void ArmParallelAddsub::printArm(std::ostream& s){
    s<<prefix;
    switch (opcode)
    {
    case ArmParallelAddsub::ADD16:
        s<<"add16";
        break;
    case ArmParallelAddsub::SUB16:
        s<<"sub16";
        break;
    case ArmParallelAddsub::ADD8:
        s<<"add8";
        break;
    case ArmParallelAddsub::SUB8:
        s<<"sub8";
        break;
    case ArmParallelAddsub::ASX:
        s<<"asx";
        break;
    case ArmParallelAddsub::SAX:
        s<<"sax";
        break;
    }
    s<<" "<<Rd<<", "<<Rn<<", "<<Rm<<" @"<<comment<<"\n";
}


void ArmMulas::printArm(std::ostream& s){
    switch (opcode)
    {
    case ArmMulas::MUL:
        s<<"mul";
        if(SR){
            s<<"s";
        }
        s<<" "<<Rd<<", "<<Rm<<", "<<Rs;
        break;
    case ArmMulas::MLA:
        s<<"mla";
        if(SR){
            s<<"s";
        }
        s<<" "<<Rd<<", "<<Rm<<", "<<Rs<<", "<<Rn;
        break;
    case ArmMulas::MLS:
        s<<"mls"<<" "<<Rd<<", "<<Rm<<", "<<Rs<<", "<<Rn;
        break;
    case ArmMulas::SMULL:
        s<<"smull";
        if(SR){
            s<<"s";
        }
        s<<" "<<Rd<<", "<<Rn<<", "<<Rm<<", "<<Rs;
        break;
    case ArmMulas::SMLAL:
        s<<"smlal";
        if(SR){
            s<<"s";
        }
        s<<" "<<Rd<<", "<<Rn<<", "<<Rm<<", "<<Rs;
        break;
    case ArmMulas::SMMUL:
        s<<"smmul";
        if(SR){
            s<<"r";
        }
        s<<" "<<Rd<<", "<<Rm<<", "<<Rs;
        break;
    }
    s<<" @"<<comment<<"\n";
}


void ArmMove::printArm(std::ostream& s){
    switch (opcode)
    {
    case ArmMove::MOV:
        s<<"mov";
        break;
    case ArmMove::MVN:
        s<<"mvn";
        break;
    }
    if(S){
        s<<"s";
    }
    s<<" "<<Rd<<", "<<op2<<" @"<<comment<<"\n";
}


void ArmMovwt::printArm(std::ostream& s){
    switch (opcode)
    {
    case ArmMovwt::MOVW:
        s<<"movw";
        break;
    case ArmMovwt::MOVT:
        s<<"movt";
        break;
    }
    s<<" "<<R<<", "<<imm16<<" @"<<comment<<"\n";
}


void ArmShift::printArm(std::ostream& s){
    s<<"mov";
    if(S){
        s<<"s";
    }
    s<<" "<<Rd<<", "<<Rmsh<<" @"<<comment<<"\n";
}


void ArmCmp::printArm(std::ostream& s){
    switch (opcode)
    {
    case ArmCmp::CMP:
        s<<"cmp";
        break;
    case ArmCmp::CMN:
        s<<"cmn";
        break;
    }
    s<<" "<<Rn<<", "<<op2<<" @"<<comment<<"\n";
}


void ArmIt::printArm(std::ostream& s){
    unsigned pattern_len = pattern>>4;
    s<<"it";//<<pattern;
    if(pattern_len != 0){
        int bitmask = 1<<(pattern_len-1);
        for(int i=1;i<=pattern_len;i++){
            if(pattern & bitmask){
                s<<"t";
            }else{
                s<<"e";
            }
            bitmask >>= 1;
        }
    }
    s<<" ";
    printCond(s,cond);
    s<<" @"<<comment<<"\n";
}


void ArmBranchLabel::printArm(std::ostream& s){
    switch (opcode)
    {
    case ArmBranchLabel::B:
        s<<"b";
        break;
    case ArmBranchLabel::BL:
        s<<"bl";
        break;
    case ArmBranchLabel::BLX:
        s<<"blx";
        break;
    }
    s<<" "<<target<<" @"<<comment<<"\n";
}


void ArmBranchReg::printArm(std::ostream& s){
    switch (opcode)
    {
    case ArmBranchReg::BX:
        s<<"bx";
        break;
    case ArmBranchReg::BLX:
        s<<"blx";
        break;
    case ArmBranchReg::BXJ:
        s<<"bxj";
        break;
    }
    s<<" "<<Rm<<" @"<<comment<<"\n";
}


void ArmBranchLabelreg::printArm(std::ostream& s){
    s<<"cb";
    if(N){
        s<<"n";
    }
    s<<"z "<<Rn<<", "<<target<<" @"<<comment<<"\n";
}


void ArmLoadStore::printArm(std::ostream& s){
    switch (op)
    {
    case ArmLoadStore::LOAD:
        s<<"ldr";
        break;
    case ArmLoadStore::STORE:
        s<<"str";
        break;
    }
    switch (size)
    {
    case ArmLoadStore::NONE:
        break;
    case ArmLoadStore::B:
        s<<"b";
        break;
    case ArmLoadStore::SB:
        s<<"sb";
        break;
    case ArmLoadStore::H:
        s<<"h";
        break;
    case ArmLoadStore::SH:
        s<<"sh";
        break;
    }
    if(T){
        s<<"t";
    }
    s<<" "<<Rd<<", ";
    if(offset_type == ArmLoadStore::LABEL){
        s<<addr_label;
    }else if(offset_type == IMM){
        if(ispreindex){
            //<op>{size}{T} Rd, [Rn {, #<offset>}]{!}
            s<<"["<<Rn<<",#"<<OFFSET.offset<<"]";
            if(dowriteback){
                s<<"!";
            }
        }else{
            //<op>{size}{T} Rd, [Rn], #<offset>
            s<<"["<<Rn<<"],#"<<OFFSET.offset;
        }
    }else if(offset_type == REG_ADD){
        if(ispreindex){
            //<op>{size} Rd, [Rn, +Rm {, <opsh>}]{!}
            s<<"["<<Rn<<",+"<<OFFSET.Rmsh<<"]";
            if(dowriteback){
                s<<"!";
            }
        }else{
            //<op>{size}{T} Rd, [Rn], +Rm {, <opsh>}
            s<<"["<<Rn<<"],+"<<OFFSET.Rmsh;
        }
    }else if(offset_type == REG_SUB){
        if(ispreindex){
            //<op>{size} Rd, [Rn, -Rm {, <opsh>}]{!}
            s<<"["<<Rn<<",-"<<OFFSET.Rmsh<<"]";
            if(dowriteback){
                s<<"!";
            }
        }else{
            //<op>{size}{T} Rd, [Rn], -Rm {, <opsh>}
            s<<"["<<Rn<<"],-"<<OFFSET.Rmsh;
        }
    }
    
    s<<" @"<<comment<<"\n";

}


void ArmLoadStoreM::printArm(std::ostream& s){
    switch (op)
    {
    case ArmLoadStoreM::LOAD:
        s<<"ldm";
        break;
    case ArmLoadStoreM::STORE:
        s<<"stm";
        break;
    }
    switch (mode)
    {
    case IA:
        s<<"ia";
        break;
    case IB:
        s<<"ib";
        break;
    case DA:
        s<<"da";
        break;
    case DB:
        s<<"db";
        break;
    }
    s<<" "<<Rn;
    if(dowriteback){
        s<<"!";
    }
    s<<", ";//<<reglist;
    printRegList(s,reglist);
    if(hat){
        s<<"^";
    }
    s<<" @"<<comment<<"\n";
}


void ArmPushpop::printArm(std::ostream& s){
    switch (opcode)
    {
    case ArmPushpop::PUSH:
        s<<"push";
        break;
    case ArmPushpop::POP:
        s<<"pop";
        break;
    }
    s<<" ";
    printRegList(s,reglist);
    s<<" @"<<comment<<"\n";
}


void VFPVbin::printArm(std::ostream& s){
    switch (opcode)
    {
    case VFPVbin::VADD:
        s<<"vadd";
        break;
    case VFPVbin::VSUM:
        s<<"vsum";
        break;
    case VFPVbin::VMUL:
        s<<"vmul";
        break;
    case VFPVbin::VDIV:
        s<<"vdiv";
        break;
    }
    s<<cond<<"."<<P<<" "<<Fd<<", "<<Fn<<", "<<Fm<<" @"<<comment<<"\n";
}


void VFPVcmp::printArm(std::ostream& s){
    s<<"vcmp";
    if(E){
        s<<"e";
    }
    s<<cond<<"."<<P<<" "<<Fd<<", "<<Fm<<" @"<<comment<<"\n";
}


void VFPVcvt::printArm(std::ostream& s){
    s<<"vcvt";
    if(R){
        s<<"r";
    }
    printCond(s,cond);
    s<<".";
    if(dstType == F64){
        s<<"f64";
    }else if(dstType == F32){
        s<<"f32";
    }else if(dstType == S32){
        s<<"s32";
    }
    s<<".";
    if(srcType == F64){
        s<<"f64";
    }else if(srcType == F32){
        s<<"f32";
    }else if(srcType == S32){
        s<<"s32";
    }
    s<<" "<<Rd<<","<<Rs<<" @"<<comment<<"\n";
}


void VFPVmov::printArm(std::ostream& s){
    s<<"vmov";
    printCond(s,cond);
    if(P == F32){
        s<<".f32";
    }else if(P == F64){
        s<<".f64";
    }
    s<<" "<<Rd<<","<<Rs<<" @"<<comment<<"\n";
}


void VFPVldst::printArm(std::ostream& s){
    if(op == VLDR){
        s<<"vldr";
    }else if(op == VSTR){
        s<<"vstr";
    }
    printCond(s,cond);
    s<<" "<<Fd<<",";
    if(islabel){
        s<<label;
    }else{
        s<<"["<<Rn<<",#"<<immed<<"]";
    }
    s<<" @"<<comment<<"\n";
}


void VFPVpushpop::printArm(std::ostream& s){
    switch (opcode)
    {
    case VFPVpushpop::VPUSH:
        s<<"vpush";
        break;
    case VFPVpushpop::VPOP:
        s<<"vpop";
        break;
    }
    s<<cond<<" ";
    // s<<VFPregs;
    printRegList(s,VFPregs);
    s<<" @"<<comment<<"\n";
}

std::ostream& operator<<(std::ostream& s,std::vector<Register>reglist){
    printRegList(s,reglist);
    return s;
}

void VFPVstm::printArm(std::ostream& s){
    switch (opcode)
    {
    case VFPVstm::VSTM:
        s<<"vstm"<<cond<<" "<<Rn;
        if(dowriteback){
            s<<"!";
        }
        s<<", "<<VFPregs;
        break;
    case VFPVstm::VSTMDB:
        s<<"vstmdb"<<cond<<" "<<Rn<<"!"<<", "<<VFPregs;
        break;
    case VFPVstm::VLDM:
        s<<"vldm"<<cond<<" "<<Rn;
        if(dowriteback){
            s<<"!";
        }
        s<<", "<<VFPregs;
        break;
    case VFPVstm::VLDMDB:
        s<<"vldmdb"<<cond<<" "<<Rn<<"!"<<", "<<VFPregs;
        break;
    }
    s<<" @"<<comment<<"\n";
}

void ArmPhiInstruction::printArm(std::ostream& s){

}

void ArmBlock::emit(std::ostream& s){
    for(auto ins:instructions){
        s<<"\t";
        ((ArmBaseInstruction*)ins)->printArm(s);
    }
}

void ArmFunction::emit(std::ostream& s){
    s<<func_name<<":\n";
    for(auto block:blocks){
        s<<func_name<<block->label_id<<":\n";
        block->emit(s);
    }
}

void ArmUnit::emit(std::ostream& s){// global def
    for(auto func:functions){
        func->emit(s);
    }
}