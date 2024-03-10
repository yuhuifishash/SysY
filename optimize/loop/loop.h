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

    NaturalLoop* fa_loop = nullptr;

    int loop_id;
    void FindExitNodes(CFG* C);

    /*the only predecessor of header node*/
    void AddPreheader(CFG* C);

    /*A single backedge (which implies that there is a single latch).*/
    void SingleLatchInsert(CFG* C);
    
    /*Dedicated exits. That is, no exit block for the loop has a predecessor that is outside the loop. 
    This implies that all exit blocks are dominated by the loop header.*/
    void ExitInsert(CFG* C);

    void LoopSimplify(CFG* C);

    void PrintLoopDebugInfo();
};

class NaturalLoopForest
{
public:
    int loop_cnt = 0;
    std::set<NaturalLoop*> loop_set;
    std::map<LLVMBlock,NaturalLoop*> header_loop_map;// <headBB,Loop>

    std::vector<std::vector<NaturalLoop*> > loopG;
    void CombineSameHeadLoop();
    void BuildLoopForest();
};

#endif