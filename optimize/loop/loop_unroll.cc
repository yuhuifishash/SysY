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
    if (loop_nodes.size() > 5) {
        return;
    }
    int lb = ((ImmI32Operand *)info.lowerbound.op1)->GetIntImmVal();
    int ub = ((ImmI32Operand *)info.upperbound.op1)->GetIntImmVal();
    int d = ((ImmI32Operand *)info.step.op1)->GetIntImmVal();

    int iterations = (ub - lb) / d + 1;    // only estimate the iterations
    if (iterations <= 0 || 1ll*(ub - lb)*d < 0) {
        return;    // this loop maybe dead loop, so we do not unroll this loop
    }

    std::cerr<<lb<<" "<<ub<<" "<<d<<" "<<iterations<<"\n";
    int inst_number = 0;
    for (auto bb : loop_nodes) {
        inst_number += bb->Instruction_list.size();
    }
    if (iterations * inst_number > 4096) {
        return;
    }
    // now we can fully unroll the loop

    // step.1 we need to find the lcssa variable in loop exit
    assert(exit_nodes.size() == 1);
    assert(exiting_nodes.size() == 1);
    assert(latches.size() == 1);
    auto exit = *exit_nodes.begin();
    auto exiting = *exiting_nodes.begin();

    std::set<Operand> LCSSAVarSet;
    std::map<int, int> LCSSAVarReplaceMap;

    for(auto I:exit->Instruction_list){
        if(I->GetOpcode() != PHI){
            break;
        }
        auto PhiI = (PhiInstruction*)I;
        auto v = PhiI->GetValOperand(exiting->block_id);
        if(v->GetOperandType() == BasicOperand::REG){
            LCSSAVarSet.insert(v);
        }
    }

    // step.2 unroll the loop, first copy all the loop
    // we need to erase edge (exiting -> exit) and (latch -> header)
    // add edge (latch -> next header)
    // erase the phi (preheader -> next header)
    // we also need to update LCSSAVarReplaceMap
    
    LLVMBlock old_header = header;
    LLVMBlock old_exiting = exiting;
    LLVMBlock old_latch = *latches.begin();
    std::set<LLVMBlock> old_loop_nodes = loop_nodes;
    TODO("LoopUnroll Not Implemented");

    while(1) {
        std::map<int, int> RegReplaceMap;
        LLVMBlock new_header = nullptr;
        LLVMBlock new_exiting = nullptr;
        LLVMBlock new_latch = nullptr;
        std::set<LLVMBlock> new_loop_nodes;
        for(auto bb:old_loop_nodes){
            LLVMBlock newbb = C->NewBlock();
            new_loop_nodes.insert(bb);

            for(auto I:bb->Instruction_list){
                auto nI = I->CopyInstruction();
                
            }
        }

        // erase edge (exiting -> exit) and (latch -> header) (if exists)


        // add edge (old_latch -> new_header)


        // erase the phi (preheader -> next header) (if exists)
        
    }

    // step.3 the last loop iteration, we can't erase the edge(exiting -> exit)
    // we also need to update LCSSAVarReplaceMap

    // step.4 erase the phi from preheader in loop header
    // step.5 
}

// this pass will unroll other for-loop without constant iterations
/*
for(int i = l; i < u; i += 1){ BB }

for(int i = l; i + 4 < u; i += 4){ BB } BB,BB,......(<= 4times)
*/

void SimpleForLoopUnroll(CFG *C) {}

void NaturalLoop::SimpleForLoopUnroll(CFG *C) {}