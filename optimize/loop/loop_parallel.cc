#include "../../include/cfg.h"
#include "../../include/ir.h"
#include <functional>

void AddParallelLib(LLVMIR *IR) {
    auto IsParallelBetterI = new FunctionDeclareInstruction(I32, "___is_parallel_loop_better");
    auto ThreadCreateI_111 = new FunctionDeclareInstruction(VOID, "___parallel_loop_constant_111", true);
    auto ThreadCreateI_101 = new FunctionDeclareInstruction(VOID, "___parallel_loop_constant_101", true);
    auto ThreadCreateI_000 = new FunctionDeclareInstruction(VOID, "___parallel_loop_constant_000", true);

    IsParallelBetterI->InsertFormal(I32);
    IsParallelBetterI->InsertFormal(I32);
    IsParallelBetterI->InsertFormal(I32);
    IsParallelBetterI->InsertFormal(I32);

    ThreadCreateI_111->InsertFormal(PTR);
    ThreadCreateI_111->InsertFormal(PTR);
    ThreadCreateI_111->InsertFormal(PTR);
    ThreadCreateI_111->InsertFormal(PTR);
    ThreadCreateI_111->InsertFormal(I32);
    ThreadCreateI_111->InsertFormal(I32);

    ThreadCreateI_101->InsertFormal(PTR);
    ThreadCreateI_101->InsertFormal(I32);
    ThreadCreateI_101->InsertFormal(I32);
    ThreadCreateI_101->InsertFormal(I32);
    ThreadCreateI_101->InsertFormal(I32);

    ThreadCreateI_000->InsertFormal(PTR);
    ThreadCreateI_000->InsertFormal(I32);
    ThreadCreateI_000->InsertFormal(I32);
    ThreadCreateI_000->InsertFormal(I32);
    ThreadCreateI_000->InsertFormal(I32);
    ThreadCreateI_000->InsertFormal(I32);

    IR->function_declare.push_back(IsParallelBetterI);
    IR->function_declare.push_back(ThreadCreateI_111);
    IR->function_declare.push_back(ThreadCreateI_101);
    IR->function_declare.push_back(ThreadCreateI_000);
}

bool StoreLoadDisJoint_LoopCheck(NaturalLoop *L, CFG *C) { return false; }

bool NaturalLoop::LoopDataDependenceTest(CFG *C) { return false; }

void LoopParallel(CFG *C) {
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *, NaturalLoopForest &loop_forest,
                                                                             NaturalLoop *L) {
        if (L->LoopParallel(C)) {    // if parallel, stop the dfs
            return;
        }
        for (auto lv : loop_forest.loopG[L->loop_id]) {
            dfs(C, loop_forest, lv);
        }
    };

    for (auto l : C->LoopForest.loop_set) {
        if (l->fa_loop == nullptr) {
            dfs(C, C->LoopForest, l);
        }
    }
}

bool NaturalLoop::LoopParallel(CFG *C) {
    if (!LoopDataDependenceTest(C)) {
        return false;
    }

    // no data dependence, now we can parallel

    return false;
}