#ifndef LOOP_H
#define LOOP_H

#include "llvm_cfg.h"
class CFG;

class NaturalLoop
{
public:
    std::set<LLVMBlock> loop_nodes;
    std::set<LLVMBlock> exit_nodes;
    std::vector<Instruction> InvariantInsList;
    LLVMBlock header;
    LLVMBlock preheader;
    int loop_id;
    NaturalLoop* loop_fa;
    void find_exit_nodes(CFG* cfg);
    void add_preheader(CFG* cfg);
};

class NaturalLoopForest
{
public:
    std::set<NaturalLoop*> loops;
    std::vector<std::vector<NaturalLoop*> > loopG;
    std::map<LLVMBlock,NaturalLoop*> header_loop_map;
    void combine_loops();
    void build_loopforest();
};

#endif