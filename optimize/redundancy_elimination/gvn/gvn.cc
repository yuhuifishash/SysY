#include "../../../include/cfg.h"
#include "hash_table.h"
#include <deque>
// #define GVN_DEBUG

void SimpleDCE(CFG *C);

HashTable hashtable;
static std::set<int> arithset = {ADD, SUB, MUL, DIV, FADD, FSUB, FMUL, FDIV, MOD, BITXOR, GETELEMENTPTR};

void GlobalCodeMotion(CFG *C) {
#ifdef GVN_DEBUG
    std::cerr << C->function_def->GetFunctionName() << '\n';
#endif
    std::map<int, std::vector<Instruction>> usevector;
    std::map<int, int> usemindfn;
    std::map<int, int> usemaxdfn;
    std::map<int, int> dfnmap;       // label->dfn
    std::map<int, int> dclockmap;    // dfn->label
    std::map<int, int> depth;
    std::map<int, int> par;
    std::set<int> isoptimized;          // if one GVN is optimized, we don't need to optimize twice
    std::map<int, int> fstlabellnum;    // in the first iteration, the max num of GCM Instructions in one label is 3
    int dclock = 0;                     // dfn num
    auto blockmap = *C->block_map;
    hashtable.defineDFS(C);    // get resultmap
    auto DomTree = C->DomTree;
    auto G = DomTree.dom_tree;
    par[0] = -1;
    std::function<int(int, int)> LCA = [&](int ubbid, int vbbid) {
        if (depth[ubbid] < depth[vbbid]) {
            std::swap(ubbid, vbbid);
        }
        while (depth[ubbid] > depth[vbbid]) {
            ubbid = par[ubbid];
        }
        while (ubbid != vbbid) {
            ubbid = par[ubbid];
            vbbid = par[vbbid];
        }
        return ubbid;
    };
    std::function<void(int)> DFS1 = [&](int ubbid) {
        // update depth and parent of domtree
        auto ubb = blockmap[ubbid];
        dfnmap[ubbid] = ++dclock;
        dclockmap[dclock] = ubbid;
        for (int i = 0; i < G[ubbid].size(); ++i) {
            auto vbb = G[ubbid][i];
            auto vbbid = vbb->block_id;
            par[vbbid] = ubbid;
            depth[vbbid] = depth[ubbid] + 1;
            DFS1(vbbid);
        }
    };
    std::function<void(int)> DFS2 = [&](int ubbid) {
        // GVN and get min dfn and max dfn of Instructions
        auto ubb = blockmap[ubbid];
        auto it = ubb->Instruction_list.end();
        do {
            it--;
            auto I = *it;
            auto check = hashtable.lookupOrAdd(I);
            auto labelid = I->GetBlockID();
            auto labeldfn = dfnmap[labelid];
            if (arithset.find(I->GetOpcode()) != arithset.end()) {
                usevector[check].push_back(I);
                if (usemindfn.find(check) == usemindfn.end()) {
                    usemindfn[check] = usemaxdfn[check] = labeldfn;
                } else {
#ifdef GVN_DEBUG

#endif
                    usemindfn[check] = std::min(usemindfn[check], labeldfn);
                    usemaxdfn[check] = std::max(usemaxdfn[check], labeldfn);
                }
            } else if (I->GetOpcode() == PHI) {
                auto phiI = (PhiInstruction *)I;
                for (auto [labelop, valop] : phiI->GetPhiList()) {
                    if (valop->GetOperandType() != BasicOperand::REG) {
                        continue;
                    }
                    auto regop = (RegOperand *)valop;
                    auto regno = regop->GetRegNo();
                    if (hashtable.definemap.find(regno) == hashtable.definemap.end()) {
                        continue;
                    }
                    auto defI = hashtable.definemap[regno];
                    if (defI->GetOpcode() != GETELEMENTPTR && arithset.find(I->GetOpcode()) == arithset.end()) {
                        continue;
                    }
                    check = hashtable.lookupOrAdd(defI);
                    auto usedfn = dfnmap[((LabelOperand *)labelop)->GetLabelNo()];
                    if (usemindfn.find(check) == usemindfn.end()) {
                        usemindfn[check] = usemaxdfn[check] = usedfn;
                    } else {
                        usemindfn[check] = std::min(usemindfn[check], usedfn);
                        usemaxdfn[check] = std::max(usemaxdfn[check], usedfn);
                    }
                }
            }
        } while (it != ubb->Instruction_list.begin());

        for (int i = 0; i < G[ubbid].size(); ++i) {
            auto vbb = G[ubbid][i];
            auto vbbid = vbb->block_id;
            DFS2(vbbid);
        }
    };
    depth[0] = 0;
    DFS1(0);
    DFS2(0);

    bool changed = true;
    auto funcdefI = C->function_def;
    auto funcdefnum = funcdefI->formals_reg.size();
    bool isfirst = true;
    // GCM
    while (changed) {
        changed = false;
        for (auto [val, vec] : usevector) {
            if (vec.size() == 1 || isoptimized.find(val) != isoptimized.end()) {
                continue;
            }
            auto nowI = vec[0];
#ifdef GVN_DEBUG
// nowI->PrintIR(std::cerr);
// vec[1]->PrintIR(std::cerr);
// std::cerr<<val<<" "<<vec.size()<<" "<<nowI->GetBlockID()<<" "<<vec[1]->GetBlockID()<<" "<<'\n';
#endif
            bool nowcangcm = true;
            int deflabelmin = usemindfn[val];
            int deflabelmax = usemaxdfn[val];
            int dfnlca = LCA(dclockmap[deflabelmin], dclockmap[deflabelmax]);
            // get LCA of Instrutions

            for (auto useop : nowI->GetNonResultOperands()) {
                // check all of useop whether dominote Instructions
                if (useop->GetOperandType() != BasicOperand::REG) {
                    continue;
                }
                auto usereg = (RegOperand *)useop;
                auto useregno = usereg->GetRegNo();
                if (useregno >= funcdefnum) {
                    // useregno isn't formal_reg of function
                    // if useregno is formal_reg of function, userop dominate every label
                    if (hashtable.definemap.find(useregno) == hashtable.definemap.end()) {
                        continue;
                    }
                    auto useI = hashtable.definemap[useregno];
                    auto useval = hashtable.lookupOrAdd(useI);

                    if (useval == -1) {
                        nowcangcm = false;
                        break;
                    }
                    auto labelid = useI->GetBlockID();
                    if (!DomTree.IsDominate(labelid, dfnlca)) {
                        nowcangcm = false;
                        break;
                    }
                }
            }

            if (!nowcangcm) {
                continue;
            }
            changed = true;
            if (isfirst) {
                auto labelid = blockmap[dfnlca]->block_id;
                if (fstlabellnum.find(labelid) == fstlabellnum.end()) {
                    fstlabellnum[labelid] = 1;
                } else {
                    fstlabellnum[labelid]++;
                }
                if (fstlabellnum[labelid] > 3) {
                    continue;
                }
            }
            isoptimized.insert(val);
            auto &lcabb = blockmap[dfnlca];
            auto newI = nowI->CopyInstruction();
            if (newI->GetOpcode() == GETELEMENTPTR) {
                ((GetElementptrInstruction *)newI)->SetResultReg(GetNewRegOperand(++C->max_reg));
            } else {
                ((ArithmeticInstruction *)newI)->SetResultReg(GetNewRegOperand(++C->max_reg));
            }
            hashtable.lookupOrAdd(newI);
            hashtable.definemap[newI->GetResultRegNo()] = newI;
            std::map<int, int> replacemap;
            bool insertback = true;
            // if there exists old Instructions in the lcabb, we need to insert newI to the first position of old
            // Instrucionts else we just need to insert back
            for (auto replaceI : vec) {
                replacemap[replaceI->GetResultRegNo()] = newI->GetResultRegNo();
                if (replaceI->GetBlockID() == dfnlca) {
                    insertback = false;
                }
            }
#ifdef GVN_DEBUG
            for (auto II : vec) {
                II->PrintIR(std::cerr);
            }
            puts("---->");
            newI->PrintIR(std::cerr);
            puts("-------");
#endif
            if (insertback) {
                std::deque<Instruction> deq;
                auto oldI = lcabb->Instruction_list.back();
                deq.push_back(lcabb->Instruction_list.back());
                lcabb->Instruction_list.pop_back();
                if (oldI->GetOpcode() == BR_COND) {
                    deq.push_back(lcabb->Instruction_list.back());
                    lcabb->Instruction_list.pop_back();
                }
                lcabb->InsertInstruction(1, newI);
                while (!deq.empty()) {
                    lcabb->InsertInstruction(1, deq.back());
                    deq.pop_back();
                }
            } else {
                for (auto it = lcabb->Instruction_list.begin(); it != lcabb->Instruction_list.end(); ++it) {
                    if (replacemap.find((*it)->GetResultRegNo()) != replacemap.end()) {
                        lcabb->Instruction_list.insert(it, newI);
                        break;
                    }
                }
            }
            for (auto [id, bb] : *C->block_map) {
                for (auto &I : bb->Instruction_list) {
                    auto regno = I->GetResultRegNo();
                    if (replacemap.find(regno) != replacemap.end()) {
                        continue;
                    }
                    I->ReplaceRegByMap(replacemap);
                }
            }
        }
        isfirst = false;
    }
    SimpleDCE(C);
}