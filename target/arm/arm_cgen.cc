#include "arm_cgen.h"
#include "llvm_ir.h"
#include <cstring>

extern LLVMIR llvm_IR;
// static int max_prereg = -1;
static Func_Def_Instruction function_now;
// static llvm_block block_now;
// static std::map<int,int>reg_fpNegativeoffset_map;
// static int next_negative_offset = -8;
static int current_sp_offset = 0;
static int current_savesp_offset = 0;
int output_Physical_reg = 0;

static std::map<int,PhysicalAllocDiscriptor>* current_reg_V2P;
static CFG* current_CFG;

extern LLVMIR cgenpre_IR;

Operand get_any_imm32(int i32_val);
bool Immediate_8_Condition(unsigned int val);
void BasicBlock::set_target(int id1,int id2)
{
    if(Instruction_list.size() < 1){return;}
    auto it = *(Instruction_list.end()-1);
    if(it->GetOpcode() == BR_COND){
        auto I = (BrCondInstruction*)it;
        int id = ((LabelOperand*)(I->getTrueLabel()))->GetLabelNo();
        if(id == id1){
            I->set_truelabel(new LabelOperand(id2));
        }
        else{
            I->set_falselabel(new LabelOperand(id2));
        }
    }
    if(it->GetOpcode() == BR_UNCOND){
        auto I = (BrUncondInstruction*)it;
        I->set_target(new LabelOperand(id2));
    }
}


std::string get_cond_str(IcmpCond T)
{
    std::string ans;
    switch(T)
    { 
        case eq: 
            ans = "eq"; 
            break; 
        case ne: 
            ans = "ne"; 
            break; 
        case sgt: 
            ans = "gt"; 
            break; 
        case sge: 
            ans = "ge"; 
            break; 
        case slt: 
            ans = "lt"; 
            break; 
        case sle: 
            ans = "le"; 
            break;
        default:
            break;
    }
    return ans;
}

IcmpCond fcond2icond(FcmpCond T)
{
    IcmpCond ans;
    switch(T)
    {
        case OEQ:
            ans = IcmpCond::eq;
            break;
        case ONE:
            ans = IcmpCond::ne;
            break;
        case OGT:
            ans = IcmpCond::sgt;
            break;
        case OGE:
            ans = IcmpCond::sge;
            break;
        case OLT:
            ans = IcmpCond::slt;
            break;
        case OLE:
            ans = IcmpCond::sle;
            break;
        default:
            break;
    }
    return ans;
}

std::string get_inv_cond_str(IcmpCond T)
{
    std::string ans;
    switch(T)
    { 
        case eq: 
            ans = "ne"; 
            break; 
        case ne: 
            ans = "eq"; 
            break; 
        case sgt: 
            ans = "le"; 
            break; 
        case sge: 
            ans = "lt"; 
            break; 
        case slt: 
            ans = "ge"; 
            break; 
        case sle: 
            ans = "gt"; 
            break; 
        default:
            break;
    }
    return ans;
}



static int r9_used_flag = 0;
static int s30_used_flag = 0;
static IcmpCond curr_cmp_cond;
static int cond_inv_flag = 0;
static int float_cmp_flag = 0;
static int result_flag = 0;
static int result_in_memory_i32flag = 0;
static int result_in_memory_f32flag = 0;
static int result_in_memory_offset = 0;
static int arg_offset = 0;
static std::vector<int> BB_vis{};
static std::vector<int> active_i32reglist{};
static std::vector<int> active_f32reglist{};
static int global_ins_offset = 0;
static std::map<std::string,int> global_label_map{};
static std::map<std::string,int> global_offset_map{};
static int LPIC_label = -1;

void code_LPIC(std::string name,std::ostream& s)
{
    global_ins_offset += 8;
    
    s << ".LPIC"<<LPIC_label<<":\n";
    s << "\t.word "<<name<<"\n";
}

void code_ldr_imm(std::string result,int imm,std::ostream& s)
{
    // mov result, #imm
    if(Immediate_8_Condition(imm)){
        s<<"\tmov "<<result<<",#"<<imm<<"\n";
        return;
    }else if(Immediate_8_Condition(~((unsigned int)imm))){
        s<<"\tmvn "<<result<<",#"<<~imm<<"\n";
    }else{
        unsigned int lh = imm;
        s<<"\tmovw "<<result<<",#"<<(lh&0x0000FFFF)<<"\n";
        s<<"\tmovt "<<result<<",#"<<((lh&0xFFFF0000)>>16);
        s<<"  @ "<<imm<<"\n";
    }
}

void code_ldr_global(std::string result,std::string name,std::ostream& s)
{
    int LPIC_id = global_label_map[name];
    int LPIC_offset = global_offset_map[name];
    if(global_ins_offset > LPIC_offset + 2048){
        ++LPIC_label;
        s<<"\tbl .LPIC"<<LPIC_label+1<<"\n";
        code_LPIC(name,s);
        global_label_map[name] = LPIC_label;
        global_offset_map[name] = global_ins_offset;
        s<<".LPIC"<<LPIC_label+1<<":\n";

        s<<"\tldr "<<result<<",.LPIC"<<LPIC_label<<"\n";
        ++LPIC_label;
    }
    else{
        global_ins_offset += 4;
        s<<"\tldr "<<result<<",.LPIC"<<LPIC_id<<"\n";
    }
}


