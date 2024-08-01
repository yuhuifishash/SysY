#include "../../include/cfg.h"
#include <functional>

// this pass will fully unroll the loop with constant iterations and small size(<= 3BB)
// the loop's instructions after unrolling <= 2048
void ConstantLoopFullyUnroll(CFG *C) {
    bool is_unroll = false;
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *C, NaturalLoopForest &loop_forest,
                                                                             NaturalLoop *L) {
        for (auto lv : loop_forest.loopG[L->loop_id]) {
            dfs(C, loop_forest, lv);
        }
        if (is_unroll == true) {
            return;
        }
        is_unroll = L->ConstantLoopFullyUnroll(C);
    };

    for (auto l : C->LoopForest.loop_set) {
        if (l->fa_loop == nullptr) {
            is_unroll = false;
            dfs(C, C->LoopForest, l);
        }
    }

    C->BuildCFG();
    C->BuildDominatorTree();
}

static bool IsLoopEnd(int i, int ub, IcmpCond cond) {
    assert(cond != eq || cond != ne);

    if (cond == sle) {
        if (i <= ub) {
            return false;
        }
    } else if (cond == sge) {
        if (i >= ub) {
            return false;
        }
    } else if (cond == sgt) {
        if (i > ub) {
            return false;
        }
    } else if (cond == slt) {
        if (i < ub) {
            return false;
        }
    } else {    // should not reach here
        assert(false);
    }

    return true;
}

