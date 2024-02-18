#ifndef ARM_H
#define ARM_H
#include "arm_fields.h"
#include "ir.h"
#include "Instruction.h"
#include <iostream>
#include <vector>
class Arm_baseins{
public:
    enum {BINARY = 0,ADDSUBIMM,PARALLELADDSUB,MULAS,MOVE,MOVWT,SHIFT,_CMP,IT,BRANCH_LABEL,BRANCH_REG,BRANCH_LABELREG,LOADSTORE,LOADSTOREM,PUSHPOP,VBIN,VCMP,VCVT,VLDST,VMOV,VPUSHPOP,_VSTM}ins_type;
    std::string comment;

    enum {EQ = 0,NE,CS_HS,CC_LO,MI,PL,VS,VC,HI,LS,GE,LT,GT,LE,AL};
    int cond;

    virtual void printArm(std::ostream& s) = 0;
};

void printCond(std::ostream& s,int cond);
void printRegList(std::ostream& s,const std::vector<Register>& reglist);

class Arm_binary : Arm_baseins{
public:
    enum {ADD = 0,ADC,SUB,SBC,RSB,RSC,AND,EOR,ORR,ORN,BIC};
    int opcode;
    bool S;
    Register Rd,Rn;
    Operand2 op2;
    virtual void printArm(std::ostream& s);
    Arm_binary(int opcode,bool S,Register Rd,Register Rn,Operand2 op2,int cond,std::string comment = std::string())
    :opcode(opcode),S(S),Rd(Rd),Rn(Rn),op2(op2){
        ins_type = BINARY;
        this->cond = cond;
        this->comment = comment;
    }
};

class Arm_addsubImm : Arm_baseins{
public:
    enum {ADD = 0,SUB};
    int opcode;
    Register Rd,Rn;
    int imm12;
    virtual void printArm(std::ostream& s);
    Arm_addsubImm(int opcode,Register Rd,Register Rn,int imm12,int cond,std::string comment = std::string())
    :opcode(opcode),Rd(Rd),Rn(Rn),imm12(imm12){
        ins_type = ADDSUBIMM;
        this->cond = cond;
        this->comment = comment;
    }
};

class Arm_parallelAddsub : Arm_baseins{
public:
    enum {S = 0,Q,SH,U,UQ,UH};
    enum {ADD16 = 0,SUB16,ADD8,SUB8,ASX,SAX//,USAD8,USADA8
    };
    int prefix,opcode;
    Register Rd,Rn,Rm;
    virtual void printArm(std::ostream& s);
    Arm_parallelAddsub(int prefix,int opcode,Register Rd,Register Rn,Register Rm,int cond,std::string comment = std::string())
    :prefix(prefix),opcode(opcode),Rd(Rd),Rn(Rn),Rm(Rm){
        ins_type = PARALLELADDSUB;
        this->cond = cond;
        this->comment = comment;
    }
};

class Arm_mulas : Arm_baseins{
public:
    enum {MUL = 0,MLA,MLS,SMULL,SMLAL,SMMUL};
    int opcode;
    bool SR;// Sometimes not used
    Register Rd,Rm,Rs;
    Register Rn;// Sometimes not used
    // Rd - RdLo
    // Rn - RdHi
    virtual void printArm(std::ostream& s);
    Arm_mulas(int opcode,bool SR,Register Rd,Register Rm,Register Rs,Register Rn,int cond,std::string comment = std::string())
    :opcode(opcode),SR(SR),Rd(Rd),Rm(Rm),Rs(Rs),Rn(Rn){
        ins_type = MULAS;
        this->cond = cond;
        this->comment = comment;
    }
    // Construction function Here
    // printArm() Decl Here
};

class Arm_move : Arm_baseins{
public:
    enum {MOV = 0,MVN};
    int opcode;
    bool S;
    Register Rd;
    Operand2 op2;
    virtual void printArm(std::ostream& s);
    Arm_move(int opcode,bool S,Register Rd,Operand2 op2,int cond,std::string comment = std::string())
    :opcode(opcode),S(S),Rd(Rd),op2(op2){
        ins_type = MOVE;
        this->cond = cond;
        this->comment = comment;
    }
};