void code_str(int type,int offset,std::string s_val,std::ostream& s,enum arm_cond exec_cond = NONE)
{
    std::string s_ldrimm;

    if(type == 1){
        if(abs(offset) >= 4096){
            if(s_val == "r9"){s_ldrimm = "r10";}
            else{s_ldrimm = "r9";}
            // s << "\tldr r10,="<<offset<<"\n";
            global_ins_offset+=4;
            code_ldr_imm(s_ldrimm,offset,s);
            global_ins_offset+=4;
            if(exec_cond == EX_CS){
                s << "\tit cs\n";
            }else if(exec_cond == EX_LT){
                s << "\tit lt\n";
            }else if(exec_cond == EX_PL){
                s << "\tit pl\n";
            }
            if(exec_cond == NONE || exec_cond == EX_S){
                s << "\tstr "<<s_val<<",[fp,"<< s_ldrimm <<"]\n";
            }else if(exec_cond == EX_CS){
                s << "\tstrcs "<<s_val<<",[fp,"<< s_ldrimm <<"]\n";
            }else if(exec_cond == EX_LT){
                s << "\tstrlt "<<s_val<<",[fp,"<< s_ldrimm <<"]\n";
            }else if(exec_cond == EX_PL){
                 s << "\tstrpl "<<s_val<<",[fp,"<< s_ldrimm <<"]\n";
            }
        }
        else{
            global_ins_offset+=4;
            if(exec_cond == EX_CS){
                s << "\tit cs\n";
            }else if(exec_cond == EX_LT){
                s << "\tit lt\n";
            }else if(exec_cond == EX_PL){
                s << "\tit pl\n";
            }
            if(exec_cond == NONE || exec_cond == EX_S){
                s << "\tstr "<<s_val<<",[fp,#"<<offset<<"]\n";
            }else if(exec_cond == EX_CS){
                s << "\tstrcs "<<s_val<<",[fp,#"<<offset<<"]\n";
            }else if(exec_cond == EX_LT){
                s << "\tstrlt "<<s_val<<",[fp,#"<<offset<<"]\n";
            }else if(exec_cond == EX_PL){
                s << "\tstrpl "<<s_val<<",[fp,#"<<offset<<"]\n";
            }
        }
    }
    if(type == 2){
        if(abs(offset) >= 1024){
            // s << "\tldr r10,="<<offset<<"\n";
            global_ins_offset+=4;
            code_ldr_imm("r9",offset,s);
            global_ins_offset+=4;   
            s<<"\tadd r9,fp,r9\n";
            global_ins_offset+=4;
            s << "\tvstr.32 "<<s_val<<",[r9]\n";
        }
        else{
            global_ins_offset+=4;
            s << "\tvstr.32 "<<s_val<<",[fp,#"<<offset<<"]\n";
        }
    }
}

void code_ldr(int type,int offset,std::string s_result,std::ostream& s)
{
    if(type == 1){
        if(abs(offset) >= 4096){
            // s << "\tldr r10,="<<offset<<"\n";
            global_ins_offset+=4;
            code_ldr_imm("r10",offset,s);
            global_ins_offset+=4;
            s << "\tldr "<<s_result<<",[fp,r10]\n";
        }
        else{
            global_ins_offset+=4;
            s << "\tldr "<<s_result<<",[fp,#"<<offset<<"]\n";
        }
    }
    if(type == 2){
        if(abs(offset) >= 1024){
            // s << "\tldr r10,="<<offset<<"\n";
            global_ins_offset+=4;
            code_ldr_imm("r10",offset,s);
            global_ins_offset+=4;   
            s<<"\tadd r10,fp,r10\n";
            global_ins_offset+=4;
            s << "\tvldr.32 "<<s_result<<",[r10]\n";
        }
        else{
            global_ins_offset+=4;
            s << "\tvldr.32 "<<s_result<<",[fp,#"<<offset<<"]\n";
        }
    }
}

void code_ldr(int type,int offset,int result,std::ostream& s)
{
    if(type == 1){
        if(abs(offset) >= 4096){
            // s << "\tldr r10,="<<offset<<"\n";
            global_ins_offset+=4;
            code_ldr_imm("r10",offset,s);
            global_ins_offset+=4;
            s << "\tldr r"<<result<<",[fp,r10]\n";
        }
        else{
            global_ins_offset+=4;
            s << "\tldr r"<<result<<",[fp,#"<<offset<<"]\n";
        }
    }
    if(type == 2){
        if(abs(offset) >= 1024){
            // s << "\tldr r10,="<<offset<<"\n";
            global_ins_offset+=4;
            code_ldr_imm("r10",offset,s);
            global_ins_offset+=4;   
            s<<"\tadd r10,fp,r10\n";
            global_ins_offset+=4;
            s << "\tvldr.32 s"<<result<<",[r10]\n";
        }
        else{
            global_ins_offset+=4;
            s << "\tvldr.32 s"<<result<<",[fp,#"<<offset<<"]\n";
        }
    }
}

std::string get_op_str(Operand op,std::ostream& s)
{
    std::string ans;
    
    if(op->GetOperandType() == BasicOperand::REG){
        int v_reg = ((RegOperand*)op)->GetRegNo();
        auto phy_reg = (*current_reg_V2P)[v_reg];
        if(phy_reg.alloc_type == phy_reg.PHY_REG_I32){
            ans = "r" + std::to_string(phy_reg.address.physicalRegNo_i32);
        }
        if(phy_reg.alloc_type == phy_reg.PHY_REG_F32){
            ans = "s" + std::to_string(phy_reg.address.physicalRegNo_f32);
        }
        if(phy_reg.alloc_type == phy_reg.PHY_MEM_I32){
            int offset = phy_reg.address.mem_fp_offset;
            if(!r9_used_flag){
                if(!result_flag){code_ldr(1,offset,9,s);}
                else{result_in_memory_i32flag = 1;result_in_memory_offset = offset;}
                ans = "r9";
                r9_used_flag = 1;
            }   
            else{
                if(!result_flag){code_ldr(1,offset,10,s);}
                else{result_in_memory_i32flag = 1;result_in_memory_offset = offset;}
                ans = "r10";
            }
        }
        if(phy_reg.alloc_type == phy_reg.PHY_MEM_F32){
            int offset = phy_reg.address.mem_fp_offset;
            if(!s30_used_flag){
                if(!result_flag){code_ldr(2,offset,30,s);}
                else{result_in_memory_f32flag = 1;result_in_memory_offset = offset;}
                ans = "s30";
                s30_used_flag = 1;
            }
            else{
                if(!result_flag){code_ldr(2,offset,31,s);}
                else{result_in_memory_f32flag = 1;result_in_memory_offset = offset;}
                ans = "s31";
            }
        }
    }
    if(op->GetOperandType() == BasicOperand::IMMI32){
        int val = ((ImmI32Operand*)op)->GetIntImmVal();
        ans = "#" + std::to_string(val);
    }
    if(op->GetOperandType() == BasicOperand::IMMF32){
        float val = ((ImmF32Operand*)op)->GetFloatVal();
        ans = "#" + std::to_string(val);
    }
    if(op->GetOperandType() == BasicOperand::GLOBAL){
        ans = ((global_operand*)op)->getName();
    }
    return ans;
}

void LLVMIR::code(std::ostream& s){
    output_Physical_reg = 0;
    cgen_define(s);
    for(auto node:llvm_cfg){
        node.second->code(s);
    }
    s << "\t.section	.note.GNU-stack,\"\",%progbits"<<"\n";
}
void code_global_define(std::ostream& s);
void LLVMIR::cgen_define(std::ostream& s)
{
    s << ".arch armv7-a\n";
    s << ".fpu vfpv3-d16\n";
    s << ".arm\n";
    s << ".data\n";
    for(auto I:global_def){
        I->code(s);
    }
    for(auto I:func_declare){
        I->code(s);
    }
    s << ".text\n";
    s << ".global main\n";
    code_global_define(s);
}

