#include "llvm_cfg.h"
#include "llvm_ir.h"
#include "Instruction.h"

extern std::map<std::string,ArrayVal> global_const_map;


void CFG::global_const_replace()
{
    for(auto b:*block){
        auto BB = b.second;
        for(auto &Ins:BB->Instruction_list){
            if(Ins->get_opcode() != LOAD){continue;}
            auto I = (load_Instruction*)Ins;
            if(I->getPointer()->getOperandType() != basic_operand::GLOBAL){continue;}
            auto pointer = (global_operand*)I->getPointer();
            if(global_const_map.find(pointer->getName()) != global_const_map.end()){
                ArrayVal val =  global_const_map[pointer->getName()];
                if(val.type == 1){
                    Ins = new alg_Instruction(ADD,I32,new imm_i32_operand(0),new imm_i32_operand(val.IntInitVals[0]),I->get_resultreg());
                }
                else if(val.type == 2){
                    Ins = new alg_Instruction(FADD,FLOAT32,new imm_f32_operand(0),new imm_f32_operand(val.FloatInitVals[0]),I->get_resultreg());
                }
            }
        }
    }
}

void CFG::build_SSA_Graph(){
    regresult_ins_map.clear();
    SSA_G.clear();
    for(auto formal_reg:func_ins->formals_reg){
        regresult_ins_map[((reg_operand*)formal_reg)->getRegNo()] = func_ins;
    }

    std::stack<int> unscanedBlockID;
    std::map<int,int>block_visited;
    unscanedBlockID.push(0);
    while(!unscanedBlockID.empty()){
        int cur_BlockID = unscanedBlockID.top();
        block_visited[cur_BlockID] = 1;
        unscanedBlockID.pop();
        for(auto instruction:(*block)[cur_BlockID]->Instruction_list){
            if(instruction->get_resultregno() != -1){
                regresult_ins_map[instruction->get_resultregno()] = instruction;
            }
            if(instruction->get_opcode()==BR_UNCOND){
                int destLabelNo = ((label_operand*)(((br_uncond_instruction*)instruction)->getDestLabel()))->getLabelNo();
                
                if(block_visited.find(destLabelNo)==block_visited.end()){
                    unscanedBlockID.push(destLabelNo);
                }
            }else if(instruction->get_opcode()==BR_COND){
                int trueDestLabelNo = ((label_operand*)(((br_cond_instruction*)instruction)->getTrueLabel()))->getLabelNo();
                int falseDestLabelNo = ((label_operand*)(((br_cond_instruction*)instruction)->getFalseLabel()))->getLabelNo();
                if(block_visited.find(trueDestLabelNo)==block_visited.end()){
                    unscanedBlockID.push(trueDestLabelNo);
                }
                if(block_visited.find(falseDestLabelNo)==block_visited.end()){
                    unscanedBlockID.push(falseDestLabelNo);
                }
            }
        }
    }
    block_visited.clear();
    unscanedBlockID.push(0);
    std::map<Instruction,int> used_formal;
    while(!unscanedBlockID.empty()){
        int cur_BlockID = unscanedBlockID.top();
        block_visited[cur_BlockID] = 1;
        unscanedBlockID.pop();
        for(auto instruction:(*block)[cur_BlockID]->Instruction_list){
            for(auto op:instruction->get_nonresult_operands()){
                if(op->getOperandType() == basic_operand::REG){
                    auto reg_op = (reg_operand*)op;
                    auto reg_no = reg_op->getRegNo();
                    auto reg_ins = regresult_ins_map[reg_no];
                    if(reg_ins != func_ins){
                        SSA_G[reg_ins].push_back(instruction);
                    }else{
                        if(used_formal[instruction] == 0){
                            used_formal[instruction] = 1;
                            SSA_G[reg_ins].push_back(instruction);
                        }
                    }
                }
            }
            if(instruction->get_opcode()==BR_UNCOND){
                int destLabelNo = ((label_operand*)(((br_uncond_instruction*)instruction)->getDestLabel()))->getLabelNo();
                
                if(block_visited.find(destLabelNo)==block_visited.end()){
                    unscanedBlockID.push(destLabelNo);
                }
            }
            else if(instruction->get_opcode()==BR_COND){
                int trueDestLabelNo = ((label_operand*)(((br_cond_instruction*)instruction)->getTrueLabel()))->getLabelNo();
                int falseDestLabelNo = ((label_operand*)(((br_cond_instruction*)instruction)->getFalseLabel()))->getLabelNo();
                if(block_visited.find(trueDestLabelNo)==block_visited.end()){
                    unscanedBlockID.push(trueDestLabelNo);
                }
                if(block_visited.find(falseDestLabelNo)==block_visited.end()){
                    unscanedBlockID.push(falseDestLabelNo);
                }
            }
        }
    }
}

