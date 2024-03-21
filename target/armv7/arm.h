#ifndef ARM_H
#define ARM_H
#include "arm_fields.h"
#include "ir.h"
#include "Instruction.h"
#include <iostream>
#include <vector>
class ArmBaseInstruction : public MachineBaseInstruction{
public:
    enum {BINARY = 0,ADDSUBIMM,PARALLELADDSUB,MULAS,MOVE,MOVWT,SHIFT,_CMP,IT,BRANCH_LABEL,BRANCH_REG,BRANCH_LABELREG,LOADSTORE,LOADSTOREM,PUSHPOP,VBIN,VCMP,VCVT,VLDST,VMOV,VPUSHPOP,_VSTM,PHI}ins_type;
    std::string comment;

    enum {EQ = 0,NE,CS_HS,CC_LO,MI,PL,VS,VC,HI,LS,GE,LT,GT,LE,AL};
    int cond;

    virtual void printArm(std::ostream& s) = 0;
    virtual void printMachineIR(std::ostream& s) = 0;
    ArmBaseInstruction(int cond,std::string comment):cond(cond),comment(comment){}
};

void printCond(std::ostream& s,int cond);
void printRegList(std::ostream& s,const std::vector<Register>& reglist);

class ArmBinary : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {ADD = 0,ADC,SUB,SBC,RSB,RSC,AND,EOR,ORR,ORN,BIC};
    int opcode;
    bool S;
    Register Rd,Rn;
    Operand2 op2;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmBinary(int opcode,bool S,Register Rd,Register Rn,Operand2 op2,int cond,std::string comment = std::string())
    :opcode(opcode),S(S),Rd(Rd),Rn(Rn),op2(op2),ArmBaseInstruction(cond,comment){
        ins_type = BINARY;
    }
};

class ArmAddsubImm : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {ADD = 0,SUB};
    int opcode;
    Register Rd,Rn;
    int imm12;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmAddsubImm(int opcode,Register Rd,Register Rn,int imm12,int cond,std::string comment = std::string())
    :opcode(opcode),Rd(Rd),Rn(Rn),imm12(imm12),ArmBaseInstruction(cond,comment){
        ins_type = ADDSUBIMM;
    }
};

class ArmParallelAddsub : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {S = 0,Q,SH,U,UQ,UH};
    enum {ADD16 = 0,SUB16,ADD8,SUB8,ASX,SAX//,USAD8,USADA8
    };
    int prefix,opcode;
    Register Rd,Rn,Rm;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmParallelAddsub(int prefix,int opcode,Register Rd,Register Rn,Register Rm,int cond,std::string comment = std::string())
    :prefix(prefix),opcode(opcode),Rd(Rd),Rn(Rn),Rm(Rm),ArmBaseInstruction(cond,comment){
        ins_type = PARALLELADDSUB;
    }
};

class ArmMulas : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {MUL = 0,MLA,MLS,SMULL,SMLAL,SMMUL};
    int opcode;
    bool SR;// Sometimes not used
    Register Rd,Rm,Rs;
    Register Rn;// Sometimes not used
    // Rd - RdLo
    // Rn - RdHi
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmMulas(int opcode,bool SR,Register Rd,Register Rm,Register Rs,Register Rn,int cond,std::string comment = std::string())
    :opcode(opcode),SR(SR),Rd(Rd),Rm(Rm),Rs(Rs),Rn(Rn),ArmBaseInstruction(cond,comment){
        ins_type = MULAS;
    }
    // Construction function Here
    // printArm() Decl Here
};

class ArmMove : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {MOV = 0,MVN};
    int opcode;
    bool S;
    Register Rd;
    Operand2 op2;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmMove(int opcode,bool S,Register Rd,Operand2 op2,int cond,std::string comment = std::string())
    :opcode(opcode),S(S),Rd(Rd),op2(op2),ArmBaseInstruction(cond,comment){
        ins_type = MOVE;
    }
};

class ArmMovwt : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {MOVW = 0,MOVT};
    int opcode;
    Register R;
    int imm16;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmMovwt(int opcode,Register R,int imm16,int cond,std::string comment = std::string())
    :opcode(opcode),R(R),imm16(imm16),ArmBaseInstruction(cond,comment){
        ins_type = MOVWT;
    }
};

