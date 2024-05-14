#include "../../include/cfg.h"
#include <functional>

// this pass will fully unroll the loop with constant iterations and small size(<= 3BB)
// the loop's instructions after unrolling <= 2048
void ConstantLoopFullyUnroll(CFG *C) {
    bool is_unroll = false;
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *, NaturalLoopForest &loop_forest,
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

bool IsLoopEnd(int i, int ub, IcmpCond cond) {
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
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() == CALL) {
                return false;
            }
        }
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
    std::cerr << "constant loop unroll  " << lb << " " << ub << " " << d << " " << info.cond << " " << iterations
              << "\n";

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

// this pass will unroll other for-loop without constant iterations
/*
for(int i = l; i < u; i += 1){ BB }

for(int i = l; i + 4 < u; i += 4){ BB } BB,BB,......(<= 4times)
*/

void SimpleForLoopUnroll(CFG *C) {}

void NaturalLoop::SimpleForLoopUnroll(CFG *C) {}