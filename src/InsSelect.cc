#ifndef INSSELECT_CC
#define INSSELECT_CC
#include "llvm_cfg.h"
#include "llvm_ir.h"
extern LLVM_IR llvm_IR;
LLVM_IR cgenpre_IR;
static int max_prereg = -1;
static Func_Def_Instruction func_now;
static llvm_block block_now;
static std::map<int,int>reg_fpNegativeoffset_map;
static int next_negative_offset = -8;
// static int current_sp_offset = 0;
// static int current_savesp_offset = 0;
std::vector<int> calc_1b(unsigned int a);
int mul_str_redu(operand index,int product,operand inc_reg,bool gep_mode = 1){
    auto imm_bits = calc_1b(product);
    auto imm_bits1 = calc_1b(product+1);
    if(product == 0){
        block_now->push_Ins(1,new mov_instruction(inc_reg,new imm_i32_operand(0)));
        return 1;
    }else if(imm_bits.size() == 1){
        block_now->push_Ins(1,new alg_Instruction(SHL,I32,index,new imm_i32_operand(imm_bits[0]),inc_reg));
        return 1;
    }else if(imm_bits.size() == 2 && imm_bits[0] == 0){
        // int bit_pos1 = imm_bits[0];
        int bit_pos2 = imm_bits[1];
        // if(bit_pos1 != 0){
        //     auto tmp = get_newReg();
        //     block_now->push_Ins(1,new alg_Instruction(SHL,I32,index,new imm_i32_operand(bit_pos2),tmp));
        //     block_now->push_Ins(1,new alg_Instruction(SHL,I32,index,new imm_i32_operand(bit_pos1),inc_reg));
        //     block_now->push_Ins(1,new alg_Instruction(ADD,I32,inc_reg,tmp,inc_reg));
        // }else{
            // block_now->push_Ins(1,new alg_Instruction(SHL,I32,index,new imm_i32_operand(bit_pos2),inc_reg));
            // block_now->push_Ins(1,new alg_Instruction(ADD,I32,inc_reg,index,inc_reg));
            block_now->push_Ins(1,new pseudo_alg_shift_Instruction(ADD_SHIFT,index,index,bit_pos2,inc_reg));
        // }
        return 1;
    }else if(imm_bits1.size() == 1){
        int bit_pos = imm_bits1[0];
        block_now->push_Ins(1,new pseudo_alg_shift_Instruction(RSBS_SHIFT,index,index,bit_pos,inc_reg));
        return 1;
    }else if(gep_mode){
        block_now->push_Ins(1,new load_imm_instruction(inc_reg,product));
        block_now->push_Ins(1,new alg_Instruction(MUL,I32,index,inc_reg,inc_reg));
        return 1;
    }
    return 0;
}
cmp_cond get_rev_cond(cmp_cond T)
{
    cmp_cond ans;
    switch(T)
    { 
        case eq: 
            ans = eq; 
            break; 
        case ne: 
            ans = ne; 
            break; 
        case sgt: 
            ans = slt; 
            break; 
        case sge: 
            ans = sle; 
            break; 
        case slt: 
            ans = sgt; 
            break; 
        case sle: 
            ans = sge; 
            break; 
        default:
            break;
    }
    return ans;
}

bool Immediate_8_Condition(unsigned int val){
    if(val == 0){
        return true;
    }
    int cur_2bit = 0;
    // 40800000
    int lowest_2bit = 50;
    int highest_2bit = 0;
    while(val){
        if(val&3){
            lowest_2bit = lowest_2bit < cur_2bit? lowest_2bit:cur_2bit;
            highest_2bit = highest_2bit > cur_2bit? highest_2bit:cur_2bit;
        }
        val>>=2;
        cur_2bit++;
    }
    return highest_2bit-lowest_2bit+1 <= 4;
}
bool Co_Processor_1020_Condition(int i32_val){
    return i32_val <= 1020 && i32_val >= -1020;
}

typedef bool (*i32_Condition)(int i32_val);
operand get_any_imm32(int i32_val,i32_Condition imm_cond){
    if(imm_cond(i32_val)){
        return new imm_i32_operand(i32_val);
    }else{
        ++max_prereg;
        int imm_regno = max_prereg;
        auto imm_reg = new reg_operand(imm_regno);
        block_now->push_Ins(1,new load_imm_instruction(imm_reg,i32_val));
        return imm_reg;
    }
}
operand get_any_imm32(int i32_val){
    if(Immediate_8_Condition(i32_val)){
        return new imm_i32_operand(i32_val);
    }else{
        ++max_prereg;
        int imm_regno = max_prereg;
        auto imm_reg = new reg_operand(imm_regno);
        block_now->push_Ins(1,new load_imm_instruction(imm_reg,i32_val));
        return imm_reg;
    }
}
operand get_any_imm32_in_reg(int i32_val){
    ++max_prereg;
    auto imm_reg = new reg_operand(max_prereg);
    block_now->push_Ins(1,new load_imm_instruction(imm_reg,i32_val));
    return imm_reg;
}

reg_operand* get_newReg(){
    ++max_prereg;
    int newreg_no = max_prereg;
    return new reg_operand(newreg_no);
}

void generate_seq(llvm_block B,llvm_type ll_type,operand src,operand target)
{
    operand tmp_zero;
    if(ll_type == I32 || ll_type == PTR){
        tmp_zero = new imm_i32_operand(0);
    }
    if(ll_type == FLOAT32){
        tmp_zero = new imm_f32_operand(0);
    }
    B->push_Ins(1,new alg_Instruction(ADD,ll_type,tmp_zero,src,target));
}

bool judge_if_can_seq(std::map<operand,operand>& M,int to)
{
    for(auto n:M){
        operand op = n.second;
        int target = -1;
        if(op->getOperandType() == basic_operand::REG){
            target = ((reg_operand*)op)->getRegNo();
        }
        if(target == to){return false;}
    }
    return true;
}

