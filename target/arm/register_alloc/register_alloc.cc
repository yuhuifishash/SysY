#include "arm_cgen.h"
#include "Instruction.h"
#include "llvm_cfg.h"
#include "llvm_ir.h"
#include <algorithm>

extern int output_Physical_reg;

void LLVMIR::register_alloc(){
    for(auto node:llvm_cfg){
        node.second->register_alloc();
    }
    output_Physical_reg = 1;
}

extern std::set<LLVMBlock> find_nodes_inloop(CFG* cfg,LLVMBlock n,LLVMBlock d);

std::map<LLVMBlock,int> get_inloop_nodes(CFG* cfg)
{
    std::map<LLVMBlock,int> loop_nodes;
    for(auto b:*cfg->block){
        auto BB = b.second;
        int BB_id = BB->block_id;
        for(auto BB2:cfg->G[BB_id]){//BB->preBB  backedge
            if(cfg->if_dominate(BB2->block_id,BB_id)){
                auto nodes = find_nodes_inloop(cfg,BB,BB2);
                for(auto n:nodes){
                    loop_nodes[n] += 1;
                }
            }
        }
    }
    return loop_nodes;
}

int min_1(int a,int b){
    if(a==-1){
        return b;
    }
    if(b==-1){
        return a;
    }
    if(a<b)return a;
    return b;
}
int max_1(int a,int b){
    if(a==-1){
        return b;
    }
    if(b==-1){
        return a;
    }
    if(a>b)return a;
    return b;
}
#define RESERVED_R0 0x7FFFFFF
#define RESERVED_S0 RESERVED_R0+8
void CFG::register_alloc()
{
    calculate_liveness();
    have_mem_i32 = 0;
    have_mem_f32 = 0;
    // Number ins
    // DFS order

    // Number ins Pseudo Code
    std::stack<int> unnumberedBlockID;
    int current_number = 0;
    func_ins->SetInstructionNo(current_number++);

    int para_int_cnt = 0;
    int para_float_cnt = 0;
    for(auto formal_reg:func_ins->formals_reg){
        int formal_reg_no = ((RegOperand*)formal_reg)->GetRegNo();
        intervals[formal_reg_no] = RegSegment(0,0,formal_reg_no);
        if(formal_reg_no >= 0){
            if(para_int_cnt <= 3){
                intervals[formal_reg_no].options.no_compromise = 1;
                intervals[formal_reg_no].options.prefer_regtype = 1;
                intervals[formal_reg_no].options.prefer_regno = para_int_cnt;
                para_int_cnt++;
            }
        }else{
            if(para_float_cnt <= 15){
                intervals[formal_reg_no].options.no_compromise = 1;
                intervals[formal_reg_no].options.prefer_regtype = 2;
                intervals[formal_reg_no].options.prefer_regno = para_float_cnt;
                para_float_cnt++;
            }
        }
    }

    unnumberedBlockID.push(0);
    // std::cerr<<func_ins->get_Func_name()<<"\n";
    // Func_ref
    std::map<int,int>block_visited;
    auto inloop_nodes = get_inloop_nodes(this);
    while(!unnumberedBlockID.empty()){
        int cur_BlockID = unnumberedBlockID.top();
        block_visited[cur_BlockID] = 1;
        // std::cerr<<cur_BlockID<<std::endl;
        unnumberedBlockID.pop();
        int block_begin_number = current_number;
        int block_end_number = current_number+(*(block))[cur_BlockID]->Instruction_list.size()-1;
        auto cur_block = (*block)[cur_BlockID];
        for(auto in_reg:cur_block->IN){
            if(cur_block->OUT.count(in_reg)){
                if(intervals.find(in_reg) == intervals.end()){
                    intervals[in_reg] = RegSegment(-1,-1,in_reg);
                }
                intervals[in_reg].firstRefInsNo = min_1(intervals[in_reg].firstRefInsNo,block_begin_number);
                intervals[in_reg].lastRefInsNo = max_1(intervals[in_reg].lastRefInsNo,block_end_number);
            }
        }
        for(auto it = (*(block))[cur_BlockID]->Instruction_list.begin();it!=(*(block))[cur_BlockID]->Instruction_list.end();++it){
            auto instruction = *it;
            if(instruction->GetOpcode() == FPTOSI){
                have_mem_f32 = 1;
            }
            int curinsNo = current_number;
            instruction->SetInstructionNo(current_number++);
            for(auto reg: instruction->refering_virtual_regs()){
                // std::cerr<<"    "<<reg<<"\n";
                int at_in = cur_block->IN.count(reg);
                int at_out = cur_block->OUT.count(reg);
                if(intervals.find(reg)==intervals.end()){
                    intervals[reg] = RegSegment(-1,-1,reg);
                }
                intervals[reg].options.reference_count++;
                if(inloop_nodes.find(cur_block) != inloop_nodes.end()){
                    intervals[reg].options.reference_count += 4*inloop_nodes[cur_block];
                }
                if(!at_in){
                    intervals[reg].firstRefInsNo = min_1(intervals[reg].firstRefInsNo,curinsNo);
                }else{
                    intervals[reg].firstRefInsNo = min_1(intervals[reg].firstRefInsNo,block_begin_number);
                }
                if(!at_out){
                    intervals[reg].lastRefInsNo = max_1(intervals[reg].lastRefInsNo,curinsNo);
                }else{
                    intervals[reg].lastRefInsNo = max_1(intervals[reg].lastRefInsNo,block_end_number);
                }
            }

            if(instruction->GetOpcode()==BR_UNCOND){
                int destLabelNo = ((LabelOperand*)(((BrUncondInstruction*)instruction)->getDestLabel()))->GetLabelNo();
                
                if(block_visited.find(destLabelNo)==block_visited.end()){
                    unnumberedBlockID.push(destLabelNo);
                }
            }else if(instruction->GetOpcode()==BR_COND){
                int trueDestLabelNo = ((LabelOperand*)(((BrCondInstruction*)instruction)->getTrueLabel()))->GetLabelNo();
                int falseDestLabelNo = ((LabelOperand*)(((BrCondInstruction*)instruction)->getFalseLabel()))->GetLabelNo();
                if(block_visited.find(trueDestLabelNo)==block_visited.end()){
                    unnumberedBlockID.push(trueDestLabelNo);
                }
                if(block_visited.find(falseDestLabelNo)==block_visited.end()){
                    unnumberedBlockID.push(falseDestLabelNo);
                }
            }
        }
    }
    total_ins_count = current_number;
    for(int i=0;i<=3 ;i++){
        ins_across_r[i] = new int[total_ins_count+2];
        for(int j=0;j<=total_ins_count;j++){
            ins_across_r[i][j] = 0;
        }
    }
    for(int i=0;i<=15;i++){
        ins_across_s[i] = new int[total_ins_count+2];
        for(int j=0;j<=total_ins_count;j++){
            ins_across_s[i][j] = 0;
        }
    }

    // Note: different cmp
    std::priority_queue<
        RegSegment,
        std::vector<RegSegment>,
        decltype(RegSegment::UnallocatedIntervals_cmp)*
    > UnallocatedIntervals(RegSegment::UnallocatedIntervals_cmp);
        // Note: UnallocatedIntervals firstRegInsNo Ascending

    ActiveIntervalManager ActiveIntervals_i32;
    ActiveIntervalManager ActiveIntervals_f32;

    std::priority_queue<
        RegSegment,
        std::vector<RegSegment>,
        decltype(RegSegment::ActiveIntervals_cmp)*
    > ActiveIntervals_mem(RegSegment::ActiveIntervals_cmp);

        // Note: ActiveIntervals lastRegInsNo Ascending
    Register_Use_Tracker reg_usage_tracker;
    Memory_free_list mem_usage_tracker(next_fp_offset_to_allocate);
    for(auto interval : intervals){
        UnallocatedIntervals.push(interval.second);
    }
    while(!UnallocatedIntervals.empty()){
        auto interval = UnallocatedIntervals.top();
        UnallocatedIntervals.pop();
        // printf("Allocating r%d Active %d-%d (Dense %lf)\n",interval.getVirtualRegNo(),interval.getfirstRefInsNo(),interval.getlastRefInsNo(),interval.getRefDensity());
        int Planning_physical_reg_no;
        int physical_reg_type;
        std::vector<RegSegment> dead;
        if(interval.isIntVirtualReg()){
            physical_reg_type = 1;
            dead = ActiveIntervals_i32.pop_dead(interval);
        }  // 1 is INT
        if(interval.isFloatVirtualReg()){
            physical_reg_type = 2;
            dead = ActiveIntervals_f32.pop_dead(interval);
        }  // 2 is FLOAT
        for(auto deadrs:dead){
            auto alloc_phy = reg_V2P[deadrs.getVirtualRegNo()];
            if(alloc_phy.alloc_type == PhysicalAllocDiscriptor::PHY_REG_I32){
                reg_usage_tracker.deactivate_physical_reg(physical_reg_type,alloc_phy.address.physicalRegNo_i32);
            }
            if(alloc_phy.alloc_type == PhysicalAllocDiscriptor::PHY_REG_F32){
                reg_usage_tracker.deactivate_physical_reg(physical_reg_type,alloc_phy.address.physicalRegNo_f32);
            }
            // printf("    Deactivate %d %d-%d at phy %d\n",deadrs.getVirtualRegNo(),deadrs.getfirstRefInsNo(),deadrs.getlastRefInsNo(),alloc_phy.address.physicalRegNo_i32);
        }
        Planning_physical_reg_no = reg_usage_tracker.find_next_idle_physical_reg_no(physical_reg_type,interval.options.prefer_regno,0);
        
        if(Planning_physical_reg_no != -1){
            // printf("    Allocate phy %d\n",Planning_physical_reg_no);
            reg_usage_tracker.activate_physical_reg(physical_reg_type,Planning_physical_reg_no);
            if(physical_reg_type == 1) {// 1 is INT
                ActiveIntervals_i32.add_seg(interval);
                reg_V2P[interval.getVirtualRegNo()] = PhysicalAllocDiscriptor(PhysicalAllocDiscriptor::PHY_REG_I32,Planning_physical_reg_no);
                if(Planning_physical_reg_no>=0 && Planning_physical_reg_no<=3){
                    ins_across_r[Planning_physical_reg_no][interval.getfirstRefInsNo()]++;
                    ins_across_r[Planning_physical_reg_no][interval.getlastRefInsNo()+1]--;
                }
            }
            if(physical_reg_type == 2) {// 2 is FLOAT
                ActiveIntervals_f32.add_seg(interval);
                reg_V2P[interval.getVirtualRegNo()] = PhysicalAllocDiscriptor(PhysicalAllocDiscriptor::PHY_REG_F32,Planning_physical_reg_no);
                if(Planning_physical_reg_no>=0 && Planning_physical_reg_no<=15){
                    ins_across_s[Planning_physical_reg_no][interval.getfirstRefInsNo()]++;
                    ins_across_s[Planning_physical_reg_no][interval.getlastRefInsNo()+1]--;
                }
            }
        }else{
            RegSegment Spill_victim;
            if(physical_reg_type == 1){
                Spill_victim = ActiveIntervals_i32.get_spill_victim(interval);
            }
            if(physical_reg_type == 2){
                Spill_victim = ActiveIntervals_f32.get_spill_victim(interval);
            }
            // printf("    Spill %d %d-%d\n",Spill_victim.getVirtualRegNo(),Spill_victim.getfirstRefInsNo(),Spill_victim.getlastRefInsNo());
            // if(Spill_victim.options.no_compromise){
            //     auto temp = interval;
            //     interval = Spill_victim;
            //     Spill_victim = temp;
            // }
            if(!(Spill_victim == interval)){
                reg_V2P[interval.getVirtualRegNo()] = reg_V2P[Spill_victim.getVirtualRegNo()];
                // printf("    Replace phy %d\n",reg_V2P[interval.getVirtualRegNo()].address.physicalRegNo_i32);
                if(physical_reg_type == 1){
                    ActiveIntervals_i32.erase(Spill_victim);
                    ActiveIntervals_i32.add_seg(interval);
                }
                if(physical_reg_type == 2){
                    ActiveIntervals_f32.erase(Spill_victim);
                    ActiveIntervals_f32.add_seg(interval);
                }
            }
            bool releasable = 1;
            RegSegment ActiveMem_top;
            if(ActiveIntervals_mem.empty()){
                releasable = 0;
            }else{
                ActiveMem_top = ActiveIntervals_mem.top();
            }
            if(releasable){releasable = ActiveMem_top.getlastRefInsNo() < Spill_victim.getfirstRefInsNo();}
            if(releasable){
                mem_usage_tracker.release_offset(reg_V2P[ActiveMem_top.getVirtualRegNo()].address.mem_fp_offset);
                ActiveIntervals_mem.pop();
            }
            ActiveIntervals_mem.push(Spill_victim);
            if(physical_reg_type == 1){
                have_mem_i32 = 1;
                reg_V2P[Spill_victim.getVirtualRegNo()] = PhysicalAllocDiscriptor(
                    PhysicalAllocDiscriptor::PHY_MEM_I32,
                    mem_usage_tracker.get_and_occupy_next_offset()
                );
            }
            else if(physical_reg_type == 2){
                have_mem_f32 = 1;
                reg_V2P[Spill_victim.getVirtualRegNo()] = PhysicalAllocDiscriptor(
                    PhysicalAllocDiscriptor::PHY_MEM_F32,
                    mem_usage_tracker.get_and_occupy_next_offset()
                );
            }else{
                std::cerr<<"Unexpected physical_reg_type "<<physical_reg_type<<"\n";
            }
            if(Spill_victim.options.no_compromise){
                auto mem_offset = reg_V2P[Spill_victim.getVirtualRegNo()].address.mem_fp_offset;
                if(physical_reg_type == 1){
                    (*block)[0]->Instruction_list.push_front(
                        new mov_instruction(
                            new RegOperand(Spill_victim.getVirtualRegNo()),
                            new RegOperand(RESERVED_R0+Spill_victim.options.prefer_regno)
                        )
                    );
                }else if(physical_reg_type == 2){
                    (*block)[0]->Instruction_list.push_front(
                        new vmov_instruction(
                            new RegOperand(Spill_victim.getVirtualRegNo()),
                            new RegOperand(RESERVED_S0+Spill_victim.options.prefer_regno)
                        )
                    );
                }
            }
            // next_fp_offset_to_allocate -= 4;
            // Note: Multiple Reserved regs
            // Problem: find fp offset
        }
    }
    next_fp_offset_to_allocate = mem_usage_tracker.get_cur_offset_border();
    for(int i=0;i<=3;i++){
        for(int j=1;j<total_ins_count;j++){
            ins_across_r[i][j]+=ins_across_r[i][j-1];
        }
    }
    for(int i=0;i<=15;i++){
        for(int j=1;j<total_ins_count;j++){
            ins_across_s[i][j]+=ins_across_s[i][j-1];
        }

    }

    for(int i=0;i<=3;i++){
        reg_V2P[RESERVED_R0 + i] = PhysicalAllocDiscriptor(PhysicalAllocDiscriptor::PHY_REG_I32,i);
    }
    for(int i=0;i<=15;i++){
        reg_V2P[RESERVED_S0 + i] = PhysicalAllocDiscriptor(PhysicalAllocDiscriptor::PHY_REG_F32,i);
    }
    reg_V2P[0x7FFFFFFF] = PhysicalAllocDiscriptor(PhysicalAllocDiscriptor::PHY_REG_I32,10);
    reg_V2P[0x7FFFFFFF-1] = PhysicalAllocDiscriptor(PhysicalAllocDiscriptor::PHY_REG_F32,31);
}
std::vector<int> LoadInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(pointer->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)pointer)->GetRegNo()
        );
    }
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> StoreInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(pointer->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)pointer)->GetRegNo()
        );
    }
    if(value->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)value)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> ArithmeticInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(op1->GetOperandType()==BasicOperand::REG){
        ret.push_back( ((RegOperand*)op1)->GetRegNo());
    }
    if(op2->GetOperandType()==BasicOperand::REG){
        ret.push_back( ((RegOperand*)op2)->GetRegNo());
    }
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> IcmpInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(op1->GetOperandType()==BasicOperand::REG){
        ret.push_back( ((RegOperand*)op1)->GetRegNo());
    }
    if(op2->GetOperandType()==BasicOperand::REG){
        ret.push_back( ((RegOperand*)op2)->GetRegNo());
    }
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> FcmpInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(op1->GetOperandType()==BasicOperand::REG){
        ret.push_back( ((RegOperand*)op1)->GetRegNo());
    }
    if(op2->GetOperandType()==BasicOperand::REG){
        ret.push_back( ((RegOperand*)op2)->GetRegNo());
    }
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> PhiInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    // std::cerr<<"Unexpected to get in phi_Instruction::refering_virtual_regs()"<<std::endl;
    if(result->GetOperandType() == BasicOperand::REG){
        ret.push_back(((RegOperand*)result)->GetRegNo());
    }
    for(auto var_label_pair:val_labels){
        auto val = var_label_pair.second;
        if(val->GetOperandType() == BasicOperand::REG){
            ret.push_back(((RegOperand*)val)->GetRegNo());
        }
    }
    return ret;
}

