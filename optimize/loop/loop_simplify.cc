#include "cfg.h"
#include <assert.h>

void LoopSimplify(CFG* C)
{
    for(auto loop:C->LoopForest.loop_set){
        loop->LoopSimplify(C);
    }
}


void NaturalLoop::LoopSimplify(CFG* C)
{
    SingleLatchInsert(C);
    ExitInsert(C);
    AddPreheader(C);
}

void NaturalLoop::SingleLatchInsert(CFG* C)
{
    assert(latch.size() >= 1);
    if(latch.size() == 1){
        (*latch.begin())->comment = "latch";
        return;
    }

    auto new_latch = C->InsertTransferBlock(latch,header);
    new_latch->comment = "latch";
    latch.clear();
    latch.insert(new_latch);
    loop_nodes.insert(new_latch);

    //update father loop's loop nodes
    auto now = this;
    while(now->fa_loop != nullptr){
        now = fa_loop;
        now->loop_nodes.insert(new_latch);
    }
    //PrintLoopDebugInfo();
}

void NaturalLoop::ExitInsert(CFG* C)
{

}

void NaturalLoop::AddPreheader(CFG* C)
{

}