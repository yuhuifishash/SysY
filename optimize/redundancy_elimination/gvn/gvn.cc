#include "hash_table.h"
#include <deque>

void SparseConditionalConstantPropagation(CFG *C);
// void InstSimplify(CFG *C);
// void InstCombine(CFG *C);
void SimplifyCFG(CFG *C);

HashTable hashtable;
// TODO():GVN
void GlobalValueNumber(CFG *C) {
    std::cerr << C->function_def->GetFunctionName() << '\n';
    C->BuildCFG();
    C->BuildDominatorTree();
    hashtable.defineDFS(C);
    auto DomTree = C->DomTree;
    auto G = DomTree.dom_tree;
    auto blockmap = *C->block_map;
    std::map<Instruction, Instruction> EraseMap;
    std::function<void(int)> DFS = [&](int ubbid) {
        auto ubb = blockmap[ubbid];
        auto it = ubb->Instruction_list.end();
        do {
            it--;
            auto I = *it;
            auto check = hashtable.lookupOrAdd(I);
            if (check != -1 && hashtable.valuevetor[check].front()->GetFullName() != I->GetResultReg()->GetFullName()) {
                auto resulttype = I->GetResultType();
                auto op = hashtable.valuevetor[check].front();
                if (resulttype == I32) {
                    auto newI = new ArithmeticInstruction(ADD, I32, new ImmI32Operand(0), op, I->GetResultReg());
                    EraseMap[I] = newI;
                } else if (resulttype == FLOAT32) {
                    auto newI = new ArithmeticInstruction(FADD, FLOAT32, new ImmF32Operand(0), op, I->GetResultReg());
                    EraseMap[I] = newI;
                }
            }
        } while (it != ubb->Instruction_list.begin());

        for (int i = 0; i < G[ubbid].size(); ++i) {
            auto vbb = G[ubbid][i];
            auto vbbid = vbb->block_id;
            DFS(vbbid);
        }
        for (auto I : ubb->Instruction_list) {
            auto check = hashtable.lookupOrAdd(I);
            if (check != -1) {
                auto op = hashtable.valuevetor[check].front();
                auto str = hashtable.stringmap[check];
                hashtable.valuevetor[check].pop_back();
                if (hashtable.valuevetor.empty()) {
                    hashtable.stringmap.erase(check);
                    hashtable.valuemap.erase(str);
                }
            }
        }
    };
    DFS(0);
    for (auto [id, bb] : *C->block_map) {
        auto tmp_Instruction_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for (auto I : tmp_Instruction_list) {
            if (EraseMap.find(I) != EraseMap.end()) {
                I = EraseMap[I];
            }
            bb->InsertInstruction(1, I);
        }
    }
    C->BuildCFG();
    C->BuildDominatorTree();
    SparseConditionalConstantPropagation(C);
    SimplifyCFG(C);
    // for (auto [id, bb] : *uCFG->block_map) {
    //     for (auto I : bb->Instruction_list) {
    //         I->SetBlockID(id);
    //     }
    // }
}

