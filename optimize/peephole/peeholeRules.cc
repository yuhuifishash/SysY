#include "peeholeRules.h"

typedef int (*PHoleRule)(const std::deque<Instruction>&old_list,int pos,std::deque<Instruction>&new_list,CFG*cfg);
int gep_combine(const std::deque<Instruction>&old_list,int pos,std::deque<Instruction>&new_list,CFG*cfg){
    // find next
    if(pos+1 >= old_list.size()){
        return 0;
    }
    if(old_list[pos]->get_opcode() != GETELEMENTPTR){
        return 0;
    }
    // Check op
    //  previous.result == next.ptrval
    // Check dims
    //  previous.dims[]~previous.dims[] == next.dims[all]
    int chain_size = 1;
    for(int next = pos+1;next < old_list.size();next++){
        int previous = next-1;
        if(old_list[next]->get_opcode() != GETELEMENTPTR){
            break;
        }
        auto gep_previous = (get_elementptr_instruction*)old_list[previous];
        auto gep_next = (get_elementptr_instruction*)old_list[next];
        auto next_ptrval = gep_next->get_ptrVal();
        if(next_ptrval->getOperandType() != basic_operand::REG){
            break;
        }
        if(gep_previous->get_resultregno() == ((reg_operand*)next_ptrval)->getRegNo()){
            // Check dims
            auto dims_pre = gep_previous->get_dims();
            auto dims_next = gep_next->get_dims();
            auto idx_pre = gep_previous->get_indexes();
            int pre_begin = dims_pre.size()-dims_next.size();
            int dims_match = 1;
            if(pre_begin < 0){
                dims_match = 0;
            }
            if(pre_begin != idx_pre.size()){
                dims_match = 0;
            }
            if(gep_previous->get_type() != gep_next->get_type()){
                dims_match = 0;
            }
            for(int i = 0;i<dims_next.size();i++){
                if(i+pre_begin >= dims_pre.size()){
                    dims_match = 0;
                    break;
                }
                if(dims_pre[i+pre_begin] != dims_next[i]){
                    dims_match = 0;
                    break;
                }
            }
            if(dims_match){
                chain_size++;
            }else{
                break;
            }
        }
    }
    if(chain_size == 1){
        return 0;
    }
    auto begin_gep = (get_elementptr_instruction*)old_list[pos];
    auto gep_type = begin_gep->get_type();

    decltype(begin_gep->get_indexes()) building_index;
    auto last_dim = begin_gep->get_dims();
    auto last_ptrval = begin_gep->get_ptrVal();
    for(int slide_pos = pos;slide_pos < pos+chain_size;slide_pos++){
        auto cur_gep = (get_elementptr_instruction*)old_list[slide_pos];
        for(auto index:cur_gep->get_indexes()){
            building_index.push_back(index);
        }
        int code_alive = 1;
        int is_last = (slide_pos == pos+chain_size-1);
        auto cur_reg_no = cur_gep->get_resultregno();
        // std::cerr<<"After\n";
        if(!is_last){
            if(cfg->reg_reference_count[cur_reg_no] <= 2){
                code_alive = 0;
            }
        }else{
            if(cfg->reg_reference_count[cur_reg_no] <= 1){
                code_alive = 0;
            }
        }
        if(code_alive){
            auto building_gep = new get_elementptr_instruction(gep_type,cur_gep->get_result(),last_ptrval,last_dim,building_index);
            new_list.push_back(building_gep);
            last_ptrval = cur_gep->get_result();
            if(!is_last){
                last_dim = ((get_elementptr_instruction*)old_list[slide_pos+1])->get_dims();
            }
            building_index.clear();
        }
    }
    return chain_size;

    // Out
    //  last.result = getelementptr [[xi32]], ptr first.ptr, <list1> concat <list2> concat <list3> ...
    // return 0;
}
int algconst_combine(const std::deque<Instruction>&old_list,int pos,std::deque<Instruction>&new_list,CFG*cfg){
    // find next
    if(pos+1 >= old_list.size()){
        return 0;
    }
    auto oldest_opcode = old_list[pos]->get_opcode();
    if(oldest_opcode != ADD && oldest_opcode != MUL){
        return 0;
    }
    llvm_type oldest_type = I32;
    reg_operand* oldest_reg_op = NULL;
    {
        operand candidate_next_imm_op = NULL;
        operand candidate_next_reg_op = NULL;
        auto alg_next = (alg_Instruction*)old_list[pos];
        if(alg_next->getDataType() != I32){
            return 0;
        }
        if(alg_next->getOp1()->getOperandType() == basic_operand::IMMI32){
            candidate_next_imm_op = alg_next->getOp1();
            candidate_next_reg_op = alg_next->getOp2();
        }else if(alg_next->getOp2()->getOperandType() == basic_operand::IMMI32){
            candidate_next_imm_op = alg_next->getOp2();
            candidate_next_reg_op = alg_next->getOp1();
        }
        if(candidate_next_imm_op == NULL){
            return 0;
        }
        oldest_reg_op = (reg_operand*)candidate_next_reg_op;
    }
    // Example:
    // a=a+1;
    // a=a+1;
    // Check op
    //  previous.result == next.op_reg
    //  previous.opcode == [+-]
    //  next.opcode == [+-]
    int chain_size = 1;
    for(int next = pos+1;next<old_list.size();next++){
        int previous = next - 1;
        if(old_list[next]->get_opcode() != oldest_opcode){
            break;
        }
        auto alg_previous = (alg_Instruction*)old_list[previous];
        auto alg_next = (alg_Instruction*)old_list[next];
        auto previous_result = alg_previous->getResultOp();
        operand candidate_next_imm_op = NULL;
        operand candidate_next_reg_op = NULL;
        if(alg_next->getOp1()->getOperandType() == basic_operand::IMMI32){
            candidate_next_imm_op = alg_next->getOp1();
            candidate_next_reg_op = alg_next->getOp2();
        }else if(alg_next->getOp2()->getOperandType() == basic_operand::IMMI32){
            candidate_next_imm_op = alg_next->getOp2();
            candidate_next_reg_op = alg_next->getOp1();
        }
        if(candidate_next_imm_op == NULL){
            break;
        }
        int previous_reg_no = alg_previous->get_resultregno();
        int next_reg_no = ((reg_operand*)candidate_next_reg_op)->getRegNo();
        if(previous_reg_no != next_reg_no){
            break;
        }
        chain_size++;
    }
    if(chain_size == 1){
        return 0;
    }
    int cum_const = 0;
    if(oldest_opcode == ADD){cum_const = 0;}
    else if(oldest_opcode == MUL){cum_const = 1;}
    else{std::cerr<<"See ::algconst_combine() in peeholeRules.cc qwe\n";}
    for(int cur = pos;cur<pos+chain_size;cur++){
        auto cur_alg_instruction = (alg_Instruction*)old_list[cur];
        operand candidate_imm_op = NULL;
        operand candidate_reg_op = NULL;
        if(cur_alg_instruction->getOp1()->getOperandType() == basic_operand::IMMI32){
            candidate_imm_op = cur_alg_instruction->getOp1();
            candidate_reg_op = cur_alg_instruction->getOp2();
        }else if(cur_alg_instruction->getOp2()->getOperandType() == basic_operand::IMMI32){
            candidate_imm_op = cur_alg_instruction->getOp2();
            candidate_reg_op = cur_alg_instruction->getOp1();
        }
        // ASSERT candidate_imm_op != NULL
        if(candidate_imm_op == NULL){
            std::cerr<<"See ::algconst_combine() in peeholeRules.cc asd\n";
        }
        if(oldest_opcode == ADD){
            cum_const += ((imm_i32_operand*)candidate_imm_op)->getIntImmVal();
        }else if(oldest_opcode == MUL){
            cum_const *= ((imm_i32_operand*)candidate_imm_op)->getIntImmVal();
        }
        
        // Check cur_alg_instruction->getResultOp(); Reference Count
        int is_last = (cur == pos+chain_size-1);
        int code_alive = 1;
        // std::cerr<<"B4\n";
        auto cur_reg_no = cur_alg_instruction->get_resultregno();
        // std::cerr<<"After\n";
        if(!is_last){
            if(cfg->reg_reference_count[cur_reg_no] <= 2){
                code_alive = 0;
            }
        }else{
            if(cfg->reg_reference_count[cur_reg_no] <= 1){
                code_alive = 0;
            }
        }
        if(code_alive)
        {
            auto candidate_instruction = new alg_Instruction((llvm_ir_opcode)oldest_opcode,oldest_type,oldest_reg_op,new imm_i32_operand(cum_const),cur_alg_instruction->getResultOp());
            new_list.push_back(candidate_instruction);
        }
    }
    return chain_size;
    // Out
    //  last.result = first.op_reg [+-] const_sum
    // return 0;
}

PHoleRule Rules[] = {gep_combine,algconst_combine};
int Apply_Rules(const std::deque<Instruction>&old_list,int pos,std::deque<Instruction>&new_list,CFG*cfg){
    int slide_dist = 0;
    for(auto rule:Rules){
        slide_dist = rule(old_list,pos,new_list,cfg);
        if(slide_dist != 0){
            return slide_dist;
        }
    }
    return 0;
}