// ture if successfully unroll
bool NaturalLoop::ConstantLoopFullyUnroll(CFG *C) {
    if (scev.is_simpleloop == false) {
        return false;
    }
    auto info = scev.forloop_info;
    if (info.lowerbound.type != OTHER || info.lowerbound.op1->GetOperandType() != BasicOperand::IMMI32) {
        return false;
    }
    if (info.upperbound.type != OTHER || info.upperbound.op1->GetOperandType() != BasicOperand::IMMI32) {
        return false;
    }
    if (info.step.type != OTHER || info.step.op1->GetOperandType() != BasicOperand::IMMI32) {
        return false;
    }
    if (loop_nodes.size() > 5) {
        return false;
    }
    int lb = ((ImmI32Operand *)info.lowerbound.op1)->GetIntImmVal();
    int ub = ((ImmI32Operand *)info.upperbound.op1)->GetIntImmVal();
    int d = ((ImmI32Operand *)info.step.op1)->GetIntImmVal();
    int can_eq = info.is_upperbound_closed;

    int iterations = (ub - lb) / d + 1 + can_eq;    // only estimate the iterations
    if (iterations <= 0 || 1ll * (ub - lb) * d < 0) {
        return false;    // this loop maybe dead loop, so we do not unroll this loop
    }

    int inst_number = 0;
    for (auto bb : loop_nodes) {
        inst_number += bb->Instruction_list.size();
    }
    if (iterations * inst_number > 1024) {
        return false;
    }

    int all_inst_number = 0;
    for (auto [id, bb] : *C->block_map) {
        all_inst_number += bb->Instruction_list.size();
    }
    if (all_inst_number >= 2048) {
        return false;
    }

    // now we can fully unroll the loop
    // std::cerr << "constant loop unroll  " << lb << " " << ub << " " << d << " " << info.cond << " " << iterations
    //           << "\n";

    // step.1 we need to find the lcssa variable in loop exit
    assert(exit_nodes.size() == 1);
    assert(exiting_nodes.size() == 1);
    assert(latches.size() == 1);
    auto exit = *exit_nodes.begin();
    auto exiting = *exiting_nodes.begin();

    // step.2 unroll the loop, first copy all the loop
    // we need to erase edge (exiting -> exit) and (latch -> header)
    // add edge (latch -> next header)
    // update the phi (preheader -> next header)

    LLVMBlock old_header = header;
    LLVMBlock old_exiting = exiting;
    LLVMBlock old_latch = *latches.begin();
    LLVMBlock old_preheader = preheader;
    std::set<LLVMBlock> old_loop_nodes = loop_nodes;
    // TODO("LoopUnroll Not Implemented");
    int i = lb;
    while (!IsLoopEnd(i, ub, info.cond)) {
        std::map<int, int> RegReplaceMap;
        std::map<int, int> LabelReplaceMap;
        LLVMBlock new_header = nullptr;
        LLVMBlock new_exiting = nullptr;
        LLVMBlock new_latch = nullptr;

        std::set<LLVMBlock> new_loop_nodes;

        for (auto bb : old_loop_nodes) {
            LLVMBlock newbb = C->NewBlock();
            new_loop_nodes.insert(newbb);
            LabelReplaceMap[bb->block_id] = newbb->block_id;

            if (bb == old_header) {
                new_header = newbb;
            }
            if (bb == old_exiting) {
                new_exiting = newbb;
            }
            if (bb == old_latch) {
                new_latch = newbb;
            }

            for (auto I : bb->Instruction_list) {
                auto nI = I->CopyInstruction();
                int res_regno = I->GetResultRegNo();
                if (res_regno != -1) {
                    RegReplaceMap[res_regno] = ++C->max_reg;
                }
                nI->ReplaceRegByMap(RegReplaceMap);
                newbb->Instruction_list.push_back(nI);
            }
        }

        LLVMBlock new_preheader = old_latch;

        for (auto bb : new_loop_nodes) {
            for (auto I : bb->Instruction_list) {
                I->ReplaceLabelByMap(LabelReplaceMap);
                I->ReplaceRegByMap(RegReplaceMap);
            }
        }
        for (auto I : exit->Instruction_list) {
            if (I->GetOpcode() != PHI) {
                break;
            }
            I->ReplaceLabelByMap(LabelReplaceMap);
            I->ReplaceRegByMap(RegReplaceMap);
        }

        // erase edge (old_exiting -> exit) and (old_latch -> old_header) (if exists)
        auto exiting_endI = *(old_exiting->Instruction_list.end() - 1);
        if (exiting_endI->GetOpcode() == BR_COND) {
            auto BrCondI = (BrCondInstruction *)exiting_endI;
            if (((LabelOperand *)BrCondI->GetTrueLabel())->GetLabelNo() == exit->block_id) {
                exiting_endI = new BrUncondInstruction(BrCondI->GetFalseLabel());

                old_exiting->Instruction_list.pop_back();
                old_exiting->Instruction_list.push_back(exiting_endI);
            } else if (((LabelOperand *)BrCondI->GetFalseLabel())->GetLabelNo() == exit->block_id) {
                exiting_endI = new BrUncondInstruction(BrCondI->GetTrueLabel());

                old_exiting->Instruction_list.pop_back();
                old_exiting->Instruction_list.push_back(exiting_endI);
            } else {
                assert(false);
            }
        }
        // because of LoopSimplify   latch's end Instruction must be BrUnCond
        auto latch_endI = *(old_latch->Instruction_list.end() - 1);
        assert(latch_endI->GetOpcode() == BR_UNCOND);

        for (int i = 0; i < old_header->Instruction_list.size(); ++i) {
            auto I = old_header->Instruction_list[i];
            auto nI = new_header->Instruction_list[i];
            if (I->GetOpcode() != PHI) {
                break;
            }
            assert(nI->GetOpcode() == PHI);
            auto PhiI = (PhiInstruction *)I;
            auto nPhiI = (PhiInstruction *)nI;

            auto val = PhiI->GetValOperand(old_latch->block_id);
            nPhiI->SetValOperand(old_preheader->block_id, val);
        }

        // add edge (old_latch -> new_header) and change the val
        for (auto I : old_header->Instruction_list) {
            if (I->GetOpcode() != PHI) {
                break;
            }
            auto PhiI = (PhiInstruction *)I;
            PhiI->ErasePhi(old_latch->block_id);
        }

        latch_endI = new BrUncondInstruction(GetNewLabelOperand(new_header->block_id));
        old_latch->Instruction_list.pop_back();
        old_latch->Instruction_list.push_back(latch_endI);

        for (auto I : new_header->Instruction_list) {
            if (I->GetOpcode() != PHI) {
                break;
            }
            auto PhiI = (PhiInstruction *)I;
            PhiI->SetNewFrom(old_preheader->block_id, old_latch->block_id);
        }

        old_header = new_header;
        old_exiting = new_exiting;
        old_latch = new_latch;
        old_preheader = new_preheader;
        old_loop_nodes = new_loop_nodes;
        i += d;
    }

    // step.3 the last loop iteration, we can't erase the edge(exiting -> exit)

    // erase the latch -> header
    for (auto I : old_header->Instruction_list) {
        if (I->GetOpcode() != PHI) {
            break;
        }
        auto PhiI = (PhiInstruction *)I;
        PhiI->ErasePhi(old_latch->block_id);
    }
    assert(old_latch->Instruction_list.size() == 1);
    C->block_map->erase(old_latch->block_id);

    // exiting -> exit
    auto exiting_endI = *(old_exiting->Instruction_list.end() - 1);
    if (exiting_endI->GetOpcode() == BR_COND) {
        auto BrCondI = (BrCondInstruction *)exiting_endI;
        if (((LabelOperand *)BrCondI->GetTrueLabel())->GetLabelNo() == exit->block_id) {
            exiting_endI = new BrUncondInstruction(BrCondI->GetTrueLabel());

            old_exiting->Instruction_list.pop_back();
            old_exiting->Instruction_list.push_back(exiting_endI);
        } else if (((LabelOperand *)BrCondI->GetFalseLabel())->GetLabelNo() == exit->block_id) {
            exiting_endI = new BrUncondInstruction(BrCondI->GetFalseLabel());

            old_exiting->Instruction_list.pop_back();
            old_exiting->Instruction_list.push_back(exiting_endI);
        } else {
            assert(false);
        }
    }
    return true;
}

