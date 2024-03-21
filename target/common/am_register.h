#ifndef AM_REGISTER_H
#define AM_REGISTER_H
struct AmRegisterInfo{
    enum{INT,FLOAT};
    enum{B32,B64,B128};
    unsigned data_type:1;
    unsigned data_length:2;

    unsigned reg_no;
    void* alloca_result;
};

#endif