bool judge_if_need_seq(std::map<operand,operand>& M)
{
    for(auto n:M){
        operand op = n.second;
        int target = -1;
        if(op->getOperandType() == basic_operand::REG){
            target = ((reg_operand*)op)->getRegNo();
        }
        if(target == ((reg_operand*)n.first)->getRegNo()){
            continue;
        }
        return true;
    }
    return false;
}

void parallel2seq(llvm_block B,CFG* current_cfg)
{
    while(judge_if_need_seq(B->Parallel_copy_list)){
        int seq_tag = 0;
        operand erase_op;
        for(auto n:B->Parallel_copy_list){
            int target = ((reg_operand*)n.first)->getRegNo();
            if(judge_if_can_seq(B->Parallel_copy_list,target)){
                seq_tag = 1;
                erase_op = n.first;
                generate_seq(B,B->Parallel_copy_type[n.first],n.second,n.first);
                break;
            }
        }
        if(seq_tag){
            B->Parallel_copy_list.erase(erase_op);
            continue;
        }
        else{
            auto n = *(B->Parallel_copy_list.begin());
            operand new_reg = new reg_operand(++current_cfg->max_reg);
            generate_seq(B,B->Parallel_copy_type[n.first],n.second,new_reg);

            B->Parallel_copy_list[n.first] = new_reg;
        }
    }
    B->Parallel_copy_type.clear();
}

void LLVM_IR::phi_destruction()
{
    for(auto node:llvm_cfg){
        node.second->phi_destruction();
        max_label_map[node.first] = node.second->max_label;
        max_reg_map[node.first] = node.second->max_reg;
    }
}