// this pass will unroll other for-loop without constant iterations (only the loop without nesting)
// the step of loop must be constant
/*
for(int i = l; i < u; i += 1){ BB }

int i = l
for(; i + 4 < u; i += 4){ BB }
for(; i < u; i += 1){ BB }
*/

void SimpleForLoopUnroll(CFG *C) {
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *C, NaturalLoopForest &loop_forest,
                                                                             NaturalLoop *L) {
        for (auto lv : loop_forest.loopG[L->loop_id]) {
            dfs(C, loop_forest, lv);
        }
        if (C->LoopForest.loopG[L->loop_id].size() == 0) {    // no son loop
            L->SimpleForLoopUnroll(C);
        }
    };

    for (auto l : C->LoopForest.loop_set) {
        if (l->fa_loop == nullptr) {
            dfs(C, C->LoopForest, l);
        }
    }

    C->BuildCFG();
    C->BuildDominatorTree();
}

bool NaturalLoop::SimpleForLoopUnroll(CFG *C) {
    if (C->LoopForest.loopG[loop_id].size() > 0) {
        return false;
    }
    if (scev.is_simpleloop == false) {
        return false;
    }
    auto stepvalopt = scev.forloop_info.step.GetConstantValue();
    if (!stepvalopt.has_value()) {
        return false;
    }
    int stepval = *stepvalopt;
    if (stepval != 1) {
        return false;
    }
    int inst_number = 0;
    for (auto bb : loop_nodes) {
        inst_number += bb->Instruction_list.size();
    }
    if (inst_number > 50) {
        return false;
    }

    // now we only unroll the loop with step 1

    assert(exit_nodes.size() == 1);
    assert(exiting_nodes.size() == 1);
    assert(latches.size() == 1);
    auto exit = *exit_nodes.begin();
    auto exiting = *exiting_nodes.begin();

    LLVMBlock old_header = header;
    LLVMBlock old_exiting = exiting;
    LLVMBlock old_latch = *latches.begin();
    LLVMBlock old_preheader = preheader;
    std::set<LLVMBlock> old_loop_nodes = loop_nodes;
    // if iterations mod 4 is not 0, we need other loop to fix it
    std::set<LLVMBlock> remain_loop_nodes;
    LLVMBlock remain_header;
    LLVMBlock remain_latch;
    LLVMBlock remain_exiting;

    std::map<int, int> RemainRegReplaceMap;
    std::map<int, int> RemainLabelReplaceMap;
    for (auto bb : old_loop_nodes) {
        LLVMBlock newbb = C->NewBlock();
        remain_loop_nodes.insert(newbb);
        RemainLabelReplaceMap[bb->block_id] = newbb->block_id;

        if (bb == old_header) {
            remain_header = newbb;
        }
        if (bb == old_exiting) {
            remain_exiting = newbb;
        }
        if (bb == old_latch) {
            remain_latch = newbb;
        }

        for (auto I : bb->Instruction_list) {
            auto nI = I->CopyInstruction();
            int res_regno = I->GetResultRegNo();
            if (res_regno != -1) {
                RemainRegReplaceMap[res_regno] = ++C->max_reg;
            }
            nI->ReplaceRegByMap(RemainRegReplaceMap);
            newbb->Instruction_list.push_back(nI);
        }
    }
    for (auto bb : remain_loop_nodes) {
        for (auto I : bb->Instruction_list) {
            I->ReplaceLabelByMap(RemainLabelReplaceMap);
            I->ReplaceRegByMap(RemainRegReplaceMap);
        }
    }
    // change lcssa
    for (auto I : exit->Instruction_list) {
        if (I->GetOpcode() != PHI) {
            break;
        }
        I->ReplaceLabelByMap(RemainLabelReplaceMap);
        I->ReplaceRegByMap(RemainRegReplaceMap);
    }

    // exiting: i < n -> i < n - 4
    auto exitingI = *(old_exiting->Instruction_list.end() - 2);
    assert(exitingI->GetOpcode() == ICMP);
    auto IcmpI = (IcmpInstruction *)exitingI;
    auto op1 = IcmpI->GetOp1(), op2 = IcmpI->GetOp2();
    auto scev1 = scev.GetOperandSCEV(op1), scev2 = scev.GetOperandSCEV(op2);
    assert(scev1 != nullptr && scev2 != nullptr);
    if (scev1->len == 2 && scev2->len == 1) {
        auto AddI = new ArithmeticInstruction(ADD, I32, op2, new ImmI32Operand(-4), GetNewRegOperand(++C->max_reg));
        exiting->Instruction_list.insert(exiting->Instruction_list.end() - 2, AddI);
        IcmpI->SetOp2(GetNewRegOperand(C->max_reg));
    } else if (scev1->len == 1 && scev2->len == 2) {
        auto AddI = new ArithmeticInstruction(ADD, I32, op1, new ImmI32Operand(-4), GetNewRegOperand(++C->max_reg));
        exiting->Instruction_list.insert(exiting->Instruction_list.end() - 2, AddI);
        IcmpI->SetOp1(GetNewRegOperand(C->max_reg));
    } else {
        assert(false);
    }

    // add CondBlock   if(upperbound - lowerbound >= 4){ do{}while(i+4 < n)}  remain_loop
    // CondBlock -> remain_header || npreheader
    LLVMBlock CondBlock = C->NewBlock();
    LLVMBlock npreheader = C->NewBlock();
    preheader->Instruction_list.pop_back();
    preheader->InsertInstruction(1, new BrUncondInstruction(GetNewLabelOperand(CondBlock->block_id)));
    npreheader->InsertInstruction(1, new BrUncondInstruction(GetNewLabelOperand(header->block_id)));

    auto CondI1 = scev.forloop_info.lowerbound.GenerateValueInst(C);
    auto CondI2 = scev.forloop_info.upperbound.GenerateValueInst(C);
    auto CondI3 =
    new ArithmeticInstruction(SUB, I32, CondI2->GetResultReg(), CondI1->GetResultReg(), GetNewRegOperand(++C->max_reg));
    auto CondI4 =
    new IcmpInstruction(I32, CondI3->GetResultReg(), new ImmI32Operand(4), sge, GetNewRegOperand(++C->max_reg));
    auto CondI5 = new BrCondInstruction(CondI4->GetResultReg(), GetNewLabelOperand(npreheader->block_id),
                                        GetNewLabelOperand(remain_header->block_id));
    CondBlock->InsertInstruction(1, CondI1);
    CondBlock->InsertInstruction(1, CondI2);
    CondBlock->InsertInstruction(1, CondI3);
    CondBlock->InsertInstruction(1, CondI4);
    CondBlock->InsertInstruction(1, CondI5);
    // set header phi(set npreheader -> header  and  erase preheader->header)
    for (auto I : header->Instruction_list) {
        if (I->GetOpcode() != PHI) {
            break;
        }
        auto PhiI = (PhiInstruction *)I;
        PhiI->SetNewFrom(preheader->block_id, npreheader->block_id);
    }
    // set remain_header phi (CondBlock -> remain_header)
    for (auto I : remain_header->Instruction_list) {
        if (I->GetOpcode() != PHI) {
            break;
        }
        auto PhiI = (PhiInstruction *)I;
        PhiI->SetNewFrom(preheader->block_id, CondBlock->block_id);
    }

    preheader = old_preheader = npreheader;

    int i = 0;
    while (i < 3) {
        std::map<int, int> RegReplaceMap;
        std::map<int, int> LabelReplaceMap;
        LLVMBlock new_header = nullptr;
        LLVMBlock new_exiting = nullptr;
        LLVMBlock new_latch = nullptr;

        std::set<LLVMBlock> new_loop_nodes;

        for (auto bb : old_loop_nodes) {
            LLVMBlock newbb = C->NewBlock();
            new_loop_nodes.insert(newbb);
            LabelReplaceMap[bb->block_id] = newbb->block_id;

            if (bb == old_header) {
                new_header = newbb;
            }
            if (bb == old_exiting) {
                new_exiting = newbb;
            }
            if (bb == old_latch) {
                new_latch = newbb;
            }

            for (auto I : bb->Instruction_list) {
                auto nI = I->CopyInstruction();
                int res_regno = I->GetResultRegNo();
                if (res_regno != -1) {
                    RegReplaceMap[res_regno] = ++C->max_reg;
                }
                nI->ReplaceRegByMap(RegReplaceMap);
                newbb->Instruction_list.push_back(nI);
            }
        }

        LLVMBlock new_preheader = old_latch;

        for (auto bb : new_loop_nodes) {
            for (auto I : bb->Instruction_list) {
                I->ReplaceLabelByMap(LabelReplaceMap);
                I->ReplaceRegByMap(RegReplaceMap);
            }
        }

        // erase edge (old_exiting -> exit) and (old_latch -> old_header) (if exists)
        auto exiting_endI = *(old_exiting->Instruction_list.end() - 1);
        if (exiting_endI->GetOpcode() == BR_COND) {
            auto BrCondI = (BrCondInstruction *)exiting_endI;
            if (((LabelOperand *)BrCondI->GetTrueLabel())->GetLabelNo() == exit->block_id) {
                exiting_endI = new BrUncondInstruction(BrCondI->GetFalseLabel());

                old_exiting->Instruction_list.pop_back();
                old_exiting->Instruction_list.push_back(exiting_endI);
            } else if (((LabelOperand *)BrCondI->GetFalseLabel())->GetLabelNo() == exit->block_id) {
                exiting_endI = new BrUncondInstruction(BrCondI->GetTrueLabel());

                old_exiting->Instruction_list.pop_back();
                old_exiting->Instruction_list.push_back(exiting_endI);
            } else {
                assert(false);
            }
        }
        // because of LoopSimplify   latch's end Instruction must be BrUnCond
        auto latch_endI = *(old_latch->Instruction_list.end() - 1);
        assert(latch_endI->GetOpcode() == BR_UNCOND);

        for (int i = 0; i < old_header->Instruction_list.size(); ++i) {
            auto I = old_header->Instruction_list[i];
            auto nI = new_header->Instruction_list[i];
            if (I->GetOpcode() != PHI) {
                break;
            }
            assert(nI->GetOpcode() == PHI);
            auto PhiI = (PhiInstruction *)I;
            auto nPhiI = (PhiInstruction *)nI;

            auto val = PhiI->GetValOperand(old_latch->block_id);
            nPhiI->SetValOperand(old_preheader->block_id, val);
        }

        // add edge (old_latch -> new_header) and change the val
        for (auto I : old_header->Instruction_list) {
            if (I->GetOpcode() != PHI) {
                break;
            }
            auto PhiI = (PhiInstruction *)I;
            PhiI->ErasePhi(old_latch->block_id);
        }

        latch_endI = new BrUncondInstruction(GetNewLabelOperand(new_header->block_id));
        old_latch->Instruction_list.pop_back();
        old_latch->Instruction_list.push_back(latch_endI);

        for (auto I : new_header->Instruction_list) {
            if (I->GetOpcode() != PHI) {
                break;
            }
            auto PhiI = (PhiInstruction *)I;
            PhiI->SetNewFrom(old_preheader->block_id, old_latch->block_id);
        }

        old_header = new_header;
        old_exiting = new_exiting;
        old_latch = new_latch;
        old_preheader = new_preheader;
        old_loop_nodes = new_loop_nodes;
        i += 1;
    }

    std::vector<Operand> PhiValList;
    // erase the latch -> header
    for (auto I : old_header->Instruction_list) {
        if (I->GetOpcode() != PHI) {
            break;
        }
        // change phi vals
        auto PhiI = (PhiInstruction *)I;
        auto val = PhiI->GetValOperand(old_latch->block_id);
        PhiValList.push_back(val);
        // erase the phi
        PhiI->ErasePhi(old_latch->block_id);
    }

    for (int i = 0; i < PhiValList.size(); ++i) {
        auto I = header->Instruction_list[i];
        assert(I->GetOpcode() == PHI);
        auto PhiI = (PhiInstruction *)I;
        PhiI->InsertPhi(PhiValList[i], GetNewLabelOperand(old_latch->block_id));
    }

    // now we add edge(old_latch -> begin_header)
    assert(old_latch->Instruction_list.size() == 1);
    old_latch->Instruction_list.pop_back();
    old_latch->InsertInstruction(1, new BrUncondInstruction(GetNewLabelOperand(header->block_id)));

    // exiting -> new exit(mid_exit) -> remain_header
    auto mid_exit = C->NewBlock();
    mid_exit->InsertInstruction(1, new BrUncondInstruction(GetNewLabelOperand(remain_header->block_id)));
    auto exiting_endI = *(old_exiting->Instruction_list.end() - 1);
    if (exiting_endI->GetOpcode() == BR_COND) {
        auto BrCondI = (BrCondInstruction *)exiting_endI;
        if (((LabelOperand *)BrCondI->GetTrueLabel())->GetLabelNo() == exit->block_id) {
            BrCondI->SetTrueLabel(GetNewLabelOperand(mid_exit->block_id));
        } else if (((LabelOperand *)BrCondI->GetFalseLabel())->GetLabelNo() == exit->block_id) {
            BrCondI->SetFalseLabel(GetNewLabelOperand(mid_exit->block_id));
        } else {
            assert(false);
        }
    }

    // add phi from mid_exit -> remain_header (all the phi )
    for (int i = 0; i < remain_header->Instruction_list.size(); ++i) {
        auto I = remain_header->Instruction_list[i];
        auto oldI = header->Instruction_list[i];
        if (I->GetOpcode() != PHI) {
            break;
        }
        auto PhiI = (PhiInstruction *)I;
        auto oldPhiI = (PhiInstruction *)oldI;
        auto val = oldPhiI->GetValOperand(old_latch->block_id);
        PhiI->InsertPhi(val, GetNewLabelOperand(mid_exit->block_id));
    }

    return true;
}
