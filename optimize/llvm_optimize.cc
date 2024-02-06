#include "llvm_cfg.h"
#include "llvm_ir.h"
#include "Instruction.h"
#include "IRgen.h"
#include <bitset>

extern LLVMIR llvm_IR;

void LLVMIR::optimize()
{
    //mem2reg();
    //SCCP();

    //SimpleCSE();

    //SCCP();

    //SimpleDCE();

    //decompose_getelementptr();
    //loop_find();
    //LICM();
    
    //SimpleCSE();

    //peephole_optimize();
}

void LLVMIR::elimate_dead_ins_and_blocks(){
    for(auto& func_blocks_pair:llvm_Function_BlockArr_map){
        auto& blocks = func_blocks_pair.second;
        std::stack<int> stk;
        stk.push(0);
        std::map<int,int> reachable;
        while(!stk.empty()){
            int cur = stk.top();
            // std::cerr<<"DFS at "<<cur<<std::endl;
            stk.pop();
            reachable[cur] = 1;
            auto& block = blocks[cur];
            auto& blockList = block->Instruction_list;
            int ret_pos = blockList.size();
            for(int i=0;i<blockList.size();i++){
                if(blockList[i]->GetOpcode() == RET){
                    ret_pos = i;
                    break;
                }
            }
            while(blockList.size()>ret_pos+1){
                blockList.pop_back();
            }
            Instruction blocklast = blockList[blockList.size()-1];
            if(blocklast->GetOpcode() == BR_UNCOND){
                BrUncondInstruction* bruncond = (BrUncondInstruction*)blocklast;
                int target_block_no = ((LabelOperand*)bruncond->getDestLabel())->GetLabelNo();
                if(reachable[target_block_no]==0){
                    reachable[target_block_no] = 1;
                    stk.push(target_block_no);
                }
            }
            if(blocklast->GetOpcode() == BR_COND){
                BrCondInstruction* brcond = (BrCondInstruction*)blocklast;
                int target_trueblock_no = ((LabelOperand*)brcond->getTrueLabel())->GetLabelNo();
                int target_falseblock_no = ((LabelOperand*)brcond->getFalseLabel())->GetLabelNo();
                if(reachable[target_trueblock_no]==0){
                    reachable[target_trueblock_no] = 1;
                    stk.push(target_trueblock_no);
                }
                if(reachable[target_falseblock_no]==0){
                    reachable[target_falseblock_no] = 1;
                    stk.push(target_falseblock_no);
                }
            }
        }
        // std::cerr<<"Safe\n";
        std::queue<int>deadblocks;
        for(auto id_block_pair:blocks){
            // std::cerr<<id_block_pair.first<<std::endl;
            if(reachable[id_block_pair.first]==0){
                deadblocks.push(id_block_pair.first);
                // std::cerr<<id_block_pair.first<<std::endl;
                // blocks.erase(id_block_pair.first);
            }
        }
        while(!deadblocks.empty()){
            blocks.erase(deadblocks.front());
            deadblocks.pop();
        }
    }
}

