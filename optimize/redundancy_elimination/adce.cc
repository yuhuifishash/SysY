#include "../../include/cfg.h"
#include <functional>
// TODO():ADCE

/*this pass will do Aggressive Dead Code Elimination, it will eliminate useless Control Flow Structure
(such as useless loop)
*/
static std::vector<std::vector<LLVMBlock>> CDG;

static void BuildCDG(CFG *C){
    C->BuildCFG();
    C->BuildDominatorTree();
    std::vector<int> rd;
    auto G = C->G;
    auto invG = C->invG;
    auto DomTree = C->DomTree;
    auto PostDomTree = C->PostDomTree;
    auto blockmap = (*C->block_map);
    CDG.resize(C->max_label + 2);
    rd.resize(C->max_label + 1, 0);
    //CFG map
    // puts("CFG:");
    
    // for(int i = 0;i <= C->max_label;++i){
    //     for(int j=0;j< G[i].size();++j){
    //         std::cerr<<i<<"->"<<G[i][j]->block_id<<'\n';
    //     }
    // }

    // puts("PostDom:");
    // for(int i = 0;i <= C->max_label;++i){
    //     auto dom = PostDomTree.dom_tree[i];
    //     for(int j=0;j< dom.size();++j){
    //         std::cerr<<i<<"->"<<dom[j]->block_id<<'\n';
    //     }
    // }

    // puts("CDG:");
    for(int i = 0;i <= C->max_label;++i){
        auto domFrontier = PostDomTree.GetDF(i);
        for(auto vbbid:domFrontier){
            // std::cerr<<i<<" "<<C->max_label<<" "<<domFrontier.size()<<" "<<vbbid<<'\n';
            // CDG[i].push_back(blockmap[vbbid]);
            CDG[vbbid].push_back(blockmap[i]);
            if(vbbid != i){
                rd[i]++;
            }
            // std::cerr<<vbbid<<" - > "<<i<<'\n';
        }
    }
    for(int i = 0;i <= C->max_label;++i){
        if(!rd[i]){
            CDG[C->max_label + 1].push_back(blockmap[i]);
        }
    }
}
void AggressiveDeadCodeElimination(CFG *C) { 
    // TODO("AggressiveDeadCodeElimination"); 
    BuildCDG(C);
}