class ArmShift : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    bool S;
    Register Rd;
    RmOpsh Rmsh;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmShift(bool S,Register Rd,RmOpsh Rmsh,int cond,std::string comment = std::string())
    :S(S),Rd(Rd),Rmsh(Rmsh),ArmBaseInstruction(cond,comment){
        ins_type = SHIFT;
    }
};

class ArmCmp : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {CMP = 0,CMN}opcode;
    Register Rn;
    Operand2 op2;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmCmp(Register Rn,Operand2 op2,int cond,std::string comment = std::string())
    :Rn(Rn),op2(op2),ArmBaseInstruction(cond,comment){
        ins_type = _CMP;
    }
};

class ArmIt : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    // high  |low
    // 0000  |0000
    // length|pattern

    // length == 0 , 0000 0000 ==> pattern = ''
    // length == 1 , 0001 0000 ==> pattern = 'E'
    // length == 1 , 0001 0001 ==> pattern = 'T'
    // legnth == 2 , 0010 0010 ==> pattern = 'TE'
    // legnth == 2 , 0010 0001 ==> pattern = 'ET'
    // length == 3 , 0011 0101 ==> pattern = 'TET'
    unsigned pattern;
    // assist functions like setlegnth(),setbit() may be helpful
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmIt(unsigned pattern,int cond,std::string comment = std::string())
    :pattern(pattern),ArmBaseInstruction(cond,comment){
        ins_type = IT;
    }

    // cond field in ArmBaseInstruction

};

class ArmBranchLabel : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {B = 0,BL,BLX};
    int opcode;
    Label target;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmBranchLabel(int opcode,Label target,int cond,std::string comment = std::string())
    :opcode(opcode),target(target),ArmBaseInstruction(cond,comment){
        ins_type = BRANCH_LABEL;
    }
};

class ArmBranchReg : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {BX = 0,BLX,BXJ};
    int opcode;
    Register Rm;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmBranchReg(int opcode,Register Rm,int cond,std::string comment = std::string())
    :opcode(opcode),Rm(Rm),ArmBaseInstruction(cond,comment){
        ins_type = BRANCH_REG;
    }
};

class ArmBranchLabelreg : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    bool N;
    Register Rn;
    Label target;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmBranchLabelreg(bool N,Register Rn,Label target,int cond,std::string comment = std::string())
    :N(N),Rn(Rn),target(target),ArmBaseInstruction(cond,comment){
        ins_type = BRANCH_LABELREG;
    }
};

class ArmLoadStore : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {LOAD = 0,STORE};
    int op;
    enum {NONE = 0,B,SB,H,SH};
    int size;
    bool T;
    Register Rd;
    Register Rn;// not used when offset_type == LABEL
    enum {IMM = 0,REG_ADD,REG_SUB,LABEL};
    int offset_type;
    union{
        int offset;
        RmOpsh Rmsh;
    }OFFSET;// not used when offset_type == LABEL
    bool ispreindex;// not used when offset_type == LABEL
    bool dowriteback;// not used when offset_type == LABEL
    Label addr_label;// not used when offset_type != LABEL
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmLoadStore(int op,int size,bool T,Register Rd,Register Rn,int offset_type,bool ispreindex,bool dowriteback,Label addr_label,int cond,std::string comment = std::string())
    :op(op),size(size),T(T),Rd(Rd),Rn(Rn),offset_type(offset_type),OFFSET(OFFSET),ispreindex(ispreindex),dowriteback(dowriteback),addr_label(addr_label),ArmBaseInstruction(cond,comment){
        ins_type = LOADSTORE;
    }
};

class ArmLoadStoreM : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {LOAD = 0,STORE};
    int op;
    enum {IA = 0,IB,DA,DB};
    int mode;
    Register Rn;
    bool dowriteback;
    std::vector<Register> reglist;
    bool hat;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmLoadStoreM(int op,Register Rn,bool dowriteback,std::vector<Register> reglist,bool hat,int cond,std::string comment = std::string())
    :op(op),Rn(Rn),dowriteback(dowriteback),reglist(reglist),hat(hat),ArmBaseInstruction(cond,comment){
        ins_type = LOADSTOREM;
    }
};

class ArmPushpop : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
    enum {PUSH = 0,POP};
    int opcode;
    std::vector<Register> reglist;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmPushpop(int opcode,std::vector<Register> reglist,int cond,std::string comment = std::string())
    :opcode(opcode),reglist(reglist),ArmBaseInstruction(cond,comment){
        ins_type = LOADSTOREM;
    }
};// push pop

