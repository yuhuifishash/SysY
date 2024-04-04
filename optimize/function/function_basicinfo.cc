#include "function_basicinfo.h"
#include "../include/ir.h"

extern std::map<std::string,CFG*> CFGMap;
static std::map<CFG*,std::vector<CallInstruction*> > CallInstList;

void LLVMIR::BuildFunctionInfo(){
    for(auto [defI,cfg]:llvm_cfg){
        cfg->BuildFunctionInfo();
    }
    bool changed = true;
    while(changed) {
        changed = false;
        for(auto [cfg,CallList]:CallInstList){
            for(auto CallI:CallList){
                std::string call_name = CallI->GetFunctionName();
                if(CFGMap.find(call_name) == CFGMap.end()){continue;}
                auto target_cfg = CFGMap[call_name];

                bool old_tag = cfg->FunctionInfo.is_independent;
                cfg->FunctionInfo.is_independent &= target_cfg->FunctionInfo.is_independent;

                changed |= (old_tag != cfg->FunctionInfo.is_independent);
            }
        }
    }

    CallInstList.clear();
    // for(auto [defI,cfg]:llvm_cfg){
    //     std::cerr<<defI->GetFunctionName()<<" "<<cfg->FunctionInfo.is_independent<<"\n";
    // }
}

/* this function will only care about single function.
   so after call this function, some information is wrong.
   you should call LLVMIR::BuildFunctionInfo instead to get the true function information.
*/
void CFG::BuildFunctionInfo(){
    FunctionInfo.bb_number = block_map->size();
    FunctionInfo.inst_number = 0;
    FunctionInfo.is_independent = true;
    FunctionInfo.is_direct_recursive = false;

    for(auto param:function_def->formals){
        if(param == LLVMType::PTR){
            FunctionInfo.is_independent = false;
        }
    }

    for(auto [id,bb]:*block_map){
        FunctionInfo.inst_number += bb->Instruction_list.size();
        for(auto I:bb->Instruction_list){
            if(I->GetOpcode() == LLVMIROpcode::LOAD){
                auto LoadI = (LoadInstruction*)I;
                if(LoadI->GetPointer()->GetOperandType() == BasicOperand::GLOBAL){
                    FunctionInfo.is_independent = false;
                }
            }else if(I->GetOpcode() == LLVMIROpcode::STORE){
                auto StoreI = (StoreInstruction*)I;
                if(StoreI->GetPointer()->GetOperandType() == BasicOperand::GLOBAL){
                    FunctionInfo.is_independent = false;
                }
            }else if(I->GetOpcode() == LLVMIROpcode::GETELEMENTPTR){
                auto GEPI = (GetElementprtInstruction*)I;
                if(GEPI->GetPtrVal()->GetOperandType() == BasicOperand::GLOBAL){
                    FunctionInfo.is_independent = false;
                }
            }else if(I->GetOpcode() == LLVMIROpcode::CALL){
                auto CallI = (CallInstruction*)I;
                CallInstList[this].push_back(CallI);
                std::string call_name = CallI->GetFunctionName();
                if(call_name == this->function_def->GetFunctionName()){
                    FunctionInfo.is_direct_recursive = true;
                }
                if(CFGMap.find(call_name) == CFGMap.end()){//external call
                    FunctionInfo.is_independent = false;
                }
            }
        }
    }
}