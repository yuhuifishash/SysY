#include "llvm_cfg.h"
#include "llvm_ir.h"
#include "Instruction.h"
#include "lattice.h"

extern std::map<std::string,VarAttribute> GlobalConstMap;

static std::map<Instruction,ConstLattice> const_lattice_map;

void CFG::global_const_replace()
{
    for(auto b:*block){
        auto BB = b.second;
        for(auto &Ins:BB->Instruction_list){
            if(Ins->GetOpcode() != LOAD){continue;}
            auto I = (LoadInstruction*)Ins;
            if(I->GetPointer()->GetOperandType() != BasicOperand::GLOBAL){continue;}
            auto pointer = (global_operand*)I->GetPointer();
            if(GlobalConstMap.find(pointer->getName()) != GlobalConstMap.end()){
                VarAttribute val =  GlobalConstMap[pointer->getName()];
                if(val.type == 1){
                    Ins = new ArithmeticInstruction(ADD,I32,new ImmI32Operand(0),new ImmI32Operand(val.IntInitVals[0]),I->GetResultReg());
                }
                else if(val.type == 2){
                    Ins = new ArithmeticInstruction(FADD,FLOAT32,new ImmF32Operand(0),new ImmF32Operand(val.FloatInitVals[0]),I->GetResultReg());
                }
            }
        }
    }
}

