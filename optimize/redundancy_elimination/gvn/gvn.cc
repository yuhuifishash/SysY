#include "hash_table.h"
#include "../../../include/ir.h"

HashTable hashtable;
//TODO():GVN
void GlobalValueNumber(CFG *C){
    std::cerr<<C->function_def->GetFunctionName()<<'\n';
    for(auto [id,bb] : *C->block_map){
        // bb->printIR(std::cerr);
        for(auto I : bb->Instruction_list){
            auto value_ = hashtable.lookupOrAdd(I);
            I->PrintIR(std::cerr);
            if(value_==-1){
                std::cerr<<"NOT SUPPORT"<<'\n';
            }else{
                std::cerr<<"%v"<<value_<<" = "<<hashtable.stringmap[value_]<<'\n';
            }
            puts("-----------");
        }
    }
}