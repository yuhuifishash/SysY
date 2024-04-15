#include "../include/ir.h"

/*this pass will delete simple dead code, but will not change the control flow graph.
and in this function, we do not care about the useless function args.
(it will not elimate useless loop, it can be elimated in adce.cc)
*/
extern std::map<std::string,CFG*> CFGMap;

void SimpleDCE(CFG* C)
{
    std::map<int,Instruction> ResultMap;
    std::set<int> WorkList;
    std::map<int,int> RegUseCount;
    std::set<Instruction> EraseSet;

    for(auto [id,bb]:*C->block_map){
        for(auto I:bb->Instruction_list){
            int v = I->GetResultRegNo();
            if(v != -1){//result exists
                WorkList.insert(v);
                ResultMap[v] = I;
            }
            for(auto op:I->GetNonResultOperands()){
                if(op->GetOperandType() == BasicOperand::REG){
                    RegUseCount[((RegOperand*)op)->GetRegNo()]++;
                }
            }
        }
    }

    while(!WorkList.empty()){
        int v = *WorkList.begin();
        WorkList.erase(v);
        if(RegUseCount[v] == 0){
            auto resultI = ResultMap[v];
            if(resultI == nullptr){continue;}//resultI may be FuncDefInstructions, but we do not care this, so continue
            if(resultI->GetOpcode() == CALL){//the call result is useless, if we want to erase this, the call must be pure function
                auto CallI = (CallInstruction*)resultI;
                if(CFGMap.find(CallI->GetFunctionName()) == CFGMap.end()){continue;}
                auto target_cfg = CFGMap[CallI->GetFunctionName()];
                if(!target_cfg->FunctionInfo.is_independent){continue;}
            }

            EraseSet.insert(resultI);
            for(auto op:resultI->GetNonResultOperands()){
                if(op->GetOperandType() == BasicOperand::REG){
                    int x = ((RegOperand*)op)->GetRegNo();
                    RegUseCount[x]--;
                    WorkList.insert(x);
                }
            }
        }
    }

    for(auto [id,bb]:*C->block_map){
        auto tmp_Instruction_list = bb->Instruction_list;
        bb->Instruction_list.clear();
        for(auto I:tmp_Instruction_list){
            if(EraseSet.find(I) != EraseSet.end()){continue;}
            bb->InsertInstruction(1,I);
        }
    }
}