void CFG::set_ins_block_ID(){
    func_ins->setBlockID(0);
    std::stack<int> unscanedBlockID;
    std::map<int,int>block_visited;
    unscanedBlockID.push(0);
    while(!unscanedBlockID.empty()){
        int cur_BlockID = unscanedBlockID.top();
        block_visited[cur_BlockID] = 1;
        unscanedBlockID.pop();
        for(auto instruction:(*block)[cur_BlockID]->Instruction_list){
            instruction->setBlockID(cur_BlockID);
            if(instruction->get_opcode()==BR_UNCOND){
                int destLabelNo = ((label_operand*)(((br_uncond_instruction*)instruction)->getDestLabel()))->getLabelNo();
                
                if(block_visited.find(destLabelNo)==block_visited.end()){
                    unscanedBlockID.push(destLabelNo);
                }
            }
            else if(instruction->get_opcode()==BR_COND){
                int trueDestLabelNo = ((label_operand*)(((br_cond_instruction*)instruction)->getTrueLabel()))->getLabelNo();
                int falseDestLabelNo = ((label_operand*)(((br_cond_instruction*)instruction)->getFalseLabel()))->getLabelNo();
                if(block_visited.find(trueDestLabelNo)==block_visited.end()){
                    unscanedBlockID.push(trueDestLabelNo);
                }
                if(block_visited.find(falseDestLabelNo)==block_visited.end()){
                    unscanedBlockID.push(falseDestLabelNo);
                }
            }
        }
    }
}

void LLVM_IR::SCCP()
{
    for(auto node:llvm_cfg){
        node.second->global_const_replace();
        node.second->set_ins_block_ID();
        node.second->build_SSA_Graph();
        node.second->SCCP();
    }
}

std::pair<int,int> get_operand_lattice(operand val,std::map<int,Instruction>& regresult_map)
{
    if(val->getOperandType() == val->IMMI32){
        return {1,((imm_i32_operand*)val)->getIntImmVal()};
    }
    if(val->getOperandType() == val->IMMF32){
        return {2,0};
    }
    if(val->getOperandType() == val->REG){
        int regno = ((reg_operand*)val)->getRegNo();
        auto regno_defIns = regresult_map[regno];
        if(regno_defIns->is_funcdef()){
            return {2,0};
        }
        return {regno_defIns->lattice_status,regno_defIns->lattice_val};
    }
    return {NULL,NULL};
}

int load_Instruction::const_propagate(std::map<int,Instruction>& regresult_map)
{
    if(this->lattice_status == 2){return 0;}
    lattice_status = 2;
    return 1;
}

int store_Instruction::const_propagate(std::map<int,Instruction>& regresult_map)
{
    return 0;
}

int alg_Instruction::const_propagate(std::map<int,Instruction>& regresult_map)
{
    auto op1_lattice = get_operand_lattice(op1,regresult_map);
    auto op2_lattice = get_operand_lattice(op2,regresult_map);
    int op1_lattice_status = op1_lattice.first;
    int op1_lattice_val = op1_lattice.second;

    int op2_lattice_status = op2_lattice.first;
    int op2_lattice_val = op2_lattice.second;

    if(this->lattice_status == 2){return 0;}

    if(op1_lattice_status == 2 || op2_lattice_status == 2){
        this->lattice_status = 2;
        return 1;
    }

    if(this->lattice_status == 1){return 0;}

    if(opcode == ADD){
        this->lattice_status = 1;
        this->lattice_val = op1_lattice_val + op2_lattice_val;
    }
    if(opcode == SUB){
        this->lattice_status = 1;
        this->lattice_val = op1_lattice_val - op2_lattice_val;
    }
    if(opcode == MUL){
        this->lattice_status = 1;
        this->lattice_val = op1_lattice_val * op2_lattice_val;
    }
    if(opcode == DIV){
        this->lattice_status = 1;
        this->lattice_val = op1_lattice_val / op2_lattice_val;
    }
    if(opcode == MOD){
        this->lattice_status = 1;
        this->lattice_val = op1_lattice_val % op2_lattice_val;
    }
    if(opcode == FADD || opcode == FSUB || opcode == FMUL || opcode == FDIV){
        this->lattice_status = 2;
    }
    return 1;
}

