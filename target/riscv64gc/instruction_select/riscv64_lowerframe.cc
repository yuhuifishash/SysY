#include "riscv64_lowerframe.h"

#ifdef PRINT_DBG
#include "../instruction_print/riscv64_printer.h"
#endif

constexpr int save_regids[] = {
RISCV_s0,  RISCV_s1,  RISCV_s2,  RISCV_s3,  RISCV_s4,   RISCV_s5,   RISCV_s6,  RISCV_s7,  RISCV_s8,
RISCV_s9,  RISCV_s10, RISCV_s11, RISCV_fs0, RISCV_fs1,  RISCV_fs2,  RISCV_fs3, RISCV_fs4, RISCV_fs5,
RISCV_fs6, RISCV_fs7, RISCV_fs8, RISCV_fs9, RISCV_fs10, RISCV_fs11, RISCV_ra,
};
constexpr int saveregnum = 25;

extern bool optimize_flag;

void RiscV64LowerFrame::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
#ifdef SAVEREGBYCOPY
        Register save_regs[1 + 12 + 12];
        for (int i = 0; i < saveregnum; i++) {
            if (save_regids[i] >= RISCV_x0 && save_regids[i] <= RISCV_x31) {
                save_regs[i] = func->GetNewRegister(INT64.data_type, INT64.data_length);
            } else {
                save_regs[i] = func->GetNewRegister(FLOAT64.data_type, FLOAT64.data_length);
            }
        }
#endif
        for (auto &b : func->blocks) {
            cur_block = b;
            if (b->getLabelId() == 0) {
                Register para_basereg = current_func->GetNewReg(INT64);
                int i32_cnt = 0;
                int f32_cnt = 0;
                int para_offset = 0;
                for (auto para : func->GetParameters()) {
                    if (para.type.data_type == INT64.data_type) {
                        if (i32_cnt < 8) {
                            b->push_front(
                            rvconstructor->ConstructCopyReg(para, GetPhysicalReg(RISCV_a0 + i32_cnt), INT64));
                        }
                        if (i32_cnt >= 8) {
                            // auto offset_reg = func->GetNewRegister(INT64.data_type, INT64.data_length);
                            // auto addr_reg = func->GetNewRegister(INT64.data_type, INT64.data_length);
                            // b->push_front(rvconstructor->ConstructIImm(RISCV_LD, para, addr_reg, 0));
                            // b->push_front(
                            // rvconstructor->ConstructR(RISCV_ADD, addr_reg, GetPhysicalReg(RISCV_sp), offset_reg));
                            // auto reloc_para =
                            // rvconstructor->ConstructUImm(RISCV_LI, offset_reg, func->GetStackSize() + para_offset);
                            // ((RiscV64Function *)current_func)->AddStkParaIns(reloc_para);
                            // b->push_front(reloc_para);
                            //// b->push_front(rvconstructor->ConstructIImm(RISCV_LD, para,
                            //// GetPhysicalReg(RISCV_sp),func->GetStackSize()+para_offset));

                            b->push_front(rvconstructor->ConstructIImm(RISCV_LD, para, GetPhysicalReg(RISCV_fp), para_offset));
                            para_offset += 8;
                        }
                        i32_cnt++;
                    } else if (para.type.data_type == FLOAT64.data_type) {
                        if (f32_cnt < 8) {
                            b->push_front(
                            rvconstructor->ConstructCopyReg(para, GetPhysicalReg(RISCV_fa0 + f32_cnt), FLOAT64));
                        }
                        if (f32_cnt >= 8) {
                            // auto offset_reg = func->GetNewRegister(INT64.data_type, INT64.data_length);
                            // auto addr_reg = func->GetNewRegister(INT64.data_type, INT64.data_length);
                            // b->push_front(rvconstructor->ConstructIImm(RISCV_FLD, para, addr_reg, 0));
                            // b->push_front(
                            // rvconstructor->ConstructR(RISCV_ADD, addr_reg, GetPhysicalReg(RISCV_sp), offset_reg));
                            // auto reloc_para =
                            // rvconstructor->ConstructUImm(RISCV_LI, offset_reg, func->GetStackSize() + para_offset);
                            // ((RiscV64Function *)current_func)->AddStkParaIns(reloc_para);
                            // b->push_front(reloc_para);
                            //// b->push_front(rvconstructor->ConstructIImm(RISCV_FLD, para,
                            //// GetPhysicalReg(RISCV_sp),func->GetStackSize()+para_offset));

                            b->push_front(rvconstructor->ConstructIImm(RISCV_FLD, para, GetPhysicalReg(RISCV_fp), para_offset));
                            para_offset += 8;
                        }
                        f32_cnt++;
                    } else {
                        ERROR("Unknown type");
                    }
                }

                if (para_offset != 0) {
                    current_func->SetHasInParaInStack(true);
                    cur_block->push_front(rvconstructor->ConstructCopyReg(para_basereg, GetPhysicalReg(RISCV_fp), INT64));
                }
#ifdef SAVEREGBYCOPY
                for (int i = 0; i < saveregnum; i++) {
                    if (save_regs[i].type == INT64) {
                        b->push_front(
                        rvconstructor->ConstructCopyReg(save_regs[i], GetPhysicalReg(save_regids[i]), INT64));
                    } else {
                        b->push_front(
                        rvconstructor->ConstructCopyReg(save_regs[i], GetPhysicalReg(save_regids[i]), FLOAT64));
                    }
                }
#endif
            }
#ifdef SAVEREGBYCOPY
            auto last_ins = *(b->ReverseBegin());
            Assert(last_ins->arch == MachineBaseInstruction::RiscV);
            auto riscv_last_ins = (RiscV64Instruction *)last_ins;
            if (riscv_last_ins->getOpcode() == RISCV_JALR) {
                if (riscv_last_ins->getRd() == GetPhysicalReg(RISCV_x0)) {
                    if (riscv_last_ins->getRs1() == GetPhysicalReg(RISCV_ra)) {
                        Assert(riscv_last_ins->getImm() == 0);
                        b->pop_back();
                        for (int i = 0; i < saveregnum; i++) {
                            if (save_regs[i].type == INT64) {
                                b->push_back(
                                rvconstructor->ConstructCopyReg(GetPhysicalReg(save_regids[i]), save_regs[i], INT64));
                            } else {
                                b->push_back(
                                rvconstructor->ConstructCopyReg(GetPhysicalReg(save_regids[i]), save_regs[i], FLOAT64));
                            }
                        }
                        b->push_back(riscv_last_ins);
                    }
                }
            }
#endif
        }
    }
}

