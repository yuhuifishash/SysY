#include "function_basicinfo.h"
#include "../../include/ir.h"

extern std::map<std::string, CFG *> CFGMap;

FunctionCallGraph fcallgraph;

void LLVMIR::BuildFunctionInfo() {
    for (auto [defI, cfg] : this->llvm_cfg) {
        for (auto [id, bb] : *cfg->block_map) {
            for (auto I : bb->Instruction_list) {
                I->SetBlockID(id);
            }
        }
    }
    for (auto [defI, cfg] : llvm_cfg) {
        cfg->BuildFunctionInfo();
    }
    fcallgraph.BuildCG(this);
    // for(auto [defI,cfg]:llvm_cfg){
    //     std::cerr<<defI->GetFunctionName()<<" "<<cfg->FunctionInfo.is_independent<<"\n";
    // }
}

/* this function will only care about single function.
   so after call this function, some information is wrong.(because the call inst)
   should call LLVMIR::BuildFunctionInfo instead to get the true function information.
*/
void CFG::BuildFunctionInfo() {
    FunctionInfo.bb_number = block_map->size();
    FunctionInfo.inst_number = 0;

    for (auto [id, bb] : *block_map) {
        FunctionInfo.inst_number += bb->Instruction_list.size();
    }
}

void FunctionCallGraph::BuildCG(LLVMIR *IR) {
    CGINum.clear();
    CGCallI.clear();
    CGNum.clear();
    CG.clear();
    MainCFG = CFGMap["main"];
    for (auto [FuncDefI, CFG] : IR->llvm_cfg) {
        auto FuncName = FuncDefI->GetFunctionName();
        if (CFGMap.find(FuncName) == CFGMap.end()) {
            continue;
        }
        CGINum[CFG] = 0;
        for (auto [id, bb] : *CFG->block_map) {
            for (auto it = --bb->Instruction_list.end();; --it) {
                auto I = *it;
                CGINum[CFG]++;
                if (I->GetOpcode() != CALL) {
                    if (it == bb->Instruction_list.begin()) {
                        break;
                    }
                    continue;
                }
                auto CallI = (CallInstruction *)I;
                auto vFuncName = CallI->GetFunctionName();
                if (CFGMap.find(vFuncName) == CFGMap.end()) {
                    if (it == bb->Instruction_list.begin()) {
                        break;
                    }
                    continue;
                }
                auto vCFG = CFGMap[vFuncName];
                CGCallI[CFG][vCFG].push_back(I);
                // CallIuidMap[I] = Calluid++;
                if (CGNum.find(CFG) == CGNum.end()) {
                    CGNum[CFG][vCFG] = 1;
                    CG[CFG].push_back(vCFG);
                } else if (CGNum[CFG].find(vCFG) == CGNum[CFG].end()) {
                    CGNum[CFG][vCFG] = 1;
                    CG[CFG].push_back(vCFG);
                } else {
                    CGNum[CFG][vCFG]++;
                }
                if (it == bb->Instruction_list.begin()) {
                    break;
                }
            }
        }
        // puts("*---------------*");
        // CFG->function_def->PrintIR(std::cerr);
        // for(auto vCFG:CG[CFG]){
        //     auto I=CGCallI[CFG][vCFG][0];
        //     vCFG->function_def->PrintIR(std::cerr);
        //     I->PrintIR(std::cerr);
        // }
        // puts("*********************");
        // std::cerr<<FuncName<<" : ";
        // for(auto v:CG[CFG]){
        //     std::cerr<<v->function_def->GetFunctionName()<<" ";
        // }
        // std::cerr<<"\n";
    }
}
