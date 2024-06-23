#include "../../include/cfg.h"
#include <functional>

struct CmpInstCSEInfo {
    int opcode;
    int cond = -1;
    std::vector<std::string> operand_list;
    bool operator<(const CmpInstCSEInfo &x) const {
        if (opcode != x.opcode) {
            return opcode < x.opcode;
        }
        if (cond != x.cond) {
            return cond < x.cond;
        }

        if (operand_list.size() != x.operand_list.size()) {
            return operand_list.size() < x.operand_list.size();
        }

        for (int i = 0; i < (int)operand_list.size(); ++i) {
            auto opstr = operand_list[i];
            auto xopstr = x.operand_list[i];
            if (opstr != xopstr) {
                return opstr < xopstr;
            }
        }
        return false;
    }
};

static CmpInstCSEInfo GetCSEInfo(Instruction I) {
    CmpInstCSEInfo ans;
    ans.opcode = I->GetOpcode();

    auto list = I->GetNonResultOperands();
    if (I->GetOpcode() == CALL) {
        auto CallI = (CallInstruction *)I;
        ans.operand_list.push_back(CallI->GetFunctionName());
    }

    if (I->GetOpcode() == ICMP) {
        auto IcmpI = (IcmpInstruction *)I;
        ans.cond = IcmpI->GetCompareCondition();
    }

    if (I->GetOpcode() == FCMP) {
        auto FcmpI = (FcmpInstruction *)I;
        ans.cond = FcmpI->GetCompareCondition();
    }

    // consider the Commutative property
    if (I->GetOpcode() == ADD || I->GetOpcode() == MUL) {
        assert(list.size() == 2);
        auto op1 = list[0], op2 = list[1];
        if (op1->GetFullName() > op2->GetFullName()) {
            std::swap(op1, op2);
        }
        ans.operand_list.push_back(op1->GetFullName());
        ans.operand_list.push_back(op2->GetFullName());
    } else {
        for (auto op : list) {
            ans.operand_list.push_back(op->GetFullName());
        }
    }
    return ans;
}

// can bb1 -> bb2 ?
static bool CanReach(int bb1_id, int bb2_id, CFG *C) {
    std::vector<int> vis;
    std::queue<int> q;

    vis.resize(C->max_label + 1);
    q.push(bb1_id);

    while (!q.empty()) {
        auto x = q.front();
        q.pop();
        if (x == bb2_id) {
            // std::cerr<<"Can Reach \n";
            return true;
        }
        if (vis[x]) {
            continue;
        }
        vis[x] = true;

        for (auto bb : C->GetSuccessor(x)) {
            q.push(bb->block_id);
        }
    }
    return false;
}

static bool CanJump(bool isleft, int x1_id, int x2_id, CFG *C) {
    // x1 dominate x2
    auto x1 = (*C->block_map)[x1_id];
    auto x2 = (*C->block_map)[x2_id];
    auto BrI1 = (BrCondInstruction *)(*(x1->Instruction_list.end() - 1));
    auto xT = (*C->block_map)[((LabelOperand *)BrI1->GetTrueLabel())->GetLabelNo()];
    auto xF = (*C->block_map)[((LabelOperand *)BrI1->GetFalseLabel())->GetLabelNo()];
    if (isleft) {
        if (!CanReach(xT->block_id, x2->block_id, C) && CanReach(xF->block_id, x2->block_id, C)) {
            // this means x2 never reach it's TrueLabel
            auto tmpI1 = *(x2->Instruction_list.end() - 1);
            auto tmpI2 = *(x2->Instruction_list.end() - 2);
            x2->Instruction_list.pop_back();
            x2->Instruction_list.pop_back();
            auto IcmpI =
            new IcmpInstruction(I32, new ImmI32Operand(0), new ImmI32Operand(1), eq, tmpI2->GetResultReg());
            x2->InsertInstruction(1, IcmpI);
            x2->InsertInstruction(1, tmpI1);
            return true;
        }
    } else {
        if (CanReach(xT->block_id, x2->block_id, C) && !CanReach(xF->block_id, x2->block_id, C)) {
            // this means x2 never reach it's FalseLabel
            auto tmpI1 = *(x2->Instruction_list.end() - 1);
            auto tmpI2 = *(x2->Instruction_list.end() - 2);
            x2->Instruction_list.pop_back();
            x2->Instruction_list.pop_back();
            auto IcmpI =
            new IcmpInstruction(I32, new ImmI32Operand(1), new ImmI32Operand(1), eq, tmpI2->GetResultReg());
            x2->InsertInstruction(1, IcmpI);
            x2->InsertInstruction(1, tmpI1);
            return true;
        }
    }
    return false;
}

