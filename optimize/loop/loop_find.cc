#include "llvm_cfg.h"
#include "llvm_ir.h"
#include "Instruction.h"
#include "mem2reg_test.h"
#include <stack>

int loop_cnt = -1;

void LLVMIR::loop_find()
{
    for(auto node:llvm_cfg){
        node.second->loop_find();
    }
}

std::set<LLVMBlock> find_nodes_inloop(CFG* cfg,LLVMBlock n,LLVMBlock d) //backedge n->d
{
    std::set<LLVMBlock> loop_nodes;

    std::stack<LLVMBlock> S;

    loop_nodes.insert(n);
    loop_nodes.insert(d);
    S.push(n);
    while(!S.empty()){
        LLVMBlock x = S.top();
        S.pop();
        for(auto preBB:cfg->invG[x->block_id]){;
            if(loop_nodes.find(preBB) == loop_nodes.end()){
                loop_nodes.insert(preBB);
                S.push(preBB);
            }
        }
    }
    return loop_nodes;
}

void NaturalLoop::find_exit_nodes(CFG* cfg)
{
    for(auto node:loop_nodes){
        if(node->Instruction_list.size() < 1){continue;}
        auto Ins = *(node->Instruction_list.end()-1);
        if(Ins->GetOpcode() == BR_UNCOND){
            auto I = (BrUncondInstruction*)Ins;
            auto nextBB = (*(cfg->block))[I->get_target()];
            if(loop_nodes.find(nextBB) == loop_nodes.end()){
                exit_nodes.insert(node);
            }
        }
        if(Ins->GetOpcode() == RET){
            exit_nodes.insert(node);
        }
        if(Ins->GetOpcode() == BR_COND){
            auto I = (BrCondInstruction*)Ins;
            auto nextBB1 = (*(cfg->block))[((LabelOperand*)I->getFalseLabel())->GetLabelNo()];
            auto nextBB2 = (*(cfg->block))[((LabelOperand*)I->getTrueLabel())->GetLabelNo()];
            if(loop_nodes.find(nextBB1) == loop_nodes.end() || loop_nodes.find(nextBB2) == loop_nodes.end()){
                exit_nodes.insert(node);
            }
        }
    }
}

void NaturalLoopForest::combine_loops()
{
    std::set<LLVMBlock> header_set;
    std::set<NaturalLoop*> erase_loop_set;
    for(auto l:loops){
        if(header_set.find(l->header) != header_set.end()){
            erase_loop_set.insert(l);
            NaturalLoop* oldl = (header_loop_map.find(l->header))->second;
            for(auto l_nodes:l->loop_nodes){
                oldl->loop_nodes.insert(l_nodes);
            }
        }
        else{
            header_set.insert(l->header);
            header_loop_map.insert({l->header,l});
        }
    }
    
    for(auto l:erase_loop_set){
        loops.erase(l);
    }
}

bool judgeloop_contain(NaturalLoop* l1,NaturalLoop* l2) //judge if l1 contains l2
{
    for(auto l2_n:l2->loop_nodes){
        if(l1->loop_nodes.find(l2_n) == l1->loop_nodes.end()){
            return false;
        }
    }
    return true;
}



void NaturalLoopForest::build_loopforest()
{
    loopG.resize(loop_cnt+1);

    std::vector<std::vector<NaturalLoop*> > tmploopG;
    std::vector<std::pair<int,NaturalLoop*> > Indegree;
    tmploopG.resize(loop_cnt+1);
    Indegree.resize(loop_cnt+1);
    for(auto l1:loops){
        Indegree[l1->loop_id].second = l1;
        for(auto l2:loops){
            if(l1 == l2){continue;}
            if(judgeloop_contain(l1,l2)){
                tmploopG[l1->loop_id].push_back(l2);
                Indegree[l2->loop_id].first++;
            }
        }
    }

    std::queue<NaturalLoop*> q;

    for(auto L:Indegree){
        if(L.first == 0 && L.second){
            q.push(L.second);
        }
    }
    while(!q.empty()){
        NaturalLoop* x = q.front();
        q.pop();
        for(auto v:tmploopG[x->loop_id]){
            --Indegree[v->loop_id].first;
            if(Indegree[v->loop_id].first == 0){
                loopG[x->loop_id].push_back(v);
                v->loop_fa = x;
                q.push(v);
            }
        }
    }

}


void CFG::loop_find()
{
    loop_cnt = -1;
    for(auto b:*block){
        auto BB = b.second;
        int BB_id = BB->block_id;
        for(auto BB2:G[BB_id]){//BB->preBB  backedge
            if(if_dominate(BB2->block_id,BB_id)){
                NaturalLoop* l = new NaturalLoop();
                l->header = BB2;
                l->loop_id = ++loop_cnt;
                l->loop_nodes = find_nodes_inloop(this,BB,BB2);
                l->find_exit_nodes(this);
                loopforest.loops.insert(l);
            }
        }
    }

    loopforest.combine_loops();
    loopforest.build_loopforest();
}

