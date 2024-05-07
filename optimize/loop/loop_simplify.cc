#include "../../include/cfg.h"
#include <assert.h>
#include <functional>

void EliminateUselessPhi(CFG *C);
void LoopSimplify(CFG *C) {
    for (auto [id, bb] : *C->block_map) {
        bb->comment = "";
    }

    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *, NaturalLoopForest &loop_forest,
                                                                             NaturalLoop *L) {
        L->LoopSimplify(C);
        for (auto lv : loop_forest.loopG[L->loop_id]) {
            dfs(C, loop_forest, lv);
        }
    };

    for (auto l : C->LoopForest.loop_set) {
        if (l->fa_loop == nullptr) {
            dfs(C, C->LoopForest, l);
        }
    }

    EliminateUselessPhi(C);
    C->BuildDominatorTree();

    // for(auto loop:C->LoopForest.loop_set){
    //     loop->LoopSimplifyCheck(C);
    // }
}

void NaturalLoop::LoopSimplify(CFG *C) {
    AddPreheader(C);
    ExitInsert(C);
    SingleLatchInsert(C);
}

void NaturalLoop::SingleLatchInsert(CFG *C) {
    assert(latches.size() >= 1);

    auto new_latch = C->InsertTransferBlock(latches, header);
    // new_latch->comment = "latch" + std::to_string(loop_id);
    latches.clear();
    latches.insert(new_latch);
    loop_nodes.insert(new_latch);

    // update father loop's loop nodes
    auto now = this;
    while (now->fa_loop != nullptr) {
        now = now->fa_loop;
        now->loop_nodes.insert(new_latch);
    }
    // PrintLoopDebugInfo();
}

void NaturalLoop::ExitInsert(CFG *C) {
    exit_nodes.clear();
    exiting_nodes.clear();
    FindExitNodes(C);

    std::set<LLVMBlock> inloop_preblocks;
    std::map<LLVMBlock, LLVMBlock> exit_map;
    for (auto exit : exit_nodes) {
        inloop_preblocks.clear();
        bool is_dom_exit = true;
        for (auto preBB : C->GetPredecessor(exit)) {
            if (loop_nodes.find(preBB) != loop_nodes.end()) {
                inloop_preblocks.insert(preBB);    // in loop
            } else {                               // out of loop
                is_dom_exit = false;
            }
        }

        if (is_dom_exit) {
            continue;
        }
        auto new_exit = C->InsertTransferBlock(inloop_preblocks, exit);

        auto now = this;
        while (now->fa_loop != nullptr) {
            now = now->fa_loop;

            if (now->loop_nodes.find(exit) != now->loop_nodes.end()) {
                now->loop_nodes.insert(new_exit);
            }

            now->exit_nodes.clear();
            now->exiting_nodes.clear();
            now->FindExitNodes(C);
        }
        exit_map[exit] = new_exit;
    }

    for (auto [pre, now] : exit_map) {
        exit_nodes.erase(pre);
        exit_nodes.insert(now);
    }
}

void NaturalLoop::AddPreheader(CFG *C) {
    std::set<LLVMBlock> outloop_preblocks;
    for (auto preBB : C->GetPredecessor(header)) {
        if (loop_nodes.find(preBB) == loop_nodes.end()) {
            outloop_preblocks.insert(preBB);
        }
    }
    assert(outloop_preblocks.size() >= 1);
    if (outloop_preblocks.size() == 1) {
        auto preBB = *(outloop_preblocks.begin());
        // BB0 should not be preheader,
        // if preheader has multiple successors, we also need add transformBB to header
        if (preBB->block_id != 0 && C->GetSuccessor(preBB).size() == 1) {
            preheader = preBB;
            // preheader->comment = preheader->comment + "  preheader" + std::to_string(loop_id);
            return;
        }
    }

    auto new_pre = C->InsertTransferBlock(outloop_preblocks, header);
    preheader = new_pre;

    // update father loop's loop nodes
    auto now = this;
    while (now->fa_loop != nullptr) {
        now = now->fa_loop;
        now->loop_nodes.insert(new_pre);
    }
}

std::set<LLVMBlock> FindNodesInLoop(CFG *C, LLVMBlock n, LLVMBlock d);    // backedge n->d
void NaturalLoop::LoopSimplifyCheck(CFG *C) {
    // check single latch
    // PrintLoopDebugInfo();
    assert(latches.size() == 1);

    // check loop nodes with single latch
    auto S = FindNodesInLoop(C, *latches.begin(), header);
    assert(S.size() == loop_nodes.size());
    for (auto node : loop_nodes) {
        assert(S.find(node) != S.end());
    }

    // check preheader
    int pre_outloop_cnt = 0;
    for (auto bb : C->GetPredecessor(header)) {
        if (loop_nodes.find(bb) == loop_nodes.end()) {
            ++pre_outloop_cnt;
        }
    }
    assert(pre_outloop_cnt <= 1);

    // check exit
    for (auto exit : exit_nodes) {
        pre_outloop_cnt = 0;
        for (auto bb : C->GetPredecessor(exit)) {
            if (loop_nodes.find(bb) == loop_nodes.end()) {
                ++pre_outloop_cnt;
            }
        }
    }
    assert(pre_outloop_cnt == 0);
    std::cerr << "Pass LoopSimplify Test\n";
}