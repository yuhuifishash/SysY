#include "riscv64_licm.h"
#include <functional>

#define REGISTER_PRESSURE_AWARE
// #define MachineLICM_DEBUG

void RiscV64LICM::Execute() {
    std::function<void(MachineNaturalLoopForest &, MachineNaturalLoop *)> dfs =
    [&](MachineNaturalLoopForest &loop_forest, MachineNaturalLoop *L) {
        this->curr_loop = L;
        this->LICMInCurrLoop();
        for (auto lv : loop_forest.loopG[L->loop_id]) {
            dfs(loop_forest, lv);
        }
    };

    for (auto func : unit->functions) {
        current_func = func;
        InitResultMapInCurrFunc();

        for (auto l : func->getMachineCFG()->LoopForest.loop_set) {
            if (l->fa_loop == nullptr) {
                dfs(func->getMachineCFG()->LoopForest, l);
            }
        }
        func->getMachineCFG()->BuildDominatoorTree();
        func->getMachineCFG()->BuildLoopForest();
    }
}

void RiscV64LICM::InitResultMapInCurrFunc() {
    InstDefMap.clear();

    auto C = current_func->getMachineCFG();
    auto block_it = C->getSeqScanIterator();
    block_it->open();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        for (auto it = block->begin(); it != block->end(); ++it) {
            auto I = *it;
            auto write_vector = I->GetWriteReg();
            if (write_vector.size() == 1) {
                auto r = *write_vector.begin();
                if (r->is_virtual) {
                    InstDefMap[r->reg_no] = block;
                }
            }
        }
    }
}

static bool isNeedLicm(MachineBaseInstruction *I) {
    if (I->ExistPhysicalReg()) {
        return false;
    }
    if (I->arch == MachineBaseInstruction::COPY) {
        return true;
    }
    if (I->arch == MachineBaseInstruction::RiscV) {
        auto rvI = (RiscV64Instruction *)I;
        if (rvI->getOpcode() == RISCV_LUI || rvI->getOpcode() == RISCV_ADDI || rvI->getOpcode() == RISCV_ADD ||
            rvI->getOpcode() == RISCV_MUL) {
            return true;
        }
    }
    return false;
}

static std::string GetLICMInstInfo(MachineBaseInstruction *I) {
    if (I->arch == MachineBaseInstruction::COPY) {
        auto cpI = (MachineCopyInstruction *)I;
        return cpI->GetDst()->toString() + " = COPY " + cpI->GetSrc()->toString();
    } else if (I->arch == MachineBaseInstruction::RiscV) {
        auto rvI = (RiscV64Instruction *)I;
        if (rvI->getOpcode() == RISCV_ADD) {
            return "%" + std::to_string(rvI->getRd().reg_no) + " = %" + std::to_string(rvI->getRs1().reg_no) + " + " +
                   "%" + std::to_string(rvI->getRs2().reg_no);
        } else if (rvI->getOpcode() == RISCV_ADDI) {
            if (rvI->getUseLabel()) {
                return "%" + std::to_string(rvI->getRd().reg_no) + " = %" + std::to_string(rvI->getRs1().reg_no) +
                       " + " + rvI->getLabel().name;
            } else {
                return "%" + std::to_string(rvI->getRd().reg_no) + " = %" + std::to_string(rvI->getRs1().reg_no) +
                       " + " + std::to_string(rvI->getImm());
            }
        } else if (rvI->getOpcode() == RISCV_LUI) {
            if (rvI->getUseLabel()) {
                return "%" + std::to_string(rvI->getRd().reg_no) + " = lui " + rvI->getLabel().name;
            } else {
                return "%" + std::to_string(rvI->getRd().reg_no) + " = lui " + std::to_string(rvI->getImm());
            }
        } else if (rvI->getOpcode() == RISCV_MUL) {
            return "%" + std::to_string(rvI->getRd().reg_no) + " = %" + std::to_string(rvI->getRs1().reg_no) + " * " +
                   "%" + std::to_string(rvI->getRs2().reg_no);
        } else {
            ERROR("Unexpected Opcode");
        }
    } else {
        ERROR("Unexpected Arch");
    }
    return "";
}

