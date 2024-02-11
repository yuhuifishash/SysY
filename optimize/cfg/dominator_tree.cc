#include "dominator_tree.h"
#include "cfg.h"
#include "ir.h"

void LLVMIR::BuildDominatorTree()
{
    for(auto [defI,cfg]:llvm_cfg){
        cfg->BuildDominatorTree();
    }
}


void DominatorTree::BuildDominatorTree(CFG* C)
{

}

std::set<int> DominatorTree::GetDF(std::set<int> S)
{

}

std::set<int> DominatorTree::GetDF(int id)
{

}

bool DominatorTree::IfDominate(int id1,int id2)
{

}