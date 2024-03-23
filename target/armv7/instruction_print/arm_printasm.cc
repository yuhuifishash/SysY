#include "arm_block.h"
#include <assert.h>
#include "MachinePhiInstruction.h"
#include "arm_print_op.h"
#include "arm_printhelper.h"

// Printing Instructions

template<>
void ArmPrinter::printArm<ArmBinary*>(ArmBinary* ins){
    switch (ins->opcode)
    {
    case ArmBinary::ADD:
        (*this)<<"add";
        break;
    case ArmBinary::ADC:
        (*this)<<"adc";
        break;
    case ArmBinary::SUB:
        (*this)<<"sub";
        break;
    case ArmBinary::SBC:
        (*this)<<"sbc";
        break;
    case ArmBinary::RSB:
        (*this)<<"rsb";
        break;
    case ArmBinary::RSC:
        (*this)<<"rsc";
        break;
    case ArmBinary::AND:
        (*this)<<"and";
        break;
    case ArmBinary::EOR:
        (*this)<<"eor";
        break;
    case ArmBinary::ORR:
        (*this)<<"orr";
        break;
    case ArmBinary::ORN:
        (*this)<<"orn";
        break;
    case ArmBinary::BIC:
        (*this)<<"bic";
        break;
    }
    if(ins->S){
        (*this)<<"s";
    }
    (*this)<<" "<<ins->Rd<<", "<<ins->Rn<<", "<<ins->op2<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<ArmAddsubImm*>(ArmAddsubImm* ins){
	switch (ins->opcode)
    {
    case ArmAddsubImm::ADD:
        (*this)<<"addw";
        break;
    case ArmAddsubImm::SUB:
        (*this)<<"subw";
        break;
    }
    (*this)<<" "<<ins->Rd<<", "<<ins->Rn<<", "<<ins->imm12<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<ArmParallelAddsub*>(ArmParallelAddsub* ins){
	assert(false);
/*
    (*this)<<prefix;
    switch (ins->opcode)
    {
    case ArmParallelAddsub::ADD16:
        (*this)<<"add16";
        break;
    case ArmParallelAddsub::SUB16:
        (*this)<<"sub16";
        break;
    case ArmParallelAddsub::ADD8:
        (*this)<<"add8";
        break;
    case ArmParallelAddsub::SUB8:
        (*this)<<"sub8";
        break;
    case ArmParallelAddsub::ASX:
        (*this)<<"asx";
        break;
    case ArmParallelAddsub::SAX:
        (*this)<<"sax";
        break;
    }
    (*this)<<" "<<ins->Rd<<", "<<ins->Rn<<", "<<ins->Rm<<" @"<<ins->comment<<"\n";
*/
}

template<>
void ArmPrinter::printArm<ArmMulas*>(ArmMulas* ins){
	switch (ins->opcode)
    {
    case ArmMulas::MUL:
        (*this)<<"mul";
        if(ins->SR){
            (*this)<<"s";
        }
        (*this)<<" "<<ins->Rd<<", "<<ins->Rm<<", "<<ins->Rs;
        break;
    case ArmMulas::MLA:
        (*this)<<"mla";
        if(ins->SR){
            (*this)<<"s";
        }
        (*this)<<" "<<ins->Rd<<", "<<ins->Rm<<", "<<ins->Rs<<", "<<ins->Rn;
        break;
    case ArmMulas::MLS:
        (*this)<<"mls"<<" "<<ins->Rd<<", "<<ins->Rm<<", "<<ins->Rs<<", "<<ins->Rn;
        break;
    case ArmMulas::SMULL:
        (*this)<<"smull";
        if(ins->SR){
            (*this)<<"s";
        }
        (*this)<<" "<<ins->Rd<<", "<<ins->Rn<<", "<<ins->Rm<<", "<<ins->Rs;
        break;
    case ArmMulas::SMLAL:
        (*this)<<"smlal";
        if(ins->SR){
            (*this)<<"s";
        }
        (*this)<<" "<<ins->Rd<<", "<<ins->Rn<<", "<<ins->Rm<<", "<<ins->Rs;
        break;
    case ArmMulas::SMMUL:
        (*this)<<"smmul";
        if(ins->SR){
            (*this)<<"r";
        }
        (*this)<<" "<<ins->Rd<<", "<<ins->Rm<<", "<<ins->Rs;
        break;
    }
    (*this)<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<ArmMove*>(ArmMove* ins){
	switch (ins->opcode)
    {
    case ArmMove::MOV:
        (*this)<<"mov";
        break;
    case ArmMove::MVN:
        (*this)<<"mvn";
        break;
    }
    if(ins->S){
        (*this)<<"s";
    }
    (*this)<<" "<<ins->Rd<<", "<<ins->op2<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<ArmMovwt*>(ArmMovwt* ins){
	switch (ins->opcode)
    {
    case ArmMovwt::MOVW:
        (*this)<<"movw";
        break;
    case ArmMovwt::MOVT:
        (*this)<<"movt";
        break;
    }
    (*this)<<" "<<ins->R<<", "<<ins->imm16<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<ArmShift*>(ArmShift* ins){
	(*this)<<"mov";
    if(ins->S){
        (*this)<<"s";
    }
    (*this)<<" "<<ins->Rd<<", "<<ins->Rmsh<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<ArmCmp*>(ArmCmp* ins){
	switch (ins->opcode)
    {
    case ArmCmp::CMP:
        (*this)<<"cmp";
        break;
    case ArmCmp::CMN:
        (*this)<<"cmn";
        break;
    }
    (*this)<<" "<<ins->Rn<<", "<<ins->op2<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<ArmIt*>(ArmIt* ins){
	unsigned pattern_len = ins->pattern>>4;
    (*this)<<"it";//<<pattern;
    if(pattern_len != 0){
        int bitmask = 1<<(pattern_len-1);
        for(int i=1;i<=pattern_len;i++){
            if(ins->pattern & bitmask){
                (*this)<<"t";
            }else{
                (*this)<<"e";
            }
            bitmask >>= 1;
        }
    }
    (*this)<<" ";
    printCond(s,ins->cond);
    (*this)<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<ArmBranchLabel*>(ArmBranchLabel* ins){
	switch (ins->opcode)
    {
    case ArmBranchLabel::B:
        (*this)<<"b";
        break;
    case ArmBranchLabel::BL:
        (*this)<<"bl";
        break;
    case ArmBranchLabel::BLX:
        (*this)<<"blx";
        break;
    }
    (*this)<<" "<<ins->target<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<ArmBranchReg*>(ArmBranchReg* ins){
	switch (ins->opcode)
    {
    case ArmBranchReg::BX:
        (*this)<<"bx";
        break;
    case ArmBranchReg::BLX:
        (*this)<<"blx";
        break;
    case ArmBranchReg::BXJ:
        (*this)<<"bxj";
        break;
    }
    (*this)<<" "<<ins->Rm<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<ArmBranchLabelreg*>(ArmBranchLabelreg* ins){
	(*this)<<"cb";
    if(ins->N){
        (*this)<<"n";
    }
    (*this)<<"z "<<ins->Rn<<", "<<ins->target<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<ArmLoadStore*>(ArmLoadStore* ins){
	switch (ins->op)
    {
    case ArmLoadStore::LOAD:
        (*this)<<"ldr";
        break;
    case ArmLoadStore::STORE:
        (*this)<<"str";
        break;
    }
    switch (ins->size)
    {
    case ArmLoadStore::NONE:
        break;
    case ArmLoadStore::B:
        (*this)<<"b";
        break;
    case ArmLoadStore::SB:
        (*this)<<"sb";
        break;
    case ArmLoadStore::H:
        (*this)<<"h";
        break;
    case ArmLoadStore::SH:
        (*this)<<"sh";
        break;
    }
    if(ins->T){
        (*this)<<"t";
    }
    (*this)<<" "<<ins->Rd<<", ";
    if(ins->offset_type == ArmLoadStore::LABEL){
        (*this)<<ins->addr_label;
    }else if(ins->offset_type == ArmLoadStore::IMM){
        if(ins->ispreindex){
            //<op>{size}{T} Rd, [Rn {, #<offset>}]{!}
            (*this)<<"["<<ins->Rn<<",#"<<ins->offset<<"]";
            if(ins->dowriteback){
                (*this)<<"!";
            }
        }else{
            //<op>{size}{T} Rd, [Rn], #<offset>
            (*this)<<"["<<ins->Rn<<"],#"<<ins->offset;
        }
    }else if(ins->offset_type == ArmLoadStore::REG_ADD){
        if(ins->ispreindex){
            //<op>{size} Rd, [Rn, +Rm {, <opsh>}]{!}
            (*this)<<"["<<ins->Rn<<",+"<<ins->Rmsh<<"]";
            if(ins->dowriteback){
                (*this)<<"!";
            }
        }else{
            //<op>{size}{T} Rd, [Rn], +Rm {, <opsh>}
            (*this)<<"["<<ins->Rn<<"],+"<<ins->Rmsh;
        }
    }else if(ins->offset_type == ArmLoadStore::REG_SUB){
        if(ins->ispreindex){
            //<op>{size} Rd, [Rn, -Rm {, <opsh>}]{!}
            (*this)<<"["<<ins->Rn<<",-"<<ins->Rmsh<<"]";
            if(ins->dowriteback){
                (*this)<<"!";
            }
        }else{
            //<op>{size}{T} Rd, [Rn], -Rm {, <opsh>}
            (*this)<<"["<<ins->Rn<<"],-"<<ins->Rmsh;
        }
    }
    
    (*this)<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<ArmLoadStoreM*>(ArmLoadStoreM* ins){
	switch (ins->op)
    {
    case ArmLoadStoreM::LOAD:
        (*this)<<"ldm";
        break;
    case ArmLoadStoreM::STORE:
        (*this)<<"stm";
        break;
    }
    switch (ins->mode)
    {
    case ArmLoadStoreM::IA:
        (*this)<<"ia";
        break;
    case ArmLoadStoreM::IB:
        (*this)<<"ib";
        break;
    case ArmLoadStoreM::DA:
        (*this)<<"da";
        break;
    case ArmLoadStoreM::DB:
        (*this)<<"db";
        break;
    }
    (*this)<<" "<<ins->Rn;
    if(ins->dowriteback){
        (*this)<<"!";
    }
    (*this)<<", "<<ins->reglist;
    // printRegList(s,ins->reglist);
    if(ins->hat){
        (*this)<<"^";
    }
    (*this)<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<ArmPushpop*>(ArmPushpop* ins){
	switch (ins->opcode)
    {
    case ArmPushpop::PUSH:
        (*this)<<"push";
        break;
    case ArmPushpop::POP:
        (*this)<<"pop";
        break;
    }
    (*this)<<" ";
    (*this)<<ins->reglist;
    // printRegList(s,ins->reglist);
    (*this)<<" @"<<ins->comment<<"\n";
}
template<>
void ArmPrinter::printArm<VFPVbin*>(VFPVbin* ins){
    switch (ins->opcode)
    {
    case VFPVbin::VADD:
        (*this)<<"vadd";
        break;
    case VFPVbin::VSUM:
        (*this)<<"vsum";
        break;
    case VFPVbin::VMUL:
        (*this)<<"vmul";
        break;
    case VFPVbin::VDIV:
        (*this)<<"vdiv";
        break;
    }
    (*this)<<ins->cond<<"."<<ins->P<<" "<<ins->Fd<<", "<<ins->Fn<<", "<<ins->Fm<<" @"<<ins->comment<<"\n";
}


template<>
void ArmPrinter::printArm<VFPVcmp*>(VFPVcmp* ins){
    (*this)<<"vcmp";
    if(ins->E){
        (*this)<<"e";
    }
    (*this)<<ins->cond<<"."<<ins->P<<" "<<ins->Fd<<", "<<ins->Fm<<" @"<<ins->comment<<"\n";
}


template<>
void ArmPrinter::printArm<VFPVcvt*>(VFPVcvt* ins){
    (*this)<<"vcvt";
    if(ins->R){
        (*this)<<"r";
    }
    printCond(s,ins->cond);
    (*this)<<".";
    if(ins->dstType == VFPVcvt::F64){
        (*this)<<"f64";
    }else if(ins->dstType == VFPVcvt::F32){
        (*this)<<"f32";
    }else if(ins->dstType == VFPVcvt::S32){
        (*this)<<"s32";
    }
    (*this)<<".";
    if(ins->srcType == VFPVcvt::F64){
        (*this)<<"f64";
    }else if(ins->srcType == VFPVcvt::F32){
        (*this)<<"f32";
    }else if(ins->srcType == VFPVcvt::S32){
        (*this)<<"s32";
    }
    (*this)<<" "<<ins->Rd<<","<<ins->Rs<<" @"<<ins->comment<<"\n";
}


template<>
void ArmPrinter::printArm<VFPVmov*>(VFPVmov* ins){
    (*this)<<"vmov";
    printCond(s,ins->cond);
    if(ins->P == VFPVmov::F32){
        (*this)<<".f32";
    }else if(ins->P == VFPVmov::F64){
        (*this)<<".f64";
    }
    (*this)<<" "<<ins->Rd<<","<<ins->Rs<<" @"<<ins->comment<<"\n";
}


template<>
void ArmPrinter::printArm<VFPVldst*>(VFPVldst* ins){
    if(ins->op == VFPVldst::VLDR){
        (*this)<<"vldr";
    }else if(ins->op == VFPVldst::VSTR){
        (*this)<<"vstr";
    }
    printCond(s,ins->cond);
    (*this)<<" "<<ins->Fd<<",";
    if(ins->islabel){
        (*this)<<ins->label;
    }else{
        (*this)<<"["<<ins->Rn<<",#"<<ins->immed<<"]";
    }
    (*this)<<" @"<<ins->comment<<"\n";
}


template<>
void ArmPrinter::printArm<VFPVpushpop*>(VFPVpushpop* ins){
    switch (ins->opcode)
    {
    case VFPVpushpop::VPUSH:
        (*this)<<"vpush";
        break;
    case VFPVpushpop::VPOP:
        (*this)<<"vpop";
        break;
    }
    (*this)<<ins->cond<<" ";
    (*this)<<ins->VFPregs;
    // printRegList(s,ins->VFPregs);
    (*this)<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<VFPVstm*>(VFPVstm* ins){
    switch (ins->opcode)
    {
    case VFPVstm::VSTM:
        (*this)<<"vstm"<<ins->cond<<" "<<ins->Rn;
        if(ins->dowriteback){
            (*this)<<"!";
        }
        (*this)<<", "<<ins->VFPregs;
        break;
    case VFPVstm::VSTMDB:
        (*this)<<"vstmdb"<<ins->cond<<" "<<ins->Rn<<"!"<<", "<<ins->VFPregs;
        break;
    case VFPVstm::VLDM:
        (*this)<<"vldm"<<ins->cond<<" "<<ins->Rn;
        if(ins->dowriteback){
            (*this)<<"!";
        }
        (*this)<<", "<<ins->VFPregs;
        break;
    case VFPVstm::VLDMDB:
        (*this)<<"vldmdb"<<ins->cond<<" "<<ins->Rn<<"!"<<", "<<ins->VFPregs;
        break;
    }
    (*this)<<" @"<<ins->comment<<"\n";
}

template<>
void ArmPrinter::printArm<MachinePhiInstruction*>(MachinePhiInstruction* ins){
	
}



template<>
void ArmPrinter::printArm<ArmBaseInstruction*>(ArmBaseInstruction* ins){
    if(ins->arch == MachineBaseInstruction::PHI){
        printArm<MachinePhiInstruction*>((MachinePhiInstruction*)ins);
        return;
    }else{
        assert(ins->arch == MachineBaseInstruction::ARM);
    }
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
        // case ArmBaseInstruction::PHI:
        //     printArm<ArmPhiInstruction*>((ArmPhiInstruction*)ins);
        //     break;
    }
}