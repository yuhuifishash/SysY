#include "liveness_test.h"
extern LLVMIR cgenpre_IR;
void UnitTest_CalcLive(){
    for(auto CFG_pair:cgenpre_IR.llvm_cfg){
        auto func_inst = CFG_pair.first;
        auto CFG = CFG_pair.second;
        CFG->calculate_liveness();
        std::cerr<<func_inst->get_Func_name()<<std::endl;
        for(auto block_pair:*(CFG->block)){
            // std::cerr<<"AA\n";
            auto block = block_pair.second;
            auto block_id = block_pair.first;
            // std::cerr<<block<<'\n';
            std::cerr<<"  Block "<<block_id<<"\n";
            std::cerr<<"   DEF:\n    ";
            for(auto x:block->DEF){
                std::cerr<<x<<",";
            }
            std::cerr<<"\n";
            std::cerr<<"   USE:\n    ";
            for(auto x:block->USE){
                std::cerr<<x<<",";
            }
            std::cerr<<"\n";
            std::cerr<<"   IN:\n    ";
            for(auto x:block->IN){
                std::cerr<<x<<",";
            }
            std::cerr<<"\n";
            std::cerr<<"   OUT:\n    ";
            for(auto x:block->OUT){
                std::cerr<<x<<",";
            }
            std::cerr<<"\n";
        }
    }
}