class Arm_movwt : Arm_baseins{
public:
    enum {MOVW = 0,MOVT};
    int opcode;
    Register R;
    int imm16;
    virtual void printArm(std::ostream& s);
    Arm_movwt(int opcode,Register R,int imm16,int cond,std::string comment = std::string())
    :opcode(opcode),R(R),imm16(imm16){
        ins_type = MOVWT;
        this->cond = cond;
        this->comment = comment;
    }
};

class Arm_shift : Arm_baseins{
public:
    bool S;
    Register Rd;
    RmOpsh Rmsh;
    virtual void printArm(std::ostream& s);
    Arm_shift(bool S,Register Rd,RmOpsh Rmsh,int cond,std::string comment = std::string())
    :S(S),Rd(Rd),Rmsh(Rmsh){
        ins_type = SHIFT;
        this->cond = cond;
        this->comment = comment;
    }
};

class Arm_cmp : Arm_baseins{
public:
    enum {CMP = 0,CMN}opcode;
    Register Rn;
    Operand2 op2;
    virtual void printArm(std::ostream& s);
    Arm_cmp(Register Rn,Operand2 op2,int cond,std::string comment = std::string())
    :Rn(Rn),op2(op2){
        ins_type = _CMP;
        this->cond = cond;
        this->comment = comment;
    }
};

class Arm_it : Arm_baseins{
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
    virtual void printArm(std::ostream& s);
    Arm_it(unsigned pattern,int cond,std::string comment = std::string())
    :pattern(pattern){
        ins_type = IT;
        this->cond = cond;
        this->comment = comment;
    }

    // cond field in Arm_baseins

};

class Arm_branch_label : Arm_baseins{
public:
    enum {B = 0,BL,BLX};
    int opcode;
    Label target;
    virtual void printArm(std::ostream& s);
    Arm_branch_label(int opcode,Label target,int cond,std::string comment = std::string())
    :opcode(opcode),target(target){
        ins_type = BRANCH_LABEL;
        this->cond = cond;
        this->comment = comment;
    }
};

class Arm_branch_reg : Arm_baseins{
public:
    enum {BX = 0,BLX,BXJ};
    int opcode;
    Register Rm;
    virtual void printArm(std::ostream& s);
    Arm_branch_reg(int opcode,Register Rm,int cond,std::string comment = std::string())
    :opcode(opcode),Rm(Rm){
        ins_type = BRANCH_REG;
        this->cond = cond;
        this->comment = comment;
    }
};

class Arm_branch_labelreg : Arm_baseins{
public:
    bool N;
    Register Rn;
    Label target;
    virtual void printArm(std::ostream& s);
    Arm_branch_labelreg(bool N,Register Rn,Label target,int cond,std::string comment = std::string())
    :N(N),Rn(Rn),target(target){
        ins_type = BRANCH_LABELREG;
        this->cond = cond;
        this->comment = comment;
    }
};

class Arm_LoadStore : Arm_baseins{
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
    virtual void printArm(std::ostream& s);
    Arm_LoadStore(int op,int size,bool T,Register Rd,Register Rn,int offset_type,bool ispreindex,bool dowriteback,Label addr_label,int cond,std::string comment = std::string())
    :op(op),size(size),T(T),Rd(Rd),Rn(Rn),offset_type(offset_type),OFFSET(OFFSET),ispreindex(ispreindex),dowriteback(dowriteback),addr_label(addr_label){
        ins_type = LOADSTORE;
        this->cond = cond;
        this->comment = comment;
    }
};

class Arm_LoadStoreM : Arm_baseins{
public:
    enum {LOAD = 0,STORE};
    int op;
    enum {IA = 0,IB,DA,DB};
    int mode;
    Register Rn;
    bool dowriteback;
    std::vector<Register> reglist;
    bool hat;
    virtual void printArm(std::ostream& s);
    Arm_LoadStoreM(int op,Register Rn,bool dowriteback,std::vector<Register> reglist,bool hat,int cond,std::string comment = std::string())
    :op(op),Rn(Rn),dowriteback(dowriteback),reglist(reglist),hat(hat){
        ins_type = LOADSTOREM;
        this->cond = cond;
        this->comment = comment;
    }
};

class Arm_pushpop : Arm_baseins{
    enum {PUSH = 0,POP};
    int opcode;
    std::vector<Register> reglist;
    virtual void printArm(std::ostream& s);
    Arm_pushpop(int opcode,std::vector<Register> reglist,int cond,std::string comment = std::string())
    :opcode(opcode),reglist(reglist){
        ins_type = LOADSTOREM;
        this->cond = cond;
        this->comment = comment;
    }
};// push pop