class VFPVbin : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
    enum {VADD = 0,VSUM,VMUL,VDIV};
    int opcode;
    int P;
    Register Fd,Fn,Fm;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    VFPVbin(int opcode,int P,Register Fd,Register Fn,Register Fm,int cond,std::string comment = std::string())
    :opcode(opcode),P(P),Fd(Fd),Fn(Fn),Fm(Fm),ArmBaseInstruction(cond,comment){
        ins_type = VBIN;
    }
};// VADD VSUB VMUL VDIV
class VFPVcmp : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    bool E;
    int P;
    Register Fd,Fm;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    VFPVcmp(bool E,int P,Register Fd,Register Fm,int cond,std::string comment = std::string())
    :E(E),P(P),Fd(Fd),Fm(Fm),ArmBaseInstruction(cond,comment){
        ins_type = VCMP;
    }
};
class VFPVcvt : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum{F64 = 0,F32,S32};
    int dstType,srcType;
    bool R;
    Register Rd,Rs;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    VFPVcvt(int dstType,int srcType,Register Rd,Register Rs,int cond,std::string comment,bool R=false):
    dstType(dstType),srcType(srcType),Rd(Rd),Rs(Rs),R(R),ArmBaseInstruction(cond,comment){
        ins_type = VCVT;
    }
};
class VFPVmov : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum{NONE = 0,F32,F64};
    int P;
    Register Rd,Rs;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    VFPVmov(int P,Register Rd,Register Rs,int cond,std::string comment = std::string())
    :P(P),Rd(Rd),Rs(Rs),ArmBaseInstruction(cond,comment){
        ins_type = VMOV;
    }
};
class VFPVldst : public ArmBaseInstruction{
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {VLDR = 0,VSTR};
    int op;
    Register Fd,Rn;
    int immed;
    Label label;
    int islabel;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
private:
    VFPVldst(int op,Register Fd,Register Rn,Label label,int islabel,int cond,std::string comment)
    :op(op),Fd(Fd),Rn(Rn),label(label),islabel(islabel),ArmBaseInstruction(cond,comment){
        ins_type = VLDST;
    }
public:
    VFPVldst(int op,Register Fd,Label label,int cond,std::string comment)
    :VFPVldst(op,Fd,Register(0,Register::I32,0),label,1,cond,comment){}
    VFPVldst(int op,Register Fd,Register Rn,int immed)
    :VFPVldst(op,Fd,Rn,std::string(),0,cond,comment){}
};// VLDR VSTR
class VFPVpushpop : public ArmBaseInstruction {
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {VPUSH = 0,VPOP};
    int opcode;
    std::vector<Register> VFPregs;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    VFPVpushpop(int opcode,std::vector<Register> VFPregs,int cond,std::string comment = std::string())
    :opcode(opcode),VFPregs(VFPregs),ArmBaseInstruction(cond,comment){
        ins_type = VPUSHPOP;
    }
};// VPUSH VPOP
class VFPVstm : public ArmBaseInstruction {
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    enum {VSTM = 0,VSTMDB,VLDM,VLDMDB};
    int opcode;
    Register Rn;
    bool dowriteback;
    std::vector<Register> VFPregs;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    VFPVstm(int opcode,Register Rn,bool dowriteback,std::vector<Register> VFPregs,int cond,std::string comment = std::string())
    :opcode(opcode),Rn(Rn),dowriteback(dowriteback),VFPregs(VFPregs),ArmBaseInstruction(cond,comment){
        ins_type = _VSTM;
    }
};// VSTM VSTMDB VLDM VLDMDB
class ArmPhiInstruction : public ArmBaseInstruction {
public:
    std::set<int> GetReadReg();
    std::set<int> GetWriteReg();
public:
    Register result;
    std::vector<std::pair<Label,RegisterOrImm> >phi_list;
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
    ArmPhiInstruction(Register result,int cond,std::string comment = std::string()):result(result),ArmBaseInstruction(cond,comment){
        ins_type = PHI;
    }
    void pushPhiList(Label label,Register reg){
        RegisterOrImm re;
        re.type = RegisterOrImm::REG;
        re.properties.reg = reg;
        phi_list.push_back(std::make_pair(label,re));
    }
    void pushPhiList(Label label,int imm32){
        RegisterOrImm im;
        im.type = RegisterOrImm::IMM;
        im.properties.imm32 = imm32;
        phi_list.push_back(std::make_pair(label,im));
    }
};
#endif