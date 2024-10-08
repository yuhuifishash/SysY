#include "../../include/cfg.h"
#include "../alias_analysis/alias_analysis.h"
#include "memdep/memdep.h"
#include <functional>

/*this pass will do some simple common subexpression elimination
BasicBlockCSE only eliminate common subexpression in the single block
DomTreeWalkCSE will do dfs on the dominator tree to search common subexpression and eliminate them
*/

extern std::map<std::string, CFG *> CFGMap;
extern AliasAnalyser *alias_analyser;
extern MemoryDependenceAnalyser *memdep_analyser;

struct InstCSEInfo {
    int opcode;
    std::vector<std::string> operand_list;
    bool operator<(const InstCSEInfo &x) const {
        if (opcode != x.opcode) {
            return opcode < x.opcode;
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

static InstCSEInfo GetCSEInfo(Instruction I) {
    InstCSEInfo ans;
    ans.opcode = I->GetOpcode();

    auto list = I->GetNonResultOperands();
    if (I->GetOpcode() == CALL) {
        auto CallI = (CallInstruction *)I;
        ans.operand_list.push_back(CallI->GetFunctionName());
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

    if (I->GetOpcode() == GETELEMENTPTR) {
        auto GEPI = (GetElementptrInstruction *)I;
        for (auto dim : GEPI->GetDims()) {
            ans.operand_list.push_back((new ImmI32Operand(dim))->GetFullName());
        }
    }
    return ans;
}

// memory instructions and special instructions will return false
bool CSENotConsider(Instruction I) {
    if (I->GetOpcode() == PHI || I->GetOpcode() == BR_COND || I->GetOpcode() == BR_UNCOND || I->GetOpcode() == ALLOCA ||
        I->GetOpcode() == RET || I->GetOpcode() == ICMP || I->GetOpcode() == FCMP) {
        return false;
    }
    return true;
}
void CallKillReadMemInst(Instruction I, std::map<InstCSEInfo, int> &CallInstMap,
                         std::map<InstCSEInfo, int> &LoadInstMap, std::set<Instruction> &CallInstSet,
                         std::set<Instruction> &LoadInstSet, CFG *C) {
    assert(I->GetOpcode() == CALL);
    auto CallI = (CallInstruction *)I;
    if (CFGMap.find(CallI->GetFunctionName()) == CFGMap.end()) {
        // for simple, we do not consider independent call there, this can be CSE in DomTreeWalkCSE
        // I->PrintIR(std::cerr);std::cerr<<"kill everything\n";
        LoadInstMap.clear();
        LoadInstSet.clear();
        CallInstMap.clear();
        CallInstSet.clear();
        return;    // external call
    }

    auto cfg = CFGMap[CallI->GetFunctionName()];

    // have external call
    if (alias_analyser->CFG_haveExternalCall(cfg)) {
        // for simple, we do not consider independent call there, this can be CSE in DomTreeWalkCSE
        // I->PrintIR(std::cerr);std::cerr<<"kill everything\n";
        LoadInstMap.clear();
        LoadInstSet.clear();
        CallInstMap.clear();
        CallInstSet.clear();
        return;
    }

    for (auto it = LoadInstSet.begin(); it != LoadInstSet.end();) {
        assert((*it)->GetOpcode() == LOAD);
        auto LoadI = (LoadInstruction *)(*it);
        auto ptr = LoadI->GetPointer();

        auto result = alias_analyser->QueryInstModRef(I, ptr, C);
        if (result == AliasAnalyser::Mod || result == AliasAnalyser::ModRef) {
            // I->PrintIR(std::cerr);std::cerr<<"kill ";(*it)->PrintIR(std::cerr);

            LoadInstMap.erase(GetCSEInfo(*it));
            it = LoadInstSet.erase(it);
        } else {
            ++it;
        }
    }

    auto writeptrs = alias_analyser->GetWritePtrs(cfg);
    std::vector<Operand> real_writeptrs;
    for (auto ptr : writeptrs) {
        if (ptr->GetOperandType() == BasicOperand::GLOBAL) {
            real_writeptrs.push_back(ptr);
        } else if (ptr->GetOperandType() == BasicOperand::REG) {
            int ptr_regno = ((RegOperand *)ptr)->GetRegNo();

            assert(ptr_regno < CallI->GetParameterList().size());

            auto [type, real_ptr2] = CallI->GetParameterList()[ptr_regno];
            real_writeptrs.push_back(real_ptr2);
        } else {    // should not reach here
            assert(false);
        }
    }

    for (auto it = CallInstSet.begin(); it != CallInstSet.end();) {
        assert((*it)->GetOpcode() == CALL);
        bool is_needkill = false;
        for (auto ptr : real_writeptrs) {
            if (alias_analyser->QueryInstModRef(*it, ptr, C) != AliasAnalyser::NoModRef) {
                is_needkill = true;
                break;
            }
        }
        if (is_needkill) {
            // I->PrintIR(std::cerr);std::cerr<<"kill ";(*it)->PrintIR(std::cerr);

            CallInstMap.erase(GetCSEInfo(*it));
            it = CallInstSet.erase(it);
        } else {
            ++it;
        }
    }
}

void StoreKillReadMemInst(Instruction I, std::map<InstCSEInfo, int> &CallInstMap,
                          std::map<InstCSEInfo, int> &LoadInstMap, std::set<Instruction> &CallInstSet,
                          std::set<Instruction> &LoadInstSet, CFG *C) {
    assert(I->GetOpcode() == STORE);
    auto ptr = ((StoreInstruction *)I)->GetPointer();

    for (auto it = LoadInstSet.begin(); it != LoadInstSet.end();) {
        auto result = alias_analyser->QueryInstModRef(*it, ptr, C);
        if (result == AliasAnalyser::Ref) {    // if load instruction ref the ptr of store instruction
            // I->PrintIR(std::cerr);std::cerr<<"kill ";(*it)->PrintIR(std::cerr);

            LoadInstMap.erase(GetCSEInfo(*it));
            it = LoadInstSet.erase(it);
        } else {
            ++it;
        }
    }

    for (auto it = CallInstSet.begin(); it != CallInstSet.end();) {
        auto result = alias_analyser->QueryInstModRef(*it, ptr, C);
        if (result != AliasAnalyser::NoModRef) {
            // I->PrintIR(std::cerr);std::cerr<<"kill ";(*it)->PrintIR(std::cerr);

            CallInstMap.erase(GetCSEInfo(*it));
            it = CallInstSet.erase(it);
        } else {
            ++it;
        }
    }
}

bool BasicBlockCSE(LLVMBlock bb, std::map<int, int> &reg_replace_map, std::set<Instruction> &EraseSet, CFG *C) {
    bool changed = false;
    std::map<InstCSEInfo, int> LoadInstMap;    // <load_inst_info, result_reg>
    // call instructions in map must can not read memory
    std::map<InstCSEInfo, int> CallInstMap;    // <call_inst_info, result_reg>
    std::map<InstCSEInfo, int> InstMap;        // <other_inst_info, result_reg>

    std::set<Instruction> LoadInstSet;
    std::set<Instruction> CallInstSet;

    for (auto I : bb->Instruction_list) {
        if (CSENotConsider(I) == false) {
            continue;
        }
        if (I->GetOpcode() == CALL) {
            auto CallI = (CallInstruction *)I;
            if (CFGMap.find(CallI->GetFunctionName()) == CFGMap.end()) {
                LoadInstMap.clear();
                LoadInstSet.clear();
                CallInstMap.clear();
                CallInstSet.clear();
                continue;    // external call, clear all instructions
            }
            auto cfg = CFGMap[CallI->GetFunctionName()];
            if (alias_analyser->CFG_isNoSideEffect(cfg)) {    // only read memory, we can CSE
                auto Info = GetCSEInfo(I);
                auto CSEiter = CallInstMap.find(Info);
                if (CSEiter != CallInstMap.end()) {
                    EraseSet.insert(I);
                    // I->PrintIR(std::cerr);
                    reg_replace_map[I->GetResultRegNo()] = CSEiter->second;
                    changed |= true;
                } else {
                    CallInstSet.insert(I);
                    CallInstMap.insert({Info, I->GetResultRegNo()});
                }
            } else {    // write memory, can not CSE, and will kill some Load and Call
                CallKillReadMemInst(I, CallInstMap, LoadInstMap, CallInstSet, LoadInstSet, C);
            }

        } else if (I->GetOpcode() == STORE) {
            // store instructions, this will kill some loads
            StoreKillReadMemInst(I, CallInstMap, LoadInstMap, CallInstSet, LoadInstSet, C);

            /* then the store can generate a new load value
               store %rx -> ptr %p0
               %ry = load ptr %p0
               this will be optimized to %ry = %rx
            */
            auto StoreI = (StoreInstruction *)I;
            assert(StoreI->GetValue()->GetOperandType() == BasicOperand::REG);

            int val_regno = ((RegOperand *)StoreI->GetValue())->GetRegNo();
            if (reg_replace_map.find(val_regno) != reg_replace_map.end()) {
                val_regno = reg_replace_map[val_regno];
            }

            auto LoadI = new LoadInstruction(StoreI->GetDataType(), StoreI->GetPointer(), GetNewRegOperand(val_regno));
            auto Info = GetCSEInfo(LoadI);
            LoadInstSet.insert(LoadI);
            LoadInstMap.insert({Info, LoadI->GetResultRegNo()});

        } else if (I->GetOpcode() == LOAD) {
            auto Info = GetCSEInfo(I);
            auto CSEiter = LoadInstMap.find(Info);
            if (CSEiter != LoadInstMap.end()) {
                EraseSet.insert(I);
                // I->PrintIR(std::cerr);
                reg_replace_map[I->GetResultRegNo()] = CSEiter->second;
                changed |= true;
            } else {
                LoadInstSet.insert(I);
                LoadInstMap.insert({Info, I->GetResultRegNo()});
            }
        } else {    // other instructions
            auto Info = GetCSEInfo(I);
            auto CSEiter = InstMap.find(Info);
            if (CSEiter != InstMap.end()) {
                EraseSet.insert(I);
                // I->PrintIR(std::cerr);
                reg_replace_map[I->GetResultRegNo()] = CSEiter->second;
                changed |= true;
            } else {
                InstMap.insert({Info, I->GetResultRegNo()});
            }
        }
    }
    return changed;
}

void BasicBlockCSE(CFG *C) {
    bool changed = true;
    while (changed) {
        changed = false;
        std::map<int, int> reg_replace_map;
        std::set<Instruction> EraseSet;
        for (auto [id, bb] : *C->block_map) {
            changed |= BasicBlockCSE(bb, reg_replace_map, EraseSet, C);
        }
        // erase useless instructions and replace new RegOperand
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

        for (auto &[o_id, n_id] : reg_replace_map) {
            while (reg_replace_map.find(n_id) != reg_replace_map.end()) {
                n_id = reg_replace_map[n_id];
            }
        }
        for (auto [id, bb] : *C->block_map) {
            for (auto I : bb->Instruction_list) {
                I->ReplaceRegByMap(reg_replace_map);
            }
        }
        // std::cerr<<"------------------------------\n\n";
    }
}

void DomTreeWalkCSE(CFG *C) {
    std::set<Instruction> EraseSet;
    std::map<InstCSEInfo, int> InstCSEMap;    //<inst_info, result_reg>
    std::map<InstCSEInfo, std::vector<Instruction>> LoadCSEMap;
    std::map<int, int> reg_replace_map;
    bool changed = true;

    std::function<void(int)> dfs = [&](int bbid) {
        LLVMBlock now = (*C->block_map)[bbid];
        std::set<InstCSEInfo> tmpcse_set;
        std::map<InstCSEInfo, int> tmpload_num_map;
        for (auto I : now->Instruction_list) {
            if (CSENotConsider(I) == false) {
                continue;
            }
            if (I->GetOpcode() == LOAD) {
                auto LoadI = (LoadInstruction *)I;
                auto info = GetCSEInfo(LoadI);
                auto CSEiter = LoadCSEMap.find(info);
                if (CSEiter != LoadCSEMap.end()) {
                    bool is_cse = false;
                    for (auto I2 : LoadCSEMap[info]) {
                        // I->PrintIR(std::cerr);I2->PrintIR(std::cerr);
                        if (memdep_analyser->isLoadSameMemory(I, I2, C) == true) {
                            EraseSet.insert(I);
                            // I->PrintIR(std::cerr);
                            // I2->PrintIR(std::cerr);
                            // std::cerr<<"-----------------------------\n";
                            if (I2->GetOpcode() == STORE) {
                                // I->PrintIR(std::cerr);
                                auto StoreI2 = (StoreInstruction *)I2;
                                int val_regno = ((RegOperand *)StoreI2->GetValue())->GetRegNo();
                                if (reg_replace_map.find(val_regno) != reg_replace_map.end()) {
                                    val_regno = reg_replace_map[val_regno];
                                }
                                reg_replace_map[I->GetResultRegNo()] = val_regno;

                            } else if (I2->GetOpcode() == LOAD) {

                                reg_replace_map[I->GetResultRegNo()] = I2->GetResultRegNo();
                            } else {    // should not reach here
                                assert(false);
                            }

                            changed |= true;
                            is_cse = true;
                            break;
                        }
                    }
                    if (is_cse) {
                        continue;
                    }
                }

                LoadCSEMap[info].push_back(LoadI);
                tmpload_num_map[info] += 1;
                continue;
            }
            if (I->GetOpcode() == STORE) {    // store will generate new load
                auto StoreI = (StoreInstruction *)I;
                assert(StoreI->GetValue()->GetOperandType() == BasicOperand::REG);

                int val_regno = ((RegOperand *)StoreI->GetValue())->GetRegNo();
                if (reg_replace_map.find(val_regno) != reg_replace_map.end()) {
                    val_regno = reg_replace_map[val_regno];
                }

                auto LoadI =
                new LoadInstruction(StoreI->GetDataType(), StoreI->GetPointer(), GetNewRegOperand(val_regno));
                auto info = GetCSEInfo(LoadI);
                LoadCSEMap[info].push_back(StoreI);
                tmpload_num_map[info] += 1;
                continue;
            }
            if (I->GetOpcode() == CALL) {
                auto CallI = (CallInstruction *)I;
                if (CFGMap.find(CallI->GetFunctionName()) == CFGMap.end()) {
                    continue;    // external call
                }
                auto cfg = CFGMap[CallI->GetFunctionName()];
                // we only CSE independent call in this Pass
                if (!alias_analyser->CFG_isIndependent(cfg)) {
                    continue;
                }
            }

            // other instructions
            auto Info = GetCSEInfo(I);
            auto CSEiter = InstCSEMap.find(Info);
            if (CSEiter != InstCSEMap.end()) {
                // I->PrintIR(std::cerr);
                EraseSet.insert(I);
                reg_replace_map[I->GetResultRegNo()] = CSEiter->second;
                changed |= true;
            } else {
                InstCSEMap.insert({Info, I->GetResultRegNo()});
                tmpcse_set.insert(Info);
            }
        }

        for (auto v : C->DomTree.dom_tree[bbid]) {
            dfs(v->block_id);
        }

        for (auto info : tmpcse_set) {
            InstCSEMap.erase(info);
        }

        for (auto [info, num] : tmpload_num_map) {
            for (int i = 0; i < num; ++i) {
                LoadCSEMap[info].pop_back();
            }
        }
    };

    while (changed) {
        changed = false;
        dfs(0);
        // erase useless instructions and replace new RegOperand
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
        for (auto [id, bb] : *C->block_map) {
            for (auto I : bb->Instruction_list) {
                I->ReplaceRegByMap(reg_replace_map);
            }
        }
    }
}

// for simplify, we can assume that all the store value are RegOperand in SimpleCSE
void SimpleCSEInit(CFG *C) {
    for (auto &[id, bb] : *C->block_map) {
        auto tmp_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for (auto I : tmp_list) {
            if (I->GetOpcode() == STORE) {
                auto StoreI = (StoreInstruction *)I;
                auto val = StoreI->GetValue();
                if (val->GetOperandType() == BasicOperand::IMMI32) {
                    auto ArithI =
                    new ArithmeticInstruction(ADD, I32, val, new ImmI32Operand(0), GetNewRegOperand(++C->max_reg));
                    bb->Instruction_list.push_back(ArithI);
                    StoreI->SetValue(GetNewRegOperand(C->max_reg));
                } else if (val->GetOperandType() == BasicOperand::IMMF32) {
                    auto ArithI =
                    new ArithmeticInstruction(FADD, FLOAT32, val, new ImmF32Operand(0), GetNewRegOperand(++C->max_reg));
                    bb->Instruction_list.push_back(ArithI);
                    StoreI->SetValue(GetNewRegOperand(C->max_reg));
                }
            }
            bb->Instruction_list.push_back(I);
        }
    }
}

void SimpleCSE(CFG *C) {
    SimpleCSEInit(C);

    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            I->SetBlockID(id);
        }
    }

    BasicBlockCSE(C);
    DomTreeWalkCSE(C);
}

void OnlyBasicBlockCSE(CFG *C) {
    SimpleCSEInit(C);

    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            I->SetBlockID(id);
        }
    }
    BasicBlockCSE(C);
}

