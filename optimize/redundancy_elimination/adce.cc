#include "../../include/cfg.h"
#include <functional>
// TODO():ADCE

/*this pass will do Aggressive Dead Code Elimination, it will eliminate useless Control Flow Structure
(such as useless loop)
*/

static std::vector<std::vector<LLVMBlock>> BuildCDG(CFG *C){
    std::vector<std::vector<LLVMBlock>> CDG;
    std::vector<std::vector<LLVMBlock>> CDG_precursor;
    C->BuildCFG();
    C->BuildDominatorTree();
    std::vector<int> rd;
    auto G = C->G;
    auto invG = C->invG;
    auto DomTree = C->DomTree;
    auto PostDomTree = C->PostDomTree;
    auto blockmap = (*C->block_map);
    CDG.resize(C->max_label + 2);
    rd.resize(C->max_label + 1, 0);
    CDG_precursor.resize(C->max_label + 1);
    //CFG map
    // if(C->function_def->GetFunctionName() == "sort"){
    // puts("CFG:");
    // for(int i = 0;i <= C->max_label;++i){
    //     for(int j=0;j< G[i].size();++j){
    //         std::cerr<<i<<" "<<G[i][j]->block_id<<'\n';
    //     }
    // }
    // puts("PostDom:");
    // for(int i = 0;i <= C->max_label;++i){
    //     auto dom = PostDomTree.dom_tree[i];
    //     for(int j=0;j< dom.size();++j){
    //         std::cerr<<i<<" "<<dom[j]->block_id<<'\n';
    //     }
    // }

    // puts("CDG:");
    // }
    for(int i = 0;i <= C->max_label;++i){
        auto domFrontier = PostDomTree.GetDF(i);
        // std::cerr<<i<<" : ";
        for(auto vbbid:domFrontier){
            // std::cerr<<vbbid<<' ';
            // if(C->function_def->GetFunctionName() == "sort"){
            //     std::cerr<<vbbid<<" "<<i<<'\n';
            // }
            // std::cerr<<i<<" "<<C->max_label<<" "<<domFrontier.size()<<" "<<vbbid<<'\n';
            // CDG[i].push_back(blockmap[vbbid]);
            CDG[vbbid].push_back(blockmap[i]);
            if(vbbid != i){
                rd[i]++;
            }
            // std::cerr<<i<<" "<<blockmap[i]->block_id<<'\n';
            // CDG_precursor[vbbid].push_back(blockmap[i]);
            CDG_precursor[blockmap[i]->block_id].push_back(blockmap[vbbid]);
        }
        // std::cerr<<"\n";
    }
    for(int i = 0;i <= C->max_label;++i){
        if(!rd[i]){
            CDG[C->max_label + 1].push_back(blockmap[i]);
        }
    }
    return CDG_precursor;
}
static Instruction FindTerminal(CFG *C,int bbid){
    auto blockmap = (*C->block_map);
    auto bb = blockmap[bbid];
    return bb->Instruction_list.back();
}
void AggressiveDeadCodeElimination(CFG *C) { 
    // DOING("AggressiveDeadCodeElimination");
    // std::cerr<<C->function_def->GetFunctionName()<<'\n'; 
    std::deque<Instruction> worklist;
    std::map<int,Instruction> defmap;
    std::set<Instruction> liveInstructionset;
    std::set<int> liveBBset;
    auto CDG_precursor = BuildCDG(C);
    auto invG = C->invG;
    auto DomTree = C->DomTree;
    auto DomTreeidom = DomTree.idom;
    auto PostDomTree = C->PostDomTree;
    auto PostDomTreeidom = PostDomTree.idom;
    auto blockmap = *C->block_map;
    int cnt = 0;
    for(auto [id,bb] : blockmap){
        for(auto I : bb->Instruction_list){
            cnt ++;
            if(I->GetOpcode() == STORE || I->GetOpcode() == CALL || I->GetOpcode() == RET){
                worklist.push_back(I);
            }
            if(I->GetResultReg() != nullptr){
                defmap[I->GetResultRegNo()] = I;
            }
        }

    }
    // puts("-----------");
    while(!worklist.empty()){
        auto I = worklist.front();
        worklist.pop_front();
        if(liveInstructionset.find(I) != liveInstructionset.end()){
            continue;
        }
        // if(C->function_def->GetFunctionName() == "main"){
        //     I->PrintIR(std::cerr);
        // }
        // I->PrintIR(std::cerr);
        liveInstructionset.insert(I);
        // auto parBB = invG[I->GetBlockID()];
        // int parBBno = -1;
        // if(!parBB.empty()){
        //     parBBno = parBB[0]->block_id;
        //     liveBBset.insert(parBBno);
        // }
        auto parBBno = I->GetBlockID();
        auto parBB = blockmap[I->GetBlockID()];
        liveBBset.insert(parBBno);
        if(I->GetOpcode()==PHI){
            auto PhiI = (PhiInstruction*)I;
            for(auto [Labelop, Regop ] : PhiI->GetPhiList()){
                // std::cerr<<Regop->GetFullName()<<" "<<Labelop->GetFullName()<<'\n';
                auto Label = (LabelOperand*)Labelop;
                auto Labelno = Label->GetLabelNo();
                auto terminalI = FindTerminal(C,Labelno);
                if(liveInstructionset.find(terminalI) == liveInstructionset.end()){
                    worklist.push_front(terminalI);
                    // std::cerr<<" 1 : "<<Labelno<<"   ";
                    // terminalI->PrintIR(std::cerr);
                    liveBBset.insert(Labelno);

                }
            }
        }
        if(parBBno != -1){
            for(auto CDG_pre : CDG_precursor[parBBno]){
                auto CDG_preno = CDG_pre->block_id;
                auto terminalI = FindTerminal(C,CDG_preno);
                // if(C->function_def->GetFunctionName() == "sort"){
                //     std::cerr<<CDG_preno<<" "<<I->GetBlockID()<<'\n';
                // }
                if(liveInstructionset.find(terminalI) == liveInstructionset.end()){
                    // std::cerr<<" 2 : "<<CDG_preno<<"   ";
                    // terminalI->PrintIR(std::cerr);
                    
                    worklist.push_front(terminalI);
                }
            }
        }
        
        for(auto op : I->GetNonResultOperands()){
            // if(C->function_def->GetFunctionName() == "main" && I->GetResultRegNo() == 157){
            //     I->PrintIR(std::cerr);
            // }
            if(op->GetOperandType() == BasicOperand::REG){
                auto Regop = (RegOperand*)op;
                auto Regopno = Regop->GetRegNo();
                if(defmap.find(Regopno) == defmap.end()){
                    continue;
                }
                
                auto DefI = defmap[Regopno];
                // if(C->function_def->GetFunctionName() == "main" && I->GetResultRegNo() == 157){
                //     puts("--------");
                //     I->PrintIR(std::cerr);
                //     worklist.front()->PrintIR(std::cerr);
                //     DefI->PrintIR(std::cerr);
                // }
                if(liveInstructionset.find(DefI) == liveInstructionset.end()){
                    // if(C->function_def->GetFunctionName() == "main"){
                    // std::cerr<<" 3 : "<<DefI->GetBlockID()<<"   ";
                    // DefI->PrintIR(std::cerr);
                    // I->PrintIR(std::cerr);
                    // }
                    worklist.push_front(DefI);
                }
            }
        }
    }
    int cnt2 = 0;
    for (auto [id, bb] : *C->block_map) {
        auto terminalI = FindTerminal(C,id);
        auto tmp_Instruction_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for (auto I : tmp_Instruction_list) {
            if (liveInstructionset.find(I) == liveInstructionset.end()) {
                if(terminalI == I){
                    // std::cerr<<id<<" : ";
                    // I->PrintIR(std::cerr);
                    // if(id == 4){
                    //     std::cerr<<id<<" : ";
                    //     I->PrintIR(std::cerr);
                    //     std::cerr<<PostDomTreeidom[id]->block_id<<" "<<PostDomTree.dom_tree[id].size()<<'\n';//DomTree
                    //     std::cerr<<DomTreeidom[id]->block_id<<" "<<DomTree.dom_tree[id].size()<<'\n';//DomTree
                    //     std::cerr<<(liveBBset.find(id) == liveBBset.end())<<'\n';
                    // }
                    auto livebbid = PostDomTreeidom[id]->block_id;
                    while(liveBBset.find(livebbid) == liveBBset.end()){
                        livebbid = PostDomTreeidom[id]->block_id;
                    }
                    I = new BrUncondInstruction(GetNewLabelOperand(livebbid));
                    cnt2++;
                    // std::cerr<<" to : ";
                    // I->PrintIR(std::cerr);
                }else {
                    continue;
                }
            }
            bb->InsertInstruction(1, I);
        }
    }
    // std::cerr<<cnt<<" "<<liveInstructionset.size()+cnt2<<'\n';
    // puts("ADCE DONE");
}