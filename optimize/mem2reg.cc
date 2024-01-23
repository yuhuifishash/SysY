#include "llvm_cfg.h"
#include "llvm_ir.h"
#include "Instruction.h"
#include "IRgen.h"
#include <bitset>

extern LLVM_IR llvm_IR;

void LLVM_IR::build_dominator_tree()
{
    for(auto node:llvm_cfg){
        node.second->build_dominator_tree();
    }
}

void LLVM_IR::insert_phi()
{
    for(auto node:llvm_cfg){
        node.second->insert_phi();
    }
}

void LLVM_IR::var_rename()
{
    for(auto node:llvm_cfg){
        node.second->var_rename();
    }
}

void LLVM_IR::mem2reg()
{
    insert_phi();
    var_rename();
}

void CFG::calc_defs_uses()
{
    for(auto B1:*block){
        for(auto Ins:B1.second->Instruction_list){
            
            if(Ins->get_opcode() == STORE){
                defs[((store_Instruction*)Ins)->get_defregno()].insert(B1.first);
                def_num[((store_Instruction*)Ins)->get_defregno()]++;
            }
            if(Ins->get_opcode() == LOAD){
                uses[((load_Instruction*)Ins)->get_useregno()].insert(B1.first);
            }
        }
    }
}

std::set<int> CFG::calc_DF(std::set<int> S)
{
    std::bitset<65536>result;
    for(auto node:S){
        result|=DF[node];
    }
    std::set<int> ret;
    for(int i=0;i<=max_label;++i){
        if(result[i]){
            ret.insert(i);
        }
    }
    return ret;
}

std::set<int> CFG::calc_DF(int BB_id)
{
    std::set<int> ret;
    for(int i=0;i<=max_label;++i){
        if(DF[BB_id][i]){
            ret.insert(i);
        }
    }
    return ret;
}

void CFG::mem2reg_no_use_alloca(std::set<int>& no_use_vset)
{
    for(auto B1:*block){
        for(auto Ins:B1.second->Instruction_list){
            if(Ins->get_opcode() == STORE && ((store_Instruction*)Ins)->getPointer()->getOperandType() == basic_operand::REG){
                if(no_use_vset.find(((store_Instruction*)Ins)->get_defregno()) == no_use_vset.end() || ((store_Instruction*)Ins)->erase_tag ){continue;}
                ((store_Instruction*)Ins)->erase_tag = 1;
            }
        }
    }
}

void CFG::mem2reg_in_sameblock(int regno,int block_id)//pointer BB
{
    int current_regno = 0;
    for(auto Ins:(*block)[block_id]->Instruction_list){
        if(Ins->get_opcode() == STORE && ((store_Instruction*)Ins)->getPointer()->getOperandType() == basic_operand::REG){
            if(((store_Instruction*)Ins)->get_defregno() != regno || ((store_Instruction*)Ins)->erase_tag ){continue;}
            current_regno = ((reg_operand*)(((store_Instruction*)Ins)->getValue()))->getRegNo();
            ((store_Instruction*)Ins)->erase_tag = 1;
        }
        if(Ins->get_opcode() == LOAD && ((load_Instruction*)Ins)->getPointer()->getOperandType() == basic_operand::REG){
            if(((load_Instruction*)Ins)->get_useregno() != regno || ((load_Instruction*)Ins)->erase_tag){continue;}
            mem2reg_map[Ins->get_resultregno()] = current_regno;
            ((load_Instruction*)Ins)->erase_tag = 1;
        }
    }
}

void CFG::mem2reg_onedef_dom_alluses(int regno)//pointer  value
{
    int result = 0;
    for(auto B1:*block){
        for(auto Ins:B1.second->Instruction_list){
            if(Ins->get_opcode() == STORE && ((store_Instruction*)Ins)->getPointer()->getOperandType() == basic_operand::REG ){
                if(((store_Instruction*)Ins)->get_defregno() != regno || ((store_Instruction*)Ins)->erase_tag ){continue;}
                result = ((reg_operand*)(((store_Instruction*)Ins)->getValue()))->getRegNo();
                ((store_Instruction*)Ins)->erase_tag = 1;
                break;
            }
        }
    }
    for(auto B1:*block){
        for(auto Ins:B1.second->Instruction_list){
            if(Ins->get_opcode() == LOAD && ((load_Instruction*)Ins)->getPointer()->getOperandType() == basic_operand::REG){
                if(((load_Instruction*)Ins)->get_useregno() != regno || ((load_Instruction*)Ins)->erase_tag){continue;}
                mem2reg_map[Ins->get_resultregno()] = result;
                ((load_Instruction*)Ins)->erase_tag = 1;
            }
        }
    }
}