std::vector<int> AllocaInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    // std::cerr<<"Unexpected to get in alloca_Instruction::refering_virtual_regs()"<<std::endl;
    if(result->GetOperandType() == BasicOperand::REG){
        ret.push_back(((RegOperand*)result)->GetRegNo());
    }
    return ret;
}

std::vector<int> BrCondInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(cond->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)cond)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> BrUncondInstruction::refering_virtual_regs(){
    std::vector<int>ret;
    return ret;
}

std::vector<int> GlobalVarDefineInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    std::cerr<<"Unexpected to get in global_id_define_Instruction::refering_virtual_regs()"<<std::endl;
    return ret;
}

std::vector<int> GlobalStringConstInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    std::cerr<<"Unexpected to get in global_str_const_Instruction::refering_virtual_regs()"<<std::endl;
    return ret;
}

std::vector<int> CallInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(result != NULL){
        // this->printIR(std::cerr);
        // std::cerr<<result->getOperandType()<<"\n";
        if(result->GetOperandType()==BasicOperand::REG){
            ret.push_back(((RegOperand*)result)->GetRegNo());
        }
    }
    for(auto arg:args){
        if(arg.second->GetOperandType()==BasicOperand::REG){
            ret.push_back(((RegOperand*)arg.second)->GetRegNo());
        }
    }
    return ret;
}