void CFG::build_SSA_Graph(){
    regresult_ins_map.clear();
    SSA_G.clear();
    for(auto formal_reg:func_ins->formals_reg){
        regresult_ins_map[((RegOperand*)formal_reg)->GetRegNo()] = func_ins;
    }

    std::stack<int> unscanedBlockID;
    std::map<int,int>block_visited;
    unscanedBlockID.push(0);
    while(!unscanedBlockID.empty()){
        int cur_BlockID = unscanedBlockID.top();
        block_visited[cur_BlockID] = 1;
        unscanedBlockID.pop();
        for(auto instruction:(*block)[cur_BlockID]->Instruction_list){
            if(instruction->GetResultRegNo() != -1){
                regresult_ins_map[instruction->GetResultRegNo()] = instruction;
            }
            if(instruction->GetOpcode()==BR_UNCOND){
                int destLabelNo = ((LabelOperand*)(((BrUncondInstruction*)instruction)->getDestLabel()))->GetLabelNo();
                
                if(block_visited.find(destLabelNo)==block_visited.end()){
                    unscanedBlockID.push(destLabelNo);
                }
            }else if(instruction->GetOpcode()==BR_COND){
                int trueDestLabelNo = ((LabelOperand*)(((BrCondInstruction*)instruction)->getTrueLabel()))->GetLabelNo();
                int falseDestLabelNo = ((LabelOperand*)(((BrCondInstruction*)instruction)->getFalseLabel()))->GetLabelNo();
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
            for(auto op:instruction->GetNonResultOperands()){
                if(op->GetOperandType() == BasicOperand::REG){
                    auto reg_op = (RegOperand*)op;
                    auto reg_no = reg_op->GetRegNo();
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
            if(instruction->GetOpcode()==BR_UNCOND){
                int destLabelNo = ((LabelOperand*)(((BrUncondInstruction*)instruction)->getDestLabel()))->GetLabelNo();
                
                if(block_visited.find(destLabelNo)==block_visited.end()){
                    unscanedBlockID.push(destLabelNo);
                }
            }
            else if(instruction->GetOpcode()==BR_COND){
                int trueDestLabelNo = ((LabelOperand*)(((BrCondInstruction*)instruction)->getTrueLabel()))->GetLabelNo();
                int falseDestLabelNo = ((LabelOperand*)(((BrCondInstruction*)instruction)->getFalseLabel()))->GetLabelNo();
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
    func_ins->SetBlockID(0);
    std::stack<int> unscanedBlockID;
    std::map<int,int>block_visited;
    unscanedBlockID.push(0);
    while(!unscanedBlockID.empty()){
        int cur_BlockID = unscanedBlockID.top();
        block_visited[cur_BlockID] = 1;
        unscanedBlockID.pop();
        for(auto instruction:(*block)[cur_BlockID]->Instruction_list){
            instruction->SetBlockID(cur_BlockID);
            if(instruction->GetOpcode()==BR_UNCOND){
                int destLabelNo = ((LabelOperand*)(((BrUncondInstruction*)instruction)->getDestLabel()))->GetLabelNo();
                
                if(block_visited.find(destLabelNo)==block_visited.end()){
                    unscanedBlockID.push(destLabelNo);
                }
            }
            else if(instruction->GetOpcode()==BR_COND){
                int trueDestLabelNo = ((LabelOperand*)(((BrCondInstruction*)instruction)->getTrueLabel()))->GetLabelNo();
                int falseDestLabelNo = ((LabelOperand*)(((BrCondInstruction*)instruction)->getFalseLabel()))->GetLabelNo();
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

void LLVMIR::SCCP()
{
    for(auto node:llvm_cfg){
        node.second->global_const_replace();
        node.second->set_ins_block_ID();
        node.second->build_SSA_Graph();
        node.second->SCCP();
    }
}

ConstLattice get_operand_lattice(Operand val,std::map<int,Instruction>& regresult_map)
{
    if(val->GetOperandType() == val->IMMI32){
        return ConstLattice(ConstLattice::CONST,ConstLattice::I32,((ImmI32Operand*)val)->GetIntImmVal());
    }
    if(val->GetOperandType() == val->IMMF32){
        return ConstLattice(ConstLattice::CONST,ConstLattice::FLOAT,((ImmF32Operand*)val)->GetFloatVal());;
    }
    if(val->GetOperandType() == val->REG){
        int regno = ((RegOperand*)val)->GetRegNo();
        auto regno_defIns = regresult_map[regno];
        if(regno_defIns->IsFuncDef()){
            return ConstLattice(ConstLattice::VAR,ConstLattice::NONE,0);
        }
        return const_lattice_map[regno_defIns];
    }
    return ConstLattice(ConstLattice::UNINIT,ConstLattice::NONE,0);
}

int LoadInstruction::ConstPropagate(std::map<int,Instruction>& regresult_map)
{
    auto& lattice = const_lattice_map[this];
    if(lattice.status == lattice.VAR){return 0;}
    lattice.status = lattice.VAR;
    return 1;
}

int StoreInstruction::ConstPropagate(std::map<int,Instruction>& regresult_map)
{
    return 0;
}

int ArithmeticInstruction::ConstPropagate(std::map<int,Instruction>& regresult_map)
{
    auto& lattice = const_lattice_map[this];

    auto op1_lattice = get_operand_lattice(op1,regresult_map);
    auto op2_lattice = get_operand_lattice(op2,regresult_map);

    auto op1_lattice_status = op1_lattice.status;
    auto op2_lattice_status = op2_lattice.status;

    int op1_lattice_i32val = op1_lattice.vals.I32Val;
    int op2_lattice_i32val = op2_lattice.vals.I32Val;

    if(lattice.status == ConstLattice::VAR){return 0;}

    if(op1_lattice_status == ConstLattice::VAR || op2_lattice_status == ConstLattice::VAR){
        lattice.status = ConstLattice::VAR;
        return 1;
    }

    if(lattice.status == ConstLattice::CONST){return 0;}

    if(opcode == ADD){
        lattice.status = ConstLattice::CONST;
        lattice.vals.I32Val = op1_lattice_i32val + op2_lattice_i32val;
        lattice.val_type = ConstLattice::I32;
    }
    else if(opcode == SUB){
        lattice.status = ConstLattice::CONST;
        lattice.vals.I32Val = op1_lattice_i32val - op2_lattice_i32val;
        lattice.val_type = ConstLattice::I32;
    }
    else if(opcode == MUL){
        lattice.status = ConstLattice::CONST;
        lattice.vals.I32Val = op1_lattice_i32val * op2_lattice_i32val;
        lattice.val_type = ConstLattice::I32;
    }
    else if(opcode == DIV){
        lattice.status = ConstLattice::CONST;
        lattice.vals.I32Val = op1_lattice_i32val / op2_lattice_i32val;
        lattice.val_type = ConstLattice::I32;
    }
    else if(opcode == MOD){
        lattice.status = ConstLattice::CONST;
        lattice.vals.I32Val = op1_lattice_i32val % op2_lattice_i32val;
        lattice.val_type = ConstLattice::I32;
    }
    if(opcode == FADD || opcode == FSUB || opcode == FMUL || opcode == FDIV){
        lattice.status = ConstLattice::VAR;
    }


    // float op1_lattice_floatval = op1_lattice.vals.FloatVal;
    // float op2_lattice_floatval = op2_lattice.vals.FloatVal;

    // if(opcode == FADD){
    //     lattice.status = ConstLattice::CONST;
    //     lattice.vals.FloatVal = op1_lattice_floatval + op2_lattice_floatval;
    //     lattice.val_type = ConstLattice::FLOAT;
    // }
    // else if(opcode == FSUB){
    //     lattice.status = ConstLattice::CONST;
    //     lattice.vals.FloatVal = op1_lattice_floatval - op2_lattice_floatval;
    //     lattice.val_type = ConstLattice::FLOAT;
    // }
    // else if(opcode == FMUL){
    //     lattice.status = ConstLattice::CONST;
    //     lattice.vals.FloatVal = op1_lattice_floatval * op2_lattice_floatval;
    //     lattice.val_type = ConstLattice::FLOAT;
    // }
    // else if(opcode == FDIV){
    //     lattice.status = ConstLattice::CONST;
    //     lattice.vals.FloatVal = op1_lattice_floatval / op2_lattice_floatval;
    //     lattice.val_type = ConstLattice::FLOAT;
    // }

    return 1;
}

int IcmpInstruction::ConstPropagate(std::map<int,Instruction>& regresult_map)
{
    auto& lattice = const_lattice_map[this];

    auto op1_lattice = get_operand_lattice(op1,regresult_map);
    auto op2_lattice = get_operand_lattice(op2,regresult_map);

    auto op1_lattice_status = op1_lattice.status;
    auto op2_lattice_status = op2_lattice.status;

    int op1_lattice_i32val = op1_lattice.vals.I32Val;
    int op2_lattice_i32val = op2_lattice.vals.I32Val;

    if(lattice.status == ConstLattice::VAR){return 0;}

    if(op1_lattice_status == 2 || op2_lattice_status == 2){
        lattice.status = ConstLattice::VAR;
        return 1;
    }   

    if(lattice.status == ConstLattice::CONST){return 0;}

    if(cond == eq){
        lattice.status = ConstLattice::CONST;
        lattice.vals.I32Val = op1_lattice_i32val == op2_lattice_i32val;
        lattice.val_type = ConstLattice::I32;
    }
    if(cond == ne){
        lattice.status = ConstLattice::CONST;
        lattice.vals.I32Val = op1_lattice_i32val != op2_lattice_i32val;
        lattice.val_type = ConstLattice::I32;
    }
    if(cond == sgt){
        lattice.status = ConstLattice::CONST;
        lattice.vals.I32Val = op1_lattice_i32val > op2_lattice_i32val;
        lattice.val_type = ConstLattice::I32;
    }
    if(cond == sge){
        lattice.status = ConstLattice::CONST;
        lattice.vals.I32Val = op1_lattice_i32val >= op2_lattice_i32val;
        lattice.val_type = ConstLattice::I32;
    }
    if(cond == slt){
        lattice.status = ConstLattice::CONST;
        lattice.vals.I32Val = op1_lattice_i32val < op2_lattice_i32val;
        lattice.val_type = ConstLattice::I32;
    }
    if(cond == sle){
        lattice.status = ConstLattice::CONST;
        lattice.vals.I32Val = op1_lattice_i32val <= op2_lattice_i32val;
        lattice.val_type = ConstLattice::I32;
    }
    return 1;
}

int FcmpInstruction::ConstPropagate(std::map<int,Instruction>& regresult_map)
{
    auto& lattice = const_lattice_map[this];
    if(lattice.status == ConstLattice::VAR){return 0;}
    lattice.status = ConstLattice::VAR;
    return 1;
}

int CallInstruction::ConstPropagate(std::map<int,Instruction>& regresult_map)
{
    auto& lattice = const_lattice_map[this];
    if(lattice.status == ConstLattice::VAR){return 0;}
    lattice.status = ConstLattice::VAR;
    return 1;
}

int GetElementprtInstruction::ConstPropagate(std::map<int,Instruction>& regresult_map)
{
    auto& lattice = const_lattice_map[this];
    if(lattice.status == ConstLattice::VAR){return 0;}
    lattice.status = ConstLattice::VAR;
    return 1;
}

int FptosiInstruction::ConstPropagate(std::map<int,Instruction>& regresult_map)
{
    auto& lattice = const_lattice_map[this];
    if(lattice.status == ConstLattice::VAR){return 0;}
    lattice.status = ConstLattice::VAR;
    return 1;
}

int SitofpInstruction::ConstPropagate(std::map<int,Instruction>& regresult_map)
{
    auto& lattice = const_lattice_map[this];
    if(lattice.status == ConstLattice::VAR){return 0;}
    lattice.status = ConstLattice::VAR;
    return 1;
}

int ZextInstruction::ConstPropagate(std::map<int,Instruction>& regresult_map)
{
    auto& lattice = const_lattice_map[this];

    auto op_lattice = get_operand_lattice(value,regresult_map);
    auto op_lattice_status = op_lattice.status;
    int op_lattice_i32val = op_lattice.vals.I32Val;
    
    if(lattice.status == ConstLattice::VAR){return 0;}
    
    if(op_lattice_status == ConstLattice::VAR){
        lattice.status = ConstLattice::VAR;
        return 1;
    }

    if(lattice.status == ConstLattice::CONST){return 0;}

    lattice.status = ConstLattice::CONST;
    lattice.vals.I32Val = op_lattice_i32val;

    return 1;
}

int update_lattice_status(Instruction I,ConstLattice pre_lattice)
{
    auto& lattice = const_lattice_map[I];
    if(lattice.status == ConstLattice::UNINIT){
        lattice = pre_lattice;
        return 1;
    }
    if(lattice.status == ConstLattice::CONST && pre_lattice.status == ConstLattice::VAR){
        lattice.status = ConstLattice::VAR;
        return 1;
    }
    if(lattice.status == ConstLattice::CONST && pre_lattice.status == ConstLattice::CONST){
        if(lattice.val_type == ConstLattice::I32){
            if(lattice.vals.I32Val != pre_lattice.vals.I32Val){
                lattice.status = ConstLattice::VAR;
                return 1;
            }
        }
        else if(lattice.val_type == ConstLattice::FLOAT){
            if(lattice.vals.FloatVal != pre_lattice.vals.FloatVal){
                lattice.status = ConstLattice::VAR;
                return 1;
            }
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
    if(I->GetOpcode() == PHI){
        auto Ins = (PhiInstruction*)I;
        int change = 0;
        for(auto phi_node:Ins->getPhiList()){
            int pre = ((LabelOperand*)phi_node.first)->GetLabelNo();
            Operand val = phi_node.second;
            auto pre_lattice = get_operand_lattice(val,regresult_map);
            if(CFGedgeExec.find({pre,I->GetBlockID()}) != CFGedgeExec.end()){//where the corresponding control-flow edge is executable.
                change |= update_lattice_status(I,pre_lattice);
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
    else if(I->GetOpcode() == BR_COND){
        auto Ins = (BrCondInstruction*)I;
        auto op_lattice = get_operand_lattice(Ins->getCond(),regresult_map);
        //Determine all outgoing edges of the branch’s CFG node whose condition is potentially satisfied; 
        //Append the CFG edges that were non-executable to the CFGWorkList.
        if(op_lattice.status == ConstLattice::CONST){
            int target = 0;
            if(op_lattice.vals.I32Val == 0){
                target = ((LabelOperand*)Ins->getFalseLabel())->GetLabelNo();
            }
            else{
                target = ((LabelOperand*)Ins->getTrueLabel())->GetLabelNo();
            }

            if(CFGedgeExec.find({I->GetBlockID(),target}) == CFGedgeExec.end()){
                CFGWorklist.insert({I->GetBlockID(),target});
            }
        }
        if(op_lattice.status == ConstLattice::VAR){
            int target1 = ((LabelOperand*)Ins->getFalseLabel())->GetLabelNo();
            int target2 = ((LabelOperand*)Ins->getTrueLabel())->GetLabelNo();

            if(CFGedgeExec.find({I->GetBlockID(),target1}) == CFGedgeExec.end()){
                CFGWorklist.insert({I->GetBlockID(),target1});
            }

            if(CFGedgeExec.find({I->GetBlockID(),target2}) == CFGedgeExec.end()){
                CFGWorklist.insert({I->GetBlockID(),target2});
            }
        }
    }
    //other Instructions
    //Update the operation’s data-flow information by applying its transfer function.
    else{
        int change = I->ConstPropagate(regresult_map);
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
            const_lattice_map[I] = ConstLattice();
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
            if(I->GetOpcode() == PHI){
                visit_operation(I,SSAWorklist,CFGedgeExec,CFGWorklist,this->regresult_ins_map,this->SSA_G);
                continue;
            }

            int I_Bid = I->GetBlockID();
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
                if(I->GetOpcode() == PHI){
                    visit_operation(I,SSAWorklist,CFGedgeExec,CFGWorklist,this->regresult_ins_map,this->SSA_G);
                }
                else{
                    if(!firstvis_tag){break;}//If the target node was reached the first time via the CFGWorkList, visit all its operations
                    else{visit_operation(I,SSAWorklist,CFGedgeExec,CFGWorklist,this->regresult_ins_map,this->SSA_G);}
                }
            }
            // If the target node has a single, non-executable outgoing edge, append that edge to the CFGWorkList.
            auto endI = *(B->Instruction_list.end() - 1);
            if(endI->GetOpcode() == BR_UNCOND){
                auto Ins = (BrUncondInstruction*)endI;
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
            auto use_regs = instruction->GetNonResultOperands();
            for(auto& op:use_regs){
                if(op->GetOperandType() == BasicOperand::REG){
                    auto op_produce_ins = regresult_ins_map[((RegOperand*)op)->GetRegNo()];
                    auto lattice = const_lattice_map[op_produce_ins];

                    if(lattice.status == ConstLattice::CONST && lattice.val_type == ConstLattice::I32){// 1 is CONST
                        op = new ImmI32Operand(lattice.vals.I32Val);
                    }
                    else if(lattice.status == ConstLattice::CONST && lattice.val_type == ConstLattice::FLOAT){
                        op = new ImmF32Operand(lattice.vals.FloatVal);
                    }
                }
            }
            instruction->SetNonResultOperands(use_regs);
            if(instruction->GetOpcode()==BR_UNCOND){
                int destLabelNo = ((LabelOperand*)(((BrUncondInstruction*)instruction)->getDestLabel()))->GetLabelNo();
                
                if(block_visited.find(destLabelNo)==block_visited.end()){
                    unscanedBlockID.push(destLabelNo);
                }
            }else if(instruction->GetOpcode()==BR_COND){
                int trueDestLabelNo = ((LabelOperand*)(((BrCondInstruction*)instruction)->getTrueLabel()))->GetLabelNo();
                int falseDestLabelNo = ((LabelOperand*)(((BrCondInstruction*)instruction)->getFalseLabel()))->GetLabelNo();
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
                if(last_br->GetOpcode() == BR_COND){
                    auto br_cond = (BrCondInstruction*)last_br;
                    auto br_true = (LabelOperand*)br_cond->getTrueLabel();
                    auto br_false = (LabelOperand*)br_cond->getFalseLabel();
                    auto br_uncond_label = br_true;
                    if(br_true->GetLabelNo() == dest_block_id){
                        // std::cerr<<"bb\n";
                        br_uncond_label = br_false;
                    }else if(br_false->GetLabelNo() == dest_block_id){
                        br_uncond_label = br_true;
                    }else{
                        std::cerr<<"deleting from:br_cond (no expected dest)\n";
                    }
                    last_br = new BrUncondInstruction(br_uncond_label);
                    last_br->SetBlockID(from_block_id);
                }else if(last_br->GetOpcode() == BR_UNCOND){
                    // std::cerr<<"from:"<<from_block_id<<" to:"<<dest_block_id<<"\n";
                    // std::cerr<<"deleting from:br_uncond\n";
                }else if(last_br->GetOpcode() == RET){
                    std::cerr<<"deleting from:RET\n";
                }

                for(auto& target : dest_block->Instruction_list){
                    if(target->GetOpcode()!=PHI){
                        break;
                    }
                    auto target_phi = (PhiInstruction*)target;
                    auto phi_list = target_phi->getPhiList();
                    std::queue<Operand> phi_label_del;
                    for(auto label_val_pair : phi_list){
                        auto label = (LabelOperand*)label_val_pair.first;
                        if(label->GetLabelNo() == from_block_id){
                            phi_label_del.push(label);
                        }
                    }
                    while(!phi_label_del.empty()){
                        auto label_to_del = phi_label_del.front();
                        //phi_list.erase(label_to_del);
                        phi_label_del.pop();
                    }
                    auto DTType = target_phi->getDataType();
                    auto result_op = target_phi->getResultOp();
                    target = new PhiInstruction(DTType,result_op,phi_list);
                    target->SetBlockID(dest_block_id);
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

    const_lattice_map.clear();
}

void CFG::ConstIns_elimate()
{
    for(auto B : *block){
        auto b = B.second;
        auto tmp_ins_list = b->Instruction_list;
        b->Instruction_list.clear();
        for(auto I:tmp_ins_list){
            auto lattice = const_lattice_map[I];
            if(lattice.status != ConstLattice::CONST){
                b->push_Ins(1,I);
            }
        }
    }
}