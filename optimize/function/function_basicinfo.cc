#include "function_basicinfo.h"
#include "ir.h"

extern std::map<std::string,CFG*> CFGMap;

void LLVMIR::BuildFunctionInfo(){
    for(auto [defI,cfg]:llvm_cfg){
        cfg->BuildFunctionInfo();
    }
}

void CFG::BuildFunctionInfo(){
    FunctionInfo.bb_number = block_map->size();
    FunctionInfo.inst_number = 0;
    FunctionInfo.is_pure_function = true;
    FunctionInfo.is_recursive = false;

    for(auto param:function_def->formals){
        if(param == LLVMType::PTR){
            FunctionInfo.is_pure_function = false;
        }
    }

    for(auto [id,bb]:*block_map){
        FunctionInfo.inst_number += bb->Instruction_list.size();
        for(auto I:bb->Instruction_list){
            if(I->GetOpcode() == LLVMIROpcode::LOAD){
                auto LoadI = (LoadInstruction*)I;
                if(LoadI->GetPointer()->GetOperandType() == BasicOperand::GLOBAL){
                    FunctionInfo.is_pure_function = false;
                }
            }else if(I->GetOpcode() == LLVMIROpcode::STORE){
                auto StoreI = (StoreInstruction*)I;
                if(StoreI->GetPointer()->GetOperandType() == BasicOperand::GLOBAL){
                    FunctionInfo.is_pure_function = false;
                }
            }else if(I->GetOpcode() == LLVMIROpcode::GETELEMENTPTR){
                auto GEPI = (GetElementprtInstruction*)I;
                if(GEPI->GetPtrVal()->GetOperandType() == BasicOperand::GLOBAL){
                    FunctionInfo.is_pure_function = false;
                }
            }else if(I->GetOpcode() == LLVMIROpcode::CALL){
                auto CallI = (CallInstruction*)I;
                std::string call_name = CallI->GetFunctionName();
                if(call_name == this->function_def->GetFunctionName()){
                    FunctionInfo.is_recursive = true;
                }
                if(CFGMap.find(call_name) == CFGMap.end()){
                    FunctionInfo.is_pure_function = false;
                }
            }
        }
    }

    for(auto [id,bb]:*block_map){
        FunctionInfo.inst_number += bb->Instruction_list.size();
        for(auto I:bb->Instruction_list){
            if(I->GetOpcode() == LLVMIROpcode::CALL){
                auto CallI = (CallInstruction*)I;
                std::string call_name = CallI->GetFunctionName();
                if(CFGMap.find(call_name) == CFGMap.end()){continue;}
                auto cfg = CFGMap[call_name];
                FunctionInfo.is_pure_function &= cfg->FunctionInfo.is_pure_function;
            }
        }
    }

}