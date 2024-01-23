#include "llvm_ir.h"
#include "llvm_cfg.h"
#include "Instruction.h"
#include "basic_block.h"
#include "peeholeRules.h"

void LLVM_IR::peephole_optimize()
{
    for(auto node:llvm_cfg){
        node.second->simple_instcombine();
        node.second->simple_inst_strength_reduce();
    }
}


void CFG::simple_instcombine()
{
    reg_reference_count.clear();
    for(auto&block_pair:*block){
        auto&block = block_pair.second;
        auto block_id = block_pair.first;
        for(auto ins:block->Instruction_list){
            for(auto ref_reg:ins->refering_virtual_regs()){
                // auto ref_register = (reg_operand*)ref_reg;
                reg_reference_count[ref_reg] = reg_reference_count[ref_reg]+1;
            }
        }
    }
    for(auto&block_pair:*block){
        auto&block = block_pair.second;
        auto block_id = block_pair.first;
        decltype(block->Instruction_list) new_list;
        int cur_pos = 0;
        while(cur_pos < block->Instruction_list.size()){
            int slide_dist = Apply_Rules(block->Instruction_list,cur_pos,new_list,this);
            if(slide_dist != 0){
                cur_pos+=slide_dist;
            }else{
                new_list.push_back(block->Instruction_list[cur_pos]);
                cur_pos++;
            }
        }

        block->Instruction_list = new_list;
    }
}

std::vector<int> calc_1b(unsigned int a){
    std::vector<int>res;
    int idx=0;
    while(a){
        if(a&1){
            res.push_back(idx);
        }
        a>>=1;
        idx++;
    }
    return res;
}

