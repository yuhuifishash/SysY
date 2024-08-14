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
#define GVN_DEBUG
static std::set<int> arithset = {ADD,SUB,MUL,DIV,FADD,FSUB,FMUL,FDIV,MOD,BITXOR,GETELEMENTPTR};
void GlobalCodeMotion(CFG *C) {
    std::cerr<<C->function_def->GetFunctionName()<<'\n';
    std::map<int, std::vector<Instruction>> usevector;
    std::map<int, int> usemindfn;
    std::map<int, int> usemaxdfn;
    std::map<int, int> dfnmap;//label->dfn
    std::map<int, int> dclockmap;//dfn->label
    std::map<int, int> depth;
    std::map<int, int> par;
    std::set<int> isoptimized;
    int dclock = 0;
    auto blockmap = *C->block_map;
    hashtable.defineDFS(C);
    bool Check = true;
    auto DomTree = C->DomTree;
    auto G = DomTree.dom_tree;
    par[0] = -1;
    std::function<int(int,int)> LCA = [&](int ubbid,int vbbid) {
        if(depth[ubbid] < depth[vbbid]){
            std::swap(ubbid,vbbid);
        }
        while(depth[ubbid] > depth[vbbid]){
            ubbid = par[ubbid];
        }
        while(ubbid!=vbbid){
            ubbid = par[ubbid];
            vbbid = par[vbbid];
        }
        return ubbid;
    };
    std::function<void(int)> DFS1 = [&](int ubbid) {
        // update depth and parent of domtree
        auto ubb = blockmap[ubbid];
        dfnmap[ubbid] = ++dclock;
        dclockmap[dclock] = ubbid;
        for (int i = 0; i < G[ubbid].size(); ++i) {
            auto vbb = G[ubbid][i];
            auto vbbid = vbb->block_id;
            par[vbbid] = ubbid;
            depth[vbbid] = depth[ubbid] + 1;
            DFS1(vbbid);
        }
    };
    std::function<void(int)> DFS2 = [&](int ubbid) {
        // GVN
        auto ubb = blockmap[ubbid];
        auto it = ubb->Instruction_list.end();
        do {
            it--;
            auto I = *it;
            auto check = hashtable.lookupOrAdd(I);
            auto labelid = I->GetBlockID();
            auto labeldfn = dfnmap[labelid];
            if (arithset.find(I->GetOpcode()) != arithset.end()) {
                usevector[check].push_back(I);
                if(usemindfn.find(check)==usemindfn.end()){
                    usemindfn[check] = usemaxdfn[check] = labeldfn;
                }else{
                    #ifdef GVN_DEBUG

                    #endif
                    usemindfn[check] = std::min(usemindfn[check],labeldfn);
                    usemaxdfn[check] = std::max(usemaxdfn[check],labeldfn);
                }
            } else if (I->GetOpcode() == PHI) {
                auto phiI = (PhiInstruction *)I;
                for (auto [labelop, valop] : phiI->GetPhiList()) {
                    if (valop->GetOperandType() != BasicOperand::REG) {
                        continue;
                    }
                    auto regop = (RegOperand *)valop;
                    auto regno = regop->GetRegNo();
                    if (hashtable.definemap.find(regno) == hashtable.definemap.end()) {
                        continue;
                    }
                    auto defI = hashtable.definemap[regno];
                    if (defI->GetOpcode() != GETELEMENTPTR && arithset.find(I->GetOpcode()) == arithset.end()) {
                        continue;
                    }
                    check = hashtable.lookupOrAdd(defI);
                    auto usedfn = dfnmap[((LabelOperand*)labelop)->GetLabelNo()];
                    if(usemindfn.find(check)==usemindfn.end()){
                        usemindfn[check] = usemaxdfn[check] = usedfn;
                    }else{
                        usemindfn[check] = std::min(usemindfn[check],usedfn);
                        usemaxdfn[check] = std::max(usemaxdfn[check],usedfn);
                    }
                }
            }
        } while (it != ubb->Instruction_list.begin());
        
        for (int i = 0; i < G[ubbid].size(); ++i) {
            auto vbb = G[ubbid][i];
            auto vbbid = vbb->block_id;
            // std::cerr<<ubbid<<" "<<vbbid<<'\n';
            DFS2(vbbid);
        }
    };
    depth[0] = 0;
    DFS1(0);
    DFS2(0);

    bool changed = true;
    auto funcdefI = C->function_def;
    auto funcdefnum = funcdefI->formals_reg.size();
    // GCM
    while(changed){
        changed = false;
        for(auto [val,vec]:usevector){
            if(vec.size() == 1 || isoptimized.find(val) != isoptimized.end()){
                continue;
            }
            auto nowI = vec[0];
            #ifdef GVN_DEBUG
            // nowI->PrintIR(std::cerr);
            // vec[1]->PrintIR(std::cerr);
            // std::cerr<<val<<" "<<vec.size()<<" "<<nowI->GetBlockID()<<" "<<vec[1]->GetBlockID()<<" "<<'\n';
            #endif
            bool nowcangcm = true;
            int deflabelmin = usemindfn[val];
            int deflabelmax = usemaxdfn[val];
            int dfnlca = LCA(dclockmap[deflabelmin],dclockmap[deflabelmax]);
            // get LCA of Instrutions
            
            for(auto useop:nowI->GetNonResultOperands()){
                // check all of useop whether dominote Instructions
                if(useop->GetOperandType()!=BasicOperand::REG){
                    continue;
                }
                auto usereg = (RegOperand*)useop;
                auto useregno = usereg->GetRegNo();
                if(useregno >= funcdefnum){
                    // useregno isn't formal_reg of function
                    if(hashtable.definemap.find(useregno) == hashtable.definemap.end()){
                        continue;
                    }
                    auto useI = hashtable.definemap[useregno];
                    auto useval = hashtable.lookupOrAdd(useI);
                    
                    if(useval == -1){
                        // puts("HERE");
                        // std::cerr<<useop->GetFullName()<<'\n';
                        nowcangcm = false;
                        break;
                    }
                    auto labelid = useI->GetBlockID();
                    if(!DomTree.IsDominate(labelid,dfnlca)){
                        nowcangcm = false;
                        break;
                    }
                }else{
                    // puts("DEBUG HERE");
                    // nowI->PrintIR(std::cerr);
                    // nowcangcm = false;
                    // break;
                }
            }
            
            if(!nowcangcm){
                continue;
            }
            changed = true;
            isoptimized.insert(val);
            
            auto &lcabb = blockmap[dfnlca];
            auto newI = nowI->CopyInstruction();
            if(newI->GetOpcode() == GETELEMENTPTR){
                ((GetElementptrInstruction*)newI)->SetResultReg(GetNewRegOperand(++C->max_reg));
            }else{
                ((ArithmeticInstruction*)newI)->SetResultReg(GetNewRegOperand(++C->max_reg));
            }
            hashtable.lookupOrAdd(newI);
            hashtable.definemap[newI->GetResultRegNo()] = newI;
            std::map<int,int> replacemap;
            bool insertback = true;
            for(auto replaceI:vec){
                replacemap[replaceI->GetResultRegNo()] = newI->GetResultRegNo();
                if(replaceI->GetBlockID() == dfnlca){
                    insertback = false;
                }
            }
            #ifdef GVN_DEBUG
            for(auto II : vec){
                II->PrintIR(std::cerr);
            }
            puts("---->");
            newI->PrintIR(std::cerr);
            puts("-------");
            #endif
            if(insertback){
                std::deque<Instruction> deq;
                auto oldI = lcabb->Instruction_list.back();
                deq.push_back(lcabb->Instruction_list.back());
                lcabb->Instruction_list.pop_back();
                // std::cerr<<
                if(oldI->GetOpcode() == BR_COND){
                    // deq.back()->PrintIR(std::cerr);
                    // puts("HERE");
                    deq.push_back(lcabb->Instruction_list.back());
                    // deq.back()->PrintIR(std::cerr);
                    lcabb->Instruction_list.pop_back();
                }
                lcabb->InsertInstruction(1,newI);
                while(!deq.empty()){
                    // deq.back()->PrintIR(std::cerr);
                    lcabb->InsertInstruction(1,deq.back());
                    deq.pop_back();
                }
            }else{
                for(auto it = lcabb->Instruction_list.begin();it != lcabb->Instruction_list.end(); ++it){
                    if(replacemap.find((*it)->GetResultRegNo())!=replacemap.end()){
                        // lcabb->printIR(std::cerr);
                        lcabb->Instruction_list.insert(it,newI);
                        // lcabb->printIR(std::cerr);
                        break;
                    }
                }
            }
            for(auto [id,bb]:*C->block_map){
                for(auto &I:bb->Instruction_list){
                    auto regno = I->GetResultRegNo();
                    if(replacemap.find(regno)!=replacemap.end()){
                        continue;
                    }
                    // if(regno == 260){
                    //     I->PrintIR(std::cerr);
                    // }
                    I->ReplaceRegByMap(replacemap);
                    // if(regno == 260){
                    //     I->PrintIR(std::cerr);
                    // }
                }
            }
        }
    }
    // late schedule
}