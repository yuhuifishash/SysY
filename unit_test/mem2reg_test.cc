#include "mem2reg_test.h"
extern LLVMIR llvm_IR;
void dfs_cfg(
            int cur,
            const std::vector<std::vector<LLVMBlock> >&theG,
            std::vector<int>&vsd
            ){
    vsd[cur] = 1;
    for(auto next_block:theG[cur]){
        std::cerr<<cur<<"->"<<next_block->block_id<<std::endl;
        if(vsd[next_block->block_id] == 0){
            dfs_cfg(cur,theG,vsd);
        }
    }
}
void Test_afterBuildCFG(){
    for(auto CFG_pair : llvm_IR.llvm_cfg){
        auto func_inst = CFG_pair.first;
        auto cfg = CFG_pair.second;
        std::cerr<<func_inst->get_Func_name()<<std::endl;
        int max_label_id = 0;
        for(auto block_pair:*(cfg->block)){
            max_label_id = max_label_id > block_pair.first? max_label_id:block_pair.first;
        }
        std::vector<int>vsd;
        for(int i=0;i<=max_label_id;i++){
            vsd.push_back(0);
        }
        std::cerr<<"G:\n";
        for(int i=0;i<=max_label_id;i++){
            for(auto arc : cfg->G[i]){
                std::cerr<<i<<"->"<<arc->block_id<<std::endl;
            }
        }
        std::cerr<<"invG:\n";
        for(int i=0;i<=max_label_id;i++){
            for(auto arc : cfg->invG[i]){
                std::cerr<<i<<"->"<<arc->block_id<<std::endl;
            }
        }
    }
}
void UnitTest_AfterBuildDomTree(){
    for(auto CFG_pair : llvm_IR.llvm_cfg){
        auto func_inst = CFG_pair.first;
        auto cfg = CFG_pair.second;
        std::cerr<<func_inst->get_Func_name()<<std::endl;
        int max_label_id = 0;
        for(auto block_pair:*(cfg->block)){
            max_label_id = max_label_id > block_pair.first? max_label_id:block_pair.first;
        }
        // std::cerr<<"building dom_tree\n";
        // cfg->build_dominator_tree();
        std::cerr<<"dom_tree:\n";
        for(int i=0;i<=max_label_id;i++){
            for(auto arc : cfg->dominator_tree[i]){
                std::cerr<<i<<"->"<<arc->block_id<<std::endl;
            }
        }
    }
}
void UnitTest_ConstructDomTree(){
    for(auto CFG_pair : llvm_IR.llvm_cfg){
        auto func_inst = CFG_pair.first;
        auto cfg = CFG_pair.second;
        std::cerr<<func_inst->get_Func_name()<<std::endl;
        int max_label_id = 0;
        for(auto block_pair:*(cfg->block)){
            max_label_id = max_label_id > block_pair.first? max_label_id:block_pair.first;
        }
        std::cerr<<"building dom_tree\n";
        cfg->build_dominator_tree();
        std::cerr<<"dom_tree:\n";
        for(int i=0;i<=max_label_id;i++){
            for(auto arc : cfg->dominator_tree[i]){
                std::cerr<<i<<"->"<<arc->block_id<<std::endl;
            }
        }
    }
}
void UnitTest_ifDominate(){
    for(auto CFG_pair : llvm_IR.llvm_cfg){
        auto func_inst = CFG_pair.first;
        auto cfg = CFG_pair.second;
        std::cerr<<func_inst->get_Func_name()<<std::endl;
        int max_label_id = 0;
        for(auto block_pair:*(cfg->block)){
            max_label_id = max_label_id > block_pair.first? max_label_id:block_pair.first;
        }
        std::cerr<<"building dom_tree\n";
        cfg->build_dominator_tree();
        std::cerr<<"dom_tree:\n";
        for(int i=0;i<=max_label_id;i++){
            for(auto arc : cfg->dominator_tree[i]){
                std::cerr<<i<<"->"<<arc->block_id<<std::endl;
            }
        }
        for(int i=0;i<=max_label_id;i++){
            if(cfg->idom[i]){
                std::cerr<<"idom "<<i<<":"<<cfg->idom[i]->block_id<<std::endl;
            }else{
                std::cerr<<"idom "<<i<<":NULL\n";
            }
        }
        std::cerr<<std::endl;
        for(int i=0;i<=max_label_id;i++){
            for(int j=0;j<=max_label_id;j++){
                if(cfg->block->find(i)!=cfg->block->end()&&cfg->block->find(j)!=cfg->block->end())
                    std::cerr<<i<<"dom"<<j<<":"<<cfg->if_dominate(i,j)<<std::endl;
            }
            std::cerr<<std::endl;
        }
        std::cerr<<"--------------\n";
    }
}
void UnitTest_DominateFrontier(){
    for(auto CFG_pair : llvm_IR.llvm_cfg){
        auto func_inst = CFG_pair.first;
        auto cfg = CFG_pair.second;
        std::cerr<<func_inst->get_Func_name()<<std::endl;
        int max_label_id = 0;
        for(auto block_pair:*(cfg->block)){
            max_label_id = max_label_id > block_pair.first? max_label_id:block_pair.first;
        }
        std::cerr<<"building dom_tree\n";
        cfg->build_dominator_tree();
        std::cerr<<"dom_tree:\n";
        for(int i=0;i<=max_label_id;i++){
            for(auto arc : cfg->dominator_tree[i]){
                std::cerr<<i<<"->"<<arc->block_id<<std::endl;
            }
        }
        // if(max_label_id == 8){
        //     std::set<int>in;
        //     in.insert(1);
        //     in.insert(3);
        //     in.insert(4);
        //     in.insert(5);
        //     for(auto DFblk:cfg->calc_DF(in)){
        //         std::cerr<<DFblk<<',';
        //     }
        //     std::cerr<<std::endl;
        // }
        for(int i=0;i<=max_label_id;i++){
            if(cfg->block->find(i)!=cfg->block->end()){
                std::set<int>in;
                in.insert(i);
                auto out = cfg->calc_DF(in);
                std::cerr<<i<<" DF:{";
                for(auto DFblk:out){
                    std::cerr<<DFblk<<',';
                }
                std::cerr<<"}\n";
            }
        }
        std::cerr<<"--------------\n";
    }
}

