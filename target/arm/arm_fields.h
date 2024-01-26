#ifndef ARM_FIELDS_H
#define ARM_FIELDS_H
struct Register{
public:
    int reg_no;
};
struct Operand2{
public:
    enum {IMM8M = 0,RSHIFTR,RSHIFTI,RRX}type;
    enum ShiftType{LSL = 0,LSR,ASR,ROR};
    union{
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
    }properties;
};
#endif