int icmp_Instruction::const_propagate(std::map<int,Instruction>& regresult_map)
{
    auto op1_lattice = get_operand_lattice(op1,regresult_map);
    auto op2_lattice = get_operand_lattice(op2,regresult_map);
    int op1_lattice_status = op1_lattice.first;
    int op1_lattice_val = op1_lattice.second;

    int op2_lattice_status = op2_lattice.first;
    int op2_lattice_val = op2_lattice.second;

    if(this->lattice_status == 2){return 0;}

    if(op1_lattice_status == 2 || op2_lattice_status == 2){
        this->lattice_status = 2;
        return 1;
    }   

    if(this->lattice_status == 1){return 0;}

    if(cond == eq){
        this->lattice_status = 1;
        this->lattice_val = op1_lattice_val == op2_lattice_val;
    }
    if(cond == ne){
        this->lattice_status = 1;
        this->lattice_val = op1_lattice_val != op2_lattice_val;
    }
    if(cond == sgt){
        this->lattice_status = 1;
        this->lattice_val = op1_lattice_val > op2_lattice_val;
    }
    if(cond == sge){
        this->lattice_status = 1;
        this->lattice_val = op1_lattice_val >= op2_lattice_val;
    }
    if(cond == slt){
        this->lattice_status = 1;
        this->lattice_val = op1_lattice_val < op2_lattice_val;
    }
    if(cond == sle){
        this->lattice_status = 1;
        this->lattice_val = op1_lattice_val <= op2_lattice_val;
    }
    return 1;
}

int fcmp_Instruction::const_propagate(std::map<int,Instruction>& regresult_map)
{
    if(this->lattice_status == 2){return 0;}
    this->lattice_status = 2;
    return 1;
}

int call_instruction::const_propagate(std::map<int,Instruction>& regresult_map)
{
    if(this->lattice_status == 2){return 0;}
    this->lattice_status = 2;
    return 1;
}

int get_elementptr_instruction::const_propagate(std::map<int,Instruction>& regresult_map)
{
    if(this->lattice_status == 2){return 0;}
    this->lattice_status = 2;
    return 1;
}

int fptosi_instruction::const_propagate(std::map<int,Instruction>& regresult_map)
{
    if(this->lattice_status == 2){return 0;}
    this->lattice_status = 2;
    return 1;
}

int sitofp_instruction::const_propagate(std::map<int,Instruction>& regresult_map)
{
    if(this->lattice_status == 2){return 0;}
    this->lattice_status = 2;
    return 1;
}

int zext_instruction::const_propagate(std::map<int,Instruction>& regresult_map)
{
    auto op_lattice = get_operand_lattice(value,regresult_map);
    int op_lattice_status = op_lattice.first;
    int op_lattice_val = op_lattice.second;

    if(this->lattice_status == 2){return 0;}
    
    if(op_lattice_status == 2){
        this->lattice_status = 2;
        return 1;
    }

    if(this->lattice_status == 1){return 0;}

    this->lattice_status = 1;
    this->lattice_val = op_lattice_val;

    return 1;
}

int update_lattice_status(Instruction I,int pre_lattice_status,int pre_lattice_val)
{
    if(I->lattice_status == 0){
        I->lattice_status = pre_lattice_status;
        I->lattice_val = pre_lattice_val;
        return 1;
    }
    if(I->lattice_status == 1 && pre_lattice_status == 2){
        I->lattice_status = 2;
        return 1;
    }
    if(I->lattice_status == 1 && pre_lattice_status == 1){
        if(I->lattice_val != pre_lattice_val){
            I->lattice_status = 2;
            return 1;
        }
    }

    return 0;
}