void CFG::phi_destruction()
{
    for(auto b:*block){
        auto B = b.second;
        auto Ins_begin = *(B->Instruction_list.begin());
        if(Ins_begin->get_opcode() != PHI){continue;}
        for(auto preB:invG[B->block_id]){
            if(G[preB->block_id].size() > 1){
                ++max_label;
                llvm_IR.llvm_Function_BlockArr_map[func_ins][max_label] = new basic_block(max_label);
                auto midB = llvm_IR.llvm_Function_BlockArr_map[func_ins][max_label];
                preB->set_target(B->block_id,max_label);
                midB->push_Ins(1,new br_uncond_instruction((new label_operand(B->block_id))));
                for(auto I:B->Instruction_list){
                    if(I->get_opcode() != PHI){break;}
                    auto Ins = (phi_instruction*)I;
                    Ins->set_phi_label(preB->block_id,midB->block_id);
                }
            }
        }
        for(auto I:B->Instruction_list){
            if(I->get_opcode() != PHI){break;}
            auto Ins = (phi_instruction*)I;
            for(auto &phipa:Ins->getPhiList()){
                int labelid = ((label_operand*)phipa.first)->getLabelNo();
                auto B = (*block)[labelid];

                //move second to first
                B->Parallel_copy_list.insert({Ins->getResultOp(),phipa.second});
                B->Parallel_copy_type.insert({Ins->getResultOp(),Ins->getDataType()});
                // if(Ins->getDataType()==FLOAT32){
                //     std::cerr<<"F32\n";
                // }
            }
        }
        
    }
    
    for(auto b:*block){
        auto B = b.second;
        // for(auto [op1,op2]:B->Parallel_copy_list){
        //     std::cerr<<op1<<" <- "<<op2<<"\n";
        // }
        if(B->Instruction_list.empty()){continue;}
        auto endI = *(B->Instruction_list.end() - 1);

        B->Instruction_list.pop_back();
        parallel2seq(B,this);

        B->push_Ins(1,endI);
    }
}
void LLVM_IR::cgen_prework()
{
    cgenpre_IR.global_def = llvm_IR.global_def;
    cgenpre_IR.func_declare = llvm_IR.func_declare;
    cgenpre_IR.max_label_map = llvm_IR.max_label_map;
    cgenpre_IR.max_reg_map = llvm_IR.max_reg_map;
    for(auto node:llvm_cfg){
        node.second->cgen_prework();
    }
    // cgenpre_IR.printIR(std::cerr);
    // std::cerr<<"CFG in\n";
    cgenpre_IR.build_CFG();
    // cgenpre_IR.printIR(std::cerr);
    cgenpre_IR.build_dominator_tree();
    // std::cerr<<"CFG out\n";
}
void CFG::cgen_prework()
{
    func_now = this->func_ins;
    // std::cerr<<func_ins->get_Func_name()<<std::endl;
    max_prereg = this->max_reg;
    // std::cerr<<func_ins->get_Func_name()<<std::endl;
    reg_fpNegativeoffset_map.clear();
    next_negative_offset = -8;

    // r0 r1 r2 r3 | r4 r5 r6 r7 r8 r9 r10
    // s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 |
    // <--

    // set r%
    // Just set reg_fpNegativeoffset_map
    // reg_fpNegativeoffset_map[]

    // stack
    int i32_in_stack_para_cnt=-4;
    int f32_in_stack_para_cnt=-16;
    for(int i=0;i<func_ins->formals.size();i++)
    {
        auto formal = func_ins->formals[i];
        if(formal == I32 || formal == PTR){
            i32_in_stack_para_cnt++;
        }else if(formal == FLOAT32){
            f32_in_stack_para_cnt++;
            if(func_ins->formals_reg[i]->getOperandType() == basic_operand::REG){
                ((reg_operand*)(func_ins->formals_reg[i]))->changeRegNo();
            }
        }else{
            std::cerr<<"Error: See CFG::cgen_prework()\n";
        }
    }
    int next_para_fp_offset = 4;
    cgenpre_IR.llvm_Function_BlockArr_map[func_now][0] = new basic_block(0);
    auto temp_block = cgenpre_IR.llvm_Function_BlockArr_map[func_now][0];
    
    i32_in_stack_para_cnt = i32_in_stack_para_cnt>=0?i32_in_stack_para_cnt:0;
    f32_in_stack_para_cnt = f32_in_stack_para_cnt>=0?f32_in_stack_para_cnt:0;
    int next_offset = (i32_in_stack_para_cnt+f32_in_stack_para_cnt)*4;

    for(int i=func_ins->formals.size()-1;i>=0;i--){
        if(i32_in_stack_para_cnt <= 0 && f32_in_stack_para_cnt <= 0)
            break;
        auto formal=func_ins->formals[i];
        if(formal==I32||formal==PTR){
            if(i32_in_stack_para_cnt>0){
                temp_block->push_Ins(1,new load_fp_instruction(func_ins->formals_reg[i],next_offset));
                next_offset-=4;
                i32_in_stack_para_cnt--;
            }
        }else if(formal==FLOAT32){
            if(f32_in_stack_para_cnt>0){
                temp_block->push_Ins(1,new load_fp_instruction(func_ins->formals_reg[i],get_any_imm32(next_offset,Co_Processor_1020_Condition)));
                next_offset-=4;
                f32_in_stack_para_cnt--;
            }
        }else{
            std::cerr<<"Error: See CFG::cgen_prework()..\n";
        }
    }
    // std::cerr<<func_ins->get_Func_name()<<"\n";
    for(auto B:*block){
        B.second->cgen_prework();
    }
    cgenpre_IR.sp_offset_map[func_now] = next_negative_offset;
}
void basic_block::cgen_prework()
{
    // std::cerr<<func_now->get_Func_name()<<" "<<block_id<<"\n";
    if(block_id != 0){
        cgenpre_IR.llvm_Function_BlockArr_map[func_now][block_id] = new basic_block(block_id);
    }
    block_now = cgenpre_IR.llvm_Function_BlockArr_map[func_now][block_id];
    
    // std::cerr<<"Block "<<block_id<<"\n";
    for(auto I:Instruction_list){
        //transfrom each Instruction in llvm_IR to cgenpre_IR
        // I->printIR(std::cerr);
        I->cgen_prework();
        // std::cerr<<"  Safe\n";
    }
    // std::cerr<<"---Safe\n";
}
void load_Instruction::cgen_prework(){
    // std::cerr<<"load\n";
    //ldr r0,[fp,#-8]
    //ldr r0,[r1]
    //ldr r0,[r1,r2]

    //vldr.32 s15,[r7]
    if(this->type==FLOAT32){
        if(result->getOperandType() == basic_operand::REG){
            ((reg_operand*)result)->changeRegNo();
        }
    }
    if(pointer->getOperandType()==basic_operand::REG){
        if(reg_fpNegativeoffset_map.find(((reg_operand*)pointer)->getRegNo())==reg_fpNegativeoffset_map.end())
            block_now->push_Ins(1,this);
        else{
            int fp_negative_raw = reg_fpNegativeoffset_map[((reg_operand*)pointer)->getRegNo()];
            if(fp_negative_raw >=0 || (fp_negative_raw<=0xFFF)&&(fp_negative_raw>=-4096)){
                if(this->type != FLOAT32){
                    block_now->push_Ins(1,new load_fp_instruction(result,fp_negative_raw));
                }else{
                    block_now->push_Ins(1,new load_fp_instruction(result,get_any_imm32(fp_negative_raw,Co_Processor_1020_Condition)));
                }
            }else{
                int off_re_no = max_prereg;
                auto off_re = new reg_operand(off_re_no);
                block_now->push_Ins(1,new mov_instruction(off_re,get_any_imm32(fp_negative_raw)));
                // ldr r0,[r1,r2]
                block_now->push_Ins(1,new load_fp_instruction(result,off_re));
            }
        }
    }else if(pointer->getOperandType()==basic_operand::GLOBAL){
        auto label_reg = get_newReg();
        block_now->push_Ins(1,new pseudo_load_label_instruction(label_reg,pointer));
        block_now->push_Ins(1,new load_Instruction(this->type,label_reg,result));
    }
}
void store_Instruction::cgen_prework(){
    //str r0,[fp,#-8]
    //str r0,[r1,r2]
    //str r0,[r1]

    //vstr.32 s13,[r7]
    if(this->type==FLOAT32){
        if(value->getOperandType() == basic_operand::REG){
            ((reg_operand*)value)->changeRegNo();
        }
    }
    if(value->getOperandType() == basic_operand::IMMI32){
        int imm_val = ((imm_i32_operand*)value)->getIntImmVal();
        value = get_newReg();
        block_now->push_Ins(1,new load_imm_instruction(value,imm_val));
    }

    if(pointer->getOperandType() == basic_operand::REG){
        if(reg_fpNegativeoffset_map.find(((reg_operand*)pointer)->getRegNo())==reg_fpNegativeoffset_map.end())
            block_now->push_Ins(1,this);
        else{
            int fp_negative_raw = reg_fpNegativeoffset_map[((reg_operand*)pointer)->getRegNo()];
            if(fp_negative_raw >= 0 || (fp_negative_raw>=-4096)){
                block_now->push_Ins(1,new store_fp_instruction(value,fp_negative_raw));
            }else{
                ++max_prereg;
                int off_re_no = max_prereg;
                auto off_re = new reg_operand(off_re_no);
                block_now->push_Ins(1,new mov_instruction(off_re,get_any_imm32(fp_negative_raw)));
                block_now->push_Ins(1,new store_fp_instruction(value,off_re));
            }
        }
    }else if(pointer->getOperandType() == basic_operand::GLOBAL){
        auto label_reg = get_newReg();
        block_now->push_Ins(1,new pseudo_load_label_instruction(label_reg,pointer));
        block_now->push_Ins(1,new store_Instruction(this->type,label_reg,value));
    }
}


