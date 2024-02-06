#ifndef BASIC_BLOCK_H
#define BASIC_BLOCK_H

#include <iostream>
#include <vector>
#include <deque>
#include <set>
#include "Instruction.h"

class BasicBlock
{
public:
    int block_id = 0;
    std::deque<Instruction> Instruction_list{};

    std::map<Operand,Operand> Parallel_copy_list{};//move second to first
    std::map<Operand,LLVMType> Parallel_copy_type{};
    std::set<int> IN,OUT,DEF,USE;
    
    void cgen_prework();
    void code(std::ostream& s);
    void set_target(int id1,int id2);

    //pos = 1 -> end   pos = 0 -> begin
    /*
        ins1  <- front
        ...
        ins5  <- back
    */
    void push_Ins(int pos,Instruction Ins);

    void printIR(std::ostream& s);
    BasicBlock(int id):block_id(id){}
};
typedef BasicBlock* LLVMBlock;

#endif