void LLVMIR::optimize_zext_br()
{
    for(auto &n:llvm_Function_BlockArr_map){
        for(auto &b:n.second){
            //查询该基本块最后四条指令，如果出现icmp/fcmp zext icmp br
            //则优化为icmp/fcmp br
            std::deque<Instruction>&list=b.second->Instruction_list;
            // if(b.second->block_id == 2){
            //     b.second->printIR(std::cerr);
            // }
            int l4=list.size()-4;
            if(l4 < 0)continue;
            if((list[l4]->GetOpcode() == ICMP || list[l4]->GetOpcode() == FCMP)
            && list[l4+1]->GetOpcode() == ZEXT
            && list[l4+2]->GetOpcode() == ICMP
            && list[l4+3]->GetOpcode() == BR_COND
            &&  ((ZextInstruction*)list[l4+1])->get_in()->GetOperandType() == BasicOperand::REG
            && list[l4]->GetResultRegNo() == ((RegOperand*)((ZextInstruction*)list[l4+1])->get_in())->GetRegNo()
            &&  (
                    (
                        ((IcmpInstruction*)list[l4+2])->getCompareCondition() == ne
                        ||
                        ((IcmpInstruction*)list[l4+2])->getCompareCondition() == eq
                    )
                    &&
                    (
                        (
                            ((IcmpInstruction*)list[l4+2])->getOp1()->GetOperandType() == BasicOperand::REG
                            &&
                            ((IcmpInstruction*)list[l4+2])->getOp2()->GetOperandType() == BasicOperand::IMMI32
                            &&
                            ((ImmI32Operand*)((IcmpInstruction*)list[l4+2])->getOp2())->GetIntImmVal() == 0
                            &&
                            list[l4+1]->GetResultRegNo() == ((RegOperand*)((IcmpInstruction*)list[l4+2])->getOp1())->GetRegNo()
                        )
                        ||
                        (
                            ((IcmpInstruction*)list[l4+2])->getOp2()->GetOperandType() == BasicOperand::REG
                            &&
                            ((IcmpInstruction*)list[l4+2])->getOp1()->GetOperandType() == BasicOperand::IMMI32
                            &&
                            ((ImmI32Operand*)((IcmpInstruction*)list[l4+2])->getOp1())->GetIntImmVal() == 0
                            &&
                            list[l4+1]->GetResultRegNo() == ((RegOperand*)((IcmpInstruction*)list[l4+2])->getOp2())->GetRegNo()
                        )
                    )
                )
            && (list[l4+2]->GetResultRegNo() == ((RegOperand*)((BrCondInstruction*)list[l4+3])->getCond())->GetRegNo())
            ){
                BrCondInstruction* br_old = (BrCondInstruction*)list[l4+3];
                IcmpInstruction* cond_old2 = (IcmpInstruction*)list[l4+2];
                Instruction new_br;//(list[l4]->get_opcode() == FCMP)
                Operand result_cond;
                if(list[l4]->GetOpcode() == ICMP){
                    IcmpInstruction* cond_old = (IcmpInstruction*)list[l4];
                    result_cond = cond_old->getResult();
                }
                if(list[l4]->GetOpcode() == FCMP){
                    FcmpInstruction* cond_old = (FcmpInstruction*)list[l4];
                    result_cond = cond_old->getResult();
                }
                if(cond_old2->getCompareCondition() == ne){ 
                    new_br = new BrCondInstruction(
                        result_cond,
                        br_old->getTrueLabel(),
                        br_old->getFalseLabel()
                    );
                }else if(cond_old2->getCompareCondition() == eq){
                    new_br = new BrCondInstruction(
                        result_cond,
                        br_old->getFalseLabel(),
                        br_old->getTrueLabel()
                    );
                }else{
                    std::cerr<<"Unexpected in LLVM_IR::optimize_zext_br()\n";
                }
                list.pop_back();
                list.pop_back();
                list.pop_back();
                list.push_back(new_br);
            }
        }
    }
}
static int phi_flag = 0;

bool judge_phi_block(LLVMBlock B)
{
    auto &list = B->Instruction_list;
    auto first_ins = *list.begin();
    if(first_ins->GetOpcode() == PHI ){return 1;}
    return 0;
}

