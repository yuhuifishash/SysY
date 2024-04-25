#include "../../include/cfg.h"
#include <tuple>

// due to IRgen, we can assume that all the store value are RegOperand

static std::set<Instruction> EraseSet;
static std::map<int, int> mem2reg_map;    //<old regno, new regno>
static std::set<int> common_allocas;      // alloca of common situations
static std::map<PhiInstruction *, int> phi_map;

auto CalculatedDefAndUse(CFG *C) {
    // set of basic blocks id that contain definitions(uses) of key
    std::map<int, std::set<int>> defs, uses;
    // key is the alloca register, value is the definitions number of this register
    std::map<int, int> def_num;
    for (auto [id, BB] : *C->block_map) {
        for (auto I : BB->Instruction_list) {
            if (I->GetOpcode() == STORE) {
                defs[((StoreInstruction *)I)->GetDefRegNo()].insert(id);
                def_num[((StoreInstruction *)I)->GetDefRegNo()]++;
            } else if (I->GetOpcode() == LOAD) {
                uses[((LoadInstruction *)I)->GetUseRegNo()].insert(id);
            }
        }
    }
    return std::tuple(defs, uses, def_num);
}

// vset is the set of alloca regno that only store but not load
void Mem2RegNoUseAlloca(CFG *C, std::set<int> &vset) {
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() == STORE) {
                auto StoreI = (StoreInstruction *)I;
                if (StoreI->GetPointer()->GetOperandType() != BasicOperand::REG) {
                    continue;
                }
                int v = (StoreI)->GetDefRegNo();
                if (vset.find(v) == vset.end()) {
                    continue;
                }
                EraseSet.insert(I);
            }
        }
    }
}

// vset is the set of alloca regno that load and store are all in the BB block_id
void Mem2RegUseDefInSameBlock(CFG *C, std::set<int> vset, int block_id) {
    std::map<int, int> curr_reg_map;    //<alloca reg, current store value regno>
    for (auto I : (*C->block_map)[block_id]->Instruction_list) {
        if (I->GetOpcode() == STORE) {
            auto StoreI = (StoreInstruction *)I;
            if (StoreI->GetPointer()->GetOperandType() != BasicOperand::REG) {
                continue;
            }
            int v = StoreI->GetDefRegNo();
            if (vset.find(v) == vset.end()) {
                continue;
            }
            curr_reg_map[v] = ((RegOperand *)(StoreI->GetValue()))->GetRegNo();
            EraseSet.insert(I);
        }
        if (I->GetOpcode() == LOAD) {
            auto LoadI = (LoadInstruction *)I;
            if (LoadI->GetPointer()->GetOperandType() != BasicOperand::REG) {
                continue;
            }
            int v = LoadI->GetUseRegNo();
            if (vset.find(v) == vset.end()) {
                continue;
            }
            mem2reg_map[LoadI->GetResultRegNo()] = curr_reg_map[v];
            EraseSet.insert(I);
        }
    }
}

// vset is the set of alloca regno that one store dominators all load instructions
void Mem2RegOneDefDomAllUses(CFG *C, std::set<int> vset) {
    std::map<int, int> v_result_map;
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() == STORE) {
                auto StoreI = (StoreInstruction *)I;
                if (StoreI->GetPointer()->GetOperandType() != BasicOperand::REG) {
                    continue;
                }
                int v = StoreI->GetDefRegNo();
                if (vset.find(v) == vset.end()) {
                    continue;
                }
                v_result_map[v] = ((RegOperand *)(StoreI->GetValue()))->GetRegNo();
                EraseSet.insert(I);
            }
        }
    }
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() == LOAD) {
                auto LoadI = (LoadInstruction *)I;
                if (LoadI->GetPointer()->GetOperandType() != BasicOperand::REG) {
                    continue;
                }
                int v = LoadI->GetUseRegNo();
                if (vset.find(v) == vset.end()) {
                    continue;
                }
                mem2reg_map[LoadI->GetResultRegNo()] = v_result_map[v];
                EraseSet.insert(I);
            }
        }
    }
}

