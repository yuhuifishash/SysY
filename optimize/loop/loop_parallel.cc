#include "../../include/cfg.h"
#include "../../include/ir.h"
#include "../alias_analysis/alias_analysis.h"
#include <functional>

// #define LOOP_PARALLEL_DEBUG

extern std::map<std::string, CFG *> CFGMap;
extern AliasAnalyser *alias_analyser;

void AddParallelLib(LLVMIR *IR) {
    // auto ThreadCreateI_111 = new FunctionDeclareInstruction(VOID, "___parallel_loop_constant_111", true);
    auto ThreadCreateI_100 = new FunctionDeclareInstruction(VOID, "___parallel_loop_constant_100", true);
    // auto ThreadCreateI_000 = new FunctionDeclareInstruction(VOID, "___parallel_loop_constant_000", true);

    // ThreadCreateI_111->InsertFormal(PTR);
    // ThreadCreateI_111->InsertFormal(PTR);
    // ThreadCreateI_111->InsertFormal(PTR);
    // ThreadCreateI_111->InsertFormal(PTR);
    // ThreadCreateI_111->InsertFormal(I32);
    // ThreadCreateI_111->InsertFormal(I32);

    ThreadCreateI_100->InsertFormal(PTR);
    ThreadCreateI_100->InsertFormal(I32);
    ThreadCreateI_100->InsertFormal(I32);
    ThreadCreateI_100->InsertFormal(I32);
    ThreadCreateI_100->InsertFormal(I32);

    // ThreadCreateI_000->InsertFormal(PTR);
    // ThreadCreateI_000->InsertFormal(I32);
    // ThreadCreateI_000->InsertFormal(I32);
    // ThreadCreateI_000->InsertFormal(I32);
    // ThreadCreateI_000->InsertFormal(I32);
    // ThreadCreateI_000->InsertFormal(I32);

    // IR->function_declare.push_back(ThreadCreateI_111);
    IR->function_declare.push_back(ThreadCreateI_100);
    // IR->function_declare.push_back(ThreadCreateI_000);
}

NaturalLoop::LoopDepResult NaturalLoop::CheckDependenceResult(Instruction I1, Instruction I2) {
    assert(I1->GetOpcode() == GETELEMENTPTR);
    assert(I2->GetOpcode() == GETELEMENTPTR);

    auto GEPI1 = (GetElementptrInstruction *)I1;
    auto GEPI2 = (GetElementptrInstruction *)I2;

    auto ptr1 = GEPI1->GetPtrVal(), ptr2 = GEPI2->GetPtrVal();
    if (ptr1 != ptr2) {
        return ANY;
    }
    auto idxes1 = GEPI1->GetIndexes();
    auto idxes2 = GEPI2->GetIndexes();
    if (idxes1.size() != idxes2.size()) {
        return ANY;
    }

    for (int i = 0; i < idxes1.size(); ++i) {
        auto idx1 = idxes1[i];
        auto idx2 = idxes2[i];
        if (idx1->GetOperandType() == BasicOperand::REG && idx2->GetOperandType() == BasicOperand::REG) {
            auto r1 = ((RegOperand *)idx1)->GetRegNo();
            auto r2 = ((RegOperand *)idx2)->GetRegNo();
            if (scev.SCEVMap.find(r1) == scev.SCEVMap.end()) {
                continue;
            }
            if (scev.SCEVMap.find(r2) == scev.SCEVMap.end()) {
                continue;
            }
            auto scev1 = scev.SCEVMap[r1];
            auto scev2 = scev.SCEVMap[r2];
            if (scev1->len != 2 || scev2->len != 2) {
                continue;
            }
            auto step1 = scev1->RecurExpr->st, step2 = scev2->RecurExpr->st;
            auto st1 = scev1->st, st2 = scev2->st;
            if (st1 == st2 && step1 == step2) {
                return NONE;
            }
        }
    }
    return ANY;
}

