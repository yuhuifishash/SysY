#include "cfg.h"

/**
    * this function will elimate the double br_uncond without any other instructions
    * 
    * example:
    * L1:
    *   br label %L2
    * L2:
    *   br label %L3    
    * L3:
    *   br label %L4
    * L4:
    *   some instructions
    *   br label %L5
    * 
    * the example after this function will be:
    * L1:
    *   br label %L4
    * L4:
    *   some instructions
    *   br label %L5
    * 
    * this pass will execute after sccp
    * you can use testcase 29_lone_line.sy to check 
    * @param C the control flow graph of the function */
void ElimateDoubleBrUnCond(CFG* C)
{
    std::cerr<<"ElimateDoubleBrUnCond in SimplifyCFG is not implemented now\n";
}

void SimplifyCFG(CFG* C)
{
    ElimateDoubleBrUnCond(C);
}