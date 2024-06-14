#include "../../include/cfg.h"

static bool LoopContinuouslyCheck(NaturalLoop* L1, NaturalLoop* L2) {

}

//I1 and I2 must be GEP
static bool LoopAntiDepSingleInstCheck(NaturalLoop* L1, NaturalLoop* L2, Instruction* I1, Instruction* I2) {

}

static bool LoopAntiDependencyCheck(NaturalLoop* L1, NaturalLoop* L2) {

}

void LoopFusion(CFG *C) {
    for(auto l1:C->LoopForest.loop_set){
        for(auto l2:C->LoopForest.loop_set){
            if(l1 == l2){
                continue;
            }
        }
    }
}