void GatherUseSregs(MachineFunction *func, std::vector<std::vector<int>> &reg_defblockids,
                    std::vector<std::vector<int>> &reg_rwblockids) {
    reg_defblockids.resize(64);
    reg_rwblockids.resize(64);
    for (auto &b : func->blocks) {
        int RegNeedSaved[64] = {
        [RISCV_s0] = 1,  [RISCV_s1] = 1,  [RISCV_s2] = 1,   [RISCV_s3] = 1,   [RISCV_s4] = 1,
        [RISCV_s5] = 1,  [RISCV_s6] = 1,  [RISCV_s7] = 1,   [RISCV_s8] = 1,   [RISCV_s9] = 1,
        [RISCV_s10] = 1, [RISCV_s11] = 1, [RISCV_fs0] = 1,  [RISCV_fs1] = 1,  [RISCV_fs2] = 1,
        [RISCV_fs3] = 1, [RISCV_fs4] = 1, [RISCV_fs5] = 1,  [RISCV_fs6] = 1,  [RISCV_fs7] = 1,
        [RISCV_fs8] = 1, [RISCV_fs9] = 1, [RISCV_fs10] = 1, [RISCV_fs11] = 1, [RISCV_ra] = 1,
        };
        for (auto ins : *b) {
            for (auto reg : ins->GetWriteReg()) {
                if (reg->is_virtual == false) {
                    if (RegNeedSaved[reg->reg_no]) {
                        RegNeedSaved[reg->reg_no] = 0;
                        reg_defblockids[reg->reg_no].push_back(b->getLabelId());
                        reg_rwblockids[reg->reg_no].push_back(b->getLabelId());
                    }
                }
            }
            for (auto reg : ins->GetReadReg()) {
                if (reg->is_virtual == false) {
                    if (RegNeedSaved[reg->reg_no]) {
                        RegNeedSaved[reg->reg_no] = 0;
                        reg_rwblockids[reg->reg_no].push_back(b->getLabelId());
                    }
                }
            }
        }
    }
    if (func->HasInParaInStack()) {
        reg_defblockids[RISCV_fp].push_back(0);
        reg_rwblockids[RISCV_fp].push_back(0);
    }
}

