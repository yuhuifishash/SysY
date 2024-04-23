#ifndef DOMINATOR_TREE_H
#define DOMINATOR_TREE_H
#include "../../include/basic_block.h"
#include <bitset>
#include <set>
#include <vector>

class CFG;

class DominatorTree {
public:
    CFG *C;
    std::vector<std::vector<LLVMBlock>> dom_tree{};
    std::vector<LLVMBlock> idom{};

    std::vector<std::bitset<65536>> df;    // The Dominance Frontier
    std::vector<std::bitset<65536>> atdom;

    void BuildDominatorTree();               // build the dominator tree of CFG* C
    std::set<int> GetDF(std::set<int> S);    // return DF(S)  S = {id1,id2,id3,...}
    std::set<int> GetDF(int id);             // return DF(id)
    bool IsDominate(int id1, int id2);       // if blockid1 dominate blockid2, return true, else return false
};
#endif