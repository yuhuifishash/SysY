#include "sccp_test.h"
extern LLVMIR llvm_IR;
void UnitTest_BuildSSAGraph(){
    for(auto CFG_pair:llvm_IR.llvm_cfg){
        auto func_inst = CFG_pair.first;
        auto CFG = CFG_pair.second;
        std::cerr<<func_inst->get_Func_name()<<std::endl;
        CFG->build_SSA_Graph();
        for(auto arcs:CFG->SSA_G){
            arcs.first->PrintIR(std::cerr);
            for(auto arc:arcs.second){
                std::cerr<<"   ->";
                arc->PrintIR(std::cerr);
            }
        }
        for(auto block_pair:*CFG->block){
            for(auto ins:block_pair.second->Instruction_list){
                std::cerr<<"Block: "<<ins->GetBlockID()<<" \n";
                ins->PrintIR(std::cerr);
            }
        }
    }
}
void UnitTest_ShowSSAGraph(){
    for(auto CFG_pair:llvm_IR.llvm_cfg){
        auto func_inst = CFG_pair.first;
        auto CFG = CFG_pair.second;
        std::cerr<<func_inst->get_Func_name()<<std::endl;
        // CFG->build_SSA_Graph();
        for(auto arcs:CFG->SSA_G){
            arcs.first->PrintIR(std::cerr);
            for(auto arc:arcs.second){
                std::cerr<<"   ->";
                arc->PrintIR(std::cerr);
            }
        }
    }
}