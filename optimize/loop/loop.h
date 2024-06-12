#ifndef LOOP_H
#define LOOP_H

#include "../../include/basic_block.h"
#include "scev/scev_expr.h"

class CFG;

class NaturalLoop {
public:
    std::set<LLVMBlock> loop_nodes;
    std::set<LLVMBlock> exit_nodes;
    std::set<LLVMBlock> exiting_nodes;
    std::set<LLVMBlock> latches;
    LLVMBlock header;
    LLVMBlock preheader;
    int loop_id;

    NaturalLoop *fa_loop = nullptr;

    SCEV scev;
    void ScalarEvolution(CFG *C);

    void FindExitNodes(CFG *C);

    /*the only predecessor of header node(out of loop)*/
    void AddPreheader(CFG *C);

    /*A single backedge (which implies that there is a single latch).*/
    void SingleLatchInsert(CFG *C);

    /*Dedicated exits. That is, no exit block for the loop has a predecessor that is outside the loop.
    This implies that all exit blocks are dominated by the loop header.*/
    void ExitInsert(CFG *C);

    void LoopSimplify(CFG *C);
    void LoopSimplifyCheck(CFG *C);

    void LCSSA(CFG *C);

    void LoopRotate(CFG *C);

    bool ConstantLoopFullyUnroll(CFG *C);
    bool SimpleForLoopUnroll(CFG *C);

    bool LoopIdomRecognize(CFG *C);

    void LoopGepStrengthReduce(CFG *C);

    bool LoopCarriedDependenceTest(CFG *C);
    bool LoopParallel(CFG *C);

    enum LoopDepResult{
        NONE = 0,
        FLOW = 1,
        ANTI = 2,
        ANY = 3,
    };
    //I1 and I2 must be GEP
    LoopDepResult CheckDependenceResult(Instruction I1, Instruction I2);

    void PrintLoopDebugInfo();
};

class NaturalLoopForest {
public:
    int loop_cnt = 0;
    std::set<NaturalLoop *> loop_set;
    std::map<LLVMBlock, NaturalLoop *> header_loop_map;    // <headBB,Loop>

    std::vector<std::vector<NaturalLoop *>> loopG;
    void CombineSameHeadLoop();
    void BuildLoopForest();
};

#endif