std::vector<int> RetInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(ret_val != NULL){
        if(ret_val->GetOperandType()==BasicOperand::REG){
            ret.push_back(((RegOperand*)ret_val)->GetRegNo());
        }
    }
    return ret;
}

std::vector<int> GetElementprtInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    // std::cerr<<"Unexpected to get in get_elementptr_instruction::refering_virtual_regs()\n";
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(((RegOperand*)result)->GetRegNo());
    }
    if(ptrval->GetOperandType()==BasicOperand::REG){
        ret.push_back(((RegOperand*)ptrval)->GetRegNo());
    }
    for(auto idx:indexes){
        if(idx->GetOperandType() == BasicOperand::REG){
            ret.push_back(((RegOperand*)idx)->GetRegNo());
        }
    }
    return ret;
}

std::vector<int> FunctionDefineInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    std::cerr<<"Unexpected to get in func_define_Instruction::refering_virtual_regs()\n";
    return ret;
}

std::vector<int> FunctionDeclareInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    std::cerr<<"Unexpected to get in func_declare_instruction::refering_virtual_regs()\n";
    return ret;
}

std::vector<int> FptosiInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    if(value->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)value)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> SitofpInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    if(value->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)value)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> ZextInstruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    if(value->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)value)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> mov_instruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    if(source->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)source)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> load_fp_instruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    if(offset->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)offset)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> store_fp_instruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(str_val->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)str_val)->GetRegNo()
        );
    }
    if(offset->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)offset)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> get_addr_by_fp_offset_instruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    if(offset->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)offset)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int>pseudo_load_label_instruction::refering_virtual_regs(){
    // std::cerr<<"Enter:regfer ";
    // this->printIR(std::cerr);
    std::vector<int> ret;
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    if(from->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)from)->GetRegNo()
        );
    }
    // std::cerr<<"Safe:refer\n";
    return ret;
}