void code_by_blockDFSorder(std::ostream& s,LLVMBlock B,std::map<int, LLVMBlock>* block)
{
    if(BB_vis[B->block_id]){return;}
    BB_vis[B->block_id] = 1;

    B->code(s);
    auto I_list = B->Instruction_list;
    if(I_list.empty()){return;}
    auto endI = *(I_list.end()-1);
    
    if(endI->GetOpcode() == BR_UNCOND){
        auto I = (BrUncondInstruction*)endI;

        //s << "\t@";
        //I->printIR(s);

        if(BB_vis[I->get_target()]){
            global_ins_offset+=4;
            s <<"\tbl ."<< function_now->get_Func_name() << "L" << I->get_target() << "\n";
        }
        code_by_blockDFSorder(s,(*block)[I->get_target()],block);
    }
    if(endI->GetOpcode() == BR_COND){
        auto I = (BrCondInstruction*)endI;

        //s << "\t@";
        //I->printIR(s);
        
        if(float_cmp_flag){
            global_ins_offset+=4;
            s << "\tvmrs APSR_nzcv, FPSCR\n";
            float_cmp_flag = 0;
        }   
        int trueBB = ((LabelOperand*)(I->getTrueLabel()))->GetLabelNo();
        int falseBB = ((LabelOperand*)(I->getFalseLabel()))->GetLabelNo();

        if(BB_vis[trueBB] && BB_vis[falseBB]){
            global_ins_offset+=4;
            s <<"\tb"<<get_cond_str(curr_cmp_cond)<<" ."<< function_now->get_Func_name() << "L" << trueBB << "\n";
            global_ins_offset+=4;
            s <<"\tb"<<get_inv_cond_str(curr_cmp_cond)<<" ."<< function_now->get_Func_name() << "L" << falseBB << "\n";

            code_by_blockDFSorder(s,(*block)[falseBB],block);
            code_by_blockDFSorder(s,(*block)[trueBB],block);
        }
        else if(BB_vis[falseBB]){
            global_ins_offset+=4;
            s <<"\tb"<<get_inv_cond_str(curr_cmp_cond)<<" ."<< function_now->get_Func_name() << "L" << falseBB << "\n";

            code_by_blockDFSorder(s,(*block)[trueBB],block);
            code_by_blockDFSorder(s,(*block)[falseBB],block);
        }
        else{
            global_ins_offset+=4;
            s <<"\tb"<<get_cond_str(curr_cmp_cond)<<" ."<< function_now->get_Func_name() << "L" << trueBB << "\n";

            code_by_blockDFSorder(s,(*block)[falseBB],block);
            code_by_blockDFSorder(s,(*block)[trueBB],block);
        }
    }
}

void CFG::code(std::ostream& s)
{
    current_reg_V2P = &reg_V2P;
    current_sp_offset = next_fp_offset_to_allocate;
    
    active_i32reglist = get_used_physical_i32_reg();
    active_f32reglist = get_used_physical_f32_reg();
    current_savesp_offset = active_i32reglist.size()*4;
    
    s << func_ins->get_Func_name() << ":@";
    function_now = func_ins;
    for(auto r:active_i32reglist){
        s << "r" << r << " ";
    }
    for(auto r:active_f32reglist){
        s << "d" << r << " ";
    }
    s << "\n";
    global_ins_offset+=4;
    s<<"\tpush {fp,lr}\n";

    arg_offset = ( 2*active_f32reglist.size() + active_i32reglist.size() )*4;
    if(active_i32reglist.size() >= 1){
        global_ins_offset+=4;
        s << "\tpush {";
        
        for(int i = 0; i + 1 < active_i32reglist.size(); ++i){
            s << "r" <<active_i32reglist[i]<<",";
        }
        s << "r" << active_i32reglist[active_i32reglist.size() - 1] << "}\n";
    }
    if(active_f32reglist.size() >= 1){
        global_ins_offset+=4;
        s << "\tvpush.64 {";
        
        for(int i = 0; i + 1 < active_f32reglist.size(); ++i){
            s << "d" <<active_f32reglist[i]<<",";
        }
        s << "d" << active_f32reglist[active_f32reglist.size() - 1] << "}\n";
    }
    global_ins_offset+=4;
    s<<"\tadd fp,sp,#4\n";
    if(abs(current_sp_offset) <= 127){
        global_ins_offset+=4;
        s<<"\tsub sp,sp,#"<<abs(current_sp_offset)<<"\n";
    }
    else{
        // s<<"\tldr r9,="<<abs(current_sp_offset)<<"\n";
        global_ins_offset+=4;
        code_ldr_imm("r9",abs(current_sp_offset),s);
        global_ins_offset+=4;
        s<<"\tsub sp,sp,r9\n";
    }

    BB_vis.clear();
    BB_vis.resize(max_label+1);
    current_CFG = this;
    code_by_blockDFSorder(s,(*block)[0],block);
}

void BasicBlock::code(std::ostream& s)
{
    s <<"."<< function_now->get_Func_name() << "L" << block_id << ":\n";
    for(auto I:Instruction_list){
        global_ins_offset+=4;
        I->code(s);
    }
}

void ImmI32Operand::code(std::ostream& s)
{
    s << immVal;
}

void ImmF32Operand::code(std::ostream& s)
{
    s << *(int*)(&immVal);
}

void code_global_define(std::ostream& s)
{
    for(auto n:global_label_map){
        global_ins_offset += 4;
        ++LPIC_label;
        s << ".LPIC" << LPIC_label <<":\n";
        s << "\t.word  "<< n.first << "\n";
        global_label_map[n.first] = LPIC_label;
        global_offset_map[n.first] = global_ins_offset;
    }
}
void GlobalVarDefineInstruction::code(std::ostream& s)
{
    s << name << ":\n";
    if(arval.dims.empty()){
        if(init_val != nullptr){
            s << "\t.word  ";
            init_val->code(s);
            s << "\n";        
        }
        else{
            s << "\t.word  0\n"; 
        }
        global_label_map[name] = -1;
        return; 
    }
    if(type == LLVMType::I32){
        int zero_continue = 0;
        for(auto v:arval.IntInitVals){
            if(v == 0){
                ++zero_continue;
            }
            else{
                if(zero_continue){s << "\t.space  " << zero_continue*4 <<"\n";}
                s << "\t.word  " << v <<"\n";
                zero_continue = 0;
            }
        }
        if(zero_continue){
            s << "\t.space  " << zero_continue*4 <<"\n";
        }
    }
    if(type == LLVMType::FLOAT32){
        int zero_continue = 0;
        for(auto v:arval.FloatInitVals){
            if(v == 0){
                ++zero_continue;
            }
            else{
                if(zero_continue){s << "\t.space  " << zero_continue*4 <<"\n";}
                s << "\t.word  " << *(int*)(&v) <<"\n";
                zero_continue = 0;
            }
        }
        if(zero_continue){
            s << "\t.space  " << zero_continue*4 <<"\n";
        }
    }
    global_label_map[name] = -1;
}