bool RiscV64LICM::isInvariant(MachineCFG *C, MachineBaseInstruction *I, MachineNaturalLoop *L) {
    if (!isNeedLicm(I)) {
        return false;
    }
    // In order to avoid greater register pressure, we limit the count of instructions can motion
    /*
        we do not consider mul
        motion addi may not increase register pressure
        lui %1,%hi(k)
        addi %2,%1,%lo(k)
    */
#ifdef REGISTER_PRESSURE_AWARE
    if (currloop_motion_count >= max_motion_count) {
        if (I->arch != MachineBaseInstruction::RiscV) {
            return false;
        }
        auto rvI = (RiscV64Instruction *)I;
        if (rvI->getOpcode() != RISCV_MUL && rvI->getOpcode() != RISCV_ADDI) {
            return false;
        }
    }
#endif

    auto wr = I->GetWriteReg();
    assert(wr.size() == 1);
    auto result_r = (*wr.begin())->reg_no;
    if (I->arch == MachineBaseInstruction::COPY) {
        auto cpI = (MachineCopyInstruction *)I;
        auto src = cpI->GetSrc();
        if (src->op_type == MachineBaseOperand::IMMI || src->op_type == MachineBaseOperand::IMMF) {
            InvariantSet.insert(result_r);
            currloop_motion_count += 1;
            return true;
        } else if (src->op_type == MachineBaseOperand::REG) {
            auto r = ((MachineRegister *)src)->reg.reg_no;
            if (InvariantSet.find(r) != InvariantSet.end()) {
                currloop_motion_count += 1;
                return true;
            }
            auto defbb = InstDefMap[r];
            if (defbb == nullptr) {
                return false;
            }
            if (L->loop_nodes.find(defbb) == L->loop_nodes.end()) {
                InvariantSet.insert(result_r);
                currloop_motion_count += 1;
                return true;
            }
            return false;
        }
    } else if (I->arch == MachineBaseInstruction::RiscV) {
        auto rvI = (RiscV64Instruction *)I;
        if (rvI->getOpcode() == RISCV_LUI) {
            InvariantSet.insert(result_r);
            currloop_motion_count += 1;
            return true;
        } else if (rvI->getOpcode() == RISCV_ADDI) {
            auto rs1 = rvI->getRs1().reg_no;
            if (InvariantSet.find(rs1) != InvariantSet.end()) {
                currloop_motion_count += 1;
                return true;
            }
            auto defbb = InstDefMap[rs1];
            if (defbb == nullptr) {
                return false;
            }
            if (L->loop_nodes.find(defbb) == L->loop_nodes.end()) {
                InvariantSet.insert(result_r);
                currloop_motion_count += 1;
                return true;
            }
            return false;
        } else if (rvI->getOpcode() == RISCV_MUL || rvI->getOpcode() == RISCV_ADD) {
            auto rs1 = rvI->getRs1().reg_no, rs2 = rvI->getRs2().reg_no;
            int r[2] = {rs1, rs2};
            for (int i = 0; i < 2; ++i) {
                auto reg = r[i];
                if (InvariantSet.find(reg) != InvariantSet.end()) {
                    continue;
                }
                auto defbb = InstDefMap[reg];
                if (defbb == nullptr) {
                    return false;
                }
                if (L->loop_nodes.find(defbb) != L->loop_nodes.end()) {
                    return false;
                }
            }
            InvariantSet.insert(result_r);
            currloop_motion_count += 1;
            return true;
        } else {
            ERROR("Unexpected Opcode");
        }
    } else {
        ERROR("Unexpected Arch");
    }

    return false;
}

void RiscV64LICM::GetInvariantInCurrLoop() {
    InvariantInstList.clear();
    InvariantInstSet.clear();
    InvariantSet.clear();

    std::set<MachineBaseInstruction *> InsVisited;

    int change_flag = 1;
    while (change_flag) {
        change_flag = 0;
        for (auto LBB : curr_loop->loop_nodes) {
            for (auto it = LBB->begin(); it != LBB->end(); ++it) {
                auto I = *it;
                if (InsVisited.find(I) == InsVisited.end() &&
                    isInvariant(current_func->getMachineCFG(), I, curr_loop)) {
                    change_flag = true;
                    InsVisited.insert(I);
                    InvariantInstList.push_back(I);
                    InvariantInstSet.insert(I);
                }
            }
        }
    }

#ifdef MachineLICM_DEBUG
    std::cerr << "\nheader" << curr_loop->header->getLabelId() << " InvariantInstList:\n";
    for (auto I : InvariantInstList) {
        std::cerr << GetLICMInstInfo(I) << "\n";
    }
#endif
}

void RiscV64LICM::AddPreheader() {
    auto C = current_func->getMachineCFG();
    std::vector<int> outloop_preblocks;
    for (auto preBB : C->GetPredecessorsByBlockId(curr_loop->header->getLabelId())) {
        if (curr_loop->loop_nodes.find(preBB->Mblock) == curr_loop->loop_nodes.end()) {
            outloop_preblocks.push_back(preBB->Mblock->getLabelId());
        }
    }
    curr_loop->preheader =
    current_func->InsertNewBranchOnlyPreheader(curr_loop->header->getLabelId(), outloop_preblocks);
    // std::cerr<<curr_loop->preheader->getLabelId()<<"\n";
}

void RiscV64LICM::LICMInCurrLoop() {
    currloop_motion_count = 0;
    max_motion_count = GetMaxInstMotionNumber(curr_loop);
    GetInvariantInCurrLoop();

    if (InvariantInstList.size() != 0) {
        AddPreheader();
#ifdef MachineLICM_DEBUG
        std::cerr << "add preheader " << curr_loop->preheader->getLabelId() << "\n";
#endif
        for (auto bb : curr_loop->loop_nodes) {
            for (auto it = bb->begin(); it != bb->end();) {
                auto I = *it;
                if (InvariantInstSet.find(I) != InvariantInstSet.end()) {
                    it = bb->erase(it);
                } else {
                    ++it;
                }
            }
        }

        for (auto I : InvariantInstList) {
            auto it = curr_loop->preheader->getInsertBeforeBrIt();
            curr_loop->preheader->insert(it, I);
            auto wr = *(I->GetWriteReg()).begin();
            InstDefMap[wr->reg_no] = curr_loop->preheader;
        }
    }
}

int RiscV64LICM::GetMaxInstMotionNumber(MachineNaturalLoop *L) {
    int inst_number = 0;
    int bb_number = L->loop_nodes.size();
    int ans = 6;
    for (auto bb : L->loop_nodes) {
        inst_number += bb->GetInsList().size();
    }
    if (current_func->getMachineCFG()->LoopForest.loopG[L->loop_id].size() == 0) {
        ans += 6;
    }
    if (inst_number > 100) {
        ans -= 1;
    }
    if (bb_number > 3 && bb_number < 10) {
        ans -= 1;
    }
    if (bb_number >= 10) {
        ans -= 2;
    }
    // std::cerr<<inst_number<<" "<<bb_number<<" "<<ans<<"\n";
    return ans;
}