void CFG::insert_phi()
{
    llvm_block entry_BB = (*block)[0];
    std::set<int> no_use_vset;
    for(auto Ins:entry_BB->Instruction_list){
        if(Ins->get_opcode() != ALLOCA){continue;}

        auto I = (alloca_instruction*)Ins;
        if(!(I->getDims().empty())){continue;}//array can not be promoted
        int v = I->get_resultregno();
        llvm_type type = I->getDataType();

        auto I_defs = defs[v];
        auto I_uses = uses[v];
        if(I_uses.size() == 0){//not use
            I->erase_tag = 1;
            no_use_vset.insert(v);
            continue;
        }

        if(I_defs.size() == 1){
            int block_id = *(I_defs.begin());
            if(I_uses.size() == 1 && *(I_uses.begin()) == block_id){//def and use in the same block
                I->erase_tag = 2;
                mem2reg_in_sameblock(v,block_id);
                continue;
            }
        }

        if(def_num[v] == 1){//only def once
            int block_id = *(I_defs.begin());
            int dom_flag = 1;
            for(auto load_BB:I_uses){
                if(!if_dominate(block_id,load_BB)){
                    dom_flag = 0;
                    break;
                }
            }
            if(dom_flag){//one def dominate all uses
                I->erase_tag = 3;
                mem2reg_onedef_dom_alluses(v);
                continue;
            }
        }

        //next is the common situation
        allocas.insert(v);
        I->erase_tag = 4;

        std::set<int> F{};//set of blocks where phi is added
        std::set<int> W = defs[v];//set of blocks that contain the def of regno

        while(!W.empty()){
            int BB_X = *W.begin();
            W.erase(BB_X);
            for(auto BB_Y:calc_DF(BB_X)){
                //std::cout<<v<<" "<<BB_X<<" "<<BB_Y<<"\n";
                if(F.find(BB_Y) == F.end()){
                    phi_instruction* phi_ins = new phi_instruction(type,new reg_operand(++max_reg));
                    (*block)[BB_Y]->push_Ins(0,phi_ins);
                    new_phi_map[phi_ins] = v;
                    F.insert(BB_Y);
                    if(defs[v].find(BB_Y) == defs[v].end()){
                        W.insert(BB_Y);
                    }
                }
            }
        }
    }
    mem2reg_no_use_alloca(no_use_vset);
    //std::cerr<<func_ins->get_Func_name()<<"\n";
    //for(auto [r1,r2]:mem2reg_map){std::cerr<<r1<<" "<<r2<<"\n";}
}

int in_allocas(std::set<int>& S,Instruction I)
{
    if(I->get_opcode() == LOAD){
        auto Ins = (load_Instruction*)I;
        if(Ins->getPointer()->getOperandType() != basic_operand::REG){return -1;}
        int pointer = Ins->get_useregno();
        if(S.find(pointer) != S.end()){
            return pointer;
        }
    }
    if(I->get_opcode() == STORE){
        auto Ins = (store_Instruction*)I;
        if(Ins->getPointer()->getOperandType() != basic_operand::REG){return -1;}
        int pointer = Ins->get_defregno();
        if(S.find(pointer) != S.end()){
            return pointer;
        }
    }
    return -1;
}

