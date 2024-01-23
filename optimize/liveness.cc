#include "arm_cgen.h"
#include "llvm_cfg.h"
#include "llvm_ir.h"
#include "basic_block.h"

template<class T>
std::set<T> set_intersect(const std::set<T>&a,const std::set<T>&b){
    std::set<T> ret;
    for(auto x:b){
        if(a.count(x)!=0){
            ret.insert(x);
        }
    }
    return ret;
}

template<class T>
std::set<T> set_union(const std::set<T>&a,const std::set<T>&b){
    std::set<T> ret(a);
    for(auto x:b){
        ret.insert(x);
    }
    return ret;
}

// a-b
template<class T>
std::set<T> set_diff(const std::set<T>&a,const std::set<T>&b){
    std::set<T> ret(a);
    for(auto x:b){
        // if(ret.count(x) != 0){
            ret.erase(x);
        // }
    }
    return ret;
}
void CFG::calculate_liveness(){
    // std::cerr<<func_ins->get_Func_name()<<" Prologue\n";
    for(auto reg:func_ins->formals_reg){
        if(reg->getOperandType() == basic_operand::REG){
            (*block)[0]->DEF.insert(((reg_operand*)reg)->getRegNo());
        }else{
            std::cerr<<"CFG::calculate_liveness()\n";
        }
    }
    for(auto block_pair:*block){
        auto block = block_pair.second;
        auto block_id = block_pair.first;
        block->IN.clear();
        block->OUT.clear();
        // block->DEF.clear();
        // block->USE.clear();
        // std::cerr<<block_id<<"\n";
        for(auto ins:block->Instruction_list){
            // ins->printIR(std::cerr);
            auto candidate_def = ins->get_resultreg();
            if(candidate_def != NULL){
                if(candidate_def->getOperandType() == basic_operand::REG){
                    auto reg_def_no = ((reg_operand*)candidate_def)->getRegNo();
                    if(block->USE.count(reg_def_no) == 0){
                        block->DEF.insert(reg_def_no);
                    }
                }else{
                    std::cerr<<"result is not reg\n";
                }
            }
            auto candidate_uses = ins->get_nonresult_operands();
            for(auto use:candidate_uses){
                if(use->getOperandType() == basic_operand::REG){
                    auto reg_use = ((reg_operand*)use);
                    auto reg_use_no = reg_use->getRegNo();
                    if(block->DEF.count(reg_use_no) == 0){
                        block->USE.insert(reg_use_no);
                    }
                }
            }
        }
        // std::cerr<<"   RESULT DEF:\n    ";
        // for(auto x:block->DEF){
        //     std::cerr<<x<<",";
        // }
        // std::cerr<<"\n";
        // std::cerr<<"   RESULT USE:\n    ";
        // for(auto x:block->USE){
        //     std::cerr<<x<<",";
        // }
        // std::cerr<<"\n";
    }
    int changed = 1;
    // std::cerr<<func_ins->get_Func_name()<<" Interlude\n";
    while(changed){
        changed = 0;
        for(auto block_pair:*block){
            auto block = block_pair.second;
            auto block_id = block_pair.first;
            // std::cerr<<block_id<<" IN\n";
            // if(!G[block_id].empty()){
                std::set<int> out;
                for(auto succ:G[block_id]){
                    // std::cerr<<succ<<"\n";
                    out = set_union(out,succ->IN);
                }
                if(out != block->OUT){
                    // changed = 1;
                    block->OUT = out;
                }
                std::set<int> in = set_union(block->USE,set_diff(block->OUT,block->DEF));
                if(in != block->IN){
                    changed = 1;
                    block->IN = in;
                    // if(!in.empty()){
                        // std::cerr<<"NOT EMPTY\n";
                    // }
                }
            // }
            // std::cerr<<block_id<<" SAFE\n";
        }
    }
    // std::cerr<<func_ins->get_Func_name()<<" Epilogue\n";
}