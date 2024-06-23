#include "../../machine_instruction_structures/machine.h"
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

std::vector<Register *> MachinePhiInstruction::GetReadReg() {
    std::vector<Register *> ret;
    for (auto [label, op] : phi_list) {
        if (op->op_type == MachineBaseOperand::REG) {
            ret.push_back(&(((MachineRegister *)op)->reg));
        }
    }
    return ret;
}
std::vector<Register *> MachinePhiInstruction::GetWriteReg() { return std::vector<Register *>({&result}); }

void Liveness::UpdateDefUse() {
    DEF.clear();
    USE.clear();

    auto mcfg = current_func->getMachineCFG();
    auto seq_it = mcfg->getSeqScanIterator();
    seq_it->open();
    while (seq_it->hasNext()) {
        auto node = seq_it->next();
        DEF[node->Mblock->getLabelId()].clear();
        USE[node->Mblock->getLabelId()].clear();

        auto &cur_def = DEF[node->Mblock->getLabelId()];
        auto &cur_use = USE[node->Mblock->getLabelId()];

        for (auto ins : *(node->Mblock)) {
            for (auto reg_r : ins->GetReadReg()) {
                if (cur_def.find(*reg_r) == cur_def.end()) {
                    cur_use.insert(*reg_r);
                }
            }
            for (auto reg_w : ins->GetWriteReg()) {
                if (cur_use.find(*reg_w) == cur_use.end()) {
                    cur_def.insert(*reg_w);
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
            std::set<Register> out;
            int cur_id = node->Mblock->getLabelId();
            for (auto succ : mcfg->GetSuccessorsByBlockId(cur_id)) {
                out = SetUnion<Register>(out, IN[succ->Mblock->getLabelId()]);
            }
            if (out != OUT[cur_id]) {
                OUT[cur_id] = out;
            }
            std::set<Register> in = SetUnion<Register>(USE[cur_id], SetDiff<Register>(OUT[cur_id], DEF[cur_id]));
            if (in != IN[cur_id]) {
                changed = 1;
                IN[cur_id] = in;
            }
        }
    }
}