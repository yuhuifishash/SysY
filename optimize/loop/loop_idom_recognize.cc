#include "../../include/cfg.h"
#include "scev/scev_expr.h"
#include <functional>

static std::map<int, Instruction> ResultMap;

void LoopIdomRecognize(CFG *C) {
    ResultMap.clear();
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            int v = I->GetResultRegNo();
            if (v != -1) {    // result exists
                ResultMap[v] = I;
            }
        }
    }

    bool is_recognize = false;
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *C, NaturalLoopForest &loop_forest,
                                                                             NaturalLoop *L) {
        for (auto lv : loop_forest.loopG[L->loop_id]) {
            dfs(C, loop_forest, lv);
        }
        if (is_recognize == true) {
            return;
        }
        is_recognize = L->LoopIdomRecognize(C);
    };

    for (auto l : C->LoopForest.loop_set) {
        if (l->fa_loop == nullptr) {
            is_recognize = false;
            dfs(C, C->LoopForest, l);
        }
    }

    C->BuildCFG();
    C->BuildDominatorTree();
}

static bool IsLoopSideEffect(CFG *C, NaturalLoop *L) {
    for (auto n : L->loop_nodes) {
        for (auto I : n->Instruction_list) {
            if (I->GetOpcode() == STORE) {
                return true;
            } else if (I->GetOpcode() == CALL) {
                return true;
            }
        }
    }
    return false;
}

static Operand GetLoopIterations(CFG *C, NaturalLoop *L) {
    auto lb = L->scev.forloop_info.lowerbound;
    auto ub = L->scev.forloop_info.upperbound;
    auto step = L->scev.forloop_info.step;
    if (step.type != OTHER || step.op1->GetOperandType() != BasicOperand::IMMI32) {
        return nullptr;
    }
    if (((ImmI32Operand *)step.op1)->GetIntImmVal() != 1) {
        return nullptr;
    }
    auto tmpI = L->preheader->Instruction_list.back();
    L->preheader->Instruction_list.pop_back();
    auto I1 = ub.GenerateValueInst(C);
    auto I2 = lb.GenerateValueInst(C);
    L->preheader->Instruction_list.push_back(I1);
    L->preheader->Instruction_list.push_back(I2);
    auto res1 = I1->GetResultReg();
    auto res2 = I2->GetResultReg();
    if (L->scev.forloop_info.is_upperbound_closed) {
        // ub - (lb - 2)
        auto I3 = new ArithmeticInstruction(SUB, I32, res2, new ImmI32Operand(2), GetNewRegOperand(++C->max_reg));
        L->preheader->Instruction_list.push_back(I3);
        auto I4 = new ArithmeticInstruction(SUB, I32, res1, I3->GetResultReg(), GetNewRegOperand(++C->max_reg));
        L->preheader->Instruction_list.push_back(I4);
    } else {
        // ub - (lb - 1)
        auto I3 = new ArithmeticInstruction(SUB, I32, res2, new ImmI32Operand(1), GetNewRegOperand(++C->max_reg));
        L->preheader->Instruction_list.push_back(I3);
        auto I4 = new ArithmeticInstruction(SUB, I32, res1, I3->GetResultReg(), GetNewRegOperand(++C->max_reg));
        L->preheader->Instruction_list.push_back(I4);
    }
    L->preheader->Instruction_list.push_back(tmpI);

    return GetNewRegOperand(C->max_reg);
}
/*
c is positive const
p is positive const
S = 0
i = l
do{
    S += c;
    S %= p;
    i = i + 1;
}while(i < u)
----------------------------------------
S = S0 + 1ll*(u-l)*c%p
*/

