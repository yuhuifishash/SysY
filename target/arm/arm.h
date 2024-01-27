#ifndef ARM_H
#define ARM_H
#include "arm_fields.h"
#include <iostream>
#include <vector>
class Arm_baseins{
public:
    enum {BINARY = 0,ADDSUBIMM,PARALLELADDSUB}ins_type;
    // Complete this

    enum {EQ = 0,NE}cond;
    // Complete this

    virtual void printArm(std::ostream& s) = 0;
};

class Arm_binary : Arm_baseins{
public:
    enum {ADD = 0,ADC,SUB,SBC,RSB,RSC,AND,EOR,ORR,ORN,BIC};
    int opcode;
    bool S;
    Register Rd,Rn;
    Operand2 op2;
    virtual void printArm(std::ostream& s);
    Arm_binary(int opcode,bool S,Register Rd,Register Rn,Operand2 op2)
    :opcode(opcode),S(S),Rd(Rd),Rn(Rn),op2(op2){
        ins_type = BINARY;
    }
};

class Arm_addsubImm : Arm_baseins{
public:
    enum {ADD = 0,SUB};
    int opcode;
    Register Rd,Rn;
    int imm12;
    virtual void printArm(std::ostream& s);
    Arm_addsubImm(int opcode,Register Rd,Register Rn,int imm12)
    :opcode(opcode),Rd(Rd),Rn(Rn),imm12(imm12){
        ins_type = ADDSUBIMM;
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
    Arm_parallelAddsub(int prefix,int opcode,Register Rd,Register Rn,Register Rm)
    :prefix(prefix),opcode(opcode),Rd(Rd),Rn(Rn),Rm(Rm){
        ins_type = PARALLELADDSUB;
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
};

class Arm_movwt : Arm_baseins{
public:
    enum {MOVW = 0,MOVT};
    Register R;
    int imm16;
};

class Arm_shift : Arm_baseins{
public:
    bool S;
    Register Rd;
    RmOpsh Rmsh;
};

class Arm_cmp : Arm_baseins{
public:
    enum {CMP = 0,CMN}opcode;
    Register Rn;
    Operand2 op2;
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
    int pattern;
    // assist functions like setlegnth(),setbit() may be helpful

    // cond field in Arm_baseins

};

class Arm_branch_label : Arm_baseins{
public:
    enum {B = 0,BL,BLX};
    int opcode;
    Label target;

};

class Arm_branch_reg : Arm_baseins{
public:
    enum {BX = 0,BLX,BXJ};
    int opcode;
    Register Rm;
};

class Arm_branch_labelreg : Arm_baseins{
public:
    bool N;
    Register Rn;
    Label target;
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
};

class Arm_LoadStoreM : Arm_baseins{
public:
    enum {LOAD = 0,STORE};
    int op;
    enum {IA = 0,IB,DA,DB};
    Register Rn;
    bool dowriteback;
    std::vector<Register> reglist;
    bool hat;
};

class Arm_pushpop : Arm_baseins{};// push pop

class VFP_vbin : Arm_baseins{};// VADD VSUB VMUL VDIV
class VFP_vcmp : Arm_baseins{};
class VFP_vcvt : Arm_baseins{};
class VFP_vmov : Arm_baseins{};
class VFP_vldst : Arm_baseins{};// VLDR VSTR
class VFP_vpushpop : Arm_baseins {};// VPUSH VPOP

#endif
