#ifndef LOOP_H
#define LOOP_H

#include "cfg.h"
class CFG;

class NaturalLoop
{
public:
    std::set<LLVMBlock> loop_nodes;

    std::set<LLVMBlock> exit_nodes;
    std::set<LLVMBlock> exiting_nodes;
    std::set<LLVMBlock> latch;
    LLVMBlock header;
    LLVMBlock preheader;
    int loop_id;
    NaturalLoop* loop_fa;
    void FindExitNodes(CFG* C);
};

class NaturalLoopForest
{
public:
    int loop_cnt = 0;
    std::set<NaturalLoop*> loop_set;
    std::map<LLVMBlock,NaturalLoop*> header_loop_map;// <headBB,Loop>

    std::vector<std::vector<NaturalLoop*> > loopG;
    void CombineSameHeadLoop();
};

#endif