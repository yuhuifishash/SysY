// #include "llvm_ir.h"
// #include "llvm_cfg.h"
// #include "Instruction.h"
// #include "basic_block.h"
// #include "peeholeRules.h"

// void LLVMIR::peephole_optimize()
// {
//     for(auto node:llvm_cfg){
//         node.second->simple_instcombine();
//         node.second->simple_inst_strength_reduce();
//     }
// }


// void CFG::simple_instcombine()
// {
//     reg_reference_count.clear();
//     for(auto&block_pair:*block){
//         auto&block = block_pair.second;
//         auto block_id = block_pair.first;
//         for(auto ins:block->Instruction_list){
//             for(auto ref_reg:ins->refering_virtual_regs()){
//                 // auto ref_register = (reg_operand*)ref_reg;
//                 reg_reference_count[ref_reg] = reg_reference_count[ref_reg]+1;
//             }
//         }
//     }
//     for(auto&block_pair:*block){
//         auto&block = block_pair.second;
//         auto block_id = block_pair.first;
//         decltype(block->Instruction_list) new_list;
//         int cur_pos = 0;
//         while(cur_pos < block->Instruction_list.size()){
//             int slide_dist = Apply_Rules(block->Instruction_list,cur_pos,new_list,this);
//             if(slide_dist != 0){
//                 cur_pos+=slide_dist;
//             }else{
//                 new_list.push_back(block->Instruction_list[cur_pos]);
//                 cur_pos++;
//             }
//         }

//         block->Instruction_list = new_list;
//     }
// }

// std::vector<int> calc_1b(unsigned int a){
//     std::vector<int>res;
//     int idx=0;
//     while(a){
//         if(a&1){
//             res.push_back(idx);
//         }
//         a>>=1;
//         idx++;
//     }
//     return res;
// }