typedef unsigned long long Uint64;
typedef unsigned int Uint32;
struct Multiplier {
    Uint64 m;
    int l;
};
inline int clz(Uint32 x) { return __builtin_clz(x); }
inline int ctz(Uint32 x) { return __builtin_ctz(x); }
Multiplier chooseMultiplier(Uint32 d, int p) {
    // l = ceil(log2(d))
    constexpr int N = 32;
    int l = N - clz(d - 1);
    Uint64 low = (Uint64(1) << (N + l)) / d;
    Uint64 high = ((Uint64(1) << (N + l)) + (Uint64(1) << (N + l - p))) / d;
    while((low >> 1) < (high >> 1) && l > 0)
        low >>= 1, high >>= 1, --l;
    return {high, l};
}
void alg_Instruction::cgen_prework(){
    //add--add r0,0,#
    if(opcode==ADD && op1->getOperandType()==basic_operand::IMMI32 && op2->getOperandType()==basic_operand::IMMI32){
        int op1_val = ((imm_i32_operand*)op1)->getIntImmVal();
        // if(op1_val == 0)
        {
            int op2_val = ((imm_i32_operand*)op2)->getIntImmVal();
            block_now->push_Ins(1,new mov_instruction(result,get_any_imm32(op1_val+op2_val)));
            return;
        }
    }

    if(opcode==ADD && op1->getOperandType()==basic_operand::IMMI32){
        int op1_val = ((imm_i32_operand*)op1)->getIntImmVal();
        if(op1_val == 0){
            block_now->push_Ins(1,new mov_instruction(result,op2));
            return;
        }
    }

    if(opcode==ADD && op1->getOperandType()==basic_operand::IMMF32){
        float op1_val = ((imm_f32_operand*)op1)->getFloatVal();
        if(op2->getOperandType()==basic_operand::REG){
            ((reg_operand*)op2)->changeRegNo();
        }
        if(result->getOperandType()==basic_operand::REG){
            ((reg_operand*)result)->changeRegNo();
        }
        if(op1_val == 0.0){
            block_now->push_Ins(1,new vmov_instruction(result,op2));
            return;
        }
    }

    //add--add r0,r1,r2
    //sub--sub r0,r1,r2
    //mul--mul r0,r1,r2
    //xor--eor r0,r1,r2
    if(opcode == MUL){
        operand candidate_imm_op = NULL;
        operand candidate_reg_op = NULL;
        auto alg_ins = (alg_Instruction*)this;
        if(alg_ins->getOp1()->getOperandType() == basic_operand::IMMI32){
            candidate_imm_op = alg_ins->getOp1();
            candidate_reg_op = alg_ins->getOp2();
        }else if(alg_ins->getOp2()->getOperandType() == basic_operand::IMMI32){
            candidate_imm_op = alg_ins->getOp2();
            candidate_reg_op = alg_ins->getOp1();
        }
        if(candidate_imm_op == NULL){
            // new_InsList.push_back(ins);
        }else{
            int candidate_imm = ((imm_i32_operand*)candidate_imm_op)->getIntImmVal();
            // if(candidate_imm == 0 || candidate_imm == 1){
            //     // continue;
            //     return;
            // }
            // new_InsList.push_back(ins);
            auto imm_bits = calc_1b(candidate_imm);
            auto imm_bits1 = calc_1b(candidate_imm+1);
            if(imm_bits.size() == 1){
                int bit_pos = imm_bits[0];
                block_now->push_Ins(1,new alg_Instruction(SHL,I32,candidate_reg_op,new imm_i32_operand(bit_pos),alg_ins->getResultOp()));
                return;
            }else if(imm_bits.size() == 2 && imm_bits[0] == 0){
                // int bit_pos1 = imm_bits[0];
                int bit_pos2 = imm_bits[1];
                // if(bit_pos1 != 0){
                    // ++max_reg;
                    // auto reg1 = new reg_operand(max_reg);
                    // ++max_reg;
                    // auto reg2 = new reg_operand(max_reg);
                    // new_InsList.push_back(new alg_Instruction(SHL,I32,candidate_reg_op,new imm_i32_operand(bit_pos1),reg1));
                    // new_InsList.push_back(new alg_Instruction(SHL,I32,candidate_reg_op,new imm_i32_operand(bit_pos2),reg2));
                    // new_InsList.push_back(new alg_Instruction(ADD,I32,reg1,reg2,alg_ins->getResultOp()));
                // }else{
                    // ++max_reg;
                    // auto reg2 = new reg_operand(max_reg);
                    // new_InsList.push_back(new alg_Instruction(SHL,I32,candidate_reg_op,new imm_i32_operand(bit_pos2),reg2));
                    // new_InsList.push_back(new alg_Instruction(ADD,I32,candidate_reg_op,reg2,alg_ins->getResultOp()));
                    block_now->push_Ins(1,new pseudo_alg_shift_Instruction(ADD_SHIFT,candidate_reg_op,candidate_reg_op,bit_pos2,alg_ins->getResultOp()));
                    return;
                // }
            }else if(imm_bits1.size() == 1){
                int bit_pos = imm_bits1[0];
                block_now->push_Ins(1,new pseudo_alg_shift_Instruction(RSBS_SHIFT,candidate_reg_op,candidate_reg_op,bit_pos,alg_ins->getResultOp()));
                return;
            }
        }
    }
    if(opcode == DIV){
        if(op2->getOperandType() == basic_operand::IMMI32){
            int div_imm = ((imm_i32_operand*)op2)->getIntImmVal();
            int div_negative = div_imm < 0;
            div_imm = div_negative ? -div_imm : div_imm;
            if(div_imm == 2){
                ++max_prereg;
                block_now->push_Ins(1,new pseudo_alg_shift_Instruction(ADD_SHIFT,op1,op1,-31,new reg_operand(max_prereg)));
                block_now->push_Ins(1,new alg_Instruction(ASHR,I32,new reg_operand(max_prereg),new imm_i32_operand(1),result));
                return;
            }else if(div_imm == (Uint32(1) << ctz(div_imm))){
                // div_imm == 2 pow
                // div_imm != 2
                auto r1 = get_newReg();
                auto r2 = get_newReg();
                int s = ctz(div_imm);
                block_now->push_Ins(1,new alg_Instruction(ADD,I32,op1,new imm_i32_operand(div_imm-1),r1));
                block_now->push_Ins(1,new pseudo_alg_shift_Instruction(BICS,op1,op1,-32,r2,1));
                // block_now->push_Ins(1,new it_instruction(EX_CS));
                auto movcs = new mov_instruction(r2,r1);
                movcs->exec_cond = EX_CS;
                block_now->push_Ins(1,movcs);
                block_now->push_Ins(1,new alg_Instruction(ASHR,I32,r2,new imm_i32_operand(s),result));
                if(div_negative){
                    block_now->push_Ins(1,new alg_Instruction(SUB,I32,new imm_i32_operand(0),result,result));
                }
                return;
            }else{
                auto multiplier = chooseMultiplier(div_imm,31);
                int mult = multiplier.m & (0xFFFFFFFF);
                auto r1 = get_newReg();
                auto r2_sign = get_newReg();

                // Suppose multiplier.l != 0
                // %r1 = multi_m
                block_now->push_Ins(1,new load_imm_instruction(r1,mult));
                // %r1 = smmul op1,%r1
                block_now->push_Ins(1,new alg_Instruction(SMMUL,I32,op1,r1,r1));
                // %r2 = op1>>31
                block_now->push_Ins(1,new alg_Instruction(ASHR,I32,op1,new imm_i32_operand(31),r2_sign));
                if(mult<0){
                    // %r1 = op1+%r1
                    block_now->push_Ins(1,new alg_Instruction(ADD,I32,op1,r1,r1));
                }
                // result = (%r1>>3)-%r2
                if(!div_negative){
                    block_now->push_Ins(1,new pseudo_alg_shift_Instruction(RSBS_SHIFT,r2_sign,r1,-multiplier.l,result,1));
                }else{
                    block_now->push_Ins(1,new pseudo_alg_shift_Instruction(SUB,r2_sign,r1,-multiplier.l,result,1));
                }
                return;
            }
        }
    }
    if(opcode == MOD){
        if(op2->getOperandType() == basic_operand::IMMI32){
            int div_imm = ((imm_i32_operand*)op2)->getIntImmVal();
            int div_negative = div_imm < 0;
            div_imm = div_negative ? -div_imm : div_imm;
            if(div_imm == 2){
                block_now->push_Ins(1,new icmp_Instruction(I32,op1,new imm_i32_operand(0),eq,result));
                block_now->push_Ins(1,new alg_Instruction(AND_b,I32,op1,new imm_i32_operand(1),result));
                // block_now->push_Ins(1,new it_instruction(EX_LT));
                auto rsblt = new alg_Instruction(SUB,I32,new imm_i32_operand(0),result,result);
                rsblt->exec_cond = EX_LT;
                block_now->push_Ins(1,rsblt);
                return;
            }else if(div_imm == (Uint32(1) << ctz(div_imm))){
                auto r1 = get_newReg();
                auto rsbs = new alg_Instruction(SUB,I32,new imm_i32_operand(0),op1,r1);
                rsbs->exec_cond = EX_S;
                block_now->push_Ins(1,rsbs);
                block_now->push_Ins(1,new alg_Instruction(AND_b,I32,op1,new imm_i32_operand(div_imm-1),result));
                block_now->push_Ins(1,new alg_Instruction(AND_b,I32,r1,new imm_i32_operand(div_imm-1),r1));
                // block_now->push_Ins(1,new it_instruction(EX_PL));
                auto rsbpl = new alg_Instruction(SUB,I32,new imm_i32_operand(0),r1,result);
                rsbpl->exec_cond = EX_PL;
                block_now->push_Ins(1,rsbpl);
                return;
            }else{
                auto r1 = get_newReg();
                auto r2 = get_newReg();

                auto multiplier = chooseMultiplier(div_imm,31);
                int mult = multiplier.m & (0xFFFFFFFF);

                // Suppose multiplier.l != 0
                // %r1 = multi_m
                block_now->push_Ins(1,new load_imm_instruction(r1,mult));
                // %r1 = smmul op1,%r1
                block_now->push_Ins(1,new alg_Instruction(SMMUL,I32,op1,r1,r1));
                // %r2 = op1>>31
                block_now->push_Ins(1,new alg_Instruction(ASHR,I32,op1,new imm_i32_operand(31),r2));
                if(mult<0){
                    // %r1 = op1+%r1
                    block_now->push_Ins(1,new alg_Instruction(ADD,I32,op1,r1,r1));
                }
                // result = (%r1>>3)-%r2
                if(div_imm > 0){
                    block_now->push_Ins(1,new pseudo_alg_shift_Instruction(RSBS_SHIFT,r2,r1,-multiplier.l,r1,1));
                }else{
                    block_now->push_Ins(1,new pseudo_alg_shift_Instruction(SUB,r2,r1,-multiplier.l,r1,1));
                }
                if(!mul_str_redu(r1,div_imm,r1,0)){
                    block_now->push_Ins(1,new load_imm_instruction(r2,div_imm));
                    block_now->push_Ins(1,new alg_Instruction(MUL,I32,r1,r2,r1));
                }
                block_now->push_Ins(1,new alg_Instruction(SUB,I32,op1,r1,result));
                return;
            }
        }
    }
    if(opcode==ADD || opcode==SUB || opcode==MUL || opcode==XOR || opcode==SHL || opcode == LSHR || opcode == ASHR){
        operand candidate_op1=this->op1;
        operand candidate_op2=this->op2;
        if(op1->getOperandType()==basic_operand::IMMI32 && (opcode==MUL||!Immediate_8_Condition(((imm_i32_operand*)op1)->getIntImmVal()))){
            // Immediate_cond
            ++max_prereg;
            int op1_reg_no=max_prereg;
            candidate_op1=new reg_operand(op1_reg_no);
            block_now->push_Ins(1,new load_imm_instruction(candidate_op1,((imm_i32_operand*)op1)->getIntImmVal()));
        }
        if(op2->getOperandType()==basic_operand::IMMI32 && (opcode==MUL||!Immediate_8_Condition(((imm_i32_operand*)op2)->getIntImmVal()))){
            ++max_prereg;
            int op2_reg_no=max_prereg;
            candidate_op2=new reg_operand(op2_reg_no);
            block_now->push_Ins(1,new load_imm_instruction(candidate_op2,((imm_i32_operand*)op2)->getIntImmVal()));
        }
        if((opcode == ADD || opcode == MUL)&&candidate_op1->getOperandType() == basic_operand::IMMI32){
            auto temp = candidate_op1;
            candidate_op1 = candidate_op2;
            candidate_op2 = temp;
        }
        block_now->push_Ins(1,new alg_Instruction(opcode,I32,candidate_op1,candidate_op2,result));
        return;
    }

    //fadd--vadd.f32 s13,s13,s12
    //fsub--vsub.f32 s13,s13,s12
    //fmul--vmul.f32 s13,s13,s12
    //fdiv--vdiv.f32 s13,s13,s12
    if(opcode==FADD || opcode==FSUB || opcode==FMUL || opcode==FDIV){
        if(op1->getOperandType()==basic_operand::REG){
            ((reg_operand*)op1)->changeRegNo();
        }
        if(op2->getOperandType()==basic_operand::REG){
            ((reg_operand*)op2)->changeRegNo();
        }
        operand candidate_op1=this->op1;
        if(op1->getOperandType()==basic_operand::IMMF32){
            ++max_prereg;
            operand candidate_op1_i32Bytes=new reg_operand(max_prereg);
            float Byte=((imm_f32_operand*)op1)->getFloatVal();
            block_now->push_Ins(1,new load_imm_instruction(candidate_op1_i32Bytes,*((int*)(&(Byte)))));
            ++max_prereg;
            candidate_op1=new reg_operand(-max_prereg);

            // vmov s15,r0
            // block_now->push_Ins(1,new vmov_instruction(candidate_op1_i32Bytes,candidate_op1));
            block_now->push_Ins(1,new store_fp_instruction(candidate_op1_i32Bytes,-8));
            block_now->push_Ins(1,new load_fp_instruction(candidate_op1,-8));
        }
        operand candidate_op2=this->op2;
        if(op2->getOperandType()==basic_operand::IMMF32){
            ++max_prereg;
            operand candidate_op2_i32Bytes=new reg_operand(max_prereg);
            float Byte=((imm_f32_operand*)op2)->getFloatVal();
            block_now->push_Ins(1,new load_imm_instruction(candidate_op2_i32Bytes,*((int*)(&Byte))));
            ++max_prereg;
            candidate_op2=new reg_operand(-max_prereg);

            // vmov s15,r0
            // block_now->push_Ins(1,new vmov_instruction(candidate_op2_i32Bytes,candidate_op2));
            block_now->push_Ins(1,new store_fp_instruction(candidate_op2_i32Bytes,-8));
            block_now->push_Ins(1,new load_fp_instruction(candidate_op2,-8));
        }
        if(result->getOperandType() == basic_operand::REG){
            ((reg_operand*)result)->changeRegNo();
        }
        block_now->push_Ins(1,new alg_Instruction(opcode,FLOAT32,candidate_op1,candidate_op2,result));
        return;
    }

    //div mod

    //r0 <- op1
    //r1 <- op2
    //bl __aeabi_idivmod 
    //  ;Multiple returns(struct),troublesome, give up
    //      r0 <- op1/op2
    //      r1 <- op1%op2
    //      r2 <- op2
    //      r3 <- op1/op2 * op2
    //      r# <- KEEP
    

    //r0 <- op1
    //r1 <- op2
    //bl __aeabi_idiv
    //      r0 <- op1/op2
    //      r1 <- op2
    //      r2 <- ???
    //      r# <- KEEP
    if(opcode==DIV){
        // __aeabi_idivmod(op1,op2)
        // std::cerr<<result<<"\n";
        if(op2->getOperandType() == basic_operand::IMMI32 && ((imm_i32_operand*)op2)->getIntImmVal() == 2){
            ++max_prereg;
            block_now->push_Ins(1,new pseudo_alg_shift_Instruction(ADD_SHIFT,op1,op1,-31,new reg_operand(max_prereg)));
            block_now->push_Ins(1,new alg_Instruction(ASHR,I32,new reg_operand(max_prereg),new imm_i32_operand(1),result));
        }else{
            call_instruction* div_call = new call_instruction(I32,result,"__aeabi_idiv");
            div_call->push_back_Parameter(I32,op1);
            div_call->push_back_Parameter(I32,op2);

            // Deal with calling conventions later
            block_now->push_Ins(1,div_call);
        }

        return;
    }

    //r0 <- op1
    //r1 <- op2
    //bl __modsi3
    //      r0 <- op1%op2
    //      r1 <- op2
    //      r2 <- ???
    //      r3 <- ???
    //      r# <- KEEP
    if(opcode==MOD){
        call_instruction* mod_call = new call_instruction(I32,result,"__modsi3");
        mod_call->push_back_Parameter(I32,op1);
        mod_call->push_back_Parameter(I32,op2);

        //Deal with calling conventions later
        block_now->push_Ins(1,mod_call);
        return;
    }
}
void icmp_Instruction::cgen_prework(){
    //cmp r0,r1
    //ble <label>

    //cmp op1,op2
    //movlt result,#1
    //can be done in codeARM
    if(op1->getOperandType() == basic_operand::IMMI32){
        op1 = get_any_imm32(((imm_i32_operand*)op1)->getIntImmVal());
    }
    if(op2->getOperandType() == basic_operand::IMMI32){
        op2 = get_any_imm32(((imm_i32_operand*)op2)->getIntImmVal());
    }
    if(op1->getOperandType() == basic_operand::IMMI32){
        // swap op
        auto temp = op1;
        op1 = op2;
        op2 = temp;

        // cond rev
        this->cond = get_rev_cond(this->cond);
    }
    block_now->push_Ins(1,this);

    //%6 = icmp sgt i32 %4,%5
    //br i1 %6,label,label
}
void fcmp_Instruction::cgen_prework(){
    //bl      __aeabi_fcmpgt
    //      r0 <- r0>r1
    //cmp     r0, #0
    //beq     .ELSE

    if(op1->getOperandType() == basic_operand::REG)
        ((reg_operand*)op1)->changeRegNo();
    if(op2->getOperandType() == basic_operand::REG)
        ((reg_operand*)op2)->changeRegNo();
    block_now->push_Ins(1,this);
    //%6 = fcmp ogt float %4,%5
    //br i1 %6,label,label
}
void phi_instruction::cgen_prework(){}
void alloca_instruction::cgen_prework(){
    // alloca for temp variables
    // sub sp, sp, #size
    // add %?, fp, #pos
    // block_now->push_Ins(1,this);
    int sz = 4;
    for(auto dim:this->dims){
        sz*=dim;
    }
    next_negative_offset-=sz;
    reg_fpNegativeoffset_map[get_resultregno()]=next_negative_offset;
    // this->printIR(std::cerr);
    // std::cerr<<"  "<<next_negative_offset<<std::endl;
}
void br_cond_instruction::cgen_prework(){
    // (in codeARM)
    // cmp cond,#0
    // beq FalseLabel
    // bne TrueLabel
    block_now->push_Ins(1,this);
}
void br_uncond_instruction::cgen_prework(){
    //b <label>
    block_now->push_Ins(1,this);
}
void global_id_define_instruction::cgen_prework(){
    std::cerr<<"Unexpected global_id_define_instruction.\n";
    std::cerr<<"See global_id_define_instruction::cgen_prework()\n";
}
void global_str_const_instruction::cgen_prework(){
    std::cerr<<"Unexpected global_str_const_instruction.\n";
    std::cerr<<"See global_str_const_instruction::cgen_prework()\n";
}
void call_instruction::cgen_prework(){
    // calling convention
    // Deal with calling conventions later

    // 16
    // 

    if(this->name == "llvm.memset.p0.i32"){
        // std::cerr<<"memset branch in call_instruction::cgen_prework()\n";
        call_instruction* memsetCall = new call_instruction(VOID,nullptr,std::string("memset"));
        operand base_addr = args[0].second;
        if(base_addr->getOperandType() != basic_operand::REG){
            std::cerr<<"ASSERT FAILED: memset addr not REG\n";
        }
        auto base_addr_reg = (reg_operand*)base_addr;

        operand arr_sz = args[2].second;
        if(arr_sz->getOperandType() != basic_operand::IMMI32){
            std::cerr<<"ASSERT FAILED: memset_size not REG\n";
        }

        if(reg_fpNegativeoffset_map.find(base_addr_reg->getRegNo())!=reg_fpNegativeoffset_map.end()){
            int fp_negative_raw = reg_fpNegativeoffset_map[base_addr_reg->getRegNo()];
            auto load_reg = get_newReg();
            base_addr = load_reg;
            block_now->push_Ins(1,new get_addr_by_fp_offset_instruction(base_addr,get_any_imm32(fp_negative_raw)));
        }
        memsetCall->push_back_Parameter(I32,base_addr);
        memsetCall->push_back_Parameter(I32,new imm_i32_operand(0));
        memsetCall->push_back_Parameter(I32,arr_sz);
        block_now->push_Ins(1,memsetCall);
        return;
    }

    for(int i=0;i<args.size();i++){
        if(args[i].second->getOperandType()==basic_operand::REG){
            // PSEUDO
            if(reg_fpNegativeoffset_map.find(((reg_operand*)args[i].second)->getRegNo())!=reg_fpNegativeoffset_map.end()){
                int fp_negative_raw = reg_fpNegativeoffset_map[((reg_operand*)args[i].second)->getRegNo()];
                auto load_reg = get_newReg();
                args[i].second = load_reg;
                if(fp_negative_raw >=0 || fp_negative_raw >= -4096){
                    if(args[i].first != FLOAT32){
                        block_now->push_Ins(1,new load_fp_instruction(load_reg,fp_negative_raw));
                    }else{
                        block_now->push_Ins(1,new load_fp_instruction(load_reg,get_any_imm32(fp_negative_raw,Co_Processor_1020_Condition)));
                    }
                }else{
                    auto off_re = get_newReg();
                    block_now->push_Ins(1,new mov_instruction(off_re,get_any_imm32(fp_negative_raw)));
                    block_now->push_Ins(1,new load_fp_instruction(load_reg,off_re));
                }
            }

            // FLOAT32
            if(args[i].first==FLOAT32 && args[i].second->getOperandType() == basic_operand::REG){
                ((reg_operand*)args[i].second)->changeRegNo();
            }
        }
    }
    if(result != NULL){
        if(result->getOperandType() == basic_operand::REG && this->ret_type == FLOAT32){
            ((reg_operand*)result)->changeRegNo();
        }
    }
    block_now->push_Ins(1,this);
}
void ret_instruction::cgen_prework(){
    //mov r0, <retrun value>

    // r0: Part of calling convention
    if(ret_val != NULL){
        if(ret_val->getOperandType() == basic_operand::REG && this->ret_type == FLOAT32){
            ((reg_operand*)ret_val)->changeRegNo();
        }
    }
    block_now->push_Ins(1,this);
}

