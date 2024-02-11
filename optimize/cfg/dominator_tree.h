#ifndef DOMINATOR_TREE_H
#define DOMINATOR_TREE_H
#include <vector>
#include <bitset>
#include <set>
#include "basic_block.h"

class CFG;

class DominatorTree
{
public:
    std::vector<std::vector<LLVMBlock> > dom_tree{};
    std::vector<LLVMBlock> idom{};

    std::bitset<65536>* df;//The Dominance Frontier
    std::bitset<65536>* atdom;

    void BuildDominatorTree(CFG* C);
    std::set<int> GetDF(std::set<int> S);//return DF(S)  S = {id1,id2,id3,...}
    std::set<int> GetDF(int id);//return DF(id)
    bool IfDominate(int id1,int id2);//if blockid1 dominate blockid2, return true, else return false
};
#endif