void visit_operation
(Instruction I,
std::set<Instruction>& SSAWorklist,
std::map<std::pair<int,int>,int>& CFGedgeExec,
std::set<std::pair<int,int> >& CFGWorklist,
std::map<int,Instruction>& regresult_map,
std::map<Instruction,std::vector<Instruction> >& SSA_G
)
{
    //Combine the data-flow information from the node’s operands where the corresponding control-flow edge is executable.
    if(I->get_opcode() == PHI){
        auto Ins = (phi_instruction*)I;
        int change = 0;
        for(auto phi_node:Ins->getPhiList()){
            int pre = ((label_operand*)phi_node.first)->getLabelNo();
            operand val = phi_node.second;
            auto pre_lattice = get_operand_lattice(val,regresult_map);
            int pre_lattice_status = pre_lattice.first;
            int pre_lattice_val = pre_lattice.second;
            if(CFGedgeExec.find({pre,I->getBlockID()}) != CFGedgeExec.end()){//where the corresponding control-flow edge is executable.
                change |= update_lattice_status(I,pre_lattice_status,pre_lattice_val);
            }
        }
        //Whenever the data-flow information of an operation changes, 
        //append all outgoing SSA graph edges of the operation to the SSAWorkList.
        if(change){
            for(auto targetIns:SSA_G[I]){
                SSAWorklist.insert(targetIns);
            }
        }
    }
    //Examine the branch’s condition(s) using the data-flow information of its operands;
    else if(I->get_opcode() == BR_COND){
        auto Ins = (br_cond_instruction*)I;
        auto op_lattice = get_operand_lattice(Ins->getCond(),regresult_map);
        //Determine all outgoing edges of the branch’s CFG node whose condition is potentially satisfied; 
        //Append the CFG edges that were non-executable to the CFGWorkList.
        if(op_lattice.first == 1){
            int target = 0;
            if(op_lattice.second == 0){
                target = ((label_operand*)Ins->getFalseLabel())->getLabelNo();
            }
            else{
                target = ((label_operand*)Ins->getTrueLabel())->getLabelNo();
            }

            if(CFGedgeExec.find({I->getBlockID(),target}) == CFGedgeExec.end()){
                CFGWorklist.insert({I->getBlockID(),target});
            }
        }
        if(op_lattice.first == 2){
            int target1 = ((label_operand*)Ins->getFalseLabel())->getLabelNo();
            int target2 = ((label_operand*)Ins->getTrueLabel())->getLabelNo();

            if(CFGedgeExec.find({I->getBlockID(),target1}) == CFGedgeExec.end()){
                CFGWorklist.insert({I->getBlockID(),target1});
            }

            if(CFGedgeExec.find({I->getBlockID(),target2}) == CFGedgeExec.end()){
                CFGWorklist.insert({I->getBlockID(),target2});
            }
        }
    }
    //other Instructions
    //Update the operation’s data-flow information by applying its transfer function.
    else{
        int change = I->const_propagate(regresult_map);
        //Whenever the data-flow information of an operation changes, 
        //append all outgoing SSA graph edges of the operation to the SSAWorkList.
        if(change){
            for(auto targetIns:SSA_G[I]){
                SSAWorklist.insert(targetIns);
            }
        }
    }
}