void InsertPhi(CFG *C) {
    auto [defs, uses, def_num] = CalculatedDefAndUse(C);
    LLVMBlock entry_BB = (*C->block_map)[0];
    std::set<int> no_use_vset, onedom_vset;
    std::map<int, std::set<int>> sameblock_vset_map;

    for (auto I : entry_BB->Instruction_list) {
        if (I->GetOpcode() != ALLOCA) {
            continue;
        }

        auto AllocaI = (AllocaInstruction *)I;
        if (!(AllocaI->GetDims().empty())) {
            continue;
        }    // array can not be promoted
        int v = AllocaI->GetResultRegNo();
        LLVMType type = AllocaI->GetDataType();

        auto alloca_defs = defs[v];
        auto alloca_uses = uses[v];
        if (alloca_uses.size() == 0) {    // not use
            EraseSet.insert(I);
            no_use_vset.insert(v);
            continue;
        }

        if (alloca_defs.size() == 1) {
            int block_id = *(alloca_defs.begin());
            if (alloca_uses.size() == 1 && *(alloca_uses.begin()) == block_id) {    // def and use in the same block
                EraseSet.insert(I);
                sameblock_vset_map[block_id].insert(v);
                continue;
            }
        }

        if (def_num[v] == 1) {    // only def once
            int block_id = *(alloca_defs.begin());
            int dom_flag = 1;
            for (auto load_BBid : alloca_uses) {
                if (C->IsDominate(block_id, load_BBid) == false) {
                    dom_flag = 0;
                    break;
                }
            }
            if (dom_flag) {    // one def dominate all uses
                EraseSet.insert(I);
                onedom_vset.insert(v);
                continue;
            }
        }

        // next is the common situation
        common_allocas.insert(v);
        EraseSet.insert(I);
        std::set<int> F{};            // set of blocks where phi is added
        std::set<int> W = defs[v];    // set of blocks that contain the def of regno

        while (!W.empty()) {
            int BB_X = *W.begin();
            W.erase(BB_X);
            for (auto BB_Y : C->DomTree.GetDF(BB_X)) {
                // std::cout<<v<<" "<<BB_X<<" "<<BB_Y<<"\n";
                if (F.find(BB_Y) == F.end()) {
                    PhiInstruction *PhiI = new PhiInstruction(type, new RegOperand(++C->max_reg));
                    (*C->block_map)[BB_Y]->InsertInstruction(0, PhiI);
                    phi_map[PhiI] = v;
                    F.insert(BB_Y);
                    if (defs[v].find(BB_Y) == defs[v].end()) {
                        W.insert(BB_Y);
                    }
                }
            }
        }
    }
    Mem2RegNoUseAlloca(C, no_use_vset);
    Mem2RegOneDefDomAllUses(C, onedom_vset);
    for (auto [id, vset] : sameblock_vset_map) {
        Mem2RegUseDefInSameBlock(C, vset, id);
    }
}

int in_allocas(std::set<int> &S, Instruction I) {
    if (I->GetOpcode() == LOAD) {
        auto LoadI = (LoadInstruction *)I;
        if (LoadI->GetPointer()->GetOperandType() != BasicOperand::REG) {
            return -1;
        }
        int pointer = LoadI->GetUseRegNo();
        if (S.find(pointer) != S.end()) {
            return pointer;
        }
    }
    if (I->GetOpcode() == STORE) {
        auto StoreI = (StoreInstruction *)I;
        if (StoreI->GetPointer()->GetOperandType() != BasicOperand::REG) {
            return -1;
        }
        int pointer = StoreI->GetDefRegNo();
        if (S.find(pointer) != S.end()) {
            return pointer;
        }
    }
    return -1;
}