static bool LoopReduceSimpleAddMod(CFG *C, NaturalLoop *L) {
    if (!L->scev.is_simpleloop) {
        return false;
    }
    if (L->loop_nodes.size() != 2) {    // empty latch
        return false;
    }
    assert(L->exit_nodes.size() == 1);
    auto exit = *L->exit_nodes.begin();
    assert(L->latches.size() == 1);
    auto latch = *L->latches.begin();
    assert(L->exiting_nodes.size() == 1);
    auto exiting = *L->exiting_nodes.begin();

    if (latch->Instruction_list.size() >= 2) {
        return false;
    }

    assert(C->IsDominate(L->preheader->block_id, exit->block_id));

    // check header
    int header_phicnt = 0;
    PhiInstruction *SI = nullptr;
    for (auto I : L->header->Instruction_list) {
        if (I->GetOpcode() == PHI) {
            ++header_phicnt;
            auto res = I->GetResultRegNo();
            if (L->scev.SCEVMap.find(res) == L->scev.SCEVMap.end()) {
                SI = (PhiInstruction *)I;
            }
        } else {
            break;
        }
    }
    if (header_phicnt != 2) {
        return false;
    }

    if (SI == nullptr) {
        return false;
    }

    auto val2 = SI->GetValOperand(latch->block_id);
    if (val2->GetOperandType() != BasicOperand::REG) {
        return false;
    }
    // initval must be 0
    auto val1 = SI->GetValOperand(L->preheader->block_id);
    if (val1->GetOperandType() != BasicOperand::IMMI32) {
        return false;
    }
    if (((ImmI32Operand *)val1)->GetIntImmVal() != 0) {
        return false;
    }

    // check LCSSA
    Instruction LCSSAI;
    int lcssa_cnt = 0;
    for (auto I : exit->Instruction_list) {
        if (I->GetOpcode() == PHI) {
            ++lcssa_cnt;
            LCSSAI = I;
            auto PhiI = (PhiInstruction *)I;
            auto val = PhiI->GetValOperand(exiting->block_id);
            if (val != val2) {
                return false;
            }
        } else {
            break;
        }
    }
    if (lcssa_cnt != 1) {
        return false;
    }
    // the loop should have no side_effect
    if (IsLoopSideEffect(C, L)) {
        return false;
    }

    // now check the loop is add_mod
    // check mod
    auto I = ResultMap[((RegOperand *)val2)->GetRegNo()];
    if (I->GetOpcode() != MOD) {
        return false;
    }
    auto ModI = (ArithmeticInstruction *)I;
    auto modop1 = ModI->GetOperand1();
    auto modop2 = ModI->GetOperand2();
    if (modop2->GetOperandType() != BasicOperand::IMMI32) {
        return false;
    }
    if (((ImmI32Operand *)modop2)->GetIntImmVal() < 0) {
        return false;
    }

    if (modop1->GetOperandType() != BasicOperand::REG) {
        return false;
    }
    // check add
    I = ResultMap[((RegOperand *)modop1)->GetRegNo()];
    if (I->GetOpcode() != ADD) {
        return false;
    }
    auto AddI = (ArithmeticInstruction *)I;
    auto addop1 = AddI->GetOperand1();
    auto addop2 = AddI->GetOperand2();
    if (addop2->GetOperandType() != BasicOperand::IMMI32) {
        return false;
    }
    if (((ImmI32Operand *)addop2)->GetIntImmVal() < 0) {
        return false;
    }

    if (addop1->GetOperandType() != BasicOperand::REG) {
        return false;
    }
    if (addop1 != SI->GetResultReg()) {
        return false;
    }
    // now we can assume the loop is reduce mod_add
    // we can replace the lcssa to be 1ll*iterations * addop2 % modop2

    // first Get iterations
    auto iterations = GetLoopIterations(C, L);
    if (iterations == nullptr) {
        return false;
    }
    auto ResI = new ArithmeticInstruction(LL_ADDMOD, I32, iterations, addop2, modop2, LCSSAI->GetResultReg());
    exit->Instruction_list.pop_front();
    exit->Instruction_list.push_front(ResI);
    L->header->Instruction_list.clear();
    latch->Instruction_list.clear();

    L->header->Instruction_list.push_back(new BrUncondInstruction(GetNewLabelOperand(latch->block_id)));
    latch->Instruction_list.push_back(new BrUncondInstruction(GetNewLabelOperand(exit->block_id)));
    return true;
}

/*
c is loop invariant
S = S0
i = l
do{
    S += c;
    i = i + 1;
}while(i < u)
-----------------------------------------
S = S0 + (u-l)*c
*/
static bool LoopReduceSimpleAdd(CFG *C, NaturalLoop *L) { return false; }