static bool BlockDefNoUseCheck(CFG *C, int bb_id, int st_id) {
    auto bb = (*C->block_map)[bb_id];
    std::set<Operand> defs;
    for (auto I : bb->Instruction_list) {
        if (I->GetOpcode() == PHI) {
            return false;
        } else {
            if (I->GetResultReg() != nullptr) {
                defs.insert(I->GetResultReg());
            }
        }
    }

    std::vector<int> vis;
    std::queue<int> q;
    vis.resize(C->max_label + 1);
    q.push(st_id);

    while (!q.empty()) {
        auto x = q.front();
        q.pop();
        if (vis[x]) {
            continue;
        }
        vis[x] = true;
        if (x == bb_id) {
            continue;
        }
        auto bbx = (*C->block_map)[x];
        for (auto I : bbx->Instruction_list) {
            for (auto op : I->GetNonResultOperands()) {
                if (defs.find(op) != defs.end()) {
                    return false;
                }
            }
        }

        for (auto bb : C->GetSuccessor(x)) {
            q.push(bb->block_id);
        }
    }
    return true;
}

static bool EmptyBlockJumping(CFG *C) {
    bool flag = false;
    auto b = (*C->block_map)[0];
    for (auto [id, bb] : *C->block_map) {
        if (bb->Instruction_list.size() < 2) {
            continue;
        }
        Operand op1_1, op1_2;
        int cond1 = 0;
        auto I = *(bb->Instruction_list.end() - 2);

        if (I->GetOpcode() == ICMP) {
            auto IcmpI = (IcmpInstruction *)I;
            op1_1 = IcmpI->GetOp1();
            op1_2 = IcmpI->GetOp2();
            cond1 = IcmpI->GetCompareCondition();
        } else if (I->GetOpcode() == FCMP) {
            auto FcmpI = (FcmpInstruction *)I;
            op1_1 = FcmpI->GetOp1();
            op1_2 = FcmpI->GetOp2();
            cond1 = FcmpI->GetCompareCondition();
        } else {
            continue;
        }

        for (auto bb2 : C->GetSuccessor(id)) {
            if (!C->IsDominate(bb->block_id, bb2->block_id)) {
                continue;
            }
            if (bb2 == bb) {
                continue;
            }
            if (bb2->Instruction_list.size() < 2) {
                continue;
            }
            Operand op2_1, op2_2;
            int cond2 = 0;
            auto I2 = *(bb2->Instruction_list.end() - 2);
            if (I->GetOpcode() != I2->GetOpcode()) {
                continue;
            }
            if (I2->GetOpcode() == ICMP) {
                auto IcmpI2 = (IcmpInstruction *)I2;
                op2_1 = IcmpI2->GetOp1();
                op2_2 = IcmpI2->GetOp2();
                cond2 = IcmpI2->GetCompareCondition();
            } else if (I2->GetOpcode() == FCMP) {
                auto FcmpI2 = (FcmpInstruction *)I2;
                op2_1 = FcmpI2->GetOp1();
                op2_2 = FcmpI2->GetOp2();
                cond2 = FcmpI2->GetCompareCondition();
            } else {
                continue;
            }

            if (op1_1->GetFullName() != op2_1->GetFullName()) {
                continue;
            }
            if (op1_2->GetFullName() != op2_2->GetFullName()) {
                continue;
            }
            if (cond1 != cond2) {
                continue;
            }

            auto brI1 = (BrCondInstruction *)(bb->Instruction_list.back());
            auto brI2 = (BrCondInstruction *)(bb2->Instruction_list.back());

            if (((LabelOperand *)brI1->GetTrueLabel())->GetLabelNo() == bb2->block_id) {
                if (!BlockDefNoUseCheck(C, bb2->block_id, ((LabelOperand *)brI2->GetTrueLabel())->GetLabelNo())) {
                    continue;
                }
                brI1->SetTrueLabel(((LabelOperand *)brI2->GetTrueLabel()));
                bb2->Instruction_list.pop_back();
                bb2->Instruction_list.pop_back();
                auto NIcmpI2 =
                new IcmpInstruction(I32, new ImmI32Operand(1), new ImmI32Operand(0), eq, I2->GetResultReg());
                bb2->InsertInstruction(1, NIcmpI2);
                bb2->InsertInstruction(1, brI2);
                flag = true;
            } else {
                if (!BlockDefNoUseCheck(C, bb2->block_id, ((LabelOperand *)brI2->GetFalseLabel())->GetLabelNo())) {
                    continue;
                }
                brI1->SetFalseLabel(((LabelOperand *)brI2->GetFalseLabel()));
                bb2->Instruction_list.pop_back();
                bb2->Instruction_list.pop_back();
                auto NIcmpI2 =
                new IcmpInstruction(I32, new ImmI32Operand(1), new ImmI32Operand(1), eq, I2->GetResultReg());
                bb2->InsertInstruction(1, NIcmpI2);
                bb2->InsertInstruction(1, brI2);
                flag = true;
            }
        }
    }
    return flag;
}

