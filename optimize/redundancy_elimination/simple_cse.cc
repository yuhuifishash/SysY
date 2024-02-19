#include "cfg.h"
#include "ir.h"
#include <functional>

/*this pass will do some simple common subexpression elimination
BasicBlockCSE only eliminate common subexpression in the single block
DomTreeWalkCSE will do dfs on the dominator tree to search common subexpression and eliminate them
*/

extern std::map<std::string,CFG*> CFGMap;
extern std::map<std::string,int> GlobalMap;

struct InstCSEInfo
{
    int opcode;
    std::vector<Operand> operand_list;
    bool operator < (const InstCSEInfo& x)const
    {
        if(opcode != x.opcode){
            return opcode < x.opcode;
        }
        if(operand_list.size() != x.operand_list.size()){
            return operand_list.size() < x.operand_list.size();
        }

        for(int i = 0 ; i < (int)operand_list.size() ; ++i){
            if(operand_list[i]->GetOperandType() != x.operand_list[i]->GetOperandType()){
                return operand_list[i]->GetOperandType() < x.operand_list[i]->GetOperandType();
            }
            auto opstr = operand_list[i]->GetFullName();
            auto xopstr = x.operand_list[i]->GetFullName();
            if(opstr != xopstr){
                return opstr < xopstr;
            }
        }

        return false;
    }
};

InstCSEInfo GetCSEInfo(Instruction I)
{
    InstCSEInfo ans;
    ans.opcode = I->GetOpcode();
    auto list = I->GetNonResultOperands();
    if(I->GetOpcode() == CALL){
        auto CallI = (CallInstruction*)I;
        ans.operand_list.push_back(new GlobalOperand(CallI->GetFunctionName()));
    }

    for(auto op:list){
        ans.operand_list.push_back(op);
    }
    return ans;
}

bool CanCSE(Instruction I)
{
    if(I->GetOpcode() == PHI || I->GetOpcode() == BR_COND || I->GetOpcode() == STORE
    || I->GetOpcode() == BR_UNCOND || I->GetOpcode() == ALLOCA || I->GetOpcode() == LOAD
    || I->GetOpcode() == RET || I->GetOpcode() == ICMP || I->GetOpcode() == FCMP){
        return false;
    }
    if(I->GetOpcode() == CALL){
        auto CallI = (CallInstruction*)I;
        if(CFGMap.find(CallI->GetFunctionName()) == CFGMap.end()){
            return false;
        }
        auto cfg = CFGMap[CallI->GetFunctionName()];
        if(cfg->FunctionInfo.is_pure_function == false){
            return false;
        }
    }
    return true;
}

void BasicBlockCSE(CFG* C)
{
    for(auto [id,bb]:*C->block_map){
        std::map<int,int> reg_replace_map;
        bool changed = true;
        
        while(changed){
            changed = false;
            reg_replace_map.clear();
            std::set<Instruction> EraseSet;

            std::map<std::string,int> LoadMap;//<operand_string, result_reg>
            std::map<InstCSEInfo,int> InstCSEMap;//<inst_info, result_reg>

            //CSE load/store instructions
            for(auto I:bb->Instruction_list){
                if(I->GetOpcode() == STORE){//store instructions, this will kill load before this store
                    auto ptr = ((StoreInstruction*)I)->GetPointer();
                    LoadMap.erase(ptr->GetFullName());

                }else if(I->GetOpcode() == LOAD){
                    auto ptr = ((StoreInstruction*)I)->GetPointer();
                    auto it = LoadMap.find(ptr->GetFullName());
                    if(it != LoadMap.end()){
                        //I->PrintIR(std::cerr);
                        EraseSet.insert(I);
                        reg_replace_map[I->GetResultRegNo()] = it->second;
                        changed |= true;
                    }else{
                        LoadMap.insert({ptr->GetFullName(),I->GetResultRegNo()});
                    }
                }
            }

            //CSE other instructions
            for(auto I:bb->Instruction_list){
                if(CanCSE(I) == false){continue;}

                auto Info = GetCSEInfo(I);
                auto CSEiter = InstCSEMap.find(Info);
                if(CSEiter != InstCSEMap.end()){
                    EraseSet.insert(I);
                    reg_replace_map[I->GetResultRegNo()] = CSEiter->second;
                    changed |= true;
                }else{
                    InstCSEMap.insert({Info,I->GetResultRegNo()});
                }
            }

            //erase useless instructions and replace new RegOperand
            for(auto [id,bb]:*C->block_map){
                auto tmp_Instruction_list = bb->Instruction_list;
                bb->Instruction_list.clear();
                for(auto I:tmp_Instruction_list){
                    if(EraseSet.find(I) != EraseSet.end()){continue;}
                    bb->InsertInstruction(1,I);
                }
            }
            for(auto [id,bb]:*C->block_map){
                for(auto I:bb->Instruction_list){
                    I->ReplaceByMap(reg_replace_map);
                }
            } 
        }
    }
}

void DomTreeWalkCSE(CFG* C)
{
    std::set<Instruction> EraseSet;
    std::map<InstCSEInfo,int> InstCSEMap;//<inst_info, result_reg>
    std::map<int,int> reg_replace_map;
    bool changed = true;

    std::function<void(int)> dfs = [&](int bbid){
        for(auto v:C->DomTree.dom_tree[bbid]){
            std::set<InstCSEInfo> tmpcse_set;
            for(auto I:v->Instruction_list){
                if(CanCSE(I) == false){continue;}

                auto Info = GetCSEInfo(I);
                auto CSEiter = InstCSEMap.find(Info);
                if(CSEiter != InstCSEMap.end()){
                    //I->PrintIR(std::cerr);
                    EraseSet.insert(I);
                    reg_replace_map[I->GetResultRegNo()] = CSEiter->second;
                    changed |= true;
                }else{
                    InstCSEMap.insert({Info,I->GetResultRegNo()});
                    tmpcse_set.insert(Info);
                }
            }

            dfs(v->block_id);

            for(auto info:tmpcse_set){
                InstCSEMap.erase(info);
            }
        }
    };

    while(changed){
        changed = false;
        dfs(0);
        //erase useless instructions and replace new RegOperand
        for(auto [id,bb]:*C->block_map){
            auto tmp_Instruction_list = bb->Instruction_list;
            bb->Instruction_list.clear();
            for(auto I:tmp_Instruction_list){
                if(EraseSet.find(I) != EraseSet.end()){continue;}
                bb->InsertInstruction(1,I);
            }
        }
        for(auto [id,bb]:*C->block_map){
            for(auto I:bb->Instruction_list){
                I->ReplaceByMap(reg_replace_map);
            }
        } 
    }
}