std::vector<int> load_imm_instruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> vmov_instruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    if(from->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)from)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> pseudo_alg_shift_Instruction::refering_virtual_regs(){
    std::vector<int> ret;
    if(result->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)result)->GetRegNo()
        );
    }
    if(op1->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)op1)->GetRegNo()
        );
    }
    if(op2->GetOperandType()==BasicOperand::REG){
        ret.push_back(
            ((RegOperand*)op2)->GetRegNo()
        );
    }
    return ret;
}

std::vector<int> CFG::get_used_physical_i32_reg(){
    std::vector<int> ret;
    int i32_vsd[11] = {0};
    for(auto Vreg_Preg_Pair : reg_V2P){
        if(Vreg_Preg_Pair.second.alloc_type == PhysicalAllocDiscriptor::PHY_REG_I32){
            int phy_i32_no = Vreg_Preg_Pair.second.address.physicalRegNo_i32;
            if(phy_i32_no<9 &&phy_i32_no >= 4){
                if(i32_vsd[phy_i32_no] == 0){
                    ret.push_back(phy_i32_no);
                    i32_vsd[phy_i32_no] = 1;
                }
            }
        }
    }
    if(have_mem_i32){
        if(i32_vsd[9] == 0)ret.push_back(9);
        if(i32_vsd[10] == 0)ret.push_back(10);
    }
    std::sort(ret.begin(),ret.end());
    return ret;
}

