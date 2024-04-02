#ifndef LOOP_H
#define LOOP_H

#include "../include/cfg.h"
#include "../alias_analysis/alias_analysis.h"
#include "scev/scev_expr.h"

class CFG;

class NaturalLoop
{
public:
    std::set<LLVMBlock> loop_nodes;
    std::set<LLVMBlock> exit_nodes;
    std::set<LLVMBlock> exiting_nodes;
    std::set<LLVMBlock> latches;
    LLVMBlock header;
    LLVMBlock preheader;
    int loop_id;

    //the loop does not have side_effect call, so we can licm some memory inst
    bool has_no_side_effect_call;

    //if is_rotate is true, the loop body must execute once or more
    bool is_rotate;
    
    //if is_lcssa is true, the var def in loop can not use outside the loop
    bool is_lcssa;
    std::vector<PhiInstruction*> lcssa_instlist;

    NaturalLoop* fa_loop = nullptr;

    SCEV scev;
    void ScalarEvolution(CFG* C);

    void FindExitNodes(CFG* C);

    /*the only predecessor of header node(out of loop)*/
    void AddPreheader(CFG* C);

    /*A single backedge (which implies that there is a single latch).*/
    void SingleLatchInsert(CFG* C);
    
    /*Dedicated exits. That is, no exit block for the loop has a predecessor that is outside the loop. 
    This implies that all exit blocks are dominated by the loop header.*/
    void ExitInsert(CFG* C);

    void LoopSimplify(CFG* C);
    void LoopSimplifyCheck(CFG* C);

    void LCSSA(CFG* C);
    void LCSSACheck(CFG* C);

    void LoopRotate(CFG* C);

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