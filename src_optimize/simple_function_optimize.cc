#include "llvm_cfg.h"
#include "llvm_ir.h"
#include "basic_block.h"
#include "Instruction.h"

std::map<std::string,CFG*> CFG_M;
extern LLVM_IR llvm_IR;

void LLVM_IR::GetFunctionBasicInfo()
{
    for(auto node:llvm_cfg){
        CFG_M[node.first->get_Func_name()] = node.second;
        node.second->GetFunctionBasicInfo();
    }

    int changed = 1;
    while(changed){
        for(auto node:llvm_cfg){
            changed &= node.second->GetRecursionInfo();
        }
    }
};

void LLVM_IR::FunctionInline()
{
    for(auto node:llvm_cfg){
        node.second->FunctionInline();
        max_label_map[node.first] = node.second->max_label;
        max_reg_map[node.first] = node.second->max_reg;
    }
    build_dominator_tree();
}

void CFG::GetFunctionBasicInfo()
{
    for(auto t:func_ins->formals){
        ++func_info.Formal_num;
        if(t == PTR){func_info.array_formal_tag = 1;}
    }
    for(auto bb:*block){
        auto BB = bb.second;
        for(auto I:BB->Instruction_list){
            ++func_info.Ins_num;
            if(I->get_opcode() == ALLOCA){
                func_info.alloca_tag = 1;
            }
            if(I->get_opcode() == CALL){
                func_info.call_tag = 1;
                auto tI = (call_instruction*)I;
                if(tI->get_funcName() == this->func_ins->get_Func_name()){
                    func_info.rec_call_tag = 1;
                }
            }
            if(I->get_opcode() == STORE){
                auto tI = (store_Instruction*)I;
                if(tI->getPointer()->getOperandType() == basic_operand::GLOBAL){
                    func_info.store_global_tag = 1;
                }
            }
            if(I->get_opcode() == GETELEMENTPTR){
                auto tI = (get_elementptr_instruction*)I;
                if(tI->get_ptrVal()->getOperandType() == basic_operand::GLOBAL){
                    func_info.store_global_tag = 1;
                }
            }
        }
    }
    func_info.is_independent_tag = !(func_info.array_formal_tag | func_info.store_global_tag);
}

int CFG::GetRecursionInfo()
{
    int changed = 0;
    for(auto bb:*block){
        auto BB = bb.second;
        for(auto I:BB->Instruction_list){
            if(I->get_opcode() == CALL){
                auto tI = (call_instruction*)I;
                if(CFG_M.find(tI->get_funcName()) == CFG_M.end()){
                    if(func_info.is_independent_tag == 1){
                        func_info.is_independent_tag = 0;
                        changed = 1;
                    }
                    continue;
                }
                auto target_cfg = CFG_M[tI->get_funcName()];

                if(func_info.is_independent_tag == 1 && target_cfg->func_info.is_independent_tag == 0){
                    func_info.is_independent_tag = 0;
                    changed = 1;
                }
            }
        }
    }
    return changed;
}

bool can_inline(FunctionBasicInfo info)
{
    return !info.alloca_tag && !info.rec_call_tag && info.Ins_num <= 15 && info.Formal_num <= 4;
}

static std::map<int,operand> reg_replace_map;
static std::map<operand,operand> ret_phi_map;