void VarRename(CFG *C) {
    std::map<int, std::map<int, int>> WorkList;    //< BB, <alloca_reg,val_reg> >
    WorkList.insert({0, std::map<int, int>{}});
    std::vector<int> BBvis;
    BBvis.resize(C->max_label + 1);
    while (!WorkList.empty()) {
        int BB = (*WorkList.begin()).first;
        auto IncomingVals = (*WorkList.begin()).second;
        WorkList.erase(BB);
        if (BBvis[BB]) {
            continue;
        }
        BBvis[BB] = 1;
        for (auto &I : (*C->block_map)[BB]->Instruction_list) {
            if (I->GetOpcode() == LOAD) {
                auto LoadI = (LoadInstruction *)I;
                int v = in_allocas(common_allocas, I);
                if (v >= 0) {    // load instruction is in common_allocas
                    // 如果当前指令是 load，找到对应的 alloca v，将用到 load 结果的地方都替换成
                    // IncomingVals[v]
                    EraseSet.insert(LoadI);
                    mem2reg_map[LoadI->GetResultRegNo()] = IncomingVals[v];
                }
            }
            if (I->GetOpcode() == STORE) {
                auto StoreI = (StoreInstruction *)I;
                int v = in_allocas(common_allocas, I);
                if (v >= 0) {    // store instruction is in common_allocas
                    // 如果当前指令是 store，找到对应的 alloca v，更新IncomingVals[v] = val,并删除store
                    EraseSet.insert(StoreI);
                    IncomingVals[v] = ((RegOperand *)(StoreI->GetValue()))->GetRegNo();
                }
            }
            if (I->GetOpcode() == PHI) {
                auto PhiI = (PhiInstruction *)I;
                if (EraseSet.find(PhiI) != EraseSet.end()) {
                    continue;
                }
                auto it = phi_map.find(PhiI);
                if (it != phi_map.end()) {    // phi instruction is in allocas
                    // 更新IncomingVals[v] = val
                    IncomingVals[it->second] = PhiI->GetResultRegNo();
                }
            }
        }
        for (auto succ : C->G[BB]) {
            int BBv = succ->block_id;
            WorkList.insert({BBv, IncomingVals});
            for (auto I : (*C->block_map)[BBv]->Instruction_list) {
                if (I->GetOpcode() != PHI) {
                    break;
                }
                auto PhiI = (PhiInstruction *)I;
                // 找到 phi 对应的 alloca
                auto it = phi_map.find(PhiI);
                if (it != phi_map.end()) {
                    int v = it->second;
                    if (IncomingVals.find(v) == IncomingVals.end()) {
                        EraseSet.insert(PhiI);
                        continue;
                    }
                    // 为 phi 添加前驱块到当前块的边
                    PhiI->InsertPhi(new RegOperand(IncomingVals[v]), new LabelOperand(BB));
                }
            }
        }
    }

    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() == LOAD && ((LoadInstruction *)I)->GetPointer()->GetOperandType() == BasicOperand::REG) {
                int result = I->GetResultRegNo();
                if (mem2reg_map.find(result) != mem2reg_map.end()) {
                    int result2 = mem2reg_map[result];
                    while (mem2reg_map.find(result2) != mem2reg_map.end()) {
                        mem2reg_map[result] = mem2reg_map[result2];
                        result2 = mem2reg_map[result];
                    }
                }
            }
        }
    }

    for (auto [id, bb] : *C->block_map) {
        auto tmp_Instruction_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for (auto I : tmp_Instruction_list) {
            if (EraseSet.find(I) != EraseSet.end()) {
                continue;
            }
            bb->InsertInstruction(1, I);
        }
    }

    for (auto B1 : *C->block_map) {
        for (auto I : B1.second->Instruction_list) {
            // replace mem2reg_map
            I->ReplaceByMap(mem2reg_map);
        }
    }

    EraseSet.clear();
    mem2reg_map.clear();
    common_allocas.clear();
    phi_map.clear();
}

void Mem2Reg(CFG *C) {
    InsertPhi(C);
    VarRename(C);
}
