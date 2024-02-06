#ifndef ARM_BLOCK_H
#define ARM_BLOCK_H
#include "arm.h"
#include <deque>
#include <string>
#include <iostream>
class Arm_block{
public:
    int label_id;
    std::deque<Arm_baseins*> instructions;
    void emit(std::ostream& s);
    Arm_block(int id):label_id(id){}
    template<class T>
    void ConvertAndAppend(T ins);
};
class Arm_func{
public:
    std::string func_name;
    std::vector<Arm_block*> blocks{};
    void emit(std::ostream& s);
    Arm_func(std::string name):func_name(name){}
};
class Arm_asm{
public:
    std::vector<Instruction> global_def{};
    std::vector<Arm_func*> functions;
    void emit(std::ostream& s);
    Arm_asm(LLVM_IR& IR);
};
#endif