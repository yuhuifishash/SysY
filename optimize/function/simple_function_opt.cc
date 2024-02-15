#include "cfg.h"

/**
    * this function will make function only has one return block.
    * if the function has multiple return block and the return type is not void, 
    * you will generate a new alloca Instruction in bb0.
    * then replace all the ret instruction with store instruction and br uncond instruction
    * then create a new bb for ret instruction.(this bb is the target of the new br uncond instruction)
    * you should set CFG::max_reg and LLVMIR::max_reg_map correctly
    * @param C the control flow graph of the function */
void MakeFunctionOneExit(CFG* C)
{

}


void FunctionInline()
{

}


void TailRecursiveElimate(CFG* C)
{

}




