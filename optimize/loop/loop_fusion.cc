#include "../../include/cfg.h"
#include "../alias_analysis/alias_analysis.h"
#include <functional>

extern std::map<std::string, CFG *> CFGMap;
extern AliasAnalyser *alias_analyser;
/*reference: https://llvm.org/devmtg/2018-10/slides/Barton-LoopFusion.pdf*/

/*
if L1 dominates L2 and L2 post-dominates L1 then L1 and L2 are control-flow equivalen
for simplcity, L1's exit = L2's preheader
*/
static bool LoopContinuousCheck(CFG *C, NaturalLoop *L1, NaturalLoop *L2) {
    auto header1 = L1->header;
    auto header2 = L2->header;
    auto exit1 = *L1->exit_nodes.begin();
    auto preheader2 = L2->preheader;

    auto endI = exit1->Instruction_list.back();
    if (endI->GetOpcode() != BR_UNCOND) {
        return false;
    }
    if (exit1 != preheader2) {
        return false;
    }
    if (!C->IsDominate(header1->block_id, header2->block_id)) {
        return false;
    }
    if (!C->IsPostDominate(header2->block_id, header1->block_id)) {
        return false;
    }

    return true;
}

static bool LoopSameIterationsCheck(NaturalLoop *L1, NaturalLoop *L2) {
    auto info1 = L1->scev.forloop_info;
    auto info2 = L2->scev.forloop_info;

    // info1.lowerbound.PrintSCEVValue();std::cerr<<"\n";
    // info2.lowerbound.PrintSCEVValue();std::cerr<<"\n";
    // info1.upperbound.PrintSCEVValue();std::cerr<<"\n";
    // info2.upperbound.PrintSCEVValue();std::cerr<<"\n";
    // std::cerr<<info1.is_upperbound_closed<<" "<<info2.is_upperbound_closed<<"\n";
    // std::cerr<<info1.cond<<" "<<info2.cond<<"\n";
    bool tag0 = info1.cond == info2.cond;
    bool tag1 = info1.is_upperbound_closed == info2.is_upperbound_closed;
    bool tag2 = info1.lowerbound == info2.lowerbound;
    bool tag3 = info1.upperbound == info2.upperbound;
    bool tag4 = info1.step == info2.step;
    return tag0 && tag1 && tag2 && tag3 && tag4;
}

// I1 and I2 must be GEP
static bool LoopDepSingleInstCheck(NaturalLoop *L1, NaturalLoop *L2, Instruction I1, Instruction I2) {
    assert(I1->GetOpcode() == GETELEMENTPTR);
    assert(I2->GetOpcode() == GETELEMENTPTR);

    auto GEPI1 = (GetElementptrInstruction *)I1;
    auto GEPI2 = (GetElementptrInstruction *)I2;

    auto L1scev = L1->scev;
    auto L2scev = L2->scev;

    auto ptr1 = GEPI1->GetPtrVal(), ptr2 = GEPI2->GetPtrVal();
    if (ptr1 != ptr2) {
        return true;
    }
    auto idxes1 = GEPI1->GetIndexes();
    auto idxes2 = GEPI2->GetIndexes();
    if (idxes1.size() != idxes2.size()) {
        return true;
    }
    for (int i = 0; i < idxes1.size(); ++i) {
        auto idx1 = idxes1[i];
        auto idx2 = idxes2[i];
        if (idx1->GetOperandType() == BasicOperand::REG && idx2->GetOperandType() == BasicOperand::REG) {
            auto r1 = ((RegOperand *)idx1)->GetRegNo();
            auto r2 = ((RegOperand *)idx2)->GetRegNo();
            if (L1scev.SCEVMap.find(r1) == L1scev.SCEVMap.end()) {
                continue;
            }
            if (L2scev.SCEVMap.find(r2) == L2scev.SCEVMap.end()) {
                continue;
            }
            auto scev1 = L1scev.SCEVMap[r1];
            auto scev2 = L2scev.SCEVMap[r2];
            if (scev1->len != 2 || scev2->len != 2) {
                continue;
            }
            auto step1 = scev1->RecurExpr->st, step2 = scev2->RecurExpr->st;
            auto st1 = scev1->st, st2 = scev2->st;
            if (st1 == st2 && step1 == step2) {
                return false;
            }
        }
    }
    return true;
}

