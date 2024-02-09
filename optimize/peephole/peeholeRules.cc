// #include "peeholeRules.h"

// typedef int (*PHoleRule)(const std::deque<Instruction>&old_list,int pos,std::deque<Instruction>&new_list,CFG*cfg);
// int gep_combine(const std::deque<Instruction>&old_list,int pos,std::deque<Instruction>&new_list,CFG*cfg){
//     // find next
//     if(pos+1 >= old_list.size()){
//         return 0;
//     }
//     if(old_list[pos]->GetOpcode() != GETELEMENTPTR){
//         return 0;
//     }
//     // Check op
//     //  previous.result == next.ptrval
//     // Check dims
//     //  previous.dims[]~previous.dims[] == next.dims[all]
//     int chain_size = 1;
//     for(int next = pos+1;next < old_list.size();next++){
//         int previous = next-1;
//         if(old_list[next]->GetOpcode() != GETELEMENTPTR){
//             break;
//         }
//         auto gep_previous = (GetElementprtInstruction*)old_list[previous];
//         auto gep_next = (GetElementprtInstruction*)old_list[next];
//         auto next_ptrval = gep_next->GetPtrVal();
//         if(next_ptrval->GetOperandType() != BasicOperand::REG){
//             break;
//         }
//         if(gep_previous->GetResultRegNo() == ((RegOperand*)next_ptrval)->GetRegNo()){
//             // Check dims
//             auto dims_pre = gep_previous->GetDims();
//             auto dims_next = gep_next->GetDims();
//             auto idx_pre = gep_previous->GetIndexes();
//             int pre_begin = dims_pre.size()-dims_next.size();
//             int dims_match = 1;
//             if(pre_begin < 0){
//                 dims_match = 0;
//             }
//             if(pre_begin != idx_pre.size()){
//                 dims_match = 0;
//             }
//             if(gep_previous->GetType() != gep_next->GetType()){
//                 dims_match = 0;
//             }
//             for(int i = 0;i<dims_next.size();i++){
//                 if(i+pre_begin >= dims_pre.size()){
//                     dims_match = 0;
//                     break;
//                 }
//                 if(dims_pre[i+pre_begin] != dims_next[i]){
//                     dims_match = 0;
//                     break;
//                 }
//             }
//             if(dims_match){
//                 chain_size++;
//             }else{
//                 break;
//             }
//         }
//     }
//     if(chain_size == 1){
//         return 0;
//     }
//     auto begin_gep = (GetElementprtInstruction*)old_list[pos];
//     auto gep_type = begin_gep->GetType();

//     decltype(begin_gep->GetIndexes()) building_index;
//     auto last_dim = begin_gep->GetDims();
//     auto last_ptrval = begin_gep->GetPtrVal();
//     for(int slide_pos = pos;slide_pos < pos+chain_size;slide_pos++){
//         auto cur_gep = (GetElementprtInstruction*)old_list[slide_pos];
//         for(auto index:cur_gep->GetIndexes()){
//             building_index.push_back(index);
//         }
//         int code_alive = 1;
//         int is_last = (slide_pos == pos+chain_size-1);
//         auto cur_reg_no = cur_gep->GetResultRegNo();
//         // std::cerr<<"After\n";
//         if(!is_last){
//             if(cfg->reg_reference_count[cur_reg_no] <= 2){
//                 code_alive = 0;
//             }
//         }else{
//             if(cfg->reg_reference_count[cur_reg_no] <= 1){
//                 code_alive = 0;
//             }
//         }
//         if(code_alive){
//             auto building_gep = new GetElementprtInstruction(gep_type,cur_gep->GetResult(),last_ptrval,last_dim,building_index);
//             new_list.push_back(building_gep);
//             last_ptrval = cur_gep->GetResult();
//             if(!is_last){
//                 last_dim = ((GetElementprtInstruction*)old_list[slide_pos+1])->GetDims();
//             }
//             building_index.clear();
//         }
//     }
//     return chain_size;

