#include "llvm_cfg.h"
#include "llvm_ir.h"

extern std::map<std::string,CFG*> CFG_M;
extern std::map<std::string,int> global_map;

struct InstCSEInfo
{
    std::string func_name{};
    int result_regno;
    int opcode;
    std::vector<std::pair<int,int> > operand_list;
    bool operator < (const InstCSEInfo& x)const
    {
        if(func_name == x.func_name){
            if(opcode == x.opcode){
                if(operand_list.size() == x.operand_list.size()){
                    for(int i = 0 ; i < (int)operand_list.size() ; ++i){
                        if(operand_list[i] < x.operand_list[i]){
                            return 1;
                        }
                    }
                    return 0;
                }
                return operand_list.size() < x.operand_list.size();
            }
            return opcode < x.opcode;
        }
        return func_name < x.func_name;
    }
};

InstCSEInfo GetCSEInfo(Instruction I)
{
    InstCSEInfo ans;
    ans.opcode = I->get_opcode();
    ans.result_regno = I->get_resultregno();
    auto list = I->get_nonresult_operands();
    if(I->get_opcode() == CALL){
        auto tI = (call_Instruction*)I;
        ans.func_name = tI->get_funcName();
    }
    for(auto op:list){
        if(op->getOperandType() == basic_operand::GLOBAL){
            auto op1 = (global_operand*)op;
            ans.operand_list.push_back({1,global_map[op1->getName()]});
        }
        else if(op->getOperandType() == basic_operand::IMMI32){
            auto op1 = (imm_i32_operand*)op;
            ans.operand_list.push_back({2,op1->getIntImmVal()});
        }
        else if(op->getOperandType() == basic_operand::REG){
            auto op1 = (reg_operand*)op;
            ans.operand_list.push_back({3,op1->getRegNo()});
        }
    }
    return ans;
}

void LLVM_IR::SimpleCSE()
{
    for(auto node:llvm_cfg){
        int changed = 1;
        while(changed){
            changed &= (node.second->BB_CSEAlg() | node.second->BB_CSEFunctionCall());
        }
    }
}

int can_CSE(FunctionBasicInfo info)
{
    return info.is_independent_tag;
}

int CFG::BB_CSEFunctionCall()
{
    int changed = 0;
    std::map<int,int> reg_replace_map;
    for(auto b:*block){
        std::set<InstCSEInfo> InstCSESet;
        for(auto Ins:b.second->Instruction_list){
            if(Ins->get_opcode() == CALL){
                auto I = (call_Instruction*)Ins;
                if(CFG_M.find(I->get_funcName()) == CFG_M.end()){continue;}
                auto target_cfg = CFG_M[I->get_funcName()];
                if(can_CSE(target_cfg->func_info)){
                    auto Info = GetCSEInfo(I);
                    auto CSEit = InstCSESet.find(Info);
                    if(CSEit != InstCSESet.end()){
                        //Ins->printIR(std::cerr);
                        
                        I->erase_tag = 1;
                        reg_replace_map[I->get_resultregno()] = CSEit->result_regno;
                    }
                    else{
                        InstCSESet.insert(Info);
                    }
                }
            }
        }
    }
    for(auto b:*block){
        auto tmp_Instruction_list = b.second->Instruction_list;
        b.second->Instruction_list.clear();
        for(auto I:tmp_Instruction_list){
            if(I->erase_tag){changed = 1; continue;}
            b.second->push_Ins(1,I);
        }
    }
    
    for(auto b:*block){
        for(auto I:b.second->Instruction_list){
            I->replace_by_map(reg_replace_map);
        }
    }
    return changed;
}

void delete_load_CSE(std::set<InstCSEInfo>& InstCSESet)
{
    for(auto it = InstCSESet.begin(); it != InstCSESet.end();){
        if(it->opcode == LOAD){
            it = InstCSESet.erase(it);
        }
        else{
            ++it;
        }
    }
}

int CFG::BB_CSEAlg()
{
    int changed = 0;
    std::map<int,int> reg_replace_map;
    for(auto b:*block){
        std::set<InstCSEInfo> InstCSESet;
        for(auto Ins:b.second->Instruction_list){
            if(Ins->get_opcode() != CALL && Ins->get_opcode() != PHI && Ins->get_opcode() != BR_COND
            && Ins->get_opcode() != BR_UNCOND && Ins->get_opcode() != ALLOCA && Ins->get_opcode() != FADD
            && Ins->get_opcode() != FMUL && Ins->get_opcode() != FSUB && Ins->get_opcode() != FDIV 
            && Ins->get_opcode() != FPTOSI){
                if(Ins->get_opcode() == STORE){
                    delete_load_CSE(InstCSESet);
                    continue;
                }
                auto Info = GetCSEInfo(Ins);
                auto CSEit = InstCSESet.find(Info);
                if(CSEit != InstCSESet.end()){
                    //Ins->printIR(std::cerr);
                    Ins->erase_tag = 1;
                    reg_replace_map[Ins->get_resultregno()] = CSEit->result_regno;
                }
                else{
                    InstCSESet.insert(Info);
                }
            }
        }
    }
    for(auto b:*block){
        auto tmp_Instruction_list = b.second->Instruction_list;
        b.second->Instruction_list.clear();
        for(auto I:tmp_Instruction_list){
            if(I->erase_tag){changed = 1; continue;}
            b.second->push_Ins(1,I);
        }
    }
    for(auto b:*block){
        for(auto I:b.second->Instruction_list){
            I->replace_by_map(reg_replace_map);
        }
    }
    return changed;
}