class VFP_vbin : Arm_baseins{
    enum {VADD = 0,VSUM,VMUL,VDIV};
    int opcode;
    int P;
    Register Fd,Fn,Fm;
    virtual void printArm(std::ostream& s);
    VFP_vbin(int opcode,int P,Register Fd,Register Fn,Register Fm,int cond,std::string comment = std::string())
    :opcode(opcode),P(P),Fd(Fd),Fn(Fn),Fm(Fm){
        ins_type = VBIN;
        this->cond = cond;
        this->comment = comment;
    }
};// VADD VSUB VMUL VDIV
class VFP_vcmp : Arm_baseins{
public:
    bool E;
    int P;
    Register Fd,Fm;
    virtual void printArm(std::ostream& s);
    VFP_vcmp(bool E,int P,Register Fd,Register Fm,int cond,std::string comment = std::string())
    :E(E),P(P),Fd(Fd),Fm(Fm){
        ins_type = VCMP;
        this->cond = cond;
        this->comment = comment;
    }
};
class VFP_vcvt : Arm_baseins{
public:
    enum{F64 = 0,F32,S32};
    int dstType,srcType;
    bool R;
    Register Rd,Rs;
    virtual void printArm(std::ostream& s);
    VFP_vcvt(int dstType,int srcType,Register Rd,Register Rs,int cond,std::string comment,bool R=false):
    dstType(dstType),srcType(srcType),Rd(Rd),Rs(Rs),R(R){
        ins_type = VCVT;
        this->cond = cond;
        this->comment = comment;
    }
};
class VFP_vmov : Arm_baseins{
public:
    enum{NONE = 0,F32,F64};
    int P;
    Register Rd,Rs;
    virtual void printArm(std::ostream& s);
    VFP_vmov(int P,Register Rd,Register Rs,int cond,std::string comment = std::string())
    :P(P),Rd(Rd),Rs(Rs){
        ins_type = VMOV;
        this->cond = cond;
        this->comment = comment;
    }
};
class VFP_vldst : Arm_baseins{
public:
    enum {VLDR = 0,VSTR};
    int op;
    Register Fd,Rn;
    int immed;
    Label label;
    int islabel;
    virtual void printArm(std::ostream& s);
private:
    VFP_vldst(int op,Register Fd,Register Rn,Label label,int islabel,int cond,std::string comment)
    :op(op),Fd(Fd),Rn(Rn),label(label),islabel(islabel){
        ins_type = VLDST;
        this->cond = cond;
        this->comment = comment;
    }
public:
    VFP_vldst(int op,Register Fd,Label label,int cond,std::string comment)
    :VFP_vldst(op,Fd,Register(0,Register::I32,0),label,1,cond,comment){}
    VFP_vldst(int op,Register Fd,Register Rn,int immed)
    :VFP_vldst(op,Fd,Rn,std::string(),0,cond,comment){}
};// VLDR VSTR
class VFP_vpushpop : Arm_baseins {
    enum {VPUSH = 0,VPOP};
    int opcode;
    std::vector<Register> VFPregs;
    virtual void printArm(std::ostream& s);
    VFP_vpushpop(int opcode,std::vector<Register> VFPregs,int cond,std::string comment = std::string())
    :opcode(opcode),VFPregs(VFPregs){
        ins_type = VPUSHPOP;
        this->cond = cond;
        this->comment = comment;
    }
};// VPUSH VPOP
class VFP_vstm : Arm_baseins {
    enum {VSTM = 0,VSTMDB,VLDM,VLDMDB};
    int opcode;
    Register Rn;
    bool dowriteback;
    std::vector<Register> VFPregs;
    virtual void printArm(std::ostream& s);
    VFP_vstm(int opcode,Register Rn,bool dowriteback,std::vector<Register> VFPregs,int cond,std::string comment = std::string())
    :opcode(opcode),Rn(Rn),dowriteback(dowriteback),VFPregs(VFPregs){
        ins_type = _VSTM;
        this->cond = cond;
        this->comment = comment;
    }
};// VSTM VSTMDB VLDM VLDMDB
#endif
