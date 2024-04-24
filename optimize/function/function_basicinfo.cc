#include "function_basicinfo.h"
#include "../../include/ir.h"

extern std::map<std::string, CFG *> CFGMap;
static std::map<CFG *, std::vector<CallInstruction *>> CallInstList;
FunctionCallGraph fcallgraph;

void LLVMIR::BuildFunctionInfo() {
    for (auto [defI, cfg] : llvm_cfg) {
        cfg->BuildFunctionInfo();
    }
    // for(auto [defI,cfg]:llvm_cfg){
    //     std::cerr<<defI->GetFunctionName()<<" "<<cfg->FunctionInfo.is_independent<<"\n";
    // }
}

/* this function will only care about single function.
   so after call this function, some information is wrong.(because the call inst)
   you should call LLVMIR::BuildFunctionInfo instead to get the true function information.
*/
void CFG::BuildFunctionInfo() {
    FunctionInfo.bb_number = block_map->size();
    FunctionInfo.inst_number = 0;

    for (auto [id, bb] : *block_map) {
        FunctionInfo.inst_number += bb->Instruction_list.size();
    }
}

void FunctionCallGraph::BuildCG(LLVMIR *IR) {}

void FunctionCallGraph::BuildCGSCC() {}
