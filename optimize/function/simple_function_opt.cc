#include "cfg.h"

/**
    * this function will make function only has one return block.
    * if the function has multiple return block and the return type is not void, 
    * you will generate a new alloca Instruction in bb0.
    * then replace all the ret instruction with store instruction and br uncond instruction
    * then create a new bb for ret instruction.(this bb is the target of the new br uncond instruction)
    * you should set CFG::max_reg correctly
    * @param C the control flow graph of the function */
void MakeFunctionOneExit(CFG* C)
{
    std::cerr<<"MakeFunctionOneExit is not implemented now\n";
}


/**
    * this function will elimate tailrecursive
    * you can use testcase 087_gcd.sy to check
    * you should set CFG::max_reg correctly
    * @param C the control flow graph of the function */
void TailRecursiveEliminate(CFG* C)
{
    std::cerr<<"TailRecursiveElimate is not implemented now\n";
}



void FunctionInline()
{

}