void cgen_inline_Func(CFG* now_cfg,CFG* inline_cfg,llvm_block startBB,llvm_block endBB)
{
    std::map<int,llvm_block> label_replace_map;
    label_replace_map[0] = startBB;
    for(auto bb:*(inline_cfg->block)){
        llvm_block BB = bb.second;
        if(BB->block_id != 0){
            int nowBB_id = ++now_cfg->max_label;
            llvm_block nowBB = llvm_IR.llvm_Function_BlockArr_map[now_cfg->func_ins][nowBB_id] = new basic_block(nowBB_id);
            label_replace_map[BB->block_id] = nowBB;
        }
    }

    for(auto bb:*(inline_cfg->block)){
        llvm_block BB = bb.second;
        llvm_block nowBB = label_replace_map[BB->block_id];

        for(auto Ins:BB->Instruction_list){
            if(Ins->get_opcode() == RET){
                nowBB->push_Ins(1,new br_uncond_instruction(new label_operand(endBB->block_id)));
                continue;
            }
            auto nIns = Ins->copy_instruction();
            if(Ins->get_opcode() == BR_COND){
                auto nI = (br_cond_instruction*)nIns;
                int true_target = ((label_operand*)nI->getTrueLabel())->getLabelNo();
                nI->set_truelabel(new label_operand(label_replace_map[true_target]->block_id));
                int false_target = ((label_operand*)nI->getFalseLabel())->getLabelNo();
                nI->set_falselabel(new label_operand(label_replace_map[false_target]->block_id));
            }
            if(Ins->get_opcode() == BR_UNCOND){
                auto nI = (br_uncond_instruction*)nIns;
                int target = nI->get_target();
                nI->set_target(new label_operand(label_replace_map[target]->block_id));
            }
            auto use_ops = nIns->get_nonresult_operands();
            for(auto& op:use_ops){
                if(op->getOperandType() == op->REG){
                    int regno = ((reg_operand*)op)->getRegNo();
                    if(reg_replace_map.find(regno) != reg_replace_map.end()){
                        op = reg_replace_map[regno];   
                    }
                    else{
                        ++now_cfg->max_reg;
                        op = new reg_operand(now_cfg->max_reg);
                        reg_replace_map[regno] = op;
                    }
                }
            }
            nIns->set_nonresult_operands(use_ops);

            auto result_reg = (reg_operand*)(nIns->get_resultreg());
            int result_regno = nIns->get_resultregno();
            if(result_reg != nullptr){
                if(reg_replace_map.find(result_regno) != reg_replace_map.end()){
                    int nregno = ((reg_operand*)reg_replace_map[result_regno])->getRegNo();
                    result_reg->setRegNo(nregno);
                }
                else{
                    ++now_cfg->max_reg;
                    result_reg->setRegNo(now_cfg->max_reg);
                    reg_replace_map[result_regno] = result_reg;
                }
            }
            if(nIns->get_opcode() == PHI){
                auto nI = (phi_instruction*)nIns;
                auto phi_list = nI->getPhiList();
                std::map<operand,operand> nphi_list;
                for(auto phi_op:phi_list){
                    int pre_id = ((label_operand*)phi_op.first)->getLabelNo();
                    int new_id = label_replace_map[pre_id]->block_id;
                    nphi_list[new label_operand(new_id)] = phi_op.second;
                }
                nI->set_philist(nphi_list);
            }    
            nowBB->push_Ins(1,nIns);
        }
    }
    for(auto bb:*(inline_cfg->block)){
        llvm_block BB = bb.second;
        if(BB->Instruction_list.size() < 1){continue;}
        auto Ins = *(BB->Instruction_list.end() - 1);
        if(Ins->get_opcode() == RET){
            auto I = (ret_instruction*)Ins;
            auto result = I->get_result();
            if(result != NULL){
                if(result->getOperandType() == result->REG){
                    int regno = ((reg_operand*)result)->getRegNo();
                    ret_phi_map[new label_operand(label_replace_map[BB->block_id]->block_id)] = reg_replace_map[regno];
                }   
                else{
                    ret_phi_map[new label_operand(label_replace_map[BB->block_id]->block_id)] = result;
                }
            }
        }
    }
}