static bool LoopFusionSpecialCaseCheck(CFG *C, NaturalLoop *L1, NaturalLoop *L2) {
    /*
    L1: a[t] = a[t] + b[x];
    L2: a[s] = a[s] + c[y]; (t,s may not be induction variables)
    */
    std::vector<LoadInstruction *> LoadList1;
    StoreInstruction *StoreI1 = nullptr;
    std::vector<LoadInstruction *> LoadList2;
    StoreInstruction *StoreI2 = nullptr;

    for (auto n : L1->loop_nodes) {
        for (auto I : n->Instruction_list) {
            if (I->GetOpcode() == LOAD) {
                LoadList1.push_back((LoadInstruction *)I);
            } else if (I->GetOpcode() == STORE) {
                if (StoreI1 != nullptr) {
                    return false;
                }
                StoreI1 = (StoreInstruction *)I;
            } else if (I->GetOpcode() == CALL) {
                return false;
            }
        }
    }

    for (auto n : L2->loop_nodes) {
        for (auto I : n->Instruction_list) {
            if (I->GetOpcode() == LOAD) {
                LoadList2.push_back((LoadInstruction *)I);
            } else if (I->GetOpcode() == STORE) {
                if (StoreI2 != nullptr) {
                    return false;
                }
                StoreI2 = (StoreInstruction *)I;
            } else if (I->GetOpcode() == CALL) {
                return false;
            }
        }
    }

    if (StoreI1 == nullptr || StoreI2 == nullptr) {
        return false;
    }

    int L1_aliascnt = 0;
    for (auto LoadI : LoadList1) {
        auto ptr1 = LoadI->GetPointer();
        auto ptr2 = StoreI1->GetPointer();
        if (alias_analyser->QueryAlias(ptr1, ptr2, C) != AliasAnalyser::NoAlias) {
            if (L1_aliascnt > 0) {
                return false;
            }
            ++L1_aliascnt;
            if (ptr1 != ptr2) {
                return false;
            }
        }
    }

    int L2_aliascnt = 0;
    for (auto LoadI : LoadList2) {
        auto ptr1 = LoadI->GetPointer();
        auto ptr2 = StoreI2->GetPointer();
        if (alias_analyser->QueryAlias(ptr1, ptr2, C) != AliasAnalyser::NoAlias) {
            if (L2_aliascnt > 0) {
                return false;
            }
            ++L2_aliascnt;
            if (ptr1 != ptr2) {
                return false;
            }
        }
    }

    if (L1_aliascnt == 0 || L2_aliascnt == 0) {
        return false;
    }

    for (auto LoadI : LoadList1) {
        auto ptr1 = LoadI->GetPointer();
        auto ptr2 = StoreI2->GetPointer();
        if (alias_analyser->QueryAlias(ptr1, ptr2, C) != AliasAnalyser::NoAlias) {
            auto ptr3 = StoreI1->GetPointer();
            if (ptr3 != ptr1) {
                return false;
            }
        }
    }

    for (auto LoadI : LoadList2) {
        auto ptr1 = LoadI->GetPointer();
        auto ptr2 = StoreI1->GetPointer();
        if (alias_analyser->QueryAlias(ptr1, ptr2, C) != AliasAnalyser::NoAlias) {
            auto ptr3 = StoreI2->GetPointer();
            if (ptr3 != ptr1) {
                return false;
            }
        }
    }

    return true;
}