void GlobalStringConstInstruction::code(std::ostream& s)
{
    // s << str_name << ":\n";
    // s << "\t.ascii \"" << str_val << "\"\n";
}

void FunctionDefineInstruction::code(std::ostream& s){}
void FunctionDeclareInstruction::code(std::ostream& s){}



void StoreInstruction::code(std::ostream& s)
{
    //s << "\t@";
    //printIR(s);

    std::string reg1 = get_op_str(value,s);
    std::string reg2 = get_op_str(pointer,s);

    if(type == LLVMType::I32){
        s<<"\tstr " << reg1 <<",["<< reg2 <<"]\n";
    }
    if(type == LLVMType::FLOAT32){
        s<<"\tvstr.32 " << reg1 <<",["<< reg2 <<"]\n";
    }
    r9_used_flag = 0;
    s30_used_flag = 0;
}

void LoadInstruction::code(std::ostream& s)
{
    //s << "\t@";
    //printIR(s);

    std::string s_value = get_op_str(pointer,s);
    
    result_flag = 1;
    std::string s_result = get_op_str(result,s);
    
    if(type == LLVMType::I32){
        s<<"\tldr " << s_result <<",["<< s_value <<"]\n";
    }
    else if(type == LLVMType::FLOAT32){
        s<<"\tvldr.32 " << s_result <<",["<< s_value <<"]\n";
    }

    r9_used_flag = 0;
    s30_used_flag = 0;
    result_flag = 0;

    if(result_in_memory_i32flag){
        code_str(1,result_in_memory_offset,s_result,s);
        result_in_memory_i32flag = 0;
    }
    else if(result_in_memory_f32flag){
        code_str(2,result_in_memory_offset,s_result,s);
        result_in_memory_f32flag = 0;
    }
}

int get_phy_regno(Operand op)
{
    if(op->GetOperandType() == BasicOperand::REG){
        int v_reg = ((RegOperand*)op)->GetRegNo();
        auto phy_reg = (*current_reg_V2P)[v_reg];
        if(phy_reg.alloc_type == phy_reg.PHY_REG_I32){
            return phy_reg.address.physicalRegNo_i32;
        }
        if(phy_reg.alloc_type == phy_reg.PHY_REG_F32){
            return phy_reg.address.physicalRegNo_f32;
        }
    }
    return -1;
}

bool judge_if_need_move(int target,Operand op)
{
    int regno = get_phy_regno(op);
    if(regno >= 0 && regno == target){return false;}
    return true;
}

bool judge_if_need_moveall(std::map<int,Operand>& M)
{
    for(auto n:M){
        Operand op = n.second;
        int regno = get_phy_regno(op);
        if(regno >= 0 && regno == n.first){continue;}
        return true;
    }
    return false;
}

bool judge_if_can_move(std::map<int,Operand>& M,int to)
{
    for(auto n:M){
        Operand op = n.second;
        int regno = get_phy_regno(op);
        if(regno >= 0 && regno == to){return false;}
    }
    return true;
}

void move(int target,Operand src,int type,std::ostream& s)
{
    if(type == 1){
        if(src->GetOperandType() == BasicOperand::GLOBAL){
            // global_operand* glo = (global_operand*)src;
            // auto name = glo->getName();
            // s<<"ldr "<<target<<",["<<name<<"]\n";
            // ldr r1,name
            std::cerr<<"GLOBAL I32\n";
        }
        else if(src->GetOperandType() == BasicOperand::IMMI32){
            int imm_val = ((ImmI32Operand*)src)->GetIntImmVal();
            // s<<"\tldr "<<"r"<<target<<", ="<<imm_val<<"\n";
            code_ldr_imm(std::string("r")+std::to_string(target),imm_val,s);
        }
        else if(src->GetOperandType() == BasicOperand::REG){
            int vir_reg_no = ((RegOperand*)src)->GetRegNo();
            auto reg_phy = (*current_reg_V2P)[vir_reg_no];
            if(reg_phy.alloc_type == PhysicalAllocDiscriptor::PHY_REG_I32){
                s<<"\tmov r"<<target<<",r"<<reg_phy.address.physicalRegNo_i32<<"\n";
            }
            if(reg_phy.alloc_type == PhysicalAllocDiscriptor::PHY_MEM_I32){
                code_ldr(1,reg_phy.address.mem_fp_offset,target,s);
            }
        }
    }
    if(type == 2){
        if(src->GetOperandType() == BasicOperand::GLOBAL){
            // global_operand* glo = (global_operand*)src;
            // auto name = glo->getName();
            // s<<"ldr "<<target<<",["<<name<<"]\n";
            // ldr r1,name
            std::cerr<<"GLOBAL F32\n";
        }
        else if(src->GetOperandType() == BasicOperand::REG){
            int vir_reg_no = ((RegOperand*)src)->GetRegNo();
            auto reg_phy = (*current_reg_V2P)[vir_reg_no];
            if(reg_phy.alloc_type == PhysicalAllocDiscriptor::PHY_REG_F32){
                s<<"\tvmov.f32 s"<<target<<",s"<<reg_phy.address.physicalRegNo_f32<<"\n";
            }
            if(reg_phy.alloc_type == PhysicalAllocDiscriptor::PHY_MEM_F32){
                code_ldr(2,reg_phy.address.mem_fp_offset,target,s);
            }
        }
    }
}

