#include "../../include/cfg.h"

static std::set<NaturalLoop*> FusionLoopSet;

static bool LoopContinuousCheck(NaturalLoop* L1, NaturalLoop* L2) {
    auto exit1 = *L1->exit_nodes.begin();
    auto header2 = L2->header;
    
    return false;
}

static bool LoopSameIterationsCheck(NaturalLoop* L1, NaturalLoop* L2) {
    return false;
}

//I1 and I2 must be GEP
static bool LoopAntiDepSingleInstCheck(NaturalLoop* L1, NaturalLoop* L2, Instruction* I1, Instruction* I2) {
    return false;
}

static bool LoopAntiDependencyCheck(NaturalLoop* L1, NaturalLoop* L2) {
    return false;
}

void LoopFusion(CFG *C) {
    FusionLoopSet.clear();

    bool changed = true;
    while(changed){
        changed = false;
        for(auto l1:C->LoopForest.loop_set){
            for(auto l2:C->LoopForest.loop_set){
                if(l1 == l2){
                    continue;
                }
                if(FusionLoopSet.find(l2) != FusionLoopSet.end()){//l2 is fused before
                    continue;
                }
                if(!l1->scev.is_simpleloop || !l2->scev.is_simpleloop){
                    continue;
                }
                if(!LoopContinuousCheck(l1,l2)){
                    continue;
                }
                
            }
        }
    }
}