/*
int i = 0;
do{
    a[i] = 0;//a[i] = -1
    i = i + 1;
}while(i < ed)
*/
static bool LoopMemsetRecognize(CFG *C, NaturalLoop *L) {
    if (!L->scev.is_simpleloop) {
        return false;
    }
    if (L->loop_nodes.size() != 2) {    // empty latch
        return false;
    }
    assert(L->exit_nodes.size() == 1);
    auto exit = *L->exit_nodes.begin();
    assert(L->latches.size() == 1);
    auto latch = *L->latches.begin();
    assert(L->exiting_nodes.size() == 1);
    auto exiting = *L->exiting_nodes.begin();

    if (latch->Instruction_list.size() >= 2) {
        return false;
    }

    assert(C->IsDominate(L->preheader->block_id, exit->block_id));

    // check header
    int header_phicnt = 0;
    PhiInstruction *SI = nullptr;
    for (auto I : L->header->Instruction_list) {
        if (I->GetOpcode() == PHI) {
            SI = (PhiInstruction *)I;
            ++header_phicnt;
        } else {
            break;
        }
    }
    if (header_phicnt != 1) {
        return false;
    }
    auto val1 = SI->GetValOperand(L->preheader->block_id);
    if (val1->GetOperandType() != BasicOperand::IMMI32) {
        return false;
    }

    // initval of i must be 0
    if (((ImmI32Operand *)val1)->GetIntImmVal() != 0) {
        return false;
    }

    // check LCSSA
    Instruction LCSSAI;
    int lcssa_cnt = 0;
    for (auto I : exit->Instruction_list) {
        if (I->GetOpcode() == PHI) {
            return false;
        } else {
            break;
        }
    }

    // only one store
    StoreInstruction *StoreI;
    int store_cnt = 0;
    for (auto I : L->header->Instruction_list) {
        if (I->GetOpcode() == STORE) {
            ++store_cnt;
            StoreI = (StoreInstruction *)I;
        } else if (I->GetOpcode() == CALL) {
            return false;
        }
    }
    if (store_cnt > 1 || store_cnt == 0) {
        return false;
    }

    // check the SCEV of the ptr(initval is 0, step is 1)
    auto ptr = StoreI->GetPointer();
    if (ptr->GetOperandType() == BasicOperand::GLOBAL) {
        return false;
    }
    assert(ptr->GetOperandType() == BasicOperand::REG);

    int ptr_no = ((RegOperand *)ptr)->GetRegNo();
    auto GEPI = (GetElementptrInstruction *)ResultMap[ptr_no];
    auto lidx = GEPI->GetIndexes()[GEPI->GetIndexes().size() - 1];
    if (lidx->GetOperandType() != BasicOperand::REG) {
        return false;
    }
    auto r_lidx = (RegOperand *)lidx;
    auto &scevmap = L->scev.SCEVMap;
    if (scevmap.find(r_lidx->GetRegNo()) == scevmap.end()) {
        return false;
    }
    auto lidx_val = scevmap[r_lidx->GetRegNo()];
    if (lidx_val->len != 2) {
        return false;
    }
    auto st = lidx_val->st;
    auto step = lidx_val->RecurExpr->st;

    if (st.type != OTHER || st.op1->GetOperandType() != BasicOperand::IMMI32) {
        return false;
    }
    if (((ImmI32Operand *)st.op1)->GetIntImmVal() != 0) {
        return false;
    }

    if (step.type != OTHER || step.op1->GetOperandType() != BasicOperand::IMMI32) {
        return false;
    }
    if (((ImmI32Operand *)step.op1)->GetIntImmVal() != 1) {
        return false;
    }
    // then check other part of GEPI
    for (int i = 0; i + 1 < GEPI->GetIndexes().size(); ++i) {
        // all the index must be invariant
        auto index = GEPI->GetIndexes()[i];
        if (index->GetOperandType() == BasicOperand::REG) {
            auto R = (RegOperand *)index;
            if (L->scev.SCEVMap.find(R->GetRegNo()) == L->scev.SCEVMap.end()) {
                return false;
            }
            auto val = L->scev.SCEVMap[R->GetRegNo()];
            if (val->len >= 2) {
                return false;
            }
        }
    }

    auto val = StoreI->GetValue();
    if (val->GetOperandType() != BasicOperand::IMMI32) {
        return false;
    }
    auto immval = ((ImmI32Operand *)val)->GetIntImmVal();
    if (immval != 0 && immval != -1) {
        return false;
    }

    L->header->Instruction_list.clear();

    auto upI = L->scev.forloop_info.upperbound.GenerateValueInst(C);
    L->header->InsertInstruction(1, upI);
    if (L->scev.forloop_info.is_upperbound_closed) {
        auto AddI =
        new ArithmeticInstruction(ADD, I32, upI->GetResultReg(), new ImmI32Operand(1), GetNewRegOperand(++C->max_reg));
        L->header->InsertInstruction(1, AddI);
    }
    auto MulI = new ArithmeticInstruction(MUL, I32, GetNewRegOperand(C->max_reg), new ImmI32Operand(4),
                                          GetNewRegOperand(++C->max_reg));
    L->header->InsertInstruction(1, MulI);
    L->header->InsertInstruction(1, GEPI);
    GEPI->change_index(GEPI->GetIndexes().size() - 1, new ImmI32Operand(0));
    auto MemsetI = new CallInstruction(VOID, nullptr, "llvm.memset.p0.i32");
    MemsetI->push_back_Parameter({PTR, GEPI->GetResultReg()});
    MemsetI->push_back_Parameter({I8, val});
    MemsetI->push_back_Parameter({I32, MulI->GetResultReg()});
    MemsetI->push_back_Parameter({I1, new ImmI32Operand(0)});
    L->header->InsertInstruction(1, MemsetI);
    auto BrI = new BrUncondInstruction(GetNewLabelOperand(latch->block_id));
    L->header->InsertInstruction(1, BrI);

    latch->Instruction_list.clear();
    auto BrI2 = new BrUncondInstruction(GetNewLabelOperand(exit->block_id));
    latch->InsertInstruction(1, BrI2);

    // MemsetI->PrintIR(std::cerr);
    return true;
}