void ElimateGVNPhi(CFG *C) {
    // TODO:ElimateGVNPhi
    //  std::cerr<<C->function_def->GetFunctionName()<<'\n';
    auto blockmap = *C->block_map;
    hashtable.defineDFS(C);
    bool Check = true;
    auto DomTree = C->DomTree;
    auto G = DomTree.dom_tree;
    std::function<void(int)> DFS1 = [&](int ubbid) {
        auto ubb = blockmap[ubbid];
        auto it = ubb->Instruction_list.end();
        do {
            it--;
            auto I = *it;
            auto check = hashtable.lookupOrAdd(I);
        } while (it != ubb->Instruction_list.begin());

        for (int i = 0; i < G[ubbid].size(); ++i) {
            auto vbb = G[ubbid][i];
            auto vbbid = vbb->block_id;
            DFS1(vbbid);
        }
    };

    bool isFirst = true;
    while (Check) {
        Check = false;
        if (!isFirst) {
            isFirst = false;
        } else {
            C->BuildCFG();
            C->BuildDominatorTree();
            hashtable.defineDFS(C);
            DomTree = C->DomTree;
            G = DomTree.dom_tree;
            blockmap = *C->block_map;
        }
        DFS1(0);
        for (auto [id, bb] : *C->block_map) {
            // bb->printIR(std::cerr);
            bool existElimate = 0;
            for (auto &I : bb->Instruction_list) {
                if (I->GetOpcode() != PHI) {
                    break;
                }
                auto PhiI = (PhiInstruction *)I;
                bool CanElimate = 1;
                auto FstOp = PhiI->GetPhiList().front().second;
                if (FstOp->GetOperandType() != BasicOperand::REG) {
                    continue;
                }
                // I->PrintIR(std::cerr);
                auto FstValue = hashtable.resultmap[((RegOperand *)FstOp)->GetRegNo()];
                for (auto [Labelop, Regop] : PhiI->GetPhiList()) {
                    // I->PrintIR(std::cerr);
                    if (Regop->GetOperandType() != BasicOperand::REG) {
                        CanElimate = 0;
                        break;
                    }
                    auto OpValue = hashtable.resultmap[((RegOperand *)Regop)->GetRegNo()];
                    if (OpValue != FstValue) {
                        CanElimate = 0;
                        break;
                    }
                    // std::cerr<<Labelop->GetFullName()<<" "<<
                    //     Regop->GetFullName()<<"
                    //     "<<(hashtable.definemap.find(((RegOperand*)Regop)->GetRegNo())==hashtable.definemap.end())<<'\n';
                    // std::cerr<<Labelop->GetFullName()<<" "<<Regop->GetFullName()<<'\n';
                    // defI->PrintIR(std::cerr);
                    if (hashtable.definemap.find(((RegOperand *)Regop)->GetRegNo()) == hashtable.definemap.end() ||
                        (hashtable.definemap[((RegOperand *)Regop)->GetRegNo()]->GetOpcode() != ADD &&
                         hashtable.definemap[((RegOperand *)Regop)->GetRegNo()]->GetOpcode() != FADD)) {
                        CanElimate = 0;
                        break;
                    }

                    // I->PrintIR(std::cerr);
                }

                if (CanElimate) {
                    existElimate = 1;
                    auto resultOp = (RegOperand *)PhiI->GetResultReg();
                    // I->PrintIR(std::cerr);
                    auto oldI = hashtable.definemap[((RegOperand *)FstOp)->GetRegNo()];
                    oldI = (ArithmeticInstruction *)oldI;
                    auto NoResultOp = oldI->GetNonResultOperands();
                    if (NoResultOp.size() == 2) {
                        I = new ArithmeticInstruction((LLVMIROpcode)oldI->GetOpcode(), oldI->GetResultType(),
                                                      NoResultOp[0], NoResultOp[1], PhiI->GetResultOp());
                    } else {
                        I = new ArithmeticInstruction((LLVMIROpcode)oldI->GetOpcode(), oldI->GetResultType(),
                                                      NoResultOp[0], NoResultOp[1], NoResultOp[2], PhiI->GetResultOp());
                    }
                    // I->PrintIR(std::cerr);
                    Check = true;
                }
            }
            if (existElimate) {
                std::queue<Instruction> phiq;
                auto tmp_Instruction_list = bb->Instruction_list;
                bb->Instruction_list.clear();
                for (auto I : tmp_Instruction_list) {
                    if (I->GetOpcode() == PHI) {
                        phiq.push(I);
                    } else {
                        bb->InsertInstruction(1, I);
                    }
                }
                while (!phiq.empty()) {
                    bb->InsertInstruction(0, phiq.front());
                    phiq.pop();
                }
            }
            // bb->printIR(std::cerr);
        }
    }
    C->BuildCFG();
    C->BuildDominatorTree();
    SparseConditionalConstantPropagation(C);
    SimplifyCFG(C);
}
void GepGCM(CFG *C){
    std::map<int,std::vector<Instruction>> usevector;
    std::map<Instruction,int> usemindfn;
    std::map<Instruction,int> usemaxdfn;
    std::map<int,int> dfnmap;
    int dclock = 0;
    auto blockmap = *C->block_map;
    hashtable.defineDFS(C);
    bool Check = true;
    auto DomTree = C->DomTree;
    auto G = DomTree.dom_tree;
    std::function<void(int)> DFS1 = [&](int ubbid) {
        auto ubb = blockmap[ubbid];
        dfnmap[ubbid]=++dclock;
        for (int i = 0; i < G[ubbid].size(); ++i) {
            auto vbb = G[ubbid][i];
            auto vbbid = vbb->block_id;
            DFS1(vbbid);
        }
    };
    std::function<void(int)> DFS2 = [&](int ubbid) {
        auto ubb = blockmap[ubbid];
        auto it = ubb->Instruction_list.end();
        do {
            it--;
            auto I = *it;
            auto check = hashtable.lookupOrAdd(I);
            if(I->GetOpcode()==GETELEMENTPTR){
                usevector[check].push_back(I);
            }else if(I->GetOpcode()==PHI){
                auto phiI = (PhiInstruction*)I;
                for(auto [labelop,valop]:phiI->GetPhiList()){
                    if(valop->GetOperandType() != BasicOperand::REG){
                        continue;
                    }
                    auto regop = (RegOperand*)valop;
                    auto regno = regop->GetRegNo();
                    if(hashtable.definemap.find(regno)==hashtable.definemap.end()){
                        continue;
                    }
                    auto defI = hashtable.definemap[regno];
                    if(defI->GetOpcode()!=GETELEMENTPTR){
                        continue;
                    }
                    check = hashtable.lookupOrAdd(defI);
                    usevector[check].push_back(I);
                }
            }
        } while (it != ubb->Instruction_list.begin());

        for (int i = 0; i < G[ubbid].size(); ++i) {
            auto vbb = G[ubbid][i];
            auto vbbid = vbb->block_id;
            DFS2(vbbid);
        }
    };
    DFS1(0);
    DFS2(0);
    //early schedule
    //late schedule
    // for (auto [id, bb] : *C->block_map) {
    //     for (auto I : bb->Instruction_list) {

    //     }
    // }
}