std::vector<int> calc_1b(unsigned int a);



void get_elementptr_instruction::cgen_prework(){
    // [ 3 x [ 4 x [5 x float ] ] ], ptr, idx1, idx2, idx3, idx4
    // 3*4*5*idx1 + 4*5*idx2 + 5*idx3 + idx4

    // mov A,=dim
    // mul A,index[]
    // add B,B,A
    // add result,Root,B<<2

    int product = 1;
    for(auto sz:dims){
        product *= sz;
    }
    int const_offset = 0;
    auto offset_reg = get_newReg();
    auto inc_reg = get_newReg();

    int offset_reg_assigned = 0;
    // block_now->push_Ins(1,new mov_instruction(offset_reg,new imm_i32_operand(0)));
    for(int i=0;i<indexes.size();i++){
        // std::cerr<<i<<" "<<indexes[i]->getFullName()<<"\n";
        if(indexes[i]->getOperandType() == basic_operand::IMMI32){
            const_offset += (((imm_i32_operand*)indexes[i])->getIntImmVal())*product;
        }else{
            if(product != 1){
                mul_str_redu(indexes[i],product,inc_reg);
                if(offset_reg_assigned == 0){
                    offset_reg_assigned = 1;
                    block_now->push_Ins(1,new mov_instruction(offset_reg,inc_reg));
                }else{
                    block_now->push_Ins(1,new alg_Instruction(ADD,I32,offset_reg,inc_reg,offset_reg));
                }
            }else{
                if(offset_reg_assigned == 0){
                    offset_reg_assigned = 1;
                    block_now->push_Ins(1,new mov_instruction(offset_reg,indexes[i]));
                }else{
                    block_now->push_Ins(1,new alg_Instruction(ADD,I32,offset_reg,indexes[i],offset_reg));
                }
            }
        }
        if(i < dims.size())
            product /= dims[i];
    }
    if(const_offset != 0){
        if(offset_reg_assigned == 0){
            offset_reg_assigned = 1;
            block_now->push_Ins(1,new mov_instruction(offset_reg,get_any_imm32(const_offset)));
        }else{
            block_now->push_Ins(1,new alg_Instruction(ADD,I32,offset_reg,get_any_imm32(const_offset),offset_reg));
        }
    }
    // block_now->push_Ins(1,new alg_Instruction(SHL,I32,offset_reg,new imm_i32_operand(2),offset_reg));

    // std::cerr<<"result cal safe\n";
    // if dim.empty, no mul
    // for(int i=0;i<dims.size();i++){
    //     if(i+1<indexes.size()){
    //         // add result,idx2~n+1
    //         block_now->push_Ins(1,new alg_Instruction(ADD,I32,result,indexes[i+1],result));
    //     }
    //     // mul result,dim[i]
    //     block_now->push_Ins(1,new alg_Instruction(MUL,I32,new imm_i32_operand(dims[i]),result,result));
    // }
    // result += ptrval
    if(ptrval->getOperandType()==basic_operand::REG){
        if(reg_fpNegativeoffset_map.find(((reg_operand*)ptrval)->getRegNo())!=reg_fpNegativeoffset_map.end()){
            ++max_prereg;
            int temp_arr_addr_reg = max_prereg;
            operand temp_arr_addr_reg_op=new reg_operand(temp_arr_addr_reg);
            int raw_fpoffset = reg_fpNegativeoffset_map[((reg_operand*)ptrval)->getRegNo()];
            if(offset_reg_assigned){
                block_now->push_Ins(1,new get_addr_by_fp_offset_instruction(temp_arr_addr_reg_op,get_any_imm32(raw_fpoffset)));
                block_now->push_Ins(1,new pseudo_alg_shift_Instruction(ADD_SHIFT,temp_arr_addr_reg_op,offset_reg,2,result));
                // block_now->push_Ins(1,new alg_Instruction(ADD,I32,offset_reg,temp_arr_addr_reg_op,result));
            }else{
                block_now->push_Ins(1,new get_addr_by_fp_offset_instruction(result,get_any_imm32(raw_fpoffset)));
            }
            return;
        }else{
            if(offset_reg_assigned){
                block_now->push_Ins(1,new pseudo_alg_shift_Instruction(ADD_SHIFT,ptrval,offset_reg,2,result));
            }else{
                block_now->push_Ins(1,new mov_instruction(result,ptrval));
            }
            // block_now->push_Ins(1,new alg_Instruction(ADD,I32,offset_reg,ptrval,result));
            return;
        }
    }else if(ptrval->getOperandType()==basic_operand::GLOBAL){
        ++max_prereg;
        int base_regno = max_prereg;
        auto base_reg = new reg_operand(base_regno);
        if(offset_reg_assigned){
            block_now->push_Ins(1,new pseudo_load_label_instruction(base_reg,ptrval));
            block_now->push_Ins(1,new pseudo_alg_shift_Instruction(ADD_SHIFT,base_reg,offset_reg,2,result));
            // block_now->push_Ins(1,new alg_Instruction(ADD,I32,offset_reg,base_reg,result));
        }else{
            block_now->push_Ins(1,new pseudo_load_label_instruction(result,ptrval));
        }
    }else{
        this->printIR(std::cerr);
        std::cerr<<"Unexpected ptrval type\n";
    }
}
void func_define_instruction::cgen_prework(){
    std::cerr<<"Unexpected func_define_instruction.\n";
    std::cerr<<"See func_define_instruction::cgen_prework()\n";
}
void func_declare_instruction::cgen_prework(){
    std::cerr<<"Unexpected func_declare_instruction.\n";
    std::cerr<<"See func_declare_instruction::cgen_prework()\n";
}
void fptosi_instruction::cgen_prework(){
    if(value->getOperandType() == basic_operand::REG){
        ((reg_operand*)value)->changeRegNo();
    }
    // Instruction vmov = new vmov_instruction(value,result);
    block_now->push_Ins(1,this);
}
void sitofp_instruction::cgen_prework(){
    if(result->getOperandType() == basic_operand::REG){
        ((reg_operand*)result)->changeRegNo();
    }
    if(value->getOperandType() == basic_operand::IMMI32){
        int val = ((imm_i32_operand*)value)->getIntImmVal();
        auto reg = get_newReg();
        block_now->push_Ins(1,new load_imm_instruction(reg,val));
        value = reg;
    }
    // Instruction vmov=new vmov_instruction(value,result);
    block_now->push_Ins(1,this);
}
void zext_instruction::cgen_prework(){
    block_now->push_Ins(1,this);
}
void mov_instruction::cgen_prework(){
    std::cerr<<"Unexpected pseudo mov_instruction.\n";
    std::cerr<<"See mov_instruction::cgen_prework()\n";
}
void load_fp_instruction::cgen_prework(){}
void store_fp_instruction::cgen_prework(){}
void get_addr_by_fp_offset_instruction::cgen_prework(){}
void pseudo_load_label_instruction::cgen_prework(){}
void pseudo_alg_shift_Instruction::cgen_prework(){
    block_now->push_Ins(1,this);
}

#endif