// if the loop can be parallel, return true
bool NaturalLoop::LoopCarriedDependenceTest(CFG *C) {
    std::map<int, Instruction> ResultMap;
    std::vector<LoadInstruction *> LoadList;
    std::vector<StoreInstruction *> StoreList;

    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            int v = I->GetResultRegNo();
            if (v != -1) {    // result exists
                ResultMap[v] = I;
            }
        }
    }

    for (auto n : loop_nodes) {
        for (auto I : n->Instruction_list) {
            if (I->GetOpcode() == LOAD) {
                LoadList.push_back((LoadInstruction *)I);
            } else if (I->GetOpcode() == STORE) {
                StoreList.push_back((StoreInstruction *)I);
            } else if (I->GetOpcode() == CALL) {
                return false;
            }
        }
    }
    for (auto LoadI : LoadList) {
        for (auto StoreI : StoreList) {
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
                // GEPI1->PrintIR(std::cerr);GEPI2->PrintIR(std::cerr);
                auto result = CheckDependenceResult(GEPI1, GEPI2);
                if (result != NONE) {
                    return false;
                }
            }
        }
    }

    for (auto StoreI1 : StoreList) {
        for (auto StoreI2 : StoreList) {
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
                auto result = CheckDependenceResult(GEPI1, GEPI2);
                if (result != NONE) {
                    return false;
                }
            }
        }
    }
    return true;
}