void GatherUseSregs (MachineFunction* func, std::vector<int>& saveregs) {
    int RegNeedSaved[64] = {
        [RISCV_s0] = 1,
        [RISCV_s1] = 1,
        [RISCV_s2] = 1,
        [RISCV_s3] = 1,
        [RISCV_s4] = 1,
        [RISCV_s5] = 1,
        [RISCV_s6] = 1,
        [RISCV_s7] = 1,
        [RISCV_s8] = 1,
        [RISCV_s9] = 1,
        [RISCV_s10] = 1,
        [RISCV_s11] = 1,
        [RISCV_fs0] = 1,
        [RISCV_fs1] = 1,
        [RISCV_fs2] = 1,
        [RISCV_fs3] = 1,
        [RISCV_fs4] = 1,
        [RISCV_fs5] = 1,
        [RISCV_fs6] = 1,
        [RISCV_fs7] = 1,
        [RISCV_fs8] = 1,
        [RISCV_fs9] = 1,
        [RISCV_fs10] = 1,
        [RISCV_fs11] = 1,
        [RISCV_ra] = 1,
    };
    for (auto &b : func->blocks) {
        for (auto ins : *b) {
            for (auto reg : ins->GetWriteReg()) {
                if (reg->is_virtual == false) {
                    if (RegNeedSaved[reg->reg_no]) {
                        RegNeedSaved[reg->reg_no] = 0;
                        saveregs.push_back(reg->reg_no);
                    }
                }
            }
        }
    }
    // save fp
    if (func->HasInParaInStack()) {
        if (RegNeedSaved[RISCV_fp]) {
            RegNeedSaved[RISCV_fp] = 0;
            saveregs.push_back(RISCV_fp);
        }
    }
}

void GetDfsOrder(MachineDominatorTree *domtree, int cur, std::vector<int> &order, std::map<int, int> &vsd) {
    order.push_back(cur);
    vsd[cur] = 1;
    for (auto child : domtree->dom_tree[cur]) {
        int child_id = child->getLabelId();
        if (vsd.find(child_id) == vsd.end()) {
            vsd[child_id] = 1;
            GetDfsOrder(domtree, child_id, order, vsd);
        }
    }
}

void GetDepth(MachineDominatorTree *domtree, int domroot, std::map<int, int> &dph) {
    std::queue<int> q;
    q.push(domroot);
    dph[domroot] = 1;
    while (!q.empty()) {
        auto cur = q.front();
        q.pop();
        for (auto child : domtree->dom_tree[cur]) {
            int child_id = child->getLabelId();
            if (dph.find(child_id) == dph.end()) {
                dph[child_id] = dph[cur] + 1;
                q.push(child_id);
            }
        }
    }
}

int CalculatePairLCA(int x, int y, MachineDominatorTree *domtree, std::map<int, int> &dph) {
    while (dph[x] > dph[y]) {
        x = domtree->idom[x]->getLabelId();
    }
    while (dph[y] > dph[x]) {
        y = domtree->idom[y]->getLabelId();
    }
    while (x != y) {
        x = domtree->idom[x]->getLabelId();
        y = domtree->idom[y]->getLabelId();
    }
    while (domtree->C->GetNodeByBlockId(x)->Mblock->loop_depth != 0) {
        x = domtree->idom[x]->getLabelId();
    }
    return x;
}