std::vector<int> CFG::get_used_physical_f32_reg(){
    std::vector<int> ret;
    int f32_vsd[32] = {0};
    for(auto Vreg_Preg_Pair : reg_V2P){
        if(Vreg_Preg_Pair.second.alloc_type == PhysicalAllocDiscriptor::PHY_REG_F32){
            int phy_f32_no = Vreg_Preg_Pair.second.address.physicalRegNo_f32;
            if(phy_f32_no<30 && phy_f32_no >= 16){
                if(f32_vsd[phy_f32_no] == 0){
                    ret.push_back(phy_f32_no);
                    f32_vsd[phy_f32_no] = 1;
                }
            }
        }
    }
    if(have_mem_f32){
        if(f32_vsd[30] == 0)ret.push_back(30);
        if(f32_vsd[31] == 0)ret.push_back(31);
    }
    int half_vsd[16]={0};
    std::vector<int>half_ret;
    for(auto s:ret){
        if(half_vsd[s/2] == 0){
            // std::cerr<<"s"<<s<<"\n";
            half_ret.push_back(s/2);
            half_vsd[s/2] = 1;
        }
    }
    std::sort(half_ret.begin(),half_ret.end());
    // return half_ret;
    std::vector<int> cont_ret;
    if(!half_ret.empty()){
        for(int i=half_ret[0];i<=half_ret[half_ret.size()-1];i++){
            cont_ret.push_back(i);
        }
    }
    return cont_ret;
}