void mov_reg2function_call(std::map<int,Operand>& Mi32,std::map<int,Operand>& Mfloat,std::ostream& s)
{
    while(judge_if_need_moveall(Mi32)){
        int move_tag = 0;
        int erase_id = 0;
        for(auto n:Mi32){
            int target = n.first;
            if(judge_if_can_move(Mi32,target)){
                move_tag = 1;
                erase_id = n.first;
                move(target,n.second,1,s);
                break;
            }
        }
        if(move_tag){
            Mi32.erase(erase_id);
            continue;
        }
        else{
            int change_id = 0;
            for(auto n:Mi32){
                int target = n.first;
                int src = get_phy_regno(n.second);
                if(target != src){
                    change_id = target;
                    std::string s_src = get_op_str(n.second,s);
                    s << "\tmov r10,"<<s_src<<"\n";
                    r9_used_flag = 0;
                    break;
                }
            }
            Mi32[change_id] = new RegOperand(0x7FFFFFFF);
        }
    }

    while(judge_if_need_moveall(Mfloat)){
        int move_tag = 0;
        int erase_id = 0;
        for(auto n:Mfloat){
            int target = n.first;
            if(judge_if_can_move(Mfloat,target)){
                move_tag = 1;
                erase_id = n.first;
                
                move(target,n.second,2,s);
                break;
            }
        }
        if(move_tag){
            Mfloat.erase(erase_id);
            continue;
        }
        else{
            int change_id = 0;
            for(auto n:Mfloat){
                int target = n.first;
                int src = get_phy_regno(n.second);
                if(target != src){
                    change_id = target;
                    std::string s_src = get_op_str(n.second,s);
                    s << "\tvmov.f32 s31,"<<s_src<<"\n";
                    s30_used_flag = 0;
                    break;
                }
            }
            Mfloat[change_id] = new RegOperand(0x7FFFFFFF-1);
        }
    }

}

void CallInstruction::code(std::ostream& s)
{
    s << "\t@";
    PrintIR(s);
    std::vector<int> activeacrossreg_i32;
    std::vector<int> activeacrossreg_f32;
    // std::cerr<<"calling "<<this->get_funcName()<<",reusable size:"<<current_CFG->get_reusable_size(this->insNo)<<"\n";
    if(result != nullptr && ret_type == I32){
        int Vresult_reg = ((RegOperand*)result)->GetRegNo();
        auto phy_reg = (*current_reg_V2P)[Vresult_reg];
        int result_reg = -1;
        if(phy_reg.alloc_type == phy_reg.PHY_REG_I32){
            result_reg = phy_reg.address.physicalRegNo_i32;
        }
        activeacrossreg_i32 = current_CFG->get_phsical_i32_regs_across_ins_noresult(this->insNo,result_reg);
    }
    else{
        activeacrossreg_i32 = current_CFG->get_phsical_i32_regs_across_ins(this->insNo);
    }
    activeacrossreg_f32 = current_CFG->get_phsical_f32_regs_across_ins(this->insNo);

    int save_sp_offset = activeacrossreg_i32.size()*4;
    
    std::map<Operand,int> operand_vis;
    std::map<int,Operand> Mi32;
    std::map<int,Operand> Mfloat;
    int r_cnt = -1,s_cnt = -1;
    for(auto arg:args){
        if(arg.first == LLVMType::I32 || arg.first == LLVMType::PTR){
            Mi32[++r_cnt] = arg.second;
            operand_vis[arg.second] = 1;
        }
        if(r_cnt == 3){break;}
    }

    for(auto arg:args){
        if(arg.first == LLVMType::FLOAT32){
            Mfloat[++s_cnt] = arg.second;
            operand_vis[arg.second] = 1;
        }
        if(s_cnt == 15){break;}
    }
    // mov_reg2function_call(Mi32,Mfloat,s);

    int sp_sub_val = 0;
    
    for(auto i = (int)args.size()-1;i >= 0; --i){
        Operand arg_op = args[i].second;
        if(operand_vis[arg_op]){continue;}
        sp_sub_val += 4;
    }

    //stack align 8bytes
    //std::cout<<sp_sub_val<<" "<<current_sp_offset<<" "<<save_sp_offset<<" "<<current_savesp_offset<<"\n";
    if((sp_sub_val + current_sp_offset + save_sp_offset + current_savesp_offset) %8 != 0){
        s << "\tsub sp,sp,#4 @stack align 8bytes\n";
    }

    if(activeacrossreg_i32.size() >= 1){
        s << "\tpush {";
        
        for(int i = 0; i + 1 < activeacrossreg_i32.size(); ++i){
            s << "r" <<activeacrossreg_i32[i]<<",";
        }
        s << "r" << activeacrossreg_i32[activeacrossreg_i32.size() - 1] << "}\n";
    }
    if(activeacrossreg_f32.size() >= 1){
        s << "\tvpush.64 {";
        
        for(int i = 0; i + 1 < activeacrossreg_f32.size(); ++i){
            s << "d" <<activeacrossreg_f32[i]<<",";
        }
        s << "d" << activeacrossreg_f32[activeacrossreg_f32.size() - 1] << "}\n";
    }

    if(sp_sub_val != 0){
        s << "\tsub sp,sp,#"<<sp_sub_val<<"\n";
    }

    int tmp_sp_sub_val = sp_sub_val;
    for(auto i = (int)args.size()-1;i >= 0; --i){
        Operand arg_op = args[i].second;
        if(operand_vis[arg_op]){continue;}
        sp_sub_val -= 4;
        std::string s_arg = get_op_str(arg_op,s);
        if(s_arg[0] == '#'){
            s<<"\tmov r9,"<<s_arg<<"\n";
            s<<"\tstr r9" <<",[sp,#"<<sp_sub_val<<"]";
            s<<"  @"<<arg_op<<"\n";
        }
        if(s_arg[0] == 'r'){
            s<<"\tstr " << s_arg <<",[sp,#"<<sp_sub_val<<"]";
            s<<"  @"<<arg_op<<"\n";
        }
        if(s_arg[0] == 's'){
            s<<"\tvstr.32 " << s_arg <<",[sp,#"<<sp_sub_val<<"]";
            s<<"  @"<<arg_op<<"\n";
        }
        r9_used_flag = 0;
        s30_used_flag = 0;
    }

    mov_reg2function_call(Mi32,Mfloat,s);


    s << "\tbl "<<name<<"\n";

    if(tmp_sp_sub_val != 0){
        s << "\tadd sp,sp,#"<<tmp_sp_sub_val<<"\n";
    }


    if(result != nullptr){
        if(ret_type == I32){
            result_flag = 1;
            std::string s_result = get_op_str(result,s);

            r9_used_flag = 0;
            s30_used_flag = 0;
            result_flag = 0;
            if(result_in_memory_i32flag){
                code_str(1,result_in_memory_offset,"r0",s);
                result_in_memory_i32flag = 0;
            }
            else if(s_result[0] == 'r' && s_result[1] != '0'){
                s << "\tmov "<<s_result<<",r0\n";
            }
        }
        if(ret_type == FLOAT32){ 
            s << "\tvmov.f32 s31,s0\n";
        }
    }

    if(activeacrossreg_f32.size() >= 1){
        s << "\tvpop.64 {";
        
        for(int i = 0; i + 1 < activeacrossreg_f32.size(); ++i){
            s << "d" <<activeacrossreg_f32[i]<<",";
        }
        s << "d" << activeacrossreg_f32[activeacrossreg_f32.size() - 1] << "}\n";
    }
    if(activeacrossreg_i32.size() >= 1){
        s << "\tpop {";
        
        for(int i = 0; i + 1 < activeacrossreg_i32.size(); ++i){
            s << "r" <<activeacrossreg_i32[i]<<",";
        }
        s << "r" << activeacrossreg_i32[activeacrossreg_i32.size() - 1] << "}\n";
    }

    //stack align 8bytes
    if((tmp_sp_sub_val + current_sp_offset + save_sp_offset + current_savesp_offset) %8 != 0){
        s << "\tadd sp,sp,#4 @stack align 8bytes\n";
    }
    
    if(result != nullptr && ret_type == FLOAT32){
        result_flag = 1;
        std::string s_result = get_op_str(result,s);

        r9_used_flag = 0;
        s30_used_flag = 0;
        result_flag = 0;
        if(result_in_memory_f32flag){ 
            code_str(2,result_in_memory_offset,"s31",s);
            result_in_memory_f32flag = 0;
        }
        if(s_result[0] == 's'){
            s << "\tvmov.f32 "<<s_result<<",s31\n";
        }
    }
}

