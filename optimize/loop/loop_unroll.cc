#include "../../include/cfg.h"
#include <functional>

// this pass will fully unroll the loop with constant iterations and small size(<= 3BB)
// the loop's instructions after unrolling <= 4096
void ConstantLoopFullyUnroll(CFG *C) {
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *, NaturalLoopForest &loop_forest,
                                                                             NaturalLoop *L) {
        for (auto lv : loop_forest.loopG[L->loop_id]) {
            dfs(C, loop_forest, lv);
        }
        L->ConstantLoopFullyUnroll(C);
    };

    for (auto l : C->LoopForest.loop_set) {
        if (l->fa_loop == nullptr) {
            dfs(C, C->LoopForest, l);
        }
    }
}

void NaturalLoop::ConstantLoopFullyUnroll(CFG *C) {
    if (scev.is_simpleloop == false) {
        return;
    }
    auto info = scev.forloop_info;
    if (info.lowerbound.type != OTHER || info.lowerbound.op1->GetOperandType() != BasicOperand::IMMI32) {
        return;
    }
    if (info.upperbound.type != OTHER || info.upperbound.op1->GetOperandType() != BasicOperand::IMMI32) {
        return;
    }
    if (info.step.type != OTHER || info.step.op1->GetOperandType() != BasicOperand::IMMI32) {
        return;
    }
    if (loop_nodes.size() > 3) {
        return;
    }
    int lb = ((ImmI32Operand *)info.lowerbound.op1)->GetIntImmVal();
    int ub = ((ImmI32Operand *)info.upperbound.op1)->GetIntImmVal();
    int d = ((ImmI32Operand *)info.step.op1)->GetIntImmVal();

    int iterations = (ub - lb) / d + 1;    // only estimate the iterations
    if (iterations <= 0) {
        return;    // this loop maybe dead loop, so we do not unroll this loop
    }

    // std::cerr<<lb<<" "<<ub<<" "<<d<<" "<<iterations<<"\n";
    int inst_number = 0;
    for (auto bb : loop_nodes) {
        inst_number += bb->Instruction_list.size();
    }
    if (iterations * inst_number > 4096) {
        return;
    }

    // now we can fully unroll the loop
}

// this pass will unroll other for-loop without constant iterations
/*
for(int i = l; i < u; i += 1){ BB }

for(int i = l; i + 4 < u; i += 4){ BB } BB,BB,......(<= 4times)
*/

void SimpleForLoopUnroll(CFG *C) {}

void NaturalLoop::SimpleForLoopUnroll(CFG *C) {}