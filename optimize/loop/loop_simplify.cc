#include "cfg.h"

void LoopSimplify(CFG* C)
{
    
}


void NaturalLoop::LoopSimplify(CFG* C)
{
    SingleLatchInsert(C);
    ExitInsert(C);
    AddPreheader(C);
}

void NaturalLoop::SingleLatchInsert(CFG* C)
{

}

void NaturalLoop::ExitInsert(CFG* C)
{

}

void NaturalLoop::AddPreheader(CFG* C)
{

}