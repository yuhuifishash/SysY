#ifndef CFG_H
#define CFG_H

#include "../optimize/cfg/dominator_tree.h"
#include "../optimize/function/function_basicinfo.h"
#include "../optimize/loop/loop.h"
#include "SysY_tree.h"
#include "basic_block.h"
#include <bitset>
#include <iostream>
#include <map>
#include <queue>
#include <set>
#include <vector>

class CFG {
public:
    int max_label = 0;
    int max_reg = 0;
    FuncDefInstruction function_def;
    LLVMBlock ret_block;

    /*this is the pointer to the value of LLVMIR.function_block_map
      you can see it in the LLVMIR::CFGInit()*/
    std::map<int, LLVMBlock> *block_map;

    std::vector<std::vector<LLVMBlock>> G{};       // control flow graph
    std::vector<std::vector<LLVMBlock>> invG{};    // inverse control flow graph
    DominatorTree DomTree;
    DominatorTree PostDomTree;
    FunctionBasicInfo FunctionInfo;
    NaturalLoopForest LoopForest;

    void BuildCFG();
    void BuildDominatorTree() {
        DomTree.C = this;
        DomTree.BuildDominatorTree();

        PostDomTree.C = this;
        PostDomTree.BuildPostDominatorTree();
    }
    void BuildFunctionInfo();
    void BuildLoopInfo();

    // if blockid1 dominate blockid2, return true, else return false
    bool IsDominate(int id1, int id2) { return DomTree.IsDominate(id1, id2); }

    std::vector<LLVMBlock> GetPredecessor(LLVMBlock B);
    std::vector<LLVMBlock> GetPredecessor(int bbid);
    std::vector<LLVMBlock> GetSuccessor(LLVMBlock B);
    std::vector<LLVMBlock> GetSuccessor(int bbid);
    LLVMBlock GetBlock(int bbid);
    LLVMBlock NewBlock();

    /*B1  \                                   B1  \
      B2  -> B4   will be transformed to      B2  -> midB -> B5
      B3  /                                   B3  /

      this function will split the phi instructions and return midB

      %3 = phi [%0,L1],[%1,L2],[%2,L3]

      midB = L4 : %4 = phi [%0,L1],[%1,L2]
      %3 = phi [%4,L4],[%2,L3]
    */
    LLVMBlock InsertTransferBlock(std::set<LLVMBlock> &froms, LLVMBlock to);
    LLVMBlock InsertTransferBlock(LLVMBlock from, std::set<LLVMBlock> &tos);
};

#endif