void CFG::FunctionInline()
{
    for(auto bb:*block){
        auto BB = bb.second;
        for(auto it = BB->Instruction_list.begin();it != BB->Instruction_list.end();++it){
            auto Ins = *it;
            if(Ins->get_opcode() == CALL){
                auto I = (call_instruction*)Ins;
                if(CFG_M.find(I->get_funcName()) == CFG_M.end()){continue;}
                
                auto target_cfg = CFG_M[I->get_funcName()];
                if(!can_inline(target_cfg->func_info)){continue;}
                
                int FBB_id = ++max_label;
                int endBB_id = ++max_label;
                auto FBB = llvm_IR.llvm_Function_BlockArr_map[func_ins][FBB_id] = new basic_block(FBB_id);
                auto endBB = llvm_IR.llvm_Function_BlockArr_map[func_ins][endBB_id] = new basic_block(endBB_id);

                reg_replace_map.clear();
                ret_phi_map.clear();

                int formal_regno = -1;
                for(auto formal:I->get_parameterList()){
                    ++formal_regno;
                    reg_replace_map[formal_regno] = formal.second;
                }

                cgen_inline_Func(this,target_cfg,FBB,endBB);

                if(I->get_result() != NULL){
                    endBB->push_Ins(1,new phi_instruction(I->get_RetType(),I->get_result(),ret_phi_map));
                }
                
                *it = new br_uncond_instruction(new label_operand(FBB_id));
                for(auto it_ed = ++it;it_ed != BB->Instruction_list.end();){
                    endBB->push_Ins(1,*it_ed);
                    it_ed = BB->Instruction_list.erase(it_ed);
                }

                for(auto nextBB:G[BB->block_id]){
                    for(auto Ins:nextBB->Instruction_list){
                        if(Ins->get_opcode() != PHI){break;}
                        auto I = (phi_instruction*)Ins;
                        I->set_phi_label(BB->block_id,endBB->block_id);
                    }
                }
                
                build_CFG();
                break;
            }
        }
    }
}

void LLVM_IR::TailCall2Loop()
{
    for(auto node:llvm_cfg){
        node.second->TailCall2Loop();
        max_label_map[node.first] = node.second->max_label;
        max_reg_map[node.first] = node.second->max_reg;
    }
}

void CFG::TailCall2Loop()
{
    if(func_ins->get_formal_size() >= 5){return;}

    std::map<int,int> reg_replace_map;
    int last_max_reg = max_reg;
    std::map<int,Instruction> phi_map;
    int change_tag = 0;

    for(auto bb:*block){
        auto Ilist = bb.second->Instruction_list;
        for(int i = 0;i + 1< Ilist.size();++i){
            auto I1 = Ilist[i];
            auto I2 = Ilist[i+1];
            if(I1->get_opcode() != CALL || I2->get_opcode() != RET){continue;}
            auto tI = (call_instruction*)I1;
            if(tI->get_funcName() != this->func_ins->get_Func_name()){continue;}
            //I1->printIR(std::cerr);
            I1 = new br_uncond_instruction(new label_operand(1));
            bb.second->Instruction_list.pop_back();
            bb.second->Instruction_list.pop_back();
            bb.second->push_Ins(1,I1);

            if(!change_tag){
                change_tag = 1;
                
                int cnt = -1;
                for(auto op:tI->get_parameterList()){
                    ++cnt;
                    ++max_reg;
                    auto nI = new phi_instruction(op.first,new reg_operand(max_reg));
                    nI->Insert_phi(new reg_operand(cnt),new label_operand(0));
                    phi_map[cnt] = nI;
                    reg_replace_map[cnt] = max_reg;
                }
            }
            
            int cnt = -1;
            for(auto op:tI->get_parameterList()){
                ++cnt;
                auto nI = (phi_instruction*)phi_map[cnt];
                if(op.second->getOperandType() == basic_operand::REG){
                    int regno = ((reg_operand*)op.second)->getRegNo();
                    if(regno <= tI->get_parameterList().size()){
                        nI->Insert_phi(new reg_operand(regno + last_max_reg + 1),new label_operand(bb.second->block_id));
                    }
                    else{
                        nI->Insert_phi(op.second->copy_operand(),new label_operand(bb.second->block_id));
                    }
                }
                else{
                    nI->Insert_phi(op.second->copy_operand(),new label_operand(bb.second->block_id));
                }
            }
            
            break;
        }
    }

    for(auto bb:*block){
        if(bb.second->block_id == 0){continue;}
        for(auto I:bb.second->Instruction_list){
            I->replace_by_map(reg_replace_map);
        }
    }
    auto BBstart = (*block)[1];
    for(auto pI:phi_map){
        BBstart->push_Ins(0,pI.second);
    }
}