void CFG::var_rename()
{
    std::map<int,std::map<int,int> > WorkList;//< BB, <alloca_reg,val_reg> >
    WorkList.insert({0,std::map<int,int>{}});
    std::vector<int> BBvis;
    BBvis.resize(max_label+1);
    while(!WorkList.empty()){
        int BB = (*WorkList.begin()).first;
        auto IncomingVals = (*WorkList.begin()).second;
        WorkList.erase(BB);
        if(BBvis[BB]){continue;}
        BBvis[BB] = 1;
        for(auto &I:(*block)[BB]->Instruction_list){
            if(I->get_opcode() == LOAD){
                auto Ins = (load_Instruction*)I;
                int v = in_allocas(allocas,I);
                if(v >= 0){//load instruction is in allocas
                    //如果当前指令是 load，找到对应的 alloca v，将用到 load 结果的地方都替换成 IncomingVals[v]
                    Ins->erase_tag = 1;
                    mem2reg_map[Ins->get_resultregno()] = IncomingVals[v]; 
                }
            }
            if(I->get_opcode() == STORE){
                auto Ins = (store_Instruction*)I;
                int v = in_allocas(allocas,I);
                if(v >= 0){//store instruction is in allocas
                    //如果当前指令是 store，找到对应的 alloca v，更新IncomingVals[v] = val,并删除store
                    Ins->erase_tag = 1;
                    IncomingVals[v] = ((reg_operand*)(Ins->getValue()))->getRegNo();
                }
            }
            if(I->get_opcode() == PHI){
                auto Ins = (phi_instruction*)I;
                if(Ins->erase_tag){continue;}
                auto it = new_phi_map.find(Ins);
                if(it != new_phi_map.end()){//phi instruction is in allocas
                    //更新IncomingVals[v] = val
                    IncomingVals[it->second] = Ins->get_resultregno();
                }
            }
        }
        for(auto succ:G[BB]){
            int BBv = succ->block_id;
            WorkList.insert({BBv,IncomingVals});
            for(auto I:(*block)[BBv]->Instruction_list){
                if(I->get_opcode() != PHI){break;}
                auto Ins = (phi_instruction*)I;
                //找到 phi 对应的 alloca
                auto it = new_phi_map.find(Ins);
                if(it != new_phi_map.end()){
                    int v = it->second;
                    if(IncomingVals.find(v) == IncomingVals.end()){
                        Ins->erase_tag = 1;
                        continue;
                    }
                    //为 phi 添加前驱块到当前块的边
                    Ins->Insert_phi(new reg_operand(IncomingVals[v]),new label_operand(BB));
                }
            }
        }
    }

    for(auto B1:*block){
        for(auto Ins:B1.second->Instruction_list){
            if(Ins->get_opcode() == LOAD && ((load_Instruction*)Ins)->getPointer()->getOperandType() == basic_operand::REG){
                int result = Ins->get_resultregno();
                if(mem2reg_map.find(result) != mem2reg_map.end()){
                    int result2 = mem2reg_map[result];
                    while(mem2reg_map.find(result2) != mem2reg_map.end()){
                        mem2reg_map[result] = mem2reg_map[result2];
                        result2 = mem2reg_map[result];
                    }
                }
            }
        }
    }
    
    for(auto B1:*block){
        auto tmp_Instruction_list = B1.second->Instruction_list;
        B1.second->Instruction_list.clear();
        for(auto I:tmp_Instruction_list){
            if(I->get_opcode() == ALLOCA && ((alloca_instruction*)I)->erase_tag){continue;}
            if(I->get_opcode() == LOAD && ((load_Instruction*)I)->erase_tag){continue;}
            if(I->get_opcode() == STORE && ((store_Instruction*)I)->erase_tag){continue;}
            if(I->get_opcode() == PHI && ((phi_instruction*)I)->erase_tag){continue;}
            B1.second->push_Ins(1,I);
        }
    }
    
    for(auto B1:*block){
        for(auto I:B1.second->Instruction_list){
            // replace mem2reg_map
            I->replace_by_map(mem2reg_map);
        }
    }
    defs.clear();
    uses.clear();
    def_num.clear();
    mem2reg_map.clear();
    allocas.clear();
    new_phi_map.clear();
    // std::cerr<<func_ins->get_Func_name()<<"\n";
    // for(auto [r1,r2]:mem2reg_map){std::cerr<<r1<<" "<<r2<<"\n";}
}