void RetInstruction::code(std::ostream& s)
{
    //s << "\t@";
    //printIR(s);

    if(ret_type != LLVMType::VOID){
        std::string s_val = get_op_str(ret_val,s);
        if(ret_type == LLVMType::I32 && ( s_val[1] != '0' || s_val[0] != 'r') ){
            s<<"\tmov r0,"<<s_val<<"\n";
        }
        if(ret_type == LLVMType::FLOAT32 && ( s_val[1] != '0' || s_val[0] != 's') ){
            s<<"\tvmov.f32 s0,"<<s_val<<"\n";
        }
    }

    r9_used_flag = 0;
    s30_used_flag = 0;

    if(abs(current_sp_offset) <= 127){
        s<<"\tadd sp,sp,#"<<abs(current_sp_offset)<<"\n";
    }
    else{
        // s<<"\tldr r9,="<<abs(current_sp_offset)<<"\n";
        code_ldr_imm("r9",abs(current_sp_offset),s);
        s<<"\tadd sp,sp,r9\n";
    }

    if(active_f32reglist.size() >= 1){
        s << "\tvpop.64 {";
        
        for(int i = 0; i + 1 < active_f32reglist.size(); ++i){
            s << "d" <<active_f32reglist[i]<<",";
        }
        s << "d" << active_f32reglist[active_f32reglist.size() - 1] << "}\n";
    }
    if(active_i32reglist.size() >= 1){
        s << "\tpop {";
        
        for(int i = 0; i + 1 < active_i32reglist.size(); ++i){
            s << "r" <<active_i32reglist[i]<<",";
        }
        s << "r" << active_i32reglist[active_i32reglist.size() - 1] << "}\n";
    }
    

    s<<"\tpop {fp,pc}\n";
}

void IcmpInstruction::code(std::ostream& s)
{
    //s << "\t@";
    //printIR(s);

    std::string s_op1,s_op2;
    
    s_op1 = get_op_str(op1,s);
    s_op2 = get_op_str(op2,s);

    s << "\tcmp "<<s_op1 << ","<<s_op2<<"\n";
    curr_cmp_cond = cond;

    r9_used_flag = 0;
    s30_used_flag = 0;
}

void BrCondInstruction::code(std::ostream& s){}

void BrUncondInstruction::code(std::ostream& s){}

void ZextInstruction::code(std::ostream& s)
{
    //s << "\t@";
    //printIR(s);

    if(float_cmp_flag){
        s << "\tvmrs APSR_nzcv, FPSCR\n";
        float_cmp_flag = 0;
    }
    
    std::string s_op;

    result_flag = 1;
    s_op = get_op_str(result,s);

    std::string s_cond = get_cond_str(curr_cmp_cond);
    std::string s_invcond = get_inv_cond_str(curr_cmp_cond);

    s << "\tite "<<s_cond<<"\n";
    s << "\tmov"<<s_cond<<" "<< s_op << ", #1\n"; 
    s << "\tmov"<<s_invcond<<" "<< s_op << ", #0\n";
    s << "\tuxtb " << s_op << ", "<< s_op <<"\n";

    r9_used_flag = 0;
    s30_used_flag = 0;
    result_flag = 0;

    if(result_in_memory_i32flag){
        code_str(1,result_in_memory_offset,s_op,s);
        result_in_memory_i32flag = 0;
    }
    else if(result_in_memory_f32flag){
        code_str(2,result_in_memory_offset,s_op,s);
        result_in_memory_f32flag = 0;
    }
}

