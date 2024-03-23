#ifndef ARM_FIELDS_H
#define ARM_FIELDS_H
#include <string>
#include <iostream>
#include "MachineBaseInstruction.h"
/*
struct ArmCPU{
    unsigned int cpsr;
    int r[11];
    union{
        float s[32];
        double d[16];
        long long double q[16];
    };
};
*/
struct ArmPhysicalRegisterDescriptor{
    char* name;
    enum{
        r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,
        s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,
        d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,d31,
        q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,
        cpsr,
        INVALID,
        spilled_in_memory,
    };
};
extern struct ArmPhysicalRegisterDescriptor ArmRegDescriptor[];

enum ShiftType{LSL = 0,LSR,ASR,ROR,RRX};
struct RmOpsh{
    Register Rm;
    ShiftType shift_type;
    int shift;
    RmOpsh(Register Rm){
        this->Rm = Rm;
        this->shift_type = LSL;
        this->shift = 0;
    }
    RmOpsh(Register Rm,ShiftType shiftype,int shift = 0){
        if(shiftype != ::RRX){
            this->Rm = Rm;
            this->shift_type = shiftype;
            this->shift = shift;
        }else{
            this->Rm = Rm;
        }
    }
};

struct Operand2{
public:
    enum {IMM8M = 0,RSHIFTR,RSHIFTI}type;
    union{
        int imm8m;
        struct{
            Register Rm;
            ShiftType shift_type;
            union{
                Register Rs;
                int shift;
            };
        };
    };
    Operand2(int imm8m){
        this->type = IMM8M;
        this->imm8m = imm8m;
    }
    Operand2(Register Rm,ShiftType shiftype,Register Rs){
        this->type = RSHIFTR;
        if(shiftype != ::RRX){
            this->Rm = Rm;
            this->shift_type = shiftype;
            this->Rs = Rs;
        }else{
            this->Rm = Rm;
        }
    }
    Operand2(Register Rm,ShiftType shiftype,int shift){
        type = RSHIFTI;
        if(shiftype != ::RRX){
            this->Rm = Rm;
            this->shift_type = shiftype;
            this->shift = shift;
        }else{
            this->Rm = Rm;
        }
    }
};

struct Label{
public:
    union{
        int jmp_label_id;
        int mem_label_id;
        int print_label_id;
    };
    int seq_label_id;
    bool is_data_address;
    Label(int jmp,int seq){
        this->jmp_label_id = jmp;
        this->seq_label_id = seq;
    }
    Label(int jmp,bool is_data_address = false){
        this->is_data_address = is_data_address;
        this->jmp_label_id = jmp;
    }
};

#endif