/*
i is invariant
j is only used for loop iteration
no-lcssa
if(j < n)
do{
    if (i < j){ //j >= i
        j = j + 1;
        continue;
    }
    something;
    j = j + 1;
}while(j < n)
-------------------------------
if(j < n)
do{
    if (i < j){ //j >= i
        j = j + 1;
        break;
    }
    something;
    j = j + 1;
}while(j < n)
*/
static bool LoopUselessContinue2Break(CFG *C, NaturalLoop *L) { return false; }

bool NaturalLoop::LoopIdomRecognize(CFG *C) {
    if (LoopReduceSimpleAddMod(C, this)) {
        return true;
    }
    if (LoopMemsetRecognize(C, this)) {
        return true;
    }

    return false;
}

/*
int i = 0;
int j = 0;
while(i < n){
    while(j < n){
        do_something
        j = j + 1;
    }
    do_something
    i = i + 1;
}

-----------------------------------------

i = 0;
if(i < n){
    do_somthing
    while(j < n){
        do_something
        j = j + 1
    }
    i = i + 1
}
while(i < n){
    do_something
    i = i + 1
}
*/
void NestedLoopWithoutInitValCheck(CFG *C) {
    std::map<int, Instruction> ResultMap;

    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            I->SetBlockID(bb->block_id);
            int v = I->GetResultRegNo();
            if (v != -1) {    // result exists
                ResultMap[v] = I;
            }
        }
    }

    for (auto l1 : C->LoopForest.loop_set) {
        for (auto l2 : C->LoopForest.loop_set) {
            if (l1 == l2) {
                continue;
            }
            if (C->LoopForest.loopG[l1->loop_id].size() != 1) {
                continue;
            }
            auto sl = *C->LoopForest.loopG[l1->loop_id].begin();
            if (sl != l2) {
                continue;
            }
            // if(l1->scev.is_simpleloop == false || l2->scev.is_simpleloop == false){
            //     continue;
            // }
            if (l2->exiting_nodes.size() != 1) {
                continue;
            }
            if (l2->exit_nodes.size() != 1) {
                continue;
            }
            if (l1->exit_nodes.size() != 1) {
                continue;
            }
            if (l1->exiting_nodes.size() != 1) {
                continue;
            }
            auto l1_exiting = *l1->exiting_nodes.begin();
            auto l1_exit = *l1->exit_nodes.begin();
            auto l2_exiting = *l2->exiting_nodes.begin();
            auto l2_exit = *l2->exit_nodes.begin();
            assert(l1->latches.size() == 1);
            auto l1_latch = *l1->latches.begin();
            if (l1_exiting != l1->header) {
                continue;
            }
            if (l2_exiting != l2->header) {
                continue;
            }
            // std::cerr<<sl->header->block_id<<" "<<l1->header->block_id<<"\n";
            int l2_header_phicnt = 0;
            PhiInstruction *l2_phiI;
            for (auto I : l2->header->Instruction_list) {
                if (I->GetOpcode() == PHI) {
                    ++l2_header_phicnt;
                    l2_phiI = (PhiInstruction *)I;
                }
            }
            if (l2_header_phicnt != 1) {
                continue;
            }

            // check l2 lcssa
            int l2_lcssacnt = 0;
            PhiInstruction *l2_lcssaI;
            for (auto I : l2_exit->Instruction_list) {
                if (I->GetOpcode() == PHI) {
                    ++l2_lcssacnt;
                    l2_lcssaI = (PhiInstruction *)I;
                }
            }
            if (l2_lcssacnt != 1) {
                continue;
            }

            if (l2_lcssaI->GetValOperand(l2_exiting->block_id) != l2_phiI->GetResultReg()) {
                continue;
            }
            // l2_lcssaI->PrintIR(std::cerr);
            // l2_phiI->PrintIR(std::cerr);
            auto init_val = l2_phiI->GetValOperand(l2->preheader->block_id);
            if (init_val->GetOperandType() != BasicOperand::REG) {
                continue;
            }
            auto init_val_reg = (RegOperand *)init_val;
            auto init_resultI = ResultMap[init_val_reg->GetRegNo()];
            if (init_resultI == nullptr) {
                continue;
            }
            if (init_resultI->GetOpcode() != PHI) {
                continue;
            }
            if (init_resultI->GetBlockID() != l1->header->block_id) {
                continue;
            }

            // init_resultI->PrintIR(std::cerr);
            auto init_latchval = ((PhiInstruction *)init_resultI)->GetValOperand(l1_latch->block_id);

            if (init_latchval != l2_lcssaI->GetResultReg()) {
                continue;
            }

            auto l2_exitingI = *(l2_exiting->Instruction_list.end() - 2);
            if (l2_exitingI->GetOpcode() != ICMP) {
                continue;
            }
            auto l2_exitingIcmpI = (IcmpInstruction *)l2_exitingI;
            auto op1 = l2_exitingIcmpI->GetOp1();
            auto op2 = l2_exitingIcmpI->GetOp2();

            auto scev1 = l2->scev.GetOperandSCEV(op1), scev2 = l2->scev.GetOperandSCEV(op2);

            if (scev1 == nullptr || scev2 == nullptr) {
                continue;
            }
            if (scev1->len > 2 || scev2->len > 2) {
                continue;
            }
            if (scev1->len == 2 && scev2->len == 2) {
                continue;
            }
            if (scev1->len == 1 && scev2->len == 1) {
                continue;
            }
            if (scev1->len == 2 && scev2->len == 1) {
                if (op2->GetOperandType() == BasicOperand::REG) {
                    auto op2_resultI = ResultMap[((RegOperand *)op2)->GetRegNo()];
                    if (op2_resultI != nullptr) {
                        auto resbbid = op2_resultI->GetBlockID();
                        auto resbb = (*C->block_map)[resbbid];
                        if (l1->loop_nodes.find(resbb) != l1->loop_nodes.end()) {
                            continue;
                        }
                    }
                }
            }
            if (scev1->len == 1 && scev2->len == 2) {
                if (op1->GetOperandType() == BasicOperand::REG) {
                    auto op1_resultI = ResultMap[((RegOperand *)op1)->GetRegNo()];
                    if (op1_resultI != nullptr) {
                        auto resbbid = op1_resultI->GetBlockID();
                        auto resbb = (*C->block_map)[resbbid];
                        if (l1->loop_nodes.find(resbb) != l1->loop_nodes.end()) {
                            continue;
                        }
                    }
                }
            }

            // std::cerr<<"NestedLoop "<<l1->header->block_id<<" "<<l2->header->block_id<<"\n";

            std::set<LLVMBlock> new_l1_loop_nodes;
            std::map<int, int> RegReplaceMap;
            std::map<int, int> LabelReplaceMap;
            LLVMBlock nexit = nullptr, nexiting = nullptr;
            LLVMBlock nheader = nullptr, nl2_exit = nullptr;
            for (auto bb : l1->loop_nodes) {
                if (l2->loop_nodes.find(bb) != l2->loop_nodes.end()) {
                    continue;    // erase the loop l2 in new loop
                }
                auto nbb = C->NewBlock();
                new_l1_loop_nodes.insert(nbb);
                if (bb == l1_exiting) {
                    nexiting = nbb;
                }
                if (bb == l1->header) {
                    nheader = nbb;
                }
                if (bb == l2_exit) {
                    nl2_exit = nbb;
                }

                LabelReplaceMap[bb->block_id] = nbb->block_id;
                for (auto I : bb->Instruction_list) {
                    auto nI = I->CopyInstruction();
                    nbb->InsertInstruction(1, nI);
                    int res_regno = I->GetResultRegNo();
                    if (res_regno != -1) {
                        RegReplaceMap[res_regno] = ++C->max_reg;
                    }
                }
            }
            LabelReplaceMap[l2->header->block_id] = nl2_exit->block_id;

            for (auto bb : new_l1_loop_nodes) {
                for (auto I : bb->Instruction_list) {
                    I->ReplaceRegByMap(RegReplaceMap);
                    I->ReplaceLabelByMap(LabelReplaceMap);
                }
            }

            // nl2_exit phi_cnt = 1
            // we need to change this phi to phi i32 [0,%l2_exiting]
            for (auto l2 : nl2_exit->Instruction_list) {
                if (l2->GetOpcode() == PHI) {
                    auto phiI = (PhiInstruction *)l2;
                    phiI->SetValOperand(nl2_exit->block_id, new ImmI32Operand(0));
                } else {
                    break;
                }
            }

            // change phi in nl1_header
            for (int i = 0; i < l1->header->Instruction_list.size(); ++i) {
                auto I1 = l1->header->Instruction_list[i];
                auto I2 = nheader->Instruction_list[i];
                if (I1->GetOpcode() == PHI) {
                    auto PhiI1 = (PhiInstruction *)I1;
                    auto PhiI2 = (PhiInstruction *)I2;
                    auto val = PhiI1->GetValOperand(l1_latch->block_id);
                    PhiI2->SetNewFrom(l1->preheader->block_id, l1_latch->block_id);
                    PhiI2->SetValOperand(l1_latch->block_id, val);
                    PhiI1->ErasePhi(l1_latch->block_id);
                }
            }

            // l1_latch -> nexit
            auto l1_latchendI = l1_latch->Instruction_list.back();
            assert(l1_latchendI->GetOpcode() == BR_UNCOND);
            auto l1_latchendbrI = (BrUncondInstruction *)l1_latchendI;
            l1_latchendbrI->SetTarget(GetNewLabelOperand(nheader->block_id));

            // add phi val l1_exiting -> l1_exit
            // and change phi in l1_exit
            for (auto I : l1_exit->Instruction_list) {
                if (I->GetOpcode() == PHI) {
                    auto PhiI = (PhiInstruction *)I;
                    auto val = PhiI->GetValOperand(l1_exiting->block_id);
                    assert(val->GetOperandType() == BasicOperand::REG);
                    auto resultI = ResultMap[((RegOperand *)val)->GetRegNo()];
                    assert(resultI->GetOpcode() == PHI);
                    auto phiresultI = (PhiInstruction *)resultI;
                    I->ReplaceRegByMap(RegReplaceMap);
                    I->ReplaceLabelByMap(LabelReplaceMap);
                    PhiI->InsertPhi(phiresultI->GetValOperand(l1->preheader->block_id),
                                    GetNewLabelOperand(l1_exiting->block_id));
                    break;
                }
            }

            C->BuildCFG();
            C->BuildDominatorTree();
            return;
        }
    }
}