// we assume the next instruction of icmp(fcmp) is brcond
void BranchCSE(CFG *C) {
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            I->SetBlockID(id);
        }
    }
    std::map<CmpInstCSEInfo, std::vector<Instruction>> CmpMap;
    bool changed = true;

    std::function<void(int)> dfs = [&](int nowid) {
        LLVMBlock now = (*C->block_map)[nowid];
        std::set<CmpInstCSEInfo> tmpcse_set;
        if (now->Instruction_list.size() >= 2) {
            auto I = *(now->Instruction_list.end() - 2);
            if (I->GetOpcode() == FCMP || I->GetOpcode() == ICMP) {
                auto info = GetCSEInfo(I);
                bool isConstCmp = false;
                if (I->GetOpcode() == ICMP) {
                    auto IcmpI = (IcmpInstruction *)I;
                    if (IcmpI->GetOp1()->GetOperandType() == BasicOperand::IMMI32 &&
                        IcmpI->GetOp2()->GetOperandType() == BasicOperand::IMMI32) {
                        isConstCmp = true;
                    }
                }
                bool isCSE = false;
                if (!isConstCmp && CmpMap.find(info) != CmpMap.end()) {
                    for (auto I2 : CmpMap[info]) {
                        if (CanJump(1, I2->GetBlockID(), I->GetBlockID(), C)) {
                            isCSE = true;
                            break;
                        } else if (CanJump(0, I2->GetBlockID(), I->GetBlockID(), C)) {
                            isCSE = true;
                            break;
                        }
                    }
                }
                if (!isCSE && !isConstCmp) {
                    CmpMap[info].push_back(I);
                }
            }
        }

        for (auto v : C->DomTree.dom_tree[nowid]) {
            dfs(v->block_id);
        }

        for (auto info : tmpcse_set) {
            CmpMap[info].pop_back();
        }
    };

    while (changed) {
        CmpMap.clear();
        changed = false;

        dfs(0);
        changed |= EmptyBlockJumping(C);
        C->BuildCFG();
        C->BuildDominatorTree();
    }
}