static bool LoopAntiDependencyCheck(CFG *C, NaturalLoop *L1, NaturalLoop *L2) {
    auto exit1 = *L1->exit_nodes.begin();
    auto exit2 = *L2->exit_nodes.begin();
    for (auto I : exit1->Instruction_list) {    // no lcssa
        if (I->GetOpcode() == PHI) {
            return false;
        } else {
            break;
        }
    }
    for (auto I : exit2->Instruction_list) {    // no lcssa
        if (I->GetOpcode() == PHI) {
            return false;
        } else {
            break;
        }
    }

    int header_phicnt1 = 0, header_phicnt2 = 0;
    for (auto I : L1->header->Instruction_list) {    // only one phi
        if (I->GetOpcode() == PHI) {
            ++header_phicnt1;
        } else {
            break;
        }
    }
    for (auto I : L2->header->Instruction_list) {    // only one phi
        if (I->GetOpcode() == PHI) {
            ++header_phicnt2;
        } else {
            break;
        }
    }
    if (header_phicnt1 > 1 || header_phicnt2 > 1) {
        return false;
    }

    // first we check some simple special case
    if (LoopFusionSpecialCaseCheck(C, L1, L2)) {
        return true;
    }

    // only fuse none-dependency loop L1 and L2 (for LoopParallel in next pass)
    // actually, none-Anti-dependency loop L1 and L2 can also be fused
    std::map<int, Instruction> ResultMap;
    std::vector<StoreInstruction *> StoreList1;
    std::vector<LoadInstruction *> LoadList1;
    std::vector<StoreInstruction *> StoreList2;
    std::vector<LoadInstruction *> LoadList2;

    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            int v = I->GetResultRegNo();
            if (v != -1) {    // result exists
                ResultMap[v] = I;
            }
        }
    }

    for (auto n : L1->loop_nodes) {
        for (auto I : n->Instruction_list) {
            if (I->GetOpcode() == LOAD) {
                LoadList1.push_back((LoadInstruction *)I);
            } else if (I->GetOpcode() == STORE) {
                StoreList1.push_back((StoreInstruction *)I);
            } else if (I->GetOpcode() == CALL) {
                return false;
            }
        }
    }
    for (auto n : L2->loop_nodes) {
        for (auto I : n->Instruction_list) {
            if (I->GetOpcode() == LOAD) {
                LoadList2.push_back((LoadInstruction *)I);
            } else if (I->GetOpcode() == STORE) {
                StoreList2.push_back((StoreInstruction *)I);
            } else if (I->GetOpcode() == CALL) {
                return false;
            }
        }
    }

    for (auto LoadI : LoadList1) {
        for (auto StoreI : StoreList2) {
            auto ptr1 = LoadI->GetPointer();
            auto ptr2 = StoreI->GetPointer();
            if (alias_analyser->QueryAlias(ptr1, ptr2, C) != AliasAnalyser::NoAlias) {
                // std::cerr<<ptr1<<" "<<ptr2<<"\n";
                // alias, may generate dependency
                if (ptr1->GetOperandType() == BasicOperand::GLOBAL || ptr2->GetOperandType() == BasicOperand::GLOBAL) {
                    return false;
                }
                auto GEPI1 = ResultMap[((RegOperand *)ptr1)->GetRegNo()];
                auto GEPI2 = ResultMap[((RegOperand *)ptr2)->GetRegNo()];
                if (GEPI1->GetOpcode() != GETELEMENTPTR || GEPI2->GetOpcode() != GETELEMENTPTR) {
                    return false;
                }
                if (LoopDepSingleInstCheck(L1, L2, GEPI1, GEPI2)) {
                    return false;
                };
            }
        }
    }

    for (auto LoadI : LoadList2) {
        for (auto StoreI : StoreList1) {
            auto ptr1 = LoadI->GetPointer();
            auto ptr2 = StoreI->GetPointer();
            if (alias_analyser->QueryAlias(ptr1, ptr2, C) != AliasAnalyser::NoAlias) {
                // std::cerr<<ptr1<<" "<<ptr2<<"\n";
                // alias, may generate dependency
                if (ptr1->GetOperandType() == BasicOperand::GLOBAL || ptr2->GetOperandType() == BasicOperand::GLOBAL) {
                    return false;
                }
                auto GEPI1 = ResultMap[((RegOperand *)ptr1)->GetRegNo()];
                auto GEPI2 = ResultMap[((RegOperand *)ptr2)->GetRegNo()];
                if (GEPI1->GetOpcode() != GETELEMENTPTR || GEPI2->GetOpcode() != GETELEMENTPTR) {
                    return false;
                }
                if (LoopDepSingleInstCheck(L1, L2, GEPI2, GEPI1)) {
                    return false;
                };
            }
        }
    }

    for (auto StoreI1 : StoreList1) {
        for (auto StoreI2 : StoreList2) {
            auto ptr1 = StoreI1->GetPointer();
            auto ptr2 = StoreI2->GetPointer();
            if (alias_analyser->QueryAlias(ptr1, ptr2, C) != AliasAnalyser::NoAlias) {
                // std::cerr<<ptr1<<" "<<ptr2<<"\n";
                // alias, may generate dependency
                if (ptr1->GetOperandType() == BasicOperand::GLOBAL || ptr2->GetOperandType() == BasicOperand::GLOBAL) {
                    return false;
                }
                auto GEPI1 = ResultMap[((RegOperand *)ptr1)->GetRegNo()];
                auto GEPI2 = ResultMap[((RegOperand *)ptr2)->GetRegNo()];
                if (GEPI1->GetOpcode() != GETELEMENTPTR || GEPI2->GetOpcode() != GETELEMENTPTR) {
                    return false;
                }
                if (LoopDepSingleInstCheck(L1, L2, GEPI1, GEPI2)) {
                    return false;
                };
            }
        }
    }

    return true;
}