// void CFG::simple_inst_strength_reduce()
// {
//     // std::cerr<<func_ins->get_Func_name()<<"\n";
//     std::map<int,Operand> replace_val;
//     for(auto&block_pair:*block){
//         auto&block = block_pair.second;
//         auto block_id = block_pair.first;
//         for(auto ins:block->Instruction_list){
//             if(ins->GetOpcode() == PHI){
//                 auto phi_ins = (PhiInstruction*)ins;
//                 if(phi_ins->getPhiList().size()==1){
//                     auto reg=phi_ins->GetResultOp();
//                     auto reg_no = ((RegOperand*)reg)->GetRegNo();
//                     replace_val[reg_no]=phi_ins->getPhiList().begin()->second;
//                 }
//             }else if(ins->GetOpcode() == MUL){
//                 Operand candidate_imm_op = NULL;
//                 Operand candidate_reg_op = NULL;
//                 auto alg_ins = (ArithmeticInstruction*)ins;
//                 if(alg_ins->GetOperand1()->GetOperandType() == BasicOperand::IMMI32){
//                     candidate_imm_op = alg_ins->GetOperand1();
//                     candidate_reg_op = alg_ins->GetOperand2();
//                 }else if(alg_ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32){
//                     candidate_imm_op = alg_ins->GetOperand2();
//                     candidate_reg_op = alg_ins->GetOperand1();
//                 }
//                 if(candidate_imm_op != NULL){
//                     int candidate_imm = ((ImmI32Operand*)candidate_imm_op)->GetIntImmVal();
//                     auto reg=alg_ins->GetResultOperand();
//                     auto reg_no = ((RegOperand*)reg)->GetRegNo();
//                     if(candidate_imm == 0){
//                         replace_val[reg_no] = new ImmI32Operand(0);
//                     }else if(candidate_imm == 1){
//                         replace_val[reg_no] = candidate_reg_op;
//                     }
//                 }
//             }else if(ins->GetOpcode() == DIV){
//                 auto alg_ins = (ArithmeticInstruction*)ins;
//                 auto reg=alg_ins->GetResultOperand();
//                 auto reg_no = ((RegOperand*)reg)->GetRegNo();
//                 if(alg_ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32){
//                     auto imm = ((ImmI32Operand*)alg_ins->GetOperand2())->GetIntImmVal();
//                     if(imm == 1){
//                         replace_val[reg_no] = alg_ins->GetOperand1();
//                     }
//                 }
//             }
//         }
//     }
//     bool changed = 1;
//     while(changed){
//         changed = 0;
//         for(auto&block_pair:*block){
//             auto&block = block_pair.second;
//             auto block_id = block_pair.first;
//             for(auto&ins:block->Instruction_list){
//                 auto reg_nres = ins->GetNonResultOperands();
//                 for(int i=0;i<reg_nres.size();i++){
//                     auto res_ob = reg_nres[i];
//                     if(res_ob->GetOperandType() == BasicOperand::REG){
//                         int reg_no=((RegOperand*)res_ob)->GetRegNo();
//                         if(replace_val.find(reg_no)!=replace_val.end()){
//                             reg_nres[i] = replace_val[reg_no];
//                             changed = 1;
//                         }
//                     }
//                 }
//                 ins->SetNonResultOperands(reg_nres);
//             }
//         }
//     }
//     for(auto&block_pair:*block){
//         auto&block = block_pair.second;
//         auto block_id = block_pair.first;
//         decltype(block->Instruction_list) new_InsList;
//         for(auto ins:block->Instruction_list){
//             if(ins->GetOpcode() == PHI){
//                 auto phi_ins = (PhiInstruction*)ins;
//                 if(phi_ins->getPhiList().size()==1){
//                 }else{
//                     new_InsList.push_back(ins);
//                 }
//             }else if(ins->GetOpcode() == MUL){
//                 Operand candidate_imm_op = NULL;
//                 Operand candidate_reg_op = NULL;
//                 auto alg_ins = (ArithmeticInstruction*)ins;
//                 if(alg_ins->GetOperand1()->GetOperandType() == BasicOperand::IMMI32){
//                     candidate_imm_op = alg_ins->GetOperand1();
//                     candidate_reg_op = alg_ins->GetOperand2();
//                 }else if(alg_ins->GetOperand2()->GetOperandType() == BasicOperand::IMMI32){
//                     candidate_imm_op = alg_ins->GetOperand2();
//                     candidate_reg_op = alg_ins->GetOperand1();
//                 }
//                 if(candidate_imm_op == NULL){
//                     new_InsList.push_back(ins);
//                 }else{
//                     int candidate_imm = ((ImmI32Operand*)candidate_imm_op)->GetIntImmVal();
//                     if(candidate_imm == 0 || candidate_imm == 1){
//                         continue;
//                     }
//                     new_InsList.push_back(ins);
//                 //     auto imm_bits = calc_1b(candidate_imm);
//                 //     auto imm_bits1 = calc_1b(candidate_imm+1);
//                 //     if(imm_bits.size() == 1){
//                 //         int bit_pos = imm_bits[0];
//                 //         new_InsList.push_back(new alg_Instruction(SHL,I32,candidate_reg_op,new imm_i32_operand(bit_pos),alg_ins->getResultOp()));
//                 //     }else if(imm_bits.size() == 2 && imm_bits[0] == 0){
//                 //         // int bit_pos1 = imm_bits[0];
//                 //         int bit_pos2 = imm_bits[1];
//                 //         // if(bit_pos1 != 0){
//                 //             // ++max_reg;
//                 //             // auto reg1 = new reg_operand(max_reg);
//                 //             // ++max_reg;
//                 //             // auto reg2 = new reg_operand(max_reg);
//                 //             // new_InsList.push_back(new alg_Instruction(SHL,I32,candidate_reg_op,new imm_i32_operand(bit_pos1),reg1));
//                 //             // new_InsList.push_back(new alg_Instruction(SHL,I32,candidate_reg_op,new imm_i32_operand(bit_pos2),reg2));
//                 //             // new_InsList.push_back(new alg_Instruction(ADD,I32,reg1,reg2,alg_ins->getResultOp()));
//                 //         // }else{
//                 //             // ++max_reg;
//                 //             // auto reg2 = new reg_operand(max_reg);
//                 //             // new_InsList.push_back(new alg_Instruction(SHL,I32,candidate_reg_op,new imm_i32_operand(bit_pos2),reg2));
//                 //             // new_InsList.push_back(new alg_Instruction(ADD,I32,candidate_reg_op,reg2,alg_ins->getResultOp()));
//                 //             new_InsList.push_back(new pseudo_alg_lsl_Instruction(ADD_LSL,candidate_reg_op,candidate_reg_op,bit_pos2,alg_ins->getResultOp()));
//                 //         // }
//                 //     }else if(imm_bits1.size() == 1){
//                 //         int bit_pos = imm_bits1[0];
//                 //         new_InsList.push_back(new pseudo_alg_lsl_Instruction(RSBS_LSL,candidate_reg_op,candidate_reg_op,bit_pos,alg_ins->getResultOp()));
//                 //     }else{
//                 //         new_InsList.push_back(ins);
//                 //     }
//                 }
//             }else if(ins->GetOpcode() == DIV){
//                 new_InsList.push_back(ins);
//             }else{
//                 new_InsList.push_back(ins);
//             }
//         }
//         block->Instruction_list = new_InsList;
//     }
// }