int delete_phi_br(std::pair<Func_Def_Instruction, std::map<int, LLVMBlock> > n1,std::pair<int,LLVMBlock>n2)
{
    auto B = n2.second;
    auto &list = B->Instruction_list;
    if(list.size() < 3){return -1;}

    auto end_ins = *(list.end() - 1);
    auto last2_ins = *(list.end() - 2);

    if(end_ins->GetOpcode() != BR_UNCOND || last2_ins->GetOpcode() != ZEXT){return -1;}
    
    LabelOperand phi_label = *(LabelOperand*)(((BrUncondInstruction*)end_ins)->getDestLabel());

    auto phi_B = n1.second[phi_label.GetLabelNo()];
    auto &phi_B_list = phi_B->Instruction_list;
    auto first_ins_2 = *phi_B_list.begin();
    auto end_ins_2 = *(phi_B_list.end() - 1);

    if(first_ins_2->GetOpcode() != PHI || end_ins_2->GetOpcode() == BR_UNCOND){return -1;}
    auto label1 = (LabelOperand*)((BrCondInstruction*)end_ins_2)->getTrueLabel();
    auto label2 = (LabelOperand*)((BrCondInstruction*)end_ins_2)->getFalseLabel();
    
    if(judge_phi_block(n1.second[label1->GetLabelNo()])){return -1;}
    if(judge_phi_block(n1.second[label2->GetLabelNo()])){return -1;}

    phi_flag = 1;

    auto first_phi_ins = (PhiInstruction*)first_ins_2;
    auto phi_list = first_phi_ins->getPhiList();
    

    Operand pre_label;
    int br_val;
    for(auto op_pair:phi_list){
        if(op_pair.second->GetOperandType() == op_pair.second->IMMI32){
            br_val = ((ImmI32Operand*)op_pair.second)->GetIntImmVal();
            pre_label = op_pair.first;
        }
    }
    
    auto B_pre = n1.second[((LabelOperand*)pre_label)->GetLabelNo()];
    auto &B_pre_list = B_pre->Instruction_list;

    auto B_pre_end_ins = *(B_pre_list.end()-1);
    auto B_pre_last2_ins = (IcmpInstruction*)(*(phi_B_list.end()-2));
    auto condition = B_pre_last2_ins->getCompareCondition();
    
    if(B_pre_end_ins->GetOpcode() == BR_UNCOND){
        B_pre_list.pop_back();
        if(br_val == 1 ){
            B_pre_list.push_back(new BrUncondInstruction(label1));
        }
        else{
            B_pre_list.push_back(new BrUncondInstruction(label2));
        }
    }
    //std::cerr<<br_val<<" "<<condition<<"\n";
    if(B_pre_end_ins->GetOpcode() == BR_COND){
        auto insert_ins = (BrCondInstruction*)B_pre_end_ins;
        int falselabelid = ((LabelOperand*)(insert_ins->getFalseLabel()))->GetLabelNo();
        int truelabelid = ((LabelOperand*)(insert_ins->getTrueLabel()))->GetLabelNo();
        if(falselabelid == phi_label.GetLabelNo()){
            if((br_val == 1 && condition == IcmpCond::ne) || (br_val == 0 && condition == IcmpCond::eq)){
                insert_ins->set_falselabel(label1);
            }
            else{
                insert_ins->set_falselabel(label2);
            }
        }
        if(truelabelid == phi_label.GetLabelNo()){
            if((br_val == 1 && condition == IcmpCond::ne) || (br_val == 0 && condition == IcmpCond::eq)){
                insert_ins->set_truelabel(label1);
            }
            else{
                insert_ins->set_truelabel(label2);
            }
        }
    }
    if(list.size() <= 4){
        list.pop_back();
        list.pop_back();
    }
    else{
        auto last3_ins = *(list.end() - 4);
        if(last3_ins->GetOpcode() == ZEXT){
            list.pop_back();
            list.pop_back();
            list.pop_back();
            list.pop_back();
        }
        else{
            list.pop_back();
            list.pop_back();
        }   
    }


    auto insert_ins = (BrCondInstruction*)end_ins_2;
    auto list_last_ins = *(list.end()-1);

    insert_ins->set_cond(list_last_ins->GetResultReg());
    if(condition == IcmpCond::eq){
        insert_ins->swap_label();
    }
    list.push_back(insert_ins);
    
    return phi_label.GetLabelNo();
}

void LLVMIR::optimize_shortcircult_br()
{
    for(auto &n1:llvm_Function_BlockArr_map){
        while(true){
            int end_tag = 1;
            for(auto &n2:n1.second){
                int erase_id = delete_phi_br(n1,n2);
                if(phi_flag){
                    n1.second.erase(erase_id);
                    end_tag = 0;
                    phi_flag = 0;
                    continue;
                }
            }
            if(end_tag){break;}
        }
    }
}