int CalculateGroupLCA(std::vector<int> &reg_occurblockids, MachineDominatorTree *domtree, int domroot) {
    std::vector<int> dfsorder;
    std::map<int, int> vsd;
    std::map<int, int> dph;
    GetDfsOrder(domtree, domroot, dfsorder, vsd);
    GetDepth(domtree, domroot, dph);
    int first = -1, last = -1;
    std::map<int, int> blockhasreg;
    for (auto b : reg_occurblockids) {
        blockhasreg[b] = 1;
    }
    for (auto it = dfsorder.begin(); it != dfsorder.end(); ++it) {
        if (blockhasreg[*it]) {
            first = *it;
            break;
        }
    }
    for (auto it = dfsorder.rbegin(); it != dfsorder.rend(); ++it) {
        if (blockhasreg[*it]) {
            last = *it;
            break;
        }
    }
    Assert(first != -1 && last != -1);
    return CalculatePairLCA(first, last, domtree, dph);
}

void RiscV64LowerStack::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        std::vector<std::vector<int>> saveregs_occurblockids, saveregs_rwblockids;
        GatherUseSregs(func, saveregs_occurblockids, saveregs_rwblockids);
        std::vector<int> sd_blocks;
        std::vector<int> ld_blocks;
        std::vector<int> restore_offset;
        sd_blocks.resize(64);
        ld_blocks.resize(64);
        restore_offset.resize(64);
        int saveregnum = 0, cur_restore_offset = 0;
        for (int i = 0; i < saveregs_occurblockids.size(); i++) {
            auto &vld = saveregs_rwblockids[i];
            if (!vld.empty()) {
                saveregnum++;
            }
        }
        func->AddStackSize(saveregnum * 8);
        auto mcfg = func->getMachineCFG();
        bool restore_at_beginning = (-8 + func->GetStackSize()) >= 2048;
        if (!optimize_flag) { restore_at_beginning = true; }
        if (!restore_at_beginning) {
            func->getMachineCFG()->BuildDominatoorTree();
            for (int i = 0; i < saveregs_occurblockids.size(); i++) {
                auto &vld = saveregs_rwblockids[i];
                auto &vsd = saveregs_rwblockids[i];
                if (!vld.empty()) {
                    cur_restore_offset -= 8;
                    restore_offset[i] = cur_restore_offset;
                    ld_blocks[i] = CalculateGroupLCA(vld, &func->getMachineCFG()->PostDomTree,
                                                    func->getMachineCFG()->ret_block->Mblock->getLabelId());
                    if (ld_blocks[i] != func->getMachineCFG()->ret_block->Mblock->getLabelId()) {
                        ld_blocks[i] = func->getMachineCFG()->PostDomTree.idom[ld_blocks[i]]->getLabelId();
                    }
                    vsd.push_back(ld_blocks[i]);
                    sd_blocks[i] = CalculateGroupLCA(vsd, &func->getMachineCFG()->DomTree, 0);
                }
            }
            for (int i = 0; i < saveregs_occurblockids.size(); i++) {
                if (!saveregs_occurblockids[i].empty()) {
                    int regno = i;
                    int sp_offset = restore_offset[i] + func->GetStackSize();
                    if (!func->HasInParaInStack() || i != RISCV_fp) {
                        int saveb = sd_blocks[i];
                        auto block = mcfg->GetNodeByBlockId(saveb)->Mblock;
                        int sd_op = 0;
                        if (regno >= RISCV_x0 && regno <= RISCV_x31) {
                            sd_op = RISCV_SD;
                        } else {
                            sd_op = RISCV_FSD;
                        }
                        block->push_front(
                        rvconstructor->ConstructSImm(sd_op, GetPhysicalReg(i), GetPhysicalReg(RISCV_sp), sp_offset));
                    }
                    int restoreb = ld_blocks[i];
                    auto block = mcfg->GetNodeByBlockId(restoreb)->Mblock;
                    auto it = block->getInsertBeforeBrIt();

#ifdef PRINT_DBG
                    RiscV64Printer printer(std::cerr, unit);
                    printer.SyncFunction(func);
                    printer.SyncBlock(block);
                    printer.printAsm(*it);
#endif

                    int ld_op = 0;
                    if (regno >= RISCV_x0 && regno <= RISCV_x31) {
                        ld_op = RISCV_LD;
                    } else {
                        ld_op = RISCV_FLD;
                    }
                    block->insert(
                    it, rvconstructor->ConstructIImm(ld_op, GetPhysicalReg(i), GetPhysicalReg(RISCV_sp), sp_offset));
                }
            }
        }
        for (auto &b : func->blocks) {
            cur_block = b;
            if (b->getLabelId() == 0) {
                if (func->GetStackSize() <= 2032) {
                    b->push_front(rvconstructor->ConstructIImm(RISCV_ADDI, GetPhysicalReg(RISCV_sp),
                                                               GetPhysicalReg(RISCV_sp),
                                                               -func->GetStackSize()));    // sub sp
                } else {
                    auto stacksz_reg = GetPhysicalReg(RISCV_t0);
                    b->push_front(rvconstructor->ConstructR(RISCV_SUB, GetPhysicalReg(RISCV_sp),
                                                            GetPhysicalReg(RISCV_sp), stacksz_reg));
                    b->push_front(rvconstructor->ConstructUImm(RISCV_LI, stacksz_reg, func->GetStackSize()));
                }
                if (func->HasInParaInStack()){
                    b->push_front(rvconstructor->ConstructR(RISCV_ADD, GetPhysicalReg(RISCV_fp), GetPhysicalReg(RISCV_sp), GetPhysicalReg(RISCV_x0)));
                }
                // fp should always be restored at beginning now
                if (restore_at_beginning) {
                    int offset = 0;
                    for (int i = 0; i < 64; i++) {
                        if (!saveregs_occurblockids[i].empty()) {
                            int regno = i;
                            offset -= 8;
                            if (regno >= RISCV_x0 && regno <= RISCV_x31) {
                                b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(regno),
                                                                           GetPhysicalReg(RISCV_sp), offset));
                            } else {
                                b->push_front(rvconstructor->ConstructSImm(RISCV_FSD, GetPhysicalReg(regno),
                                                                           GetPhysicalReg(RISCV_sp), offset));
                            }
                        }
                    }
                } else if (func->HasInParaInStack()) {
                    b->push_front(rvconstructor->ConstructSImm(RISCV_SD, GetPhysicalReg(RISCV_fp), GetPhysicalReg(RISCV_sp), restore_offset[RISCV_fp]));
                }
            }
            auto last_ins = *(b->ReverseBegin());
            Assert(last_ins->arch == MachineBaseInstruction::RiscV);
            auto riscv_last_ins = (RiscV64Instruction *)last_ins;
            if (riscv_last_ins->getOpcode() == RISCV_JALR) {
                if (riscv_last_ins->getRd() == GetPhysicalReg(RISCV_x0)) {
                    if (riscv_last_ins->getRs1() == GetPhysicalReg(RISCV_ra)) {
                        Assert(riscv_last_ins->getImm() == 0);
                        b->pop_back();
                        // b->push_back(rvconstructor->ConstructComment("Lowerstack: add sp\n"));
                        if (func->GetStackSize() <= 2032) {
                            b->push_back(rvconstructor->ConstructIImm(RISCV_ADDI, GetPhysicalReg(RISCV_sp),
                                                                      GetPhysicalReg(RISCV_sp), func->GetStackSize()));
                        } else {
                            auto stacksz_reg = GetPhysicalReg(RISCV_t0);
                            b->push_back(rvconstructor->ConstructUImm(RISCV_LI, stacksz_reg, func->GetStackSize()));
                            b->push_back(rvconstructor->ConstructR(RISCV_ADD, GetPhysicalReg(RISCV_sp),
                                                                   GetPhysicalReg(RISCV_sp), stacksz_reg));
                        }
                        if (restore_at_beginning) {
                            int offset = 0;
                            for (int i = 0; i < 64; i++) {
                                if (!saveregs_occurblockids[i].empty()) {
                                    int regno = i;
                                    offset -= 8;
                                    if (regno >= RISCV_x0 && regno <= RISCV_x31) {
                                        b->push_back(rvconstructor->ConstructIImm(RISCV_LD, GetPhysicalReg(regno),
                                                                                  GetPhysicalReg(RISCV_sp), offset));
                                    } else {
                                        b->push_back(rvconstructor->ConstructIImm(RISCV_FLD, GetPhysicalReg(regno),
                                                                                  GetPhysicalReg(RISCV_sp), offset));
                                    }
                                }
                            }
                        }
                        b->push_back(riscv_last_ins);
                    }
                }
            }
        }
    }
}