// r0-r3 only
std::vector<int> CFG::get_phsical_i32_regs_across_ins(int Ins_no){
    std::vector<int> ret;
    for(int i=0;i<=3;i++){
        if(ins_across_r[i][Ins_no]){
            ret.push_back(i);
        }
    }
    return ret;
}

std::vector<int> CFG::get_phsical_i32_regs_across_ins_noresult(int Ins_no,int result_regno){
    std::vector<int> ret;
    for(int i=0;i<=3;i++){
        if(ins_across_r[i][Ins_no] && i != result_regno){
            ret.push_back(i);
        }
    }
    return ret;
}

// s0-s15 only
std::vector<int> CFG::get_phsical_f32_regs_across_ins(int Ins_no){
    std::vector<int> ret;
    for(int i=0;i<=15;i++){
        if(ins_across_s[i][Ins_no]){
            ret.push_back(i);
        }
    }
    int half_vsd[16]={0};
    std::vector<int>half_ret;
    for(auto s:ret){
        // std::cerr<<"s"<<s<<"\n";
        if(half_vsd[s/2] == 0){
            half_ret.push_back(s/2);
            half_vsd[s/2] = 1;
        }
    }
    // return half_ret;
    std::vector<int> cont_ret;
    if(!half_ret.empty()){
        for(int i=half_ret[0];i<=half_ret[half_ret.size()-1];i++){
            cont_ret.push_back(i);
        }
    }
    return cont_ret;
}

int CFG::get_min_active_mem_offset(int insno){
    int min_offset = -8;
    for(auto interval_pair : intervals){
        auto vir_reg = interval_pair.first;
        auto interval = interval_pair.second;
        if(interval.getfirstRefInsNo() <= insno && insno <= interval.getlastRefInsNo()){
            auto addr =reg_V2P[vir_reg];
            if(addr.alloc_type == PhysicalAllocDiscriptor::PHY_MEM_F32 || addr.alloc_type == PhysicalAllocDiscriptor::PHY_MEM_I32){
                auto mem_offset = addr.address.mem_fp_offset;
                std::cerr<<"virtual "<<interval.getVirtualRegNo()<<" at mem "<<mem_offset<<"\n";
                std::cerr<<"    current:"<<min_offset<<"\n";
                if(min_offset > mem_offset){
                    min_offset = mem_offset;
                }
            }
        }
    }
    return min_offset;
}

int CFG::get_reusable_size(int insno){
    int cur_top = get_min_active_mem_offset(insno);
    int max_top = next_fp_offset_to_allocate;
    return max_top - cur_top;
}