static bool CheckCodeMotionBetweenLoop(CFG *C, NaturalLoop *L1, NaturalLoop *L2) {
    std::set<Instruction> L1MemWriteInstSet;
    auto midbb = L2->preheader;

    for (auto bb : L1->loop_nodes) {
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() == STORE) {
                L1MemWriteInstSet.insert(I);
            } else if (I->GetOpcode() == CALL) {
                auto CallI = (CallInstruction *)I;
                if (CFGMap.find(CallI->GetFunctionName()) == CFGMap.end()) {
                    return false;    // external call
                }
                auto targetcfg = CFGMap[CallI->GetFunctionName()];
                if (!alias_analyser->CFG_isIndependent(targetcfg)) {
                    return false;    // r/w memory or IO, we can not motion
                }
            }
        }
    }

    for (auto I : midbb->Instruction_list) {
        if (I->GetOpcode() == STORE) {
            return false;
        } else if (I->GetOpcode() == CALL) {
            auto CallI = (CallInstruction *)I;
            if (CFGMap.find(CallI->GetFunctionName()) == CFGMap.end()) {
                return false;    // external call
            }
            auto targetcfg = CFGMap[CallI->GetFunctionName()];
            if (!alias_analyser->CFG_isIndependent(targetcfg)) {
                return false;    // r/w memory or IO, we can not motion
            }
        } else if (I->GetOpcode() == LOAD) {
            auto LoadI = (LoadInstruction *)I;
            auto ptr = LoadI->GetPointer();
            for (auto StoreI : L1MemWriteInstSet) {
                if (alias_analyser->QueryInstModRef(StoreI, ptr, C) != AliasAnalyser::NoModRef) {
                    return false;
                }
            }
        }
    }

    auto end2I = midbb->Instruction_list.back();
    auto end1I = L1->preheader->Instruction_list.back();
    assert(end1I->GetOpcode() == BR_UNCOND);
    L1->preheader->Instruction_list.pop_back();

    for (auto I : midbb->Instruction_list) {
        if (I->GetOpcode() == BR_UNCOND) {
            break;
        }
        L1->preheader->InsertInstruction(1, I);
    }
    L1->preheader->InsertInstruction(1, end1I);
    L2->preheader->Instruction_list.clear();
    L2->preheader->InsertInstruction(1, end2I);

    return true;
}

