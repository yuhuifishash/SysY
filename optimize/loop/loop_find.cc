#include "../../include/ir.h"
#include <stack>

std::set<LLVMBlock> FindNodesInLoop(CFG *C, LLVMBlock n, LLVMBlock d)    // backedge n->d
{
    std::set<LLVMBlock> loop_nodes;

    std::stack<LLVMBlock> S;

    loop_nodes.insert(n);
    loop_nodes.insert(d);

    if (n == d) {
        return loop_nodes;
    }

    S.push(n);
    while (!S.empty()) {
        LLVMBlock x = S.top();
        S.pop();
        for (auto preBB : C->invG[x->block_id]) {
            if (loop_nodes.find(preBB) == loop_nodes.end()) {
                loop_nodes.insert(preBB);
                S.push(preBB);
            }
        }
    }
    return loop_nodes;
}

void NaturalLoop::FindExitNodes(CFG *C) {
    for (auto node : loop_nodes) {
        if (node->Instruction_list.size() < 1) {
            continue;
        }
        auto Ins = *(node->Instruction_list.end() - 1);
        if (Ins->GetOpcode() == BR_UNCOND) {
            auto I = (BrUncondInstruction *)Ins;
            auto nextBB = (*(C->block_map))[I->GetTarget()];
            if (loop_nodes.find(nextBB) == loop_nodes.end()) {
                exiting_nodes.insert(node);
                exit_nodes.insert(nextBB);
            }
        } else if (Ins->GetOpcode() == RET) {
            exiting_nodes.insert(node);

        } else if (Ins->GetOpcode() == BR_COND) {
            auto I = (BrCondInstruction *)Ins;
            auto nextBB1 = (*(C->block_map))[((LabelOperand *)I->GetFalseLabel())->GetLabelNo()];
            auto nextBB2 = (*(C->block_map))[((LabelOperand *)I->GetTrueLabel())->GetLabelNo()];
            bool is_exit = false;
            if (loop_nodes.find(nextBB1) == loop_nodes.end()) {
                exit_nodes.insert(nextBB1);
                is_exit |= true;
            }
            if (loop_nodes.find(nextBB2) == loop_nodes.end()) {
                exit_nodes.insert(nextBB2);
                is_exit |= true;
            }

            if (is_exit) {
                exiting_nodes.insert(node);
            }
        }
    }
    // for(auto nodes:exiting_nodes){
    //     nodes->comment = nodes->comment + "  exiting" + std::to_string(loop_id);;
    // }
}

void NaturalLoopForest::CombineSameHeadLoop() {
    std::set<LLVMBlock> header_set;
    std::set<NaturalLoop *> erase_loop_set;
    for (auto l : loop_set) {
        if (header_set.find(l->header) != header_set.end()) {
            erase_loop_set.insert(l);
            NaturalLoop *oldl = (header_loop_map.find(l->header))->second;
            for (auto l_nodes : l->loop_nodes) {
                oldl->loop_nodes.insert(l_nodes);
            }
            for (auto latch_nodes : l->latches) {
                oldl->latches.insert(latch_nodes);
            }
        } else {
            header_set.insert(l->header);
            header_loop_map.insert({l->header, l});
        }
    }

    for (auto l : erase_loop_set) {
        loop_set.erase(l);
    }
}

bool JudgeLoopContain(NaturalLoop *l1, NaturalLoop *l2)    // judge if l1 contains l2
{
    for (auto l2_n : l2->loop_nodes) {
        if (l1->loop_nodes.find(l2_n) == l1->loop_nodes.end()) {
            return false;
        }
    }
    return true;
}

void NaturalLoopForest::BuildLoopForest() {
    loopG.resize(loop_cnt + 1);

    std::vector<std::vector<NaturalLoop *>> tmploopG;
    std::vector<std::pair<int, NaturalLoop *>> Indegree;
    tmploopG.resize(loop_cnt + 1);
    Indegree.resize(loop_cnt + 1);
    for (auto l1 : loop_set) {
        Indegree[l1->loop_id].second = l1;
        for (auto l2 : loop_set) {
            if (l1 == l2) {
                continue;
            }
            if (JudgeLoopContain(l1, l2)) {
                tmploopG[l1->loop_id].push_back(l2);
                Indegree[l2->loop_id].first++;
            }
        }
    }

    std::queue<NaturalLoop *> q;

    for (auto L : Indegree) {
        if (L.first == 0 && L.second) {
            q.push(L.second);
        }
    }
    while (!q.empty()) {
        NaturalLoop *x = q.front();
        q.pop();
        for (auto v : tmploopG[x->loop_id]) {
            --Indegree[v->loop_id].first;
            if (Indegree[v->loop_id].first == 0) {
                loopG[x->loop_id].push_back(v);
                v->fa_loop = x;
                q.push(v);
            }
        }
    }
}

void CFG::BuildLoopInfo() {
    LoopForest.header_loop_map.clear();
    LoopForest.loop_set.clear();
    LoopForest.loopG.clear();

    int loop_cnt = 0;
    for (auto [id, bb] : *block_map) {
        for (auto head_bb : G[id]) {    // bb->head_bb   backedge
            if (IsDominate(head_bb->block_id, id)) {
                NaturalLoop *l = new NaturalLoop();
                l->header = head_bb;
                l->latches.insert(bb);
                l->loop_id = loop_cnt++;
                l->loop_nodes = FindNodesInLoop(this, bb, head_bb);
                LoopForest.loop_set.insert(l);
            }
        }
    }
    LoopForest.loop_cnt = loop_cnt - 1;
    LoopForest.CombineSameHeadLoop();

    for (auto l : LoopForest.loop_set) {
        l->FindExitNodes(this);
        // l->header->comment = l->header->comment + "  header" + std::to_string(l->loop_id);
    }

    LoopForest.BuildLoopForest();
}

void LLVMIR::BuildLoopInfo() {
    for (auto [defI, cfg] : llvm_cfg) {
        cfg->BuildLoopInfo();

        // std::cerr<<defI->GetFunctionName()<<"  LoopInfo:\n";
        // for(auto loop:cfg->LoopForest.loop_set){
        //     loop->PrintLoopDebugInfo();
        // }
    }
}

void NaturalLoop::PrintLoopDebugInfo() {
    std::cerr << "\n";
    std::cerr << "loop:" << loop_id << "------------------------------------\n";
    std::cerr << "loop nodes: ";
    for (auto nodes : loop_nodes) {
        std::cerr << nodes->block_id << " ";
    }
    std::cerr << "\n";
    std::cerr << "preheader: " << preheader->block_id << "\n";
    std::cerr << "header: " << header->block_id << "\n";
    std::cerr << "latch: ";
    for (auto nodes : latches) {
        std::cerr << nodes->block_id << " ";
    }
    std::cerr << "\n";
    std::cerr << "exitings: ";
    for (auto nodes : exiting_nodes) {
        std::cerr << nodes->block_id << " ";
    }
    std::cerr << "\n";
    std::cerr << "exits: ";
    for (auto nodes : exit_nodes) {
        std::cerr << nodes->block_id << " ";
    }
    std::cerr << "\n";
    if (fa_loop) {
        std::cerr << "father loop " << fa_loop->loop_id << "\n";
    }
}
