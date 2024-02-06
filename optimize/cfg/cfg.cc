#include "llvm_cfg.h"
#include "llvm_ir.h"
#include "Instruction.h"
#include "IRgen.h"
#include <bitset>

extern LLVMIR llvm_IR;

void LLVMIR::build_CFG()
{   
    for(auto& n:llvm_Function_BlockArr_map){
        CFG* cfg = new CFG();
        cfg->block = &n.second;
        cfg->func_ins = n.first;
        cfg->next_fp_offset_to_allocate = sp_offset_map[n.first];
        cfg->max_reg = max_reg_map[n.first];
        cfg->max_label = max_label_map[n.first];
        // std::cerr<<"build "<<cfg->func_ins->get_Func_name()<<"\n";
        cfg->build_CFG();
        // std::cerr<<"  .b\n";
        llvm_cfg[n.first] = cfg;
        //std::cerr<<n.first->get_Func_name()<<" "<<n.first<<" "<<llvm_cfg[n.first]<<"\n";
    }
}

void CFG::build_CFG()
{
    G.clear();
    invG.clear();

    G.resize(max_label+1);
    invG.resize(max_label+1);
    // std::cerr<<"Safe max_label = "<<max_label<<"\n";
    for(auto block_pair:*block){
        // std::cerr<<"Safe "<<block_pair.first<<" Size "<<block_pair.second<<"\n";
        Instruction blocklast = block_pair.second->Instruction_list[block_pair.second->Instruction_list.size()-1];
        // blocklast->printIR(std::cerr);
        if(blocklast->GetOpcode() == BR_UNCOND){
            BrUncondInstruction* bruncond = (BrUncondInstruction*)blocklast;
            int target_block_no = ((LabelOperand*)bruncond->getDestLabel())->GetLabelNo();
            G[block_pair.first].push_back((*block)[target_block_no]);
            invG[target_block_no].push_back(block_pair.second);
        }else
        if(blocklast->GetOpcode() == BR_COND){
            BrCondInstruction* brcond = (BrCondInstruction*)blocklast;
            int target_trueblock_no = ((LabelOperand*)brcond->getTrueLabel())->GetLabelNo();
            int target_falseblock_no = ((LabelOperand*)brcond->getFalseLabel())->GetLabelNo();
            G[block_pair.first].push_back((*block)[target_trueblock_no]);
            G[block_pair.first].push_back((*block)[target_falseblock_no]);
            invG[target_trueblock_no].push_back(block_pair.second);
            invG[target_falseblock_no].push_back(block_pair.second);
        }else{
            // std::cerr<<"not br\n";
        }
    }
}

void dfs_postorder(int cur,const std::vector<std::vector<LLVMBlock> >&G,std::vector<int>&result,std::vector<int>&vsd){
    vsd[cur] = 1;
    // std::cerr<<cur<<"\n";
    for(auto next_block:G[cur]){
        // std::cerr<<"    "<<next_block->block_id<<"\n";
        if(vsd[next_block->block_id] == 0){
            dfs_postorder(next_block->block_id,G,result,vsd);
        }
    }
    result.push_back(cur);
}


void CFG::build_dominator_tree()
{
    // prev(invG)
    // reverse PostOrder
    std::vector<int>PostOrder_id;
    std::vector<int>vsd;
    dominator_tree.clear();
    dominator_tree.resize(max_label+1);
    idom.clear();
    for(int i=0;i<=max_label;i++){
        vsd.push_back(0);
    }
    // std::cerr<<"dfs\n";
    dfs_postorder(0,G,PostOrder_id,vsd);
    // dom(u) = {u} | {& dom(v)}
        // Pseudo code
    std::bitset<65536>*indom;
    indom = new std::bitset<65536>[max_label+1];
    // dom[u][v] = 1 <==> v dom u <==> v is in set dom(u)
    indom[0][0] = 1;
    for(int i=1;i<=max_label;i++){
        for(int j=0;j<=max_label;j++){
            indom[i][j]=1;
        }
    }
    bool changed = 1;
    while(changed){
        changed = 0;
        //std::cerr<<"one iteration\n";
        for(std::vector<int>::reverse_iterator it = PostOrder_id.rbegin();it != PostOrder_id.rend();++it){
            auto u = *it;
            std::bitset<65536> new_dom_u;
            // Goal: calculate
            // dom(u) |= {u} | {& dom(v)}
            // First: 
            // dom(u) = {& dom(v)}, v is pre
            if(!invG[u].empty()){
                new_dom_u = indom[(*(invG[u].begin()))->block_id];
                for(auto v:invG[u]){
                    new_dom_u &= indom[v->block_id];
                }
            }
            // Second: 
            // dom(u) |= {u}
            new_dom_u[u] = 1;
            if(new_dom_u != indom[u]){
                indom[u] = new_dom_u;
                changed = 1;
            }
        }
    }
    //std::cerr<<"dom calculate safe\n";
    idom.clear();
    idom.resize(max_label+1);
    // Goal calculate all immediate dom(idom)
    for(auto block_pair : *block){
        auto u = block_pair.first;
        if(u == 0)continue;
        for(int v = 0;v <= max_label;v++){
            // if v idom u, v must dom u
            if(indom[u][v]){
                // dom(u) = {u,???,v,{domv path}}
                // dom(v) = {v,{domv path}}
                // ??? = NULL set if v idom u

                // equals dom(u)-dom(v)
                auto tmp = (indom[u] & indom[v])^indom[u];
                if(tmp.count()==1 && tmp[u]){
                    idom[u] = (*block)[v];
                    dominator_tree[v].push_back((*block)[u]);
                }
            }
        }
    }
    // delete[]indom;
    atdom = indom;
    // Dom Frontier DF
    // DF[x][y]: x dom prev(y), but (x==y or x not dom y)
    DF = new std::bitset<65536>[max_label+1];
    for(int i=0;i<G.size();i++){
        for(auto edg_end:G[i]){
            // foreach every edge a->b
            int a = i;
            int b = edg_end->block_id;
            // a dom prev(b)=a
            int x = a;
            // a==b or a not dom b
            while(x == b || if_dominate(x,b) == 0){
                DF[x][b] = 1;
                if(idom[x]!=NULL){
                    // idom(a) must dom prev(b)=a
                    x = idom[x]->block_id;
                }else{
                    // std::cerr<<"Meet null idom node "<<x<<std::endl;
                    break;
                }
            }
        }
    }
    calc_defs_uses();
}

bool CFG::if_dominate(int id1,int id2)
{
    return atdom[id2][id1];
}