void CFG::SCCP()
{
    for(auto b:*block){
        for(auto I:b.second->Instruction_list){
            I->lattice_status = 0;
            I->lattice_val = 0;
        }
    }
    std::map<std::pair<int,int>,int> CFGedgeExec;
    std::set<std::pair<int,int> >CFGWorklist;
    std::set<Instruction> SSAWorklist;
    std::vector<int> Bvis;
    Bvis.resize(max_label + 1);

    CFGWorklist.insert({-1,0});
    while(!SSAWorklist.empty() || !CFGWorklist.empty()){
        if(!SSAWorklist.empty()){//SSAEdge
            Instruction I = *SSAWorklist.begin();
            SSAWorklist.erase(I);
            //When the target operation is a phi-operation visit that phi-operation
            if(I->get_opcode() == PHI){
                visit_operation(I,SSAWorklist,CFGedgeExec,CFGWorklist,this->regresult_ins_map,this->SSA_G);
                continue;
            }

            int I_Bid = I->getBlockID();
            //For other operations, examine the executable flag of the incoming edges of the respective CFG node; 
            //Visit the operation if any of the edges is executable.
            if(I_Bid == 0){visit_operation(I,SSAWorklist,CFGedgeExec,CFGWorklist,this->regresult_ins_map,this->SSA_G);}
            else{
                for(auto B:invG[I_Bid]){
                    if(CFGedgeExec.find({B->block_id,I_Bid}) != CFGedgeExec.end()){
                        visit_operation(I,SSAWorklist,CFGedgeExec,CFGWorklist,this->regresult_ins_map,this->SSA_G);
                        break;
                    }
                }
            }
        }
        else{//CFGEdge
            auto CFGEdge = *CFGWorklist.begin();
            CFGWorklist.erase(CFGEdge);
            CFGedgeExec[CFGEdge] = 1;//mark the edge as exectuable

            int target = CFGEdge.second;
            auto B = (*block)[target];

            int firstvis_tag = 0;
            if(!Bvis[target]){
                firstvis_tag = 1;
                Bvis[target] = 1;
            }

            if(B->Instruction_list.size() == 0){continue;}
    
            for(auto I:B->Instruction_list){
                // Visit every φ-operation associated with the target node
                if(I->get_opcode() == PHI){
                    visit_operation(I,SSAWorklist,CFGedgeExec,CFGWorklist,this->regresult_ins_map,this->SSA_G);
                }
                else{
                    if(!firstvis_tag){break;}//If the target node was reached the first time via the CFGWorkList, visit all its operations
                    else{visit_operation(I,SSAWorklist,CFGedgeExec,CFGWorklist,this->regresult_ins_map,this->SSA_G);}
                }
            }
            // If the target node has a single, non-executable outgoing edge, append that edge to the CFGWorkList.
            auto endI = *(B->Instruction_list.end() - 1);
            if(endI->get_opcode() == BR_UNCOND){
                auto Ins = (br_uncond_instruction*)endI;
                auto Edge = std::pair<int,int>{target,Ins->get_target()};
                if(CFGedgeExec.find(Edge) == CFGedgeExec.end()){
                    CFGWorklist.insert(Edge);
                }
            }
        }
    }
    // std::cout<<func_ins->get_Func_name()<<"\n";
    // for(auto [l0,tag]:CFGedgeExec){
    //     std::cout<<l0.first<<" "<<l0.second<<"\n";
    // }
    // for(auto B:(*block)){
    //     for(auto I:B.second->Instruction_list){
    //         I->printIR(std::cout);
    //         std::cout<<I->lattice_status<<" "<<I->lattice_val<<"\n";
    //     }
    // }
    // std::cout<<"\n\n";
    replace_reg_to_const();
    ConstIns_elimate();
    dead_block_elimate_sccp(CFGedgeExec);
}

void CFG::replace_reg_to_const(){
    // func_ins->setBlockID(0);
    std::stack<int> unscanedBlockID;
    std::map<int,int>block_visited;
    unscanedBlockID.push(0);
    while(!unscanedBlockID.empty()){
        int cur_BlockID = unscanedBlockID.top();
        block_visited[cur_BlockID] = 1;
        unscanedBlockID.pop();
        for(auto instruction:(*block)[cur_BlockID]->Instruction_list){
            // instruction->setBlockID(cur_BlockID);
            auto use_regs = instruction->get_nonresult_operands();
            for(auto& op:use_regs){
                if(op->getOperandType() == basic_operand::REG){
                    auto op_produce_ins = regresult_ins_map[((reg_operand*)op)->getRegNo()];
                    if(op_produce_ins->lattice_status == 1){// 1 is CONST
                        op = new imm_i32_operand(op_produce_ins->lattice_val);
                    }
                }
            }
            instruction->set_nonresult_operands(use_regs);
            if(instruction->get_opcode()==BR_UNCOND){
                int destLabelNo = ((label_operand*)(((br_uncond_instruction*)instruction)->getDestLabel()))->getLabelNo();
                
                if(block_visited.find(destLabelNo)==block_visited.end()){
                    unscanedBlockID.push(destLabelNo);
                }
            }else if(instruction->get_opcode()==BR_COND){
                int trueDestLabelNo = ((label_operand*)(((br_cond_instruction*)instruction)->getTrueLabel()))->getLabelNo();
                int falseDestLabelNo = ((label_operand*)(((br_cond_instruction*)instruction)->getFalseLabel()))->getLabelNo();
                if(block_visited.find(trueDestLabelNo)==block_visited.end()){
                    unscanedBlockID.push(trueDestLabelNo);
                }
                if(block_visited.find(falseDestLabelNo)==block_visited.end()){
                    unscanedBlockID.push(falseDestLabelNo);
                }
            }
        }
    }
}