//     // Out
//     //  last.result = getelementptr [[xi32]], ptr first.ptr, <list1> concat <list2> concat <list3> ...
//     // return 0;
// }
// int algconst_combine(const std::deque<Instruction>&old_list,int pos,std::deque<Instruction>&new_list,CFG*cfg){
//     // find next
//     if(pos+1 >= old_list.size()){
//         return 0;
//     }
//     auto oldest_opcode = old_list[pos]->GetOpcode();
//     if(oldest_opcode != ADD && oldest_opcode != MUL){
//         return 0;
//     }
//     LLVMType oldest_type = I32;
//     RegOperand* oldest_reg_op = NULL;
//     {
//         Operand candidate_next_imm_op = NULL;
//         Operand candidate_next_reg_op = NULL;
//         auto alg_next = (ArithmeticInstruction*)old_list[pos];
//         if(alg_next->GetDataType() != I32){
//             return 0;
//         }
//         if(alg_next->GetOperand1()->GetOperandType() == BasicOperand::IMMI32){
//             candidate_next_imm_op = alg_next->GetOperand1();
//             candidate_next_reg_op = alg_next->GetOperand2();
//         }else if(alg_next->GetOperand2()->GetOperandType() == BasicOperand::IMMI32){
//             candidate_next_imm_op = alg_next->GetOperand2();
//             candidate_next_reg_op = alg_next->GetOperand1();
//         }
//         if(candidate_next_imm_op == NULL){
//             return 0;
//         }
//         oldest_reg_op = (RegOperand*)candidate_next_reg_op;
//     }
//     // Example:
//     // a=a+1;
//     // a=a+1;
//     // Check op
//     //  previous.result == next.op_reg
//     //  previous.opcode == [+-]
//     //  next.opcode == [+-]
//     int chain_size = 1;
//     for(int next = pos+1;next<old_list.size();next++){
//         int previous = next - 1;
//         if(old_list[next]->GetOpcode() != oldest_opcode){
//             break;
//         }
//         auto alg_previous = (ArithmeticInstruction*)old_list[previous];
//         auto alg_next = (ArithmeticInstruction*)old_list[next];
//         auto previous_result = alg_previous->GetResultOperand();
//         Operand candidate_next_imm_op = NULL;
//         Operand candidate_next_reg_op = NULL;
//         if(alg_next->GetOperand1()->GetOperandType() == BasicOperand::IMMI32){
//             candidate_next_imm_op = alg_next->GetOperand1();
//             candidate_next_reg_op = alg_next->GetOperand2();
//         }else if(alg_next->GetOperand2()->GetOperandType() == BasicOperand::IMMI32){
//             candidate_next_imm_op = alg_next->GetOperand2();
//             candidate_next_reg_op = alg_next->GetOperand1();
//         }
//         if(candidate_next_imm_op == NULL){
//             break;
//         }
//         int previous_reg_no = alg_previous->GetResultRegNo();
//         int next_reg_no = ((RegOperand*)candidate_next_reg_op)->GetRegNo();
//         if(previous_reg_no != next_reg_no){
//             break;
//         }
//         chain_size++;
//     }
//     if(chain_size == 1){
//         return 0;
//     }
//     int cum_const = 0;
//     if(oldest_opcode == ADD){cum_const = 0;}
//     else if(oldest_opcode == MUL){cum_const = 1;}
//     else{std::cerr<<"See ::algconst_combine() in peeholeRules.cc qwe\n";}
//     for(int cur = pos;cur<pos+chain_size;cur++){
//         auto cur_alg_instruction = (ArithmeticInstruction*)old_list[cur];
//         Operand candidate_imm_op = NULL;
//         Operand candidate_reg_op = NULL;
//         if(cur_alg_instruction->GetOperand1()->GetOperandType() == BasicOperand::IMMI32){
//             candidate_imm_op = cur_alg_instruction->GetOperand1();
//             candidate_reg_op = cur_alg_instruction->GetOperand2();
//         }else if(cur_alg_instruction->GetOperand2()->GetOperandType() == BasicOperand::IMMI32){
//             candidate_imm_op = cur_alg_instruction->GetOperand2();
//             candidate_reg_op = cur_alg_instruction->GetOperand1();
//         }
//         // ASSERT candidate_imm_op != NULL
//         if(candidate_imm_op == NULL){
//             std::cerr<<"See ::algconst_combine() in peeholeRules.cc asd\n";
//         }
//         if(oldest_opcode == ADD){
//             cum_const += ((ImmI32Operand*)candidate_imm_op)->GetIntImmVal();
//         }else if(oldest_opcode == MUL){
//             cum_const *= ((ImmI32Operand*)candidate_imm_op)->GetIntImmVal();
//         }
        
//         // Check cur_alg_instruction->getResultOp(); Reference Count
//         int is_last = (cur == pos+chain_size-1);
//         int code_alive = 1;
//         // std::cerr<<"B4\n";
//         auto cur_reg_no = cur_alg_instruction->GetResultRegNo();
//         // std::cerr<<"After\n";
//         if(!is_last){
//             if(cfg->reg_reference_count[cur_reg_no] <= 2){
//                 code_alive = 0;
//             }
//         }else{
//             if(cfg->reg_reference_count[cur_reg_no] <= 1){
//                 code_alive = 0;
//             }
//         }
//         if(code_alive)
//         {
//             auto candidate_instruction = new ArithmeticInstruction((LLVMIROpcode)oldest_opcode,oldest_type,oldest_reg_op,new ImmI32Operand(cum_const),cur_alg_instruction->GetResultOperand());
//             new_list.push_back(candidate_instruction);
//         }
//     }
//     return chain_size;
//     // Out
//     //  last.result = first.op_reg [+-] const_sum
//     // return 0;
// }

// PHoleRule Rules[] = {gep_combine,algconst_combine};
// int Apply_Rules(const std::deque<Instruction>&old_list,int pos,std::deque<Instruction>&new_list,CFG*cfg){
//     int slide_dist = 0;
//     for(auto rule:Rules){
//         slide_dist = rule(old_list,pos,new_list,cfg);
//         if(slide_dist != 0){
//             return slide_dist;
//         }
//     }
//     return 0;
// }

