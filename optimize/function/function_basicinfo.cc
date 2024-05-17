#include "function_basicinfo.h"
#include "../../include/ir.h"

extern std::map<std::string, CFG *> CFGMap;
std::unordered_map<CFG *, std::unordered_map<CFG *,Instruction *>> CGCallI;
FunctionCallGraph fcallgraph;

void LLVMIR::BuildFunctionInfo() {
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
    MainCFG = CFGMap["main"];
    for (auto [FuncDefI, CFG] : IR->llvm_cfg) {
        auto FuncName = FuncDefI->GetFunctionName();
        if (CFGMap.find(FuncName) == CFGMap.end()) {
            continue;
        }
        for (auto [id, bb] : *CFG->block_map) {
            for (auto I : bb->Instruction_list) {
                // for (auto CallI : CallInstList[CFG]) {
                if (I->GetOpcode() != CALL) {
                    continue;
                }
                auto CallI = (CallInstruction *)I;
                // std::cerr<<"asdasd\n";
                auto vFuncName = CallI->GetFunctionName();
                if (CFGMap.find(vFuncName) == CFGMap.end()) {
                    continue;
                }
                auto vCFG = CFGMap[vFuncName];
                CGCallI[CFG][vCFG]=&I;
                // auto uvpair = std::make_pair(CFG,vCFG);
                // auto
                if (CGNum.find(CFG) == CGNum.end()) {
                    // CGNum[CFG].push_back(1);
                    CGNum[CFG][vCFG]=1;
                    CG[CFG].push_back(vCFG);
                } else if(CGNum[CFG].find(vCFG)==CGNum[CFG].end()){
                    CGNum[CFG][vCFG]=1;
                    CG[CFG].push_back(vCFG);
                }else {
                    CGNum[CFG][vCFG]++;
                }
            }
        }
        // std::cerr<<FuncName<<" : ";
        // for(auto v:CG[CFG]){
        //     std::cerr<<v->function_def->GetFunctionName()<<" ";
        // }
        // std::cerr<<"\n";
    }
}
