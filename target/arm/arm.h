#ifndef ARM_H
#define ARM_H
#include "arm_fields.h"
#include <iostream>
/*
struct Arm_Instruction{
    enum {ADDSUB = 0,ADDSUBIMM,PARALLELADDSUB}format;
    union{
        struct{
            enum {ADD = 0,ADC,SUB,SBC,RSB,RSC}opcode;
            bool S;
            Register Rd,Rn;
            Operand2 op2;
            void printArm(std::ostream& s);
        }addsub;
        struct{
            enum {S = 0,Q,SH,U,UQ,UH}prefix;
            enum {ADD16 = 0,SUB16,ADD8,SUB8,ASX,SAX//,USAD8,USADA8
            }opcode;
            Register Rd,Rn,Rm;
            void printArm(std::ostream& s);
        }parallel_addsub;
        struct{
            enum {ADD = 0,SUB}opcode;
            Register Rd,Rn;
            int imm12;
            void printArm(std::ostream& s);
        }addsub_imm;
    }properties;
};
*/
class Arm_baseins{
public:
    virtual void printArm(std::ostream& s) = 0;
};

class Arm_addsub : Arm_baseins{
public:
    enum {ADD = 0,ADC,SUB,SBC,RSB,RSC}opcode;
    // cout<<(char*)opcode;
    bool S;
    Register Rd,Rn;
    Operand2 op2;
    virtual void printArm(std::ostream& s);
};

class Arm_addsubImm : Arm_baseins{
public:
    enum {ADD = 0,SUB}opcode;
    Register Rd,Rn;
    int imm12;
    virtual void printArm(std::ostream& s);
};

class Arm_parallelAddsub : Arm_baseins{
public:
    enum {S = 0,Q,SH,U,UQ,UH}prefix;
    enum {ADD16 = 0,SUB16,ADD8,SUB8,ASX,SAX//,USAD8,USADA8
    }opcode;
    Register Rd,Rn,Rm;
    virtual void printArm(std::ostream& s);
};

class Arm_mul{
public:
    enum {MUL = 0}opcode;
    bool S;
    Register Rd,Rm,Rs;
};

class Arm_mla{
public:
    enum {MLA = 0}opcode;
    bool S;
    Register Rd,Rm,Rs,Rn;
};

class Arm_mls{
public:
    enum {MLS = 0}opcode;
    Register Rd,Rm,Rs,Rn;
};

class Arm_sml{
public:
    enum {SMMUL = 0,SMLAL}opcode;
    bool S;
    Register RdLo,RdHi,Rm,Rs;
};

class Arm_smmul{
public:
    enum {SMMUL = 0}opcode;
    bool R;
    Register Rd,Rm,Rs;
};

class Arm_move{
public:

};
#endif
