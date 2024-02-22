#include "cfg.h"
#include "ir.h"
#include "Instruction.h"
#include "loop.h"
#include <stack>

std::set<LLVMBlock> FindNodesInLoop(CFG* C,LLVMBlock n,LLVMBlock d) //backedge n->d
{
    std::set<LLVMBlock> loop_nodes;

    std::stack<LLVMBlock> S;

    loop_nodes.insert(n);
    loop_nodes.insert(d);
    S.push(n);
    while(!S.empty()){
        LLVMBlock x = S.top();
        S.pop();
        for(auto preBB:C->invG[x->block_id]){;
            if(loop_nodes.find(preBB) == loop_nodes.end()){
                loop_nodes.insert(preBB);
                S.push(preBB);
            }
        }
    }
    return loop_nodes;
}

void NaturalLoop::FindExitNodes(CFG* C)
{
    for(auto node:loop_nodes){
        if(node->Instruction_list.size() < 1){continue;}
        auto Ins = *(node->Instruction_list.end()-1);
        if(Ins->GetOpcode() == BR_UNCOND){
            auto I = (BrUncondInstruction*)Ins;
            auto nextBB = (*(C->block_map))[I->GetTarget()];
            if(loop_nodes.find(nextBB) == loop_nodes.end()){
                exiting_nodes.insert(node);
                exit_nodes.insert(nextBB);
            }
        }else if(Ins->GetOpcode() == RET){
            exiting_nodes.insert(node);
            
        }else if(Ins->GetOpcode() == BR_COND){
            auto I = (BrCondInstruction*)Ins;
            auto nextBB1 = (*(C->block_map))[((LabelOperand*)I->GetFalseLabel())->GetLabelNo()];
            auto nextBB2 = (*(C->block_map))[((LabelOperand*)I->GetTrueLabel())->GetLabelNo()];
            if(loop_nodes.find(nextBB1) == loop_nodes.end() || loop_nodes.find(nextBB2) == loop_nodes.end()){
                exiting_nodes.insert(node);
                exit_nodes.insert(nextBB1);
                exit_nodes.insert(nextBB2);
            }
        }
    }
}


void NaturalLoopForest::CombineSameHeadLoop()
{
    std::set<LLVMBlock> header_set;
    std::set<NaturalLoop*> erase_loop_set;
    for(auto l:loop_set){
        if(header_set.find(l->header) != header_set.end()){
            erase_loop_set.insert(l);
            NaturalLoop* oldl = (header_loop_map.find(l->header))->second;
            for(auto l_nodes:l->loop_nodes){
                oldl->loop_nodes.insert(l_nodes);
            }
            for(auto latch_nodes:l->latch){
                oldl->latch.insert(latch_nodes);
            }
        }
        else{
            header_set.insert(l->header);
            header_loop_map.insert({l->header,l});
        }
    }
    
    for(auto l:erase_loop_set){
        loop_set.erase(l);
    }
}

void NaturalLoopForest::BuildLoopForest()
{

}

void CFG::BuildLoopInfo()
{
    LoopForest.header_loop_map.clear();
    LoopForest.loop_set.clear();
    LoopForest.loopG.clear();

    int loop_cnt = 0;
    for(auto [id,bb]:*block_map){
        for(auto head_bb:G[id]){//bb->head_bb   backedge
            if(IfDominate(head_bb->block_id,id)){
                NaturalLoop* l = new NaturalLoop();
                l->header = head_bb;
                l->latch.insert(bb);
                l->loop_id = loop_cnt++;
                l->loop_nodes = FindNodesInLoop(this,bb,head_bb);
                l->FindExitNodes(this);
                LoopForest.loop_set.insert(l);
            }
        }
    }
    LoopForest.loop_cnt = loop_cnt - 1;
    LoopForest.CombineSameHeadLoop();
    LoopForest.BuildLoopForest();
}

void LLVMIR::BuildLoopInfo()
{
    for(auto [defI,cfg]:llvm_cfg){
        cfg->BuildLoopInfo();

        // std::cerr<<defI->GetFunctionName()<<"  LoopInfo:\n";
        // for(auto loop:cfg->LoopForest.loop_set){
        //     std::cerr<<"------------------------------------\n";
        //     std::cerr<<"loop nodes: ";
        //     for(auto nodes:loop->loop_nodes){
        //         std::cerr<<nodes->block_id<<" ";
        //     }std::cerr<<"\n";
        //     std::cerr<<"header: "<<loop->header->block_id<<"\n";
        //     std::cerr<<"latch: ";
        //     for(auto nodes:loop->latch){
        //         std::cerr<<nodes->block_id<<" ";
        //     }std::cerr<<"\n";
        // }
    }
}