static bool LoopFusion(CFG *C, NaturalLoop *L1, NaturalLoop *L2) {
    if (L1 == L2) {
        return false;
    }
    if (!L1->scev.is_simpleloop || !L2->scev.is_simpleloop) {
        return false;
    }
    if (!LoopSameIterationsCheck(L1, L2)) {
        return false;
    }
    if (!LoopContinuousCheck(C, L1, L2)) {
        return false;
    }
    if (!LoopAntiDependencyCheck(C, L1, L2)) {
        return false;
    }
    if (!CheckCodeMotionBetweenLoop(C, L1, L2)) {
        return false;
    }

    // now we can fuse the L1 and L2
    //  std::cerr<<L1->header->block_id<<" "<<L2->header->block_id<<"\n";

    // erase exiting1 -> latch1    erase latch2 -> header2
    // latch2 -> header1 (change phi's val)
    auto exiting1 = *L1->exiting_nodes.begin();
    auto exit1 = *L1->exit_nodes.begin();
    auto latch1 = *L1->latches.begin();
    auto latch2 = *L2->latches.begin();

    exiting1->Instruction_list.pop_back();
    exiting1->InsertInstruction(1, new BrUncondInstruction(GetNewLabelOperand(exit1->block_id)));

    auto latch2_endI = latch2->Instruction_list.back();
    assert(latch2_endI->GetOpcode() == BR_UNCOND);
    auto latch2_brI = (BrUncondInstruction *)latch2_endI;
    latch2_brI->SetTarget(GetNewLabelOperand(L1->header->block_id));

    for (auto I : L1->header->Instruction_list) {
        if (I->GetOpcode() == PHI) {
            auto PhiI = (PhiInstruction *)I;
            PhiI->SetNewFrom(latch1->block_id, latch2->block_id);
        } else {
            break;
        }
    }
    // all the use of phi_def in header2 to phi_def in header1 (only one phi(basic inductions))
    // L1's basic inv and L2's basic inv is same, so we can erase phi in header2
    auto header1_phiI = (PhiInstruction *)(*L1->header->Instruction_list.begin());
    auto header2_phiI = (PhiInstruction *)(*L2->header->Instruction_list.begin());
    std::map<int, int> regreplace_map;
    regreplace_map[header2_phiI->GetResultRegNo()] = header1_phiI->GetResultRegNo();
    L2->header->Instruction_list.pop_front();

    for (auto bb : L2->loop_nodes) {
        for (auto I : bb->Instruction_list) {
            I->ReplaceRegByMap(regreplace_map);
        }
    }

    C->block_map->erase(latch1->block_id);
    return true;
}

void LoopFusion(CFG *C) {
    std::map<NaturalLoop *, int> loop_depth_map;
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *C, NaturalLoopForest &loop_forest,
                                                                             NaturalLoop *L) {
        for (auto lv : loop_forest.loopG[L->loop_id]) {
            dfs(C, loop_forest, lv);
            loop_depth_map[lv] = loop_depth_map[L] + 1;
        }
    };

    for (auto l : C->LoopForest.loop_set) {
        if (l->fa_loop == nullptr) {
            dfs(C, C->LoopForest, l);
        }
    }

    std::set<NaturalLoop *> LoopFuseSet;
    for (auto l1 : C->LoopForest.loop_set) {
        if (LoopFuseSet.find(l1) != LoopFuseSet.end()) {
            continue;
        }
        for (auto l2 : C->LoopForest.loop_set) {
            if (loop_depth_map[l1] != loop_depth_map[l2]) {
                continue;
            }
            if (LoopFuseSet.find(l2) != LoopFuseSet.end()) {
                continue;
            }
            if (LoopFusion(C, l1, l2)) {
                LoopFuseSet.insert(l1);
                LoopFuseSet.insert(l2);
            }
        }
    }
    C->BuildCFG();
    C->BuildDominatorTree();
}