void ArithmeticInstruction::code(std::ostream& s)
{
    //s << "\t@";
    //printIR(s);

    std::string s_op1,s_op2,s_result;
    
    s_op1 = get_op_str(op1,s);
    s_op2 = get_op_str(op2,s);

    // r9_used_flag = 0;
    result_flag = 1;
    s_result = get_op_str(result,s);

    if(opcode == ADD){
        s << "\tadd "<< s_result << "," << s_op1 << "," << s_op2 <<"\n";
    }
    else if(opcode == SUB){
        if(s_op1[0] == '#'){
            if(exec_cond == NONE){
                s << "\trsb "<< s_result << "," << s_op2 << "," << s_op1 <<"\n";
            }else if(exec_cond == EX_CS){
                s << "\tit cs\n";
                s << "\trsbcs "<< s_result << "," << s_op2 << "," << s_op1 <<"\n";
            }else if(exec_cond == EX_LT){
                s << "\tit lt\n";
                s << "\trsblt "<< s_result << "," << s_op2 << "," << s_op1 <<"\n";
            }else if(exec_cond == EX_PL){
                s << "\tit pl\n";
                s << "\trsbpl "<< s_result << "," << s_op2 << "," << s_op1 <<"\n";
            }else if(exec_cond == EX_S){
                s << "\trsbs "<< s_result << "," << s_op2 << "," << s_op1 <<"\n";
            }
        }
        else{
            s << "\tsub "<< s_result << "," << s_op1 << "," << s_op2 <<"\n";
        }
    }
    else if(opcode == MUL){
        s << "\tmul "<< s_result << "," << s_op1 << "," << s_op2 <<"\n";
    }
    else if(opcode == SMMUL){
        s << "\tsmmul "<< s_result << "," << s_op1 << "," << s_op2 <<"\n";
    }
    else if(opcode == SHL){
        s << "\tlsl "<< s_result << "," << s_op1 << "," << s_op2 <<"\n";
    }
    else if(opcode == ASHR){
        s << "\tasr "<< s_result << "," << s_op1 << "," << s_op2 <<"\n";
    }
    else if(opcode == LSHR){
        s << "\tlsr "<< s_result << "," << s_op1 << "," << s_op2 <<"\n";
    }
    else if(opcode == AND_b){
        s << "\tand "<< s_result << "," << s_op1 << "," << s_op2 <<"\n";
    }
    else if(opcode == FADD){
        s << "\tvadd.f32 "<< s_result << "," << s_op1 << "," << s_op2 <<"\n";
    }
    else if(opcode == FSUB){
        s << "\tvsub.f32 "<< s_result << "," << s_op1 << "," << s_op2 <<"\n";
    }
    else if(opcode == FMUL){
        s << "\tvmul.f32 "<< s_result << "," << s_op1 << "," << s_op2 <<"\n";
    }
    else if(opcode == FDIV){
        s << "\tvdiv.f32 "<< s_result << "," << s_op1 << "," << s_op2 <<"\n";
    }

    r9_used_flag = 0;
    s30_used_flag = 0;
    result_flag = 0;

    if(result_in_memory_i32flag){
        code_str(1,result_in_memory_offset,s_result,s,exec_cond);
        result_in_memory_i32flag = 0;
    }
    else if(result_in_memory_f32flag){
        code_str(2,result_in_memory_offset,s_result,s);
        result_in_memory_f32flag = 0;
    }
}

void pseudo_alg_shift_Instruction::code(std::ostream& s)
{
    //s << "\t@";
    //printIR(s);

    std::string s_op1,s_op2,s_result;
    
    s_op1 = get_op_str(op1,s);
    s_op2 = get_op_str(op2,s);

    result_flag = 1;
    s_result = get_op_str(result,s);

    if(opcode == ADD_SHIFT || opcode == ADD){
        s << "\tadd "<< s_result << "," << s_op1 << "," << s_op2;
    }
    else if(opcode == RSBS_SHIFT || opcode == RSBS){
        s << "\trsb "<< s_result << "," << s_op1 << "," << s_op2;
    }
    else if(opcode == SUB){
        s << "\tsub "<< s_result << "," << s_op1 << "," << s_op2;
    }
    else if(opcode == BICS){
        s << "\tbics "<< s_result << "," << s_op1 << "," << s_op2;
    }
    if(shift_bit != 0){
        if(is_a_shift){
            s << ",as";
        }else{
            s << ",ls";
        }
    }
    if(shift_bit > 0){
        s << "l #" << shift_bit;
    }
    else if(shift_bit < 0){
        s << "r #" << -shift_bit;
    }
    s << "\n";

    r9_used_flag = 0;
    s30_used_flag = 0;
    result_flag = 0;

    if(result_in_memory_i32flag){
        code_str(1,result_in_memory_offset,s_result,s);
        result_in_memory_i32flag = 0;
    }
    else if(result_in_memory_f32flag){
        code_str(2,result_in_memory_offset,s_result,s);
        result_in_memory_f32flag = 0;
    }
}

void SitofpInstruction::code(std::ostream& s)
{
    //s << "\t@";
    //printIR(s);

    std::string s_value,s_result;
    
    s_value = get_op_str(value,s);

    result_flag = 1;
    s_result = get_op_str(result,s);

    s << "\tvmov " << s_result << "," << s_value << "\n";
    s << "\tvcvt.f32.s32 " << s_result << ","<< s_result << "\n";

    r9_used_flag = 0;
    s30_used_flag = 0;
    result_flag = 0;

    if(result_in_memory_i32flag){
        code_str(1,result_in_memory_offset,s_result,s);
        result_in_memory_i32flag = 0;
    }
    else if(result_in_memory_f32flag){
        code_str(2,result_in_memory_offset,s_result,s);
        result_in_memory_f32flag = 0;
    }
}

void FptosiInstruction::code(std::ostream& s)
{
    //s << "\t@";
    //printIR(s);

    std::string s_value,s_result;
    
    s_value = get_op_str(value,s);

    result_flag = 1;
    s_result = get_op_str(result,s);

    
    s << "\tvcvt.s32.f32 " << "s31" << ","<< s_value << "\n";
    s << "\tvmov " << s_result << "," << "s31" << "\n";

    r9_used_flag = 0;
    s30_used_flag = 0;
    result_flag = 0;

    if(result_in_memory_i32flag){
        code_str(1,result_in_memory_offset,s_result,s);
        result_in_memory_i32flag = 0;
    }
    else if(result_in_memory_f32flag){
        code_str(2,result_in_memory_offset,s_result,s);
        result_in_memory_f32flag = 0;
    }
}

void FcmpInstruction::code(std::ostream& s)
{
    //s << "\t@";
    //printIR(s);

    std::string s_op1,s_op2;
    
    s_op1 = get_op_str(op1,s);
    s_op2 = get_op_str(op2,s);

    s << "\tvcmp.f32 "<<s_op1 << ","<<s_op2<<"\n";
    curr_cmp_cond = fcond2icond(cond);

    float_cmp_flag = 1;

    r9_used_flag = 0;
    s30_used_flag = 0;
}

void mov_instruction::code(std::ostream& s)
{
    std::string op_result,op_source;

    op_source = get_op_str(source,s);

    result_flag = 1;
    op_result = get_op_str(result,s);
    
    if(exec_cond == NONE){
        s << "\tmov " << op_result <<","<<op_source <<"\n";
    }
    else if(exec_cond == EX_CS){
        s << "\tit cs\n";
        s << "\tmovcs " << op_result <<","<<op_source <<"\n";
    }
    else if(exec_cond == EX_LT){
        s << "\tit lt\n";
        s << "\tmovlt " << op_result <<","<<op_source <<"\n";
    }
    else if(exec_cond == EX_PL){
        s << "\tit pl\n";
        s << "\tmovpl " << op_result <<","<<op_source <<"\n";
    }


    r9_used_flag = 0;
    s30_used_flag = 0;
    result_flag = 0;

    if(result_in_memory_i32flag){
        code_str(1,result_in_memory_offset,op_result,s);
        result_in_memory_i32flag = 0;
    }
    else if(result_in_memory_f32flag){
        code_str(2,result_in_memory_offset,op_result,s);
        result_in_memory_f32flag = 0;
    }
}

