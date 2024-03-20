#include "cfg.h"

void LoopClosedSSA(CFG* C)
{
    for(auto loop:C->LoopForest.loop_set){
        loop->LCSSA(C);
    }
}

void NaturalLoop::LCSSA(CFG* C)
{
    
}

//check if the var def in loop is only used in loop(except phi in exits)
void NaturalLoop::LCSSACheck(CFG* C)
{

}