#include "../machine_instruction_structures/machine.h"
#include "liveinterval.h"
template <class T> std::set<T> SetIntersect(const std::set<T> &a, const std::set<T> &b) {
    std::set<T> ret;
    for (auto x : b) {
        if (a.count(x) != 0) {
            ret.insert(x);
        }
    }
    return ret;
}

template <class T> std::set<T> SetUnion(const std::set<T> &a, const std::set<T> &b) {
    std::set<T> ret(a);
    for (auto x : b) {
        ret.insert(x);
    }
    return ret;
}

// a-b
template <class T> std::set<T> SetDiff(const std::set<T> &a, const std::set<T> &b) {
    std::set<T> ret(a);
    for (auto x : b) {
        ret.erase(x);
    }
    return ret;
}

std::set<int> MachinePhiInstruction::GetReadReg() { return std::set<int>(); }
std::set<int> MachinePhiInstruction::GetWriteReg() { return std::set<int>(); }

void Liveness::UpdateDefUse() {
    DEF.clear();
    USE.clear();

    auto mcfg = current_func->getMachineCFG();
    auto seq_it = mcfg->getSeqScanIterator();
    seq_it->open();
    while (seq_it->hasNext()) {
        auto node = seq_it->next();
        DEF[node->Mblock->label_id].clear();
        USE[node->Mblock->label_id].clear();

        auto &cur_def = DEF[node->Mblock->label_id];
        auto &cur_use = USE[node->Mblock->label_id];

        for (auto ins : *(node->Mblock)) {
            for (auto reg_r : ins->GetReadReg()) {
                if (cur_def.find(reg_r) == cur_def.end()) {
                    cur_use.insert(reg_r);
                }
            }
            for (auto reg_w : ins->GetWriteReg()) {
                if (cur_use.find(reg_w) == cur_use.end()) {
                    cur_def.insert(reg_w);
                }
            }
        }
    }
}

void Liveness::Execute() {
    UpdateDefUse();

    OUT.clear();
    IN.clear();

    auto mcfg = current_func->getMachineCFG();
    bool changed = 1;
    while (changed) {
        changed = 0;
        auto seq_it = mcfg->getSeqScanIterator();
        seq_it->open();
        while (seq_it->hasNext()) {
            auto node = seq_it->next();
            std::set<int> out;
            int cur_id = node->Mblock->label_id;
            for (auto succ : mcfg->GetSuccessorsByBlockId(cur_id)) {
                out = SetUnion<int>(out, IN[succ->Mblock->label_id]);
            }
            if (out != OUT[cur_id]) {
                OUT[cur_id] = out;
            }
            std::set<int> in = SetUnion<int>(USE[cur_id], SetDiff<int>(OUT[cur_id], DEF[cur_id]));
            if (in != IN[cur_id]) {
                changed = 1;
                IN[cur_id] = in;
            }
        }
    }
}