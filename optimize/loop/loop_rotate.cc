#include "cfg.h"
#include <assert.h>

/*
while(cond){
    body
}

will be transformed to:

if(cond){
    do{
        body
    }while(cond)
}

the loop needs to have only one exit
*/
void LoopRotate(CFG* C)
{
    for(auto loop:C->LoopForest.loop_set){
        loop->LoopRotate(C);
    }
}

void NaturalLoop::LoopRotate(CFG* C)
{

}