void CFG::simple_inst_strength_reduce()
{
    // std::cerr<<func_ins->get_Func_name()<<"\n";
    std::map<int,operand> replace_val;
    for(auto&block_pair:*block){
        auto&block = block_pair.second;
        auto block_id = block_pair.first;
        for(auto ins:block->Instruction_list){
            if(ins->get_opcode() == PHI){
                auto phi_ins = (phi_instruction*)ins;
                if(phi_ins->getPhiList().size()==1){
                    auto reg=phi_ins->getResultOp();
                    auto reg_no = ((reg_operand*)reg)->getRegNo();
                    replace_val[reg_no]=phi_ins->getPhiList().begin()->second;
                }
            }else if(ins->get_opcode() == MUL){
                operand candidate_imm_op = NULL;
                operand candidate_reg_op = NULL;
                auto alg_ins = (alg_Instruction*)ins;
                if(alg_ins->getOp1()->getOperandType() == basic_operand::IMMI32){
                    candidate_imm_op = alg_ins->getOp1();
                    candidate_reg_op = alg_ins->getOp2();
                }else if(alg_ins->getOp2()->getOperandType() == basic_operand::IMMI32){
                    candidate_imm_op = alg_ins->getOp2();
                    candidate_reg_op = alg_ins->getOp1();
                }
                if(candidate_imm_op != NULL){
                    int candidate_imm = ((imm_i32_operand*)candidate_imm_op)->getIntImmVal();
                    auto reg=alg_ins->getResultOp();
                    auto reg_no = ((reg_operand*)reg)->getRegNo();
                    if(candidate_imm == 0){
                        replace_val[reg_no] = new imm_i32_operand(0);
                    }else if(candidate_imm == 1){
                        replace_val[reg_no] = candidate_reg_op;
                    }
                }
            }else if(ins->get_opcode() == DIV){
                auto alg_ins = (alg_Instruction*)ins;
                auto reg=alg_ins->getResultOp();
                auto reg_no = ((reg_operand*)reg)->getRegNo();
                if(alg_ins->getOp2()->getOperandType() == basic_operand::IMMI32){
                    auto imm = ((imm_i32_operand*)alg_ins->getOp2())->getIntImmVal();
                    if(imm == 1){
                        replace_val[reg_no] = alg_ins->getOp1();
                    }
                }
            }
        }
    }
    bool changed = 1;
    while(changed){
        changed = 0;
        for(auto&block_pair:*block){
            auto&block = block_pair.second;
            auto block_id = block_pair.first;
            for(auto&ins:block->Instruction_list){
                auto reg_nres = ins->get_nonresult_operands();
                for(int i=0;i<reg_nres.size();i++){
                    auto res_ob = reg_nres[i];
                    if(res_ob->getOperandType() == basic_operand::REG){
                        int reg_no=((reg_operand*)res_ob)->getRegNo();
                        if(replace_val.find(reg_no)!=replace_val.end()){
                            reg_nres[i] = replace_val[reg_no];
                            changed = 1;
                        }
                    }
                }
                ins->set_nonresult_operands(reg_nres);
            }
        }
    }
    for(auto&block_pair:*block){
        auto&block = block_pair.second;
        auto block_id = block_pair.first;
        decltype(block->Instruction_list) new_InsList;
        for(auto ins:block->Instruction_list){
            if(ins->get_opcode() == PHI){
                auto phi_ins = (phi_instruction*)ins;
                if(phi_ins->getPhiList().size()==1){
                }else{
                    new_InsList.push_back(ins);
                }
            }else if(ins->get_opcode() == MUL){
                operand candidate_imm_op = NULL;
                operand candidate_reg_op = NULL;
                auto alg_ins = (alg_Instruction*)ins;
                if(alg_ins->getOp1()->getOperandType() == basic_operand::IMMI32){
                    candidate_imm_op = alg_ins->getOp1();
                    candidate_reg_op = alg_ins->getOp2();
                }else if(alg_ins->getOp2()->getOperandType() == basic_operand::IMMI32){
                    candidate_imm_op = alg_ins->getOp2();
                    candidate_reg_op = alg_ins->getOp1();
                }
                if(candidate_imm_op == NULL){
                    new_InsList.push_back(ins);
                }else{
                    int candidate_imm = ((imm_i32_operand*)candidate_imm_op)->getIntImmVal();
                    if(candidate_imm == 0 || candidate_imm == 1){
                        continue;
                    }
                    new_InsList.push_back(ins);
                //     auto imm_bits = calc_1b(candidate_imm);
                //     auto imm_bits1 = calc_1b(candidate_imm+1);
                //     if(imm_bits.size() == 1){
                //         int bit_pos = imm_bits[0];
                //         new_InsList.push_back(new alg_Instruction(SHL,I32,candidate_reg_op,new imm_i32_operand(bit_pos),alg_ins->getResultOp()));
                //     }else if(imm_bits.size() == 2 && imm_bits[0] == 0){
                //         // int bit_pos1 = imm_bits[0];
                //         int bit_pos2 = imm_bits[1];
                //         // if(bit_pos1 != 0){
                //             // ++max_reg;
                //             // auto reg1 = new reg_operand(max_reg);
                //             // ++max_reg;
                //             // auto reg2 = new reg_operand(max_reg);
                //             // new_InsList.push_back(new alg_Instruction(SHL,I32,candidate_reg_op,new imm_i32_operand(bit_pos1),reg1));
                //             // new_InsList.push_back(new alg_Instruction(SHL,I32,candidate_reg_op,new imm_i32_operand(bit_pos2),reg2));
                //             // new_InsList.push_back(new alg_Instruction(ADD,I32,reg1,reg2,alg_ins->getResultOp()));
                //         // }else{
                //             // ++max_reg;
                //             // auto reg2 = new reg_operand(max_reg);
                //             // new_InsList.push_back(new alg_Instruction(SHL,I32,candidate_reg_op,new imm_i32_operand(bit_pos2),reg2));
                //             // new_InsList.push_back(new alg_Instruction(ADD,I32,candidate_reg_op,reg2,alg_ins->getResultOp()));
                //             new_InsList.push_back(new pseudo_alg_lsl_Instruction(ADD_LSL,candidate_reg_op,candidate_reg_op,bit_pos2,alg_ins->getResultOp()));
                //         // }
                //     }else if(imm_bits1.size() == 1){
                //         int bit_pos = imm_bits1[0];
                //         new_InsList.push_back(new pseudo_alg_lsl_Instruction(RSBS_LSL,candidate_reg_op,candidate_reg_op,bit_pos,alg_ins->getResultOp()));
                //     }else{
                //         new_InsList.push_back(ins);
                //     }
                }
            }else if(ins->get_opcode() == DIV){
                new_InsList.push_back(ins);
            }else{
                new_InsList.push_back(ins);
            }
        }
        block->Instruction_list = new_InsList;
    }
}