void LoopParallel(CFG *C, LLVMIR *IR) {
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *C, NaturalLoopForest &loop_forest,
                                                                             NaturalLoop *L) {
        if (L->LoopParallel(C, IR)) {    // if parallel, stop the dfs
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

bool NaturalLoop::LoopParallel(CFG *C, LLVMIR *IR) {
    if (scev.is_simpleloop == false) {
        return false;
    }

    if (!LoopCarriedDependenceTest(C)) {
        return false;
    }
    // no data dependence

    // now check the phi cnt in header
    int phi_cnt = 0;
    for (auto I : header->Instruction_list) {
        if (I->GetOpcode() == PHI) {
            ++phi_cnt;
        } else {
            break;
        }
    }
    if (phi_cnt > 1) {
        // TODO(): reduction operator (+,min,max)
        return false;
    }
    assert(exit_nodes.size() == 1);
    assert(exiting_nodes.size() == 1);
    assert(latches.size() == 1);
    auto exit = *exit_nodes.begin();
    auto exiting = *exiting_nodes.begin();
    auto latch = *latches.begin();
    // can not have lcssa
    for (auto I : exit->Instruction_list) {
        if (I->GetOpcode() == PHI) {
            return false;
        }
    }
    // now we only consider loop with step 1 and cond lt/le (TODO: parallel more loops)
    if (scev.forloop_info.cond != IcmpCond::sle && scev.forloop_info.cond != IcmpCond::slt) {
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

    // get the reg use in loop but def out of the loop
    std::map<int, Instruction> ResultMap;
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            I->SetBlockID(id);
            int v = I->GetResultRegNo();
            if (v != -1) {    // result exists
                ResultMap[v] = I;
            }
        }
    }
    std::set<int> i32set, i64set;
    std::set<int> float32set;
    std::map<int, int> regreplace_map;

    for (auto bb : loop_nodes) {
        for (auto I : bb->Instruction_list) {
            for (auto op : I->GetNonResultOperands()) {
                if (op->GetOperandType() == BasicOperand::REG) {
                    auto r = (RegOperand *)op;
                    int regno = r->GetRegNo();
                    if (ResultMap[regno]) {
                        auto outloop_defI = ResultMap[regno];
                        auto def_bbid = ResultMap[regno]->GetBlockID();
                        auto def_bb = (*C->block_map)[def_bbid];
                        if (loop_nodes.find(def_bb) == loop_nodes.end()) {
                            auto type = outloop_defI->GetResultType();
                            if (type == I32) {
                                i32set.insert(regno);
                            } else if (type == PTR) {
                                i64set.insert(regno);
                            } else if (type == FLOAT32) {
                                float32set.insert(regno);
                                i32set.insert(regno);
                            } else {
                                assert(false);
                            }
                        }
                    } else {
                        assert(regno < C->function_def->formals.size());
                        auto type = C->function_def->formals[regno];
                        if (type == I32) {
                            i32set.insert(regno);
                        } else if (type == PTR) {
                            i64set.insert(regno);
                        } else if (type == FLOAT32) {
                            float32set.insert(regno);
                            i32set.insert(regno);
                        } else {
                            assert(false);
                        }
                    }
                }
            }
        }
    }

    if (i32set.size() + i64set.size() >= 16) {
        return false;
    }

// now we can parallel the loop
#ifdef LOOP_PARALLEL_DEBUG
    std::cerr << "loop header: " << header->block_id << "  can parallel\n";
#endif
    // transform loop to function
    auto defI = new FunctionDefineInstruction(VOID, "___D86D10319A84A67B_" + C->function_def->GetFunctionName() +
                                                    std::to_string(header->block_id));
    int parallel_label = -1;
    int parallel_reg = C->max_reg + 1;
    defI->InsertFormal(PTR);
    IR->NewFunction(defI);
    auto entry = IR->NewBlock(defI, parallel_label);

    auto LoadThreadIdI = new LoadInstruction(I32, GetNewRegOperand(0), GetNewRegOperand(++parallel_reg));
    entry->InsertInstruction(1, LoadThreadIdI);

    auto GEP1I = new GetElementptrInstruction(I32, GetNewRegOperand(++parallel_reg), GetNewRegOperand(0));
    GEP1I->push_idx_imm32(1);
    entry->InsertInstruction(1, GEP1I);
    auto LoadStI = new LoadInstruction(I32, GEP1I->GetResultReg(), GetNewRegOperand(++parallel_reg));
    entry->InsertInstruction(1, LoadStI);

    auto GEP2I = new GetElementptrInstruction(I32, GetNewRegOperand(++parallel_reg), GetNewRegOperand(0));
    GEP2I->push_idx_imm32(2);
    entry->InsertInstruction(1, GEP2I);
    auto LoadEdI = new LoadInstruction(I32, GEP2I->GetResultReg(), GetNewRegOperand(++parallel_reg));
    entry->InsertInstruction(1, LoadEdI);

#ifdef LOOP_PARALLEL_DEBUG
    std::cerr << "variable use in loop but define out of loop: \n";
    std::cerr << "i32 ";
    for (auto regno : i32set) {
        std::cerr << regno << " ";
    }
    std::cerr << "\n";
    std::cerr << "i64 ";
    for (auto regno : i64set) {
        std::cerr << regno << " ";
    }
    std::cerr << "\n";
#endif

    int bias = 2;
    for (auto regno : i32set) {
        bias += 1;
        auto reg = GetNewRegOperand(regno);
        auto GEP3I = new GetElementptrInstruction(I32, GetNewRegOperand(++parallel_reg), GetNewRegOperand(0));
        GEP3I->push_idx_imm32(bias);
        entry->InsertInstruction(1, GEP3I);

        auto type = I32;
        if (float32set.find(regno) != float32set.end()) {
            type = FLOAT32;
        }
        auto LoadvalI = new LoadInstruction(type, GEP3I->GetResultReg(), GetNewRegOperand(++parallel_reg));
        entry->InsertInstruction(1, LoadvalI);
        regreplace_map[regno] = LoadvalI->GetResultRegNo();
    }
    bias += 1;
    for (auto regno : i64set) {
        auto reg = GetNewRegOperand(regno);
        auto GEP3I = new GetElementptrInstruction(I32, GetNewRegOperand(++parallel_reg), GetNewRegOperand(0));
        GEP3I->push_idx_imm32(bias);
        entry->InsertInstruction(1, GEP3I);
        auto LoadvalI = new LoadInstruction(PTR, GEP3I->GetResultReg(), GetNewRegOperand(++parallel_reg));
        entry->InsertInstruction(1, LoadvalI);
        regreplace_map[regno] = LoadvalI->GetResultRegNo();
        bias += 2;
    }

    // calculate the initval and endval of the loop
    auto st = LoadStI->GetResultReg();
    auto ed = LoadEdI->GetResultReg();
    auto thread = LoadThreadIdI->GetResultReg();
    /* if cond == slt
        part = (ed - st) / 4
        ST = part*thread + st
        ED = part*(thread + 1) + st
        if(thread == 3){ED = ed}*/
    /* if cond == sle
        part = (ed - st) / 4
        ST = part*thread + st
        ED = part*(thread + 1) + st - 1
        if(thread == 3){ED = ed}
    */
    auto SubI = new ArithmeticInstruction(SUB, I32, ed, st, GetNewRegOperand(++parallel_reg));
    auto partI =
    new ArithmeticInstruction(DIV, I32, SubI->GetResultReg(), new ImmI32Operand(4), GetNewRegOperand(++parallel_reg));
    auto stmulI = new ArithmeticInstruction(MUL, I32, partI->GetResultReg(), thread, GetNewRegOperand(++parallel_reg));
    auto STI = new ArithmeticInstruction(ADD, I32, stmulI->GetResultReg(), st, GetNewRegOperand(++parallel_reg));
    auto threadaddI =
    new ArithmeticInstruction(ADD, I32, thread, new ImmI32Operand(1), GetNewRegOperand(++parallel_reg));
    auto edmulI = new ArithmeticInstruction(MUL, I32, partI->GetResultReg(), threadaddI->GetResultReg(),
                                            GetNewRegOperand(++parallel_reg));

    ArithmeticInstruction *edtmpI = nullptr;
    ArithmeticInstruction *EDI = nullptr;
    if (scev.forloop_info.cond == slt) {
        EDI = new ArithmeticInstruction(ADD, I32, edmulI->GetResultReg(), st, GetNewRegOperand(++parallel_reg));
    } else {
        edtmpI = new ArithmeticInstruction(ADD, I32, edmulI->GetResultReg(), st, GetNewRegOperand(++parallel_reg));
        EDI = new ArithmeticInstruction(SUB, I32, edtmpI->GetResultReg(), new ImmI32Operand(1),
                                        GetNewRegOperand(++parallel_reg));
    }
    entry->InsertInstruction(1, SubI);
    entry->InsertInstruction(1, partI);
    entry->InsertInstruction(1, stmulI);
    entry->InsertInstruction(1, STI);
    entry->InsertInstruction(1, threadaddI);
    entry->InsertInstruction(1, edmulI);
    if (edtmpI != nullptr) {
        entry->InsertInstruction(1, edtmpI);
    }
    entry->InsertInstruction(1, EDI);

    auto threadcmpI = new IcmpInstruction(I32, thread, new ImmI32Operand(3), eq, GetNewRegOperand(++parallel_reg));
    auto branchst = IR->NewBlock(defI, parallel_label);
    auto branched = IR->NewBlock(defI, parallel_label);
    auto brcondI = new BrCondInstruction(threadcmpI->GetResultReg(), GetNewLabelOperand(branchst->block_id),
                                         GetNewLabelOperand(branched->block_id));
    entry->InsertInstruction(1, threadcmpI);
    entry->InsertInstruction(1, brcondI);

    branchst->InsertInstruction(1, new BrUncondInstruction(GetNewLabelOperand(branched->block_id)));
    auto EDPhiI = new PhiInstruction(I32, GetNewRegOperand(++parallel_reg));
    EDPhiI->InsertPhi(ed, GetNewLabelOperand(branchst->block_id));
    EDPhiI->InsertPhi(EDI->GetResultReg(), GetNewLabelOperand(entry->block_id));
    branched->InsertInstruction(1, EDPhiI);

    // add loop body
    LLVMBlock nheader, nlatch, nexiting;
    LLVMBlock npreheader = branched;
    std::set<LLVMBlock> nloop_nodes;

    std::map<int, int> labelreplace_map;
    parallel_label = C->max_label + 1;
    for (auto bb : loop_nodes) {
        auto nbb = IR->NewBlock(defI, parallel_label);
        if (bb == header) {
            nheader = nbb;
        }
        if (bb == latch) {
            nlatch = nbb;
        }
        if (bb == exiting) {
            nexiting = nbb;
        }

        nloop_nodes.insert(nbb);
        labelreplace_map[bb->block_id] = nbb->block_id;
        for (auto I : bb->Instruction_list) {
            auto nI = I->CopyInstruction();
            nI->ReplaceRegByMap(regreplace_map);
            nbb->InsertInstruction(1, nI);
        }
    }

    for (auto nbb : nloop_nodes) {
        for (auto I : nbb->Instruction_list) {
            I->ReplaceLabelByMap(labelreplace_map);
        }
    }

    // set new preheader and new st (branched -> nheader)
    for (auto I : nheader->Instruction_list) {
        if (I->GetOpcode() == PHI) {
            auto PhiI = (PhiInstruction *)I;
            PhiI->SetNewFrom(preheader->block_id, npreheader->block_id);
            PhiI->SetValOperand(npreheader->block_id, STI->GetResultReg());
        } else {
            break;
        }
    }
    branched->InsertInstruction(1, new BrUncondInstruction(GetNewLabelOperand(nheader->block_id)));

    // set new ed and add exit block(exiting -> exit)
    auto nexit = IR->NewBlock(defI, parallel_label);
    nexit->InsertInstruction(1, new RetInstruction(VOID, nullptr));
    auto exitingI = nexiting->Instruction_list.back();

    assert(exitingI->GetOpcode() == BR_COND);
    auto exitingbrI = (BrCondInstruction *)exitingI;

    labelreplace_map.clear();
    labelreplace_map[exit->block_id] = nexit->block_id;
    exitingbrI->ReplaceLabelByMap(labelreplace_map);

    auto exitingcmpI = (IcmpInstruction *)*(nexiting->Instruction_list.end() - 2);
    auto op1 = exitingcmpI->GetOp1();
    if (op1->GetOperandType() == BasicOperand::REG) {
        auto r = (RegOperand *)op1;
        if (r->GetRegNo() > C->max_reg) {
            exitingcmpI->SetOp1(EDPhiI->GetResultReg());
        }
    } else if (op1->GetOperandType() == BasicOperand::IMMI32) {
        exitingcmpI->SetOp1(EDPhiI->GetResultReg());
    } else {
        assert(false);
    }

    auto op2 = exitingcmpI->GetOp2();
    if (op2->GetOperandType() == BasicOperand::REG) {
        auto r = (RegOperand *)op2;
        if (r->GetRegNo() > C->max_reg) {
            exitingcmpI->SetOp2(EDPhiI->GetResultReg());
        }
    } else if (op2->GetOperandType() == BasicOperand::IMMI32) {
        exitingcmpI->SetOp2(EDPhiI->GetResultReg());
    } else {
        assert(false);
    }

    // add CFG
    CFG *cfg = new CFG();

    cfg->block_map = &IR->function_block_map[defI];
    cfg->function_def = defI;
    cfg->max_reg = parallel_reg;
    cfg->max_label = parallel_label;

    CFGMap[defI->GetFunctionName()] = cfg;
    IR->llvm_cfg[defI] = cfg;
    cfg->ret_block = nexit;

    cfg->BuildCFG();
    cfg->BuildDominatorTree();

    // add dynamic parallel check (preheader -> checkbb)
    // first calculate the loop depth
    std::map<NaturalLoop *, int> loop_depth_map;
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *C, NaturalLoopForest &loop_forest,
                                                                             NaturalLoop *L) {
        for (auto lv : loop_forest.loopG[L->loop_id]) {
            dfs(C, loop_forest, lv);
            loop_depth_map[L] = std::max(loop_depth_map[L], loop_depth_map[lv] + 1);
        }
        if (loop_forest.loopG[L->loop_id].size() == 0) {
            loop_depth_map[L] = 1;
        }
    };

    for (auto l : C->LoopForest.loop_set) {
        if (l->fa_loop == nullptr) {
            dfs(C, C->LoopForest, l);
        }
    }

    // then get the loop's real st and ed
    // get st from preheader and get ed from exiting
    Operand real_st = nullptr, real_ed = nullptr;
    auto headerPhiI = (PhiInstruction *)(*header->Instruction_list.begin());
    real_st = headerPhiI->GetValOperand(preheader->block_id);
    auto exitingcmpI2 = (IcmpInstruction *)(*(exiting->Instruction_list.end() - 2));
    op1 = exitingcmpI2->GetOp1();
    if (op1->GetOperandType() == BasicOperand::IMMI32) {
        real_ed = op1;
    } else if (op1->GetOperandType() == BasicOperand::REG) {
        auto rn = ((RegOperand *)op1)->GetRegNo();
        if (scev.InvariantSet.find(rn) != scev.InvariantSet.end()) {
            real_ed = op1;
        }
    }

    op2 = exitingcmpI2->GetOp2();
    if (op2->GetOperandType() == BasicOperand::IMMI32) {
        assert(real_ed == nullptr);
        real_ed = op2;
    } else if (op2->GetOperandType() == BasicOperand::REG) {
        auto rn = ((RegOperand *)op2)->GetRegNo();
        if (scev.InvariantSet.find(rn) != scev.InvariantSet.end()) {
            assert(real_ed == nullptr);
            real_ed = op2;
        }
    }
    /* cond:
        if(loop_depth < 4){
            iterations >= max(20,4*10^6 / loop_instnumber / C (C is const))
        }else{
            iterations >= 20
        }
    */
    int depth_const[5] = {0, 1, 500, 5000};
    int inst_number = 0;
    for (auto bb : loop_nodes) {
        inst_number += bb->Instruction_list.size();
    }
    int depth = loop_depth_map[this];
    auto Checkbb = C->NewBlock();
    auto iterI = new ArithmeticInstruction(SUB, I32, real_ed, real_st, GetNewRegOperand(++C->max_reg));
    Checkbb->InsertInstruction(1, iterI);
    if (depth < 4) {
        auto limit = std::max(20, 4000000 / inst_number / depth_const[depth]);
        auto condcmpI =
        new IcmpInstruction(I32, iterI->GetResultReg(), new ImmI32Operand(limit), slt, GetNewRegOperand(++C->max_reg));
        Checkbb->InsertInstruction(1, condcmpI);
    } else {
        auto condcmpI =
        new IcmpInstruction(I32, iterI->GetResultReg(), new ImmI32Operand(20), slt, GetNewRegOperand(++C->max_reg));
        Checkbb->InsertInstruction(1, condcmpI);
    }
    auto preheaderbrI = preheader->Instruction_list.back();
    assert(preheaderbrI->GetOpcode() == BR_UNCOND);
    auto preheaderuncondI = (BrUncondInstruction *)preheaderbrI;
    preheaderuncondI->SetTarget(GetNewLabelOperand(Checkbb->block_id));
    // checkbb -> parallel function call
    // checkbb -> header (not parallel)

    auto parallelbb = C->NewBlock();
    auto condbrI = new BrCondInstruction(GetNewRegOperand(C->max_reg), GetNewLabelOperand(header->block_id),
                                         GetNewLabelOperand(parallelbb->block_id));
    Checkbb->InsertInstruction(1, condbrI);

    // change phi in header
    for (auto I : header->Instruction_list) {
        if (I->GetOpcode() == PHI) {
            auto PhiI = (PhiInstruction *)I;
            PhiI->SetNewFrom(preheader->block_id, Checkbb->block_id);
        } else {
            break;
        }
    }

    // add parallel function
    auto parallelCallI = new CallInstruction(VOID, nullptr, "___parallel_loop_constant_100");
    parallelCallI->push_back_Parameter({PTR, GetNewGlobalOperand(defI->GetFunctionName())});
    parallelCallI->push_back_Parameter({I32, real_st});
    parallelCallI->push_back_Parameter({I32, real_ed});
    parallelCallI->push_back_Parameter({I32, new ImmI32Operand(i32set.size())});
    parallelCallI->push_back_Parameter({I32, new ImmI32Operand(i64set.size())});
    for (auto rn : i32set) {
        auto real_rn = rn;
        if (float32set.find(rn) != float32set.end()) {
            auto bitcastI = new BitCastInstruction(GetNewRegOperand(rn), GetNewRegOperand(++C->max_reg), FLOAT32, I32);
            real_rn = C->max_reg;
            parallelbb->InsertInstruction(1, bitcastI);
        }
        parallelCallI->push_back_Parameter({I32, GetNewRegOperand(real_rn)});
    }
    for (auto rn : i64set) {
        parallelCallI->push_back_Parameter({PTR, GetNewRegOperand(rn)});
    }

    parallelbb->InsertInstruction(1, parallelCallI);

    // parallelbb -> exit
    parallelbb->InsertInstruction(1, new BrUncondInstruction(GetNewLabelOperand(exit->block_id)));

    C->BuildCFG();
    C->BuildDominatorTree();
    return true;
}