void LatchPhiCombine(CFG *C) {
    std::map<int, Instruction> ResultMap;
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            int v = I->GetResultRegNo();
            if (v != -1) {    // result exists
                ResultMap[v] = I;
            }
        }
    }

    for (auto l : C->LoopForest.loop_set) {
        assert(l->latches.size() == 1);
        auto latch = *l->latches.begin();

        std::vector<Instruction> InsertIlist;

        auto it = latch->Instruction_list.begin();
        for (; it != latch->Instruction_list.end();) {
            auto I = *it;
            if (I->GetOpcode() != PHI) {
                break;
            }
            bool is_same = true;
            auto PhiI = (PhiInstruction *)I;
            Instruction defI = nullptr;
            std::set<InstCSEInfo> CSEInfoSet;
            for (auto [l, r] : PhiI->GetPhiList()) {
                if (r->GetOperandType() != BasicOperand::REG) {
                    is_same = false;
                    break;
                }
                auto regno = ((RegOperand *)r)->GetRegNo();
                if (ResultMap.find(regno) == ResultMap.end()) {
                    is_same = false;
                    break;
                }
                defI = ResultMap[regno];
                if (defI->GetOpcode() != ADD) {
                    is_same = false;
                    break;
                }
                CSEInfoSet.insert(GetCSEInfo(defI));
            }
            if (is_same == false) {
                ++it;
                continue;
            }
            if (CSEInfoSet.size() == 1) {
                it = latch->Instruction_list.erase(it);

                assert(defI->GetOpcode() == ADD);
                auto ArithI = (ArithmeticInstruction *)defI;
                auto nI =
                new ArithmeticInstruction(ADD, I32, ArithI->GetOperand1(), ArithI->GetOperand2(), PhiI->GetResultReg());

                InsertIlist.push_back(nI);
                continue;
            }
            ++it;
        }
        for (auto I : InsertIlist) {
            // std::cerr<<"latch"<<latch->block_id<<" combine ";
            // I->PrintIR(std::cerr);

            latch->Instruction_list.insert(it, I);
        }
    }
}