void vmov_instruction::code(std::ostream& s)
{
    std::string op_result,op_from;

    op_from = get_op_str(from,s);

    result_flag = 1;
    op_result = get_op_str(result,s);
    
    s << "\tvmov " << op_result <<","<<op_from<<"\n";

    r9_used_flag = 0;
    s30_used_flag = 0;
    result_flag = 0;
    
    if(result_in_memory_i32flag){
        code_str(1,result_in_memory_offset,op_result,s);
        result_in_memory_i32flag = 0;
    }
    else if(result_in_memory_f32flag){
        code_str(2,result_in_memory_offset,op_result,s);
        result_in_memory_f32flag = 0;
    }
}

void load_imm_instruction::code(std::ostream& s)
{
    std::string s_result;

    result_flag = 1;
    s_result = get_op_str(result,s);

    // s<<"\tldr "<<s_result<<", ="<<Byte<<"\n";
    code_ldr_imm(s_result,Byte,s);

    r9_used_flag = 0;
    s30_used_flag = 0;
    result_flag = 0;

    if(result_in_memory_i32flag){
        code_str(1,result_in_memory_offset,s_result,s);
        result_in_memory_i32flag = 0;
    }
    else if(result_in_memory_f32flag){
        code_str(2,result_in_memory_offset,s_result,s);
        result_in_memory_f32flag = 0;
    }
}

void get_addr_by_fp_offset_instruction::code(std::ostream& s)
{
    std::string offset_str = get_op_str(offset,s);

    result_flag = 1;
    std::string s_result = get_op_str(result,s);

    if(offset_str[0] == '#'){
        int val = ((ImmI32Operand*)offset)->GetIntImmVal();
        if(abs(val) >= 128){
            // s << "\tldr r10,="<<val<<"\n";
            code_ldr_imm("r10",val,s);
            s << "\tadd "<< s_result << ",fp,r10" <<"\n";
        }
        else{
            s << "\tadd "<< s_result << ",fp" << "," << offset_str <<"\n";
        }
    }
    else{
        s << "\tadd "<< s_result << ",fp" << "," << offset_str <<"\n";
    }

    r9_used_flag = 0;
    s30_used_flag = 0;
    result_flag = 0;

    if(result_in_memory_i32flag){
        code_str(1,result_in_memory_offset,s_result,s);
        result_in_memory_i32flag = 0;
    }
    else if(result_in_memory_f32flag){
        code_str(2,result_in_memory_offset,s_result,s);
        result_in_memory_f32flag = 0;
    }
}

void load_fp_instruction::code(std::ostream& s)
{
    std::string offset_str = get_op_str(offset,s);

    result_flag = 1;
    std::string s_result = get_op_str(result,s);
    

    if(s_result[0] == 'r'){
        if(offset_str[0] == '#' && offset_str[1] != '-'){
            int val = ((ImmI32Operand*)offset)->GetIntImmVal() + arg_offset;
            code_ldr(1,val,s_result,s);
        }
        else{
            if(offset_str[0] == '#'){
                code_ldr(1,((ImmI32Operand*)offset)->GetIntImmVal(),s_result,s);
            }
            else{
                s<<"\tldr " << s_result <<",[fp,"<<offset_str<<"]\n";
            }
        }
    }
    if(s_result[0] == 's'){
        if(offset_str[0] == '#' && offset_str[1] != '-'){
            int val = ((ImmI32Operand*)offset)->GetIntImmVal() + arg_offset;
            code_ldr(2,val,s_result,s);
        }
        else{
            if(offset_str[0] == '#'){
                code_ldr(2,((ImmI32Operand*)offset)->GetIntImmVal(),s_result,s);
            }
            else{
                global_ins_offset+=4;
                s<<"\tadd "<<offset_str<<",fp,"<<offset_str<<"\n";
                s<<"\tvldr.32 " << s_result <<",["<<offset_str<<"]\n";
            }
        }
    }

    r9_used_flag = 0;
    s30_used_flag = 0;
    result_flag = 0;

    if(result_in_memory_i32flag){
        code_str(1,result_in_memory_offset,s_result,s);
        result_in_memory_i32flag = 0;
    }
    else if(result_in_memory_f32flag){
        code_str(2,result_in_memory_offset,s_result,s);
        result_in_memory_f32flag = 0;
    }
}

void store_fp_instruction::code(std::ostream& s)
{
    std::string s_value = get_op_str(str_val,s);
    std::string offset_str = get_op_str(offset,s);

    if(s_value[0] == 'r' ){
        if(offset_str[0] == '#'){
            code_str(1,((ImmI32Operand*)offset)->GetIntImmVal(),s_value,s);
        }
        else{
            s<<"\tstr " << s_value <<",[fp,"<<offset_str<<"]\n";
        }
    }
    if(s_value[0] == 's'){
        if(offset_str[0] == '#'){
            code_str(2,((ImmI32Operand*)offset)->GetIntImmVal(),s_value,s);
        }
        else{
            global_ins_offset+=4;
            s<<"\tadd "<<offset_str<<",fp,"<<offset_str<<"\n";
            s<<"\tvstr.32 " << s_value <<",[fp,"<<offset_str<<"]\n";
        }
    }

    r9_used_flag = 0;
    s30_used_flag = 0;
}

void pseudo_load_label_instruction::code(std::ostream& s)
{
    std::string s_result,s_value;

    s_value = get_op_str(from,s);

    result_flag = 1;
    s_result = get_op_str(result,s);
    
    
    code_ldr_global(s_result,s_value,s);
    //s<<"\tldr "<<s_result<<",="<<s_value<<"\n";
    r9_used_flag = 0;
    s30_used_flag = 0;
    result_flag = 0;

    if(result_in_memory_i32flag){
        code_str(1,result_in_memory_offset,s_result,s);
        result_in_memory_i32flag = 0;
    }
    else if(result_in_memory_f32flag){
        code_str(2,result_in_memory_offset,s_result,s);
        result_in_memory_f32flag = 0;
    }
}

void it_instruction::code(std::ostream& s){
    if(exec_cond == NONE){
        s<<"\tit "<<"NONE\n";
    }else if(exec_cond == EX_CS){
        s<<"\tit "<<"cs\n";
    }else if(exec_cond == EX_LT){
        s<<"\tit "<<"lt\n";
    }else if(exec_cond == EX_PL){
        s<<"\tit "<<"pl\n";
    }
}