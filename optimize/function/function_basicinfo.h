#ifndef FUNCTION_BASICINFO_H
#define FUNCTION_BASICINFO_H

class FunctionBasicInfo
{
public:
    int Ins_num = 0;
    int rec_call_tag;//recursion call tag
    int call_tag;//call Instruction
    int alloca_tag;//if use alloca Instruction
    int array_formal_tag;
    int Formal_num = 0;
    int store_global_tag;
    int is_independent_tag;
};

#endif