void LLVM_IR::decompose_getelementptr(){
    // std::cerr<<"LLVM_IR::decompose_getelementptr()\n";
    for(auto& func_CFG:llvm_cfg){
        auto cfg = func_CFG.second;
        // std::cerr<<cfg->func_ins->get_Func_name()<<"\n";
        for(auto& block_pair:*(cfg->block)){
            auto& block = block_pair.second;
            decltype(block->Instruction_list) new_insList;
            // std::cerr<<"AA\n";
            for(auto ins:block->Instruction_list){
                // ins->printIR(std::cerr);
                if(ins->get_opcode()==GETELEMENTPTR){
                    auto gep_ins = (get_elementptr_instruction*)ins;
                    auto idx_list = gep_ins->get_indexes();
                    std::deque<int> dim_list;
                    for(auto x:gep_ins->get_dims()){
                        dim_list.push_back(x);
                    }
                    int last_non_const_pos = -1;
                    auto cur_ptrval = gep_ins->get_ptrVal();
                    if(idx_list.empty()){
                        new_insList.push_back(ins);
                    }
                    for(int i=0;i<idx_list.size();i++){
                        if(idx_list[i]->getOperandType() == basic_operand::IMMI32){
                            if(i == idx_list.size()-1){
                                if(last_non_const_pos+1<=i){
                                    // cfg->max_reg++;
                                    auto cur_result = gep_ins->get_result();
                                    std::vector<int> cur_dim;
                                    for(auto x:dim_list){
                                        cur_dim.push_back(x);
                                    }
                                    auto ele = new get_elementptr_instruction(gep_ins->get_type(),cur_result,cur_ptrval,cur_dim);
                                    for(int j=last_non_const_pos+1;j<=i;j++){
                                        int idx_immval = ((imm_i32_operand*)idx_list[j])->getIntImmVal();
                                        ele->push_idx_imm32(idx_immval);
                                        if(!dim_list.empty())
                                            dim_list.pop_front();
                                    }
                                    new_insList.push_back(ele);
                                    cfg->regresult_ins_map[ele->get_resultregno()] = ele;
                                    ele->setBlockID(block->block_id);
                                    cur_ptrval = cur_result;
                                }
                            }
                        }
                        else{
                            get_elementptr_instruction* ele;
                            int const_end = i;
                            if(last_non_const_pos == -1){
                                const_end++;
                            }
                            if(last_non_const_pos+1<const_end){
                                operand cur_result;
                                if(const_end != idx_list.size()){
                                    cfg->max_reg++;
                                    cur_result = new reg_operand(cfg->max_reg);
                                }
                                else{
                                    cur_result = gep_ins->get_result();
                                }
                                std::vector<int> cur_dim;
                                for(auto x:dim_list){
                                    cur_dim.push_back(x);
                                }
                                ele = new get_elementptr_instruction(gep_ins->get_type(),cur_result,cur_ptrval,cur_dim);
                                for(int j=last_non_const_pos+1;j<const_end;j++){
                                    if(idx_list[j]->getOperandType() == basic_operand::IMMI32){
                                        int idx_immval = ((imm_i32_operand*)idx_list[j])->getIntImmVal();
                                        ele->push_idx_imm32(idx_immval);
                                    }else{
                                        int reg_no = ((reg_operand*)idx_list[j])->getRegNo();
                                        ele->push_idx_reg(reg_no);
                                    }
                                    if(!dim_list.empty())
                                        dim_list.pop_front();
                                }
                                new_insList.push_back(ele);
                                cfg->regresult_ins_map[ele->get_resultregno()] = ele;
                                ele->setBlockID(block->block_id);
                                cur_ptrval = cur_result;
                            }

                            if(last_non_const_pos != -1){
                                operand cur_result;
                                if(i != idx_list.size()-1){
                                    cfg->max_reg++;
                                    cur_result = new reg_operand(cfg->max_reg);
                                }
                                else{
                                    cur_result = gep_ins->get_result();
                                }
                                std::vector<int> cur_dim;
                                for(auto x:dim_list){
                                    cur_dim.push_back(x);
                                }
                                ele = new get_elementptr_instruction(gep_ins->get_type(),cur_result,cur_ptrval,cur_dim);
                                operand var_idx = idx_list[i];
                                if(var_idx->getOperandType()!=basic_operand::REG){
                                    std::cerr<<"not REG not CONST in GEP\n";
                                }
                                ele->push_idx_reg(((reg_operand*)var_idx)->getRegNo());
                                if(!dim_list.empty()){
                                    dim_list.pop_front();
                                }
                                new_insList.push_back(ele);
                                cfg->regresult_ins_map[ele->get_resultregno()] = ele;
                                ele->setBlockID(block->block_id);
                                cur_ptrval = cur_result;
                            }
                            last_non_const_pos = i;
                        }
                    }
                }
                else{
                    new_insList.push_back(ins);
                }
            }
            // std::cerr<<cfg->func_ins->get_Func_name()<<" "<<block->block_id<<"\n";
            block->Instruction_list = new_insList;
            // std::cerr<<"  SAFE\n";
        }
        // cfg->set_ins_block_ID();
        // cfg->build_SSA_Graph();
    }
}