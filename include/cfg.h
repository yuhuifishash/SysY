#ifndef CFG_H
#define CFG_H

#include <vector>
#include <queue>
#include <iostream>
#include <set>
#include <map>
#include <bitset>
#include "basic_block.h"
#include "SysY_tree.h"
#include "function_basicinfo.h"
#include "loop.h"
#include "dominator_tree.h"

class CFG
{   
public:
    int max_label = 0;
    int max_reg = 0;
    FuncDefInstruction function_def;

    /*this is the pointer to the value of LLVMIR.function_block_map
      you can see it in the LLVMIR::CFGInit()*/
    std::map<int, LLVMBlock>* block_map;
    
    std::vector<std::vector<LLVMBlock> > G{}; //control flow graph
    std::vector<std::vector<LLVMBlock> > invG{}; // inverse control flow graph
    DominatorTree DomTree;
    FunctionBasicInfo FunctionInfo;
    NaturalLoopForest LoopForest;

    void BuildCFG();
    void BuildDominatorTree(){
        DomTree.C = this;
        DomTree.BuildDominatorTree();
    }
    void BuildFunctionInfo();
    void BuildLoopInfo();

    //if blockid1 dominate blockid2, return true, else return false
    bool IfDominate(int id1,int id2){return DomTree.IfDominate(id1,id2);}

    std::vector<LLVMBlock> GetPredecessor(LLVMBlock B);
    std::vector<LLVMBlock> GetPredecessor(int bbid);
    std::vector<LLVMBlock> GetSuccessor(LLVMBlock B);
    std::vector<LLVMBlock> GetSuccessor(int bbid);
    LLVMBlock GetBlock(int bbid);
};


#endif