void CFG::dead_block_elimate_sccp(std::map<std::pair<int,int>,int>& CFGedgeExec)
{
    std::map<int,int> block_ref_cnt;
    block_ref_cnt[0] = 1;
    for(auto from_block_pair:*block){
        auto from_block_id = from_block_pair.first;
        auto from_block = from_block_pair.second;
        for(auto arc:G[from_block_id]){
            auto dest_block = arc;
            auto dest_block_id = dest_block->block_id;
            auto execute = CFGedgeExec[std::make_pair(from_block_id,dest_block_id)];
            if(execute == 0){
                // std::cerr<<"from:"<<from_block_id<<" to:"<<dest_block_id<<"\n";
                auto& from_block = (*block)[from_block_id];
                auto& dest_block = (*block)[dest_block_id];
                auto& from_block_instrlist = from_block->Instruction_list;
                auto& last_br = from_block_instrlist[from_block_instrlist.size()-1];
                // delete br
                if(last_br->get_opcode() == BR_COND){
                    auto br_cond = (br_cond_instruction*)last_br;
                    auto br_true = (label_operand*)br_cond->getTrueLabel();
                    auto br_false = (label_operand*)br_cond->getFalseLabel();
                    auto br_uncond_label = br_true;
                    if(br_true->getLabelNo() == dest_block_id){
                        // std::cerr<<"bb\n";
                        br_uncond_label = br_false;
                    }else if(br_false->getLabelNo() == dest_block_id){
                        br_uncond_label = br_true;
                    }else{
                        std::cerr<<"deleting from:br_cond (no expected dest)\n";
                    }
                    last_br = new br_uncond_instruction(br_uncond_label);
                    last_br->setBlockID(from_block_id);
                }else if(last_br->get_opcode() == BR_UNCOND){
                    // std::cerr<<"from:"<<from_block_id<<" to:"<<dest_block_id<<"\n";
                    // std::cerr<<"deleting from:br_uncond\n";
                }else if(last_br->get_opcode() == RET){
                    std::cerr<<"deleting from:RET\n";
                }

                for(auto& target : dest_block->Instruction_list){
                    if(target->get_opcode()!=PHI){
                        break;
                    }
                    auto target_phi = (phi_instruction*)target;
                    auto phi_list = target_phi->getPhiList();
                    std::queue<operand>phi_label_del;
                    for(auto label_val_pair : phi_list){
                        auto label = (label_operand*)label_val_pair.first;
                        if(label->getLabelNo() == from_block_id){
                            phi_label_del.push(label);
                        }
                    }
                    while(!phi_label_del.empty()){
                        auto label_to_del = phi_label_del.front();
                        phi_list.erase(label_to_del);
                        phi_label_del.pop();
                    }
                    auto DTType = target_phi->getDataType();
                    auto result_op = target_phi->getResultOp();
                    target = new phi_instruction(DTType,result_op,phi_list);
                    target->setBlockID(dest_block_id);
                }
            }else{
                // std::cerr<<"from:"<<from_block_id<<" to:"<<dest_block_id<<"( do )\n";
                block_ref_cnt[dest_block_id] = block_ref_cnt[dest_block_id] + 1;
            }
        }
    }
    std::queue<int> del_queue;
    for(auto block_pair:*block){
        if(block_ref_cnt[block_pair.first] == 0){
            del_queue.push(block_pair.first);
        }
    }
    while(!del_queue.empty()){
        auto del_id = del_queue.front();
        del_queue.pop();
        delete (*block)[del_id];
        block->erase(del_id);
    }
    // Rebuild G invG domTree SSAG
    build_CFG();
    build_dominator_tree();
    build_SSA_Graph();
}

void CFG::ConstIns_elimate()
{
    for(auto B : *block){
        auto b = B.second;
        auto tmp_ins_list = b->Instruction_list;
        b->Instruction_list.clear();
        for(auto I:tmp_ins_list){
            if(I->lattice_status != 1){
                b->push_Ins(1,I);
            }
        }
    }
}