// void LLVMIR::decompose_getelementptr(){
//     // std::cerr<<"LLVM_IR::decompose_getelementptr()\n";
//     for(auto& func_CFG:llvm_cfg){
//         auto cfg = func_CFG.second;
//         // std::cerr<<cfg->func_ins->get_Func_name()<<"\n";
//         for(auto& block_pair:*(cfg->block)){
//             auto& block = block_pair.second;
//             decltype(block->Instruction_list) new_insList;
//             // std::cerr<<"AA\n";
//             for(auto ins:block->Instruction_list){
//                 // ins->printIR(std::cerr);
//                 if(ins->GetOpcode()==GETELEMENTPTR){
//                     auto gep_ins = (GetElementprtInstruction*)ins;
//                     auto idx_list = gep_ins->GetIndexes();
//                     std::deque<int> dim_list;
//                     for(auto x:gep_ins->GetDims()){
//                         dim_list.push_back(x);
//                     }
//                     int last_non_const_pos = -1;
//                     auto cur_ptrval = gep_ins->GetPtrVal();
//                     if(idx_list.empty()){
//                         new_insList.push_back(ins);
//                     }
//                     for(int i=0;i<idx_list.size();i++){
//                         if(idx_list[i]->GetOperandType() == BasicOperand::IMMI32){
//                             if(i == idx_list.size()-1){
//                                 if(last_non_const_pos+1<=i){
//                                     // cfg->max_reg++;
//                                     auto cur_result = gep_ins->GetResult();
//                                     std::vector<int> cur_dim;
//                                     for(auto x:dim_list){
//                                         cur_dim.push_back(x);
//                                     }
//                                     auto ele = new GetElementprtInstruction(gep_ins->GetType(),cur_result,cur_ptrval,cur_dim);
//                                     for(int j=last_non_const_pos+1;j<=i;j++){
//                                         int idx_immval = ((ImmI32Operand*)idx_list[j])->GetIntImmVal();
//                                         ele->push_idx_imm32(idx_immval);
//                                         if(!dim_list.empty())
//                                             dim_list.pop_front();
//                                     }
//                                     new_insList.push_back(ele);
//                                     cfg->regresult_ins_map[ele->GetResultRegNo()] = ele;
//                                     ele->SetBlockID(block->block_id);
//                                     cur_ptrval = cur_result;
//                                 }
//                             }
//                         }
//                         else{
//                             GetElementprtInstruction* ele;
//                             int const_end = i;
//                             if(last_non_const_pos == -1){
//                                 const_end++;
//                             }
//                             if(last_non_const_pos+1<const_end){
//                                 Operand cur_result;
//                                 if(const_end != idx_list.size()){
//                                     cfg->max_reg++;
//                                     cur_result = new RegOperand(cfg->max_reg);
//                                 }
//                                 else{
//                                     cur_result = gep_ins->GetResult();
//                                 }
//                                 std::vector<int> cur_dim;
//                                 for(auto x:dim_list){
//                                     cur_dim.push_back(x);
//                                 }
//                                 ele = new GetElementprtInstruction(gep_ins->GetType(),cur_result,cur_ptrval,cur_dim);
//                                 for(int j=last_non_const_pos+1;j<const_end;j++){
//                                     if(idx_list[j]->GetOperandType() == BasicOperand::IMMI32){
//                                         int idx_immval = ((ImmI32Operand*)idx_list[j])->GetIntImmVal();
//                                         ele->push_idx_imm32(idx_immval);
//                                     }else{
//                                         int reg_no = ((RegOperand*)idx_list[j])->GetRegNo();
//                                         ele->push_idx_reg(reg_no);
//                                     }
//                                     if(!dim_list.empty())
//                                         dim_list.pop_front();
//                                 }
//                                 new_insList.push_back(ele);
//                                 cfg->regresult_ins_map[ele->GetResultRegNo()] = ele;
//                                 ele->SetBlockID(block->block_id);
//                                 cur_ptrval = cur_result;
//                             }

//                             if(last_non_const_pos != -1){
//                                 Operand cur_result;
//                                 if(i != idx_list.size()-1){
//                                     cfg->max_reg++;
//                                     cur_result = new RegOperand(cfg->max_reg);
//                                 }
//                                 else{
//                                     cur_result = gep_ins->GetResult();
//                                 }
//                                 std::vector<int> cur_dim;
//                                 for(auto x:dim_list){
//                                     cur_dim.push_back(x);
//                                 }
//                                 ele = new GetElementprtInstruction(gep_ins->GetType(),cur_result,cur_ptrval,cur_dim);
//                                 Operand var_idx = idx_list[i];
//                                 if(var_idx->GetOperandType()!=BasicOperand::REG){
//                                     std::cerr<<"not REG not CONST in GEP\n";
//                                 }
//                                 ele->push_idx_reg(((RegOperand*)var_idx)->GetRegNo());
//                                 if(!dim_list.empty()){
//                                     dim_list.pop_front();
//                                 }
//                                 new_insList.push_back(ele);
//                                 cfg->regresult_ins_map[ele->GetResultRegNo()] = ele;
//                                 ele->SetBlockID(block->block_id);
//                                 cur_ptrval = cur_result;
//                             }
//                             last_non_const_pos = i;
//                         }
//                     }
//                 }
//                 else{
//                     new_insList.push_back(ins);
//                 }
//             }
//             // std::cerr<<cfg->func_ins->get_Func_name()<<" "<<block->block_id<<"\n";
//             block->Instruction_list = new_insList;
//             // std::cerr<<"  SAFE\n";
//         }
//         // cfg->set_ins_block_ID();
//         // cfg->build_SSA_Graph();
//     }
// }