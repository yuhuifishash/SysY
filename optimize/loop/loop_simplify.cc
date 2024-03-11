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
    AddPreheader(C);
    ExitInsert(C);
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
        now = now->fa_loop;
        now->loop_nodes.insert(new_latch);
    }
    //PrintLoopDebugInfo();
}

void NaturalLoop::ExitInsert(CFG* C)
{
    std::set<LLVMBlock> inloop_preblocks;
    std::map<LLVMBlock,LLVMBlock> exit_map;
    for(auto exit:exit_nodes){
        bool is_dom_exit = true;
        for(auto preBB:C->GetPredecessor(exit)){
            if(loop_nodes.find(preBB) != loop_nodes.end()){
                inloop_preblocks.insert(preBB);
            }else{
                is_dom_exit = false;
            }    
        }
        
        if(is_dom_exit){continue;}
        auto new_exit = C->InsertTransferBlock(inloop_preblocks, exit);
        //update father loop's loop nodes
        auto now = this;
        
        while(now->fa_loop != nullptr){
            now = now->fa_loop;
            if(now->loop_nodes.find(exit) != now->loop_nodes.end()){
                now->loop_nodes.insert(exit);
            }
        }
        
        exit_map[exit] = new_exit;
    }

    for(auto [pre,now]:exit_map){
        exit_nodes.erase(pre);
        exit_nodes.insert(now);
    }
    // if(!exit_map.empty()){
    //     PrintLoopDebugInfo();
    // }
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
        preheader->comment = preheader->comment + "  preheader" + std::to_string(loop_id);
        return;
    }

    auto new_pre = C->InsertTransferBlock(outloop_preblocks,header);
    new_pre->comment = "preheader" + std::to_string(loop_id);
    preheader = new_pre;
    //std::cerr<<"add preheader "<<preheader->block_id<<"\n";
    
    //update father loop's loop nodes
    auto now = this;
    while(now->fa_loop != nullptr){
        now = now->fa_loop;
        now->loop_nodes.insert(new_pre);
    }
}

void NaturalLoop::LoopSimplifyCheck(CFG* C)
{

}