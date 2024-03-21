#ifndef ARM_FIELDS_H
#define ARM_FIELDS_H
#include <string>
#include <iostream>
/*
struct ArmCPU{
    unsigned int CPSR;
    union{
        int r[11];
        struct{
            int :??;
            int pc;
            int :??;
            int fp;
            int :??;
            int sp;
            int :??;
        };
    };
    // Co-Processor
    union{
        float s[16];
        double d[8];
        long long double q[4];
    };
};
*/
struct ArmPhysicalRegisterDescriptor{
    char* name;
    enum{
        r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,
        s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
        d0,d1,d2,d3,d4,d5,d6,d7,
        q0,q1,q2,q3,
        cpsr,
        INVALID,
    };
};
extern struct ArmPhysicalRegisterDescriptor ArmRegDescriptor[];
// struct Register{
// public:
    // bool Virtual;
    // enum {I32,FLOAT,DOUBLE}type;
    // int am_reg_no;
    // Register(bool Virtual,decltype(type) reg_type,int no):Virtual(Virtual),type(reg_type),reg_no(no){}
//     void printArm(std::ostream& s);
//     void printMachineIR(std::ostream& s);
// };
enum ShiftType{LSL = 0,LSR,ASR,ROR,RRX};
struct RmOpsh{
    enum {RSHIFTI = 0,RRX}type;
    union prop{
        struct{
            Register Rm;
            ShiftType shift_type;
            int shift;
        }regShiftImm;
        struct{
            Register Rm;
        }RRX;
        prop(){}
    }properties;
    RmOpsh(Register Rm){
        type = RSHIFTI;
        properties.regShiftImm.Rm = Rm;
        properties.regShiftImm.shift_type = LSL;
        properties.regShiftImm.shift = 0;
    }
    RmOpsh(Register Rm,ShiftType shiftype,int shift){
        if(shiftype != ::RRX){
            type = RSHIFTI;
            properties.regShiftImm.Rm = Rm;
            properties.regShiftImm.shift_type = shiftype;
            properties.regShiftImm.shift = shift;
        }else{
            type = RRX;
            properties.RRX.Rm = Rm;
        }
    }
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
};

struct Operand2{
public:
    enum {IMM8M = 0,RSHIFTR,RSHIFTI,RRX}type;
    union prop{
        int imm8m;
        struct{
            Register Rm;
            ShiftType shift_type;
            Register Rs;
        }regShiftReg;
        struct{
            Register Rm;
            ShiftType shift_type;
            int shift;
        }regShiftImm;
        struct{
            Register Rm;
        }RRX;
        prop(){}
    }properties;
    Operand2(int imm8m){
        type = IMM8M;
        properties.imm8m = imm8m;
    }
    Operand2(Register Rm,ShiftType shiftype,Register Rs){
        if(shiftype != ::RRX){
            type = RSHIFTR;
            properties.regShiftReg.Rm = Rm;
            properties.regShiftReg.shift_type = shiftype;
            properties.regShiftReg.Rs = Rs;
        }else{
            type = RRX;
            properties.RRX.Rm = Rm;
        }
    }
    Operand2(Register Rm,ShiftType shiftype,int shift){
        if(shiftype != ::RRX){
            type = RSHIFTI;
            properties.regShiftImm.Rm = Rm;
            properties.regShiftImm.shift_type = shiftype;
            properties.regShiftImm.shift = shift;
        }else{
            type = RRX;
            properties.RRX.Rm = Rm;
        }
    }
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
};

struct Rssh{
public:
    enum{RS = 0,SH}type;
    union prop{
        int shift;
        Register Rs;
        prop(){}
    }properties;
    Rssh(Register Rs){
        type = RS;
        properties.Rs = Rs;
    }
    Rssh(int shift){
        type = SH;
        properties.shift = shift;
    }
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
};

struct Label{
public:
    std::string label_name;
    Label(std::string name):label_name(name){}
    void printArm(std::ostream& s);
    void printMachineIR(std::ostream& s);
};


std::ostream& operator<<(std::ostream& s,ShiftType typ);
std::ostream& operator<<(std::ostream& s,Register reg);
std::ostream& operator<<(std::ostream& s,RmOpsh rmo);
std::ostream& operator<<(std::ostream& s,Operand2 op2);
std::ostream& operator<<(std::ostream& s,Rssh rsh);
std::ostream& operator<<(std::ostream& s,Label lbl);
#endif
