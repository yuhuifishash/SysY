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
        (*latch.begin())->comment = (*latch.begin())->comment + "  latch" + std::to_string(loop_id);
        return;
    }

    auto new_latch = C->InsertTransferBlock(latch,header);
    new_latch->comment = "latch" + std::to_string(loop_id);
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
    //std::set<LLVMBlock> inloop_preblocks;
}

void NaturalLoop::AddPreheader(CFG* C)
{
    
    std::set<LLVMBlock> outloop_preblocks;
    for(auto preBB:C->GetPredecessor(header)){
        if(loop_nodes.find(preBB) == loop_nodes.end()){
            outloop_preblocks.insert(preBB);
        }
    }
    assert(outloop_preblocks.size() >= 1);

    if(outloop_preblocks.size() == 1){
        preheader = *(outloop_preblocks.begin());
        preheader->comment = preheader->comment + "  preheader" + std::to_string(loop_id);;
        return;
    }

    auto new_pre = C->InsertTransferBlock(outloop_preblocks,header);
    new_pre->comment = "preheader" + std::to_string(loop_id);
    preheader = new_pre;
    //std::cerr<<"add preheader "<<preheader->block_id<<"\n";
    
    //update father loop's loop nodes
    auto now = this;
    while(now->fa_loop != nullptr){
        now = fa_loop;
        now->loop_nodes.insert(new_pre);
    }
}