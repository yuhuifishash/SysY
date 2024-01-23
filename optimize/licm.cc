#include "llvm_cfg.h"
#include "llvm_ir.h"
#include "Instruction.h"

extern LLVM_IR llvm_IR;
static std::map<int,bool> InvariantMap;
extern std::map<std::string,CFG*> CFG_M;

static std::set<std::string> loop_store_global_set;
static int loop_call_independent_tag = 0;

void LLVM_IR::LICM()
{
    for(auto node:llvm_cfg){
        node.second->LICM();
    }
}

/*
  (L1,L0) -> L2  L2 -> L3  L3 -> L4  (L3,L4) -> L2
  L2:  %rx = phi i32 [%r0,L0],[%r1,L1],[%r2,L3],[%r3,L4]

  add preheader L5   (L1,L0) -> L5  L5->L2
  change phi:
  preheader:  %ry = phi i32 [%r0,L0],[%r1,L1]
  header:  %rx = phi i32 [%r2,L3],[%r3,L4],[%ry,L5]
*/
void NaturalLoop::add_preheader(CFG* cfg)
{
    ++cfg->max_label;//create new BB
    int preheaderBB_id = cfg->max_label;
    llvm_IR.llvm_Function_BlockArr_map[cfg->func_ins][preheaderBB_id] = new basic_block(preheaderBB_id);
    auto preheaderBB = llvm_IR.llvm_Function_BlockArr_map[cfg->func_ins][preheaderBB_id];
    preheader = preheaderBB;

    preheader->push_Ins(1,new br_uncond_instruction(new label_operand(header->block_id)));

    std::set<int> label_changeM;
    //std::cout<<cfg->func_ins->get_Func_name()<<"  "<<header->block_id<<"\n";
    //first change the target of all the precBB br Instruction
    for(auto preBB:cfg->invG[header->block_id]){
        if(preBB->Instruction_list.size() < 1){continue;}
        if(loop_nodes.find(preBB) != loop_nodes.end()){continue;}
        //std::cout<<preBB->block_id<<"\n";
        auto Ins = *(preBB->Instruction_list.end() - 1);
        if(Ins->get_opcode() == BR_UNCOND){
            auto I = (br_uncond_instruction*)Ins;
            I->set_target(new label_operand(preheaderBB_id));
        }
        if(Ins->get_opcode() == BR_COND){
            auto I = (br_cond_instruction*)Ins;
            int TrueBB_id = ((label_operand*)(I->getTrueLabel()))->getLabelNo();
            if(TrueBB_id == header->block_id){
                I->set_truelabel(new label_operand(preheaderBB_id));
            }
            else{//FalseBB_id == header
                I->set_falselabel(new label_operand(preheaderBB_id));
            }
        }
        label_changeM.insert(preBB->block_id);
    }

    //std::cerr<<cfg->func_ins->get_Func_name()<<"  "<<header->block_id<<"\n";
    //next change all the phi Instructions in the header and add phi Instructions to preheader
    for(auto Ins:header->Instruction_list){
        if(Ins->get_opcode() != PHI){break;}
        auto I = (phi_instruction*)Ins;
        auto& PhiList = I->getPhiList();

        ++cfg->max_reg;
        auto preheaderPHI_Ins = new phi_instruction(I->getDataType(),new reg_operand(cfg->max_reg));
        for(auto it = PhiList.begin();it != PhiList.end();){
            auto PhiOP = *it;
            int Lid = ((label_operand*)(PhiOP.first))->getLabelNo();
            if(label_changeM.find(Lid) != label_changeM.end()){
                preheaderPHI_Ins->Insert_phi(PhiOP.second,PhiOP.first);
                it = PhiList.erase(it);
            }
            else{
                ++it;
            }
        }
        preheader->push_Ins(0,preheaderPHI_Ins);

        I->Insert_phi(new reg_operand(cfg->max_reg),new label_operand(preheaderBB_id));
    }
    NaturalLoop* f = loop_fa;
    while(f != nullptr){
        f->loop_nodes.insert(preheader);
        f = f->loop_fa;
    }
}

bool isDomExitBB(CFG* cfg,llvm_block BB,NaturalLoop* L)
{
    for(auto ExitBB:L->exit_nodes){
        if(!cfg->if_dominate(BB->block_id,ExitBB->block_id)){
            return false;
        }
    }
    return true;
}

bool isInvariant(CFG* cfg,Instruction I,NaturalLoop* L)
{
    if(I->get_opcode() == STORE){return false;}
    if(I->get_opcode() == LOAD){
        auto tI = (load_Instruction*)I;
        if(tI->getPointer()->getOperandType() != basic_operand::GLOBAL){return false;}
        if(!loop_call_independent_tag){return false;}
        std::string global_name = ((global_operand*)(tI->getPointer()))->getName();
        if(loop_store_global_set.find(global_name) != loop_store_global_set.end()){
            return false;
        }
        //I->printIR(std::cerr);
    }
    if(I->get_opcode() == PHI){return false;}
    if(I->get_opcode() == CALL){
        auto tI = (call_instruction*)I;
        if(CFG_M.find(tI->get_funcName()) == CFG_M.end()){return false;}
        auto target_cfg = CFG_M[tI->get_funcName()];
        if(!target_cfg->func_info.is_independent_tag){
            return false;
        }
        //I->printIR(std::cerr);
    }
    if(I->get_opcode() == ICMP){return false;}
    if(I->get_opcode() == FCMP){return false;}
    if(I->get_opcode() == BR_COND || I->get_opcode() == BR_UNCOND){return false;}
    for(auto op:I->get_nonresult_operands()){
        if(op->getOperandType() == op->IMMI32 || op->getOperandType() == op->IMMF32){
            continue;    
        }
        if(op->getOperandType() == op->GLOBAL){
            continue;
        }
        if(op->getOperandType() == op->REG){
            int op_reg = ((reg_operand*)op)->getRegNo();
            if(InvariantMap[op_reg] == 1){continue;}
            Instruction I_result = cfg->regresult_ins_map[op_reg];
            int I_BB_id = I_result->getBlockID();
            auto I_BB = (*(cfg->block))[I_BB_id];
            if(L->loop_nodes.find(I_BB) != L->loop_nodes.end()){
                return false;
            }
            else{
                InvariantMap[op_reg] = 1;
                continue;
            }
            continue;
        }
        return false;
    }
    //I->printIR(std::cerr);
    if(I->get_resultregno() != -1){
        InvariantMap[I->get_resultregno()] = 1;
    }
    return true;
}

void CalculateGlobal(CFG* cfg,NaturalLoop* L)
{
    // std::cerr<<cfg->func_ins->get_Func_name()<<" ";
    // for(auto n:L->loop_nodes){std::cerr<<n->block_id<<" ";}std::cerr<<"\n";

    for(auto b:L->loop_nodes){
        for(auto Ins:b->Instruction_list){
            if(Ins->get_opcode() == CALL){
                auto I = (call_instruction*)Ins;
                if(CFG_M.find(I->get_funcName()) == CFG_M.end()){
                    loop_call_independent_tag = 0;
                    return;
                }
                auto target_cfg = CFG_M[I->get_funcName()];
                if(!target_cfg->func_info.is_independent_tag){
                    loop_call_independent_tag = 0;
                    return;
                }
            }
            if(Ins->get_opcode() == STORE){
                auto I = (store_Instruction*)Ins;
                if(I->getPointer()->getOperandType() == basic_operand::GLOBAL){
                    auto op = (global_operand*)I->getPointer();
                    loop_store_global_set.insert(op->getName());
                }
            }
        }
    }
}

std::vector<Instruction> CFG::CalculateInvariant(NaturalLoop* L)
{
    //std::cerr<<"loop ";for(auto lx:L->loop_nodes){std::cerr<<lx->block_id<<" ";}std::cerr<<"\n";
    //std::cerr<<"exit nodes ";for(auto lx:L->exit_nodes){std::cerr<<lx->block_id<<" ";}std::cerr<<"\n";

    InvariantMap.clear();
    loop_store_global_set.clear();
    loop_call_independent_tag = 1;
    CalculateGlobal(this,L);

    std::vector<Instruction> InvariantInsList;
    std::set<Instruction> InsVisited;

    int change_flag = 1;
    while(change_flag){
        change_flag = 0;

        for(auto LBB:L->loop_nodes){
            for(auto I:LBB->Instruction_list){
                if(InsVisited.find(I) == InsVisited.end() && isInvariant(this,I,L)){
                    change_flag = true;
                    InsVisited.insert(I);
                    InvariantInsList.push_back(I);
                }
            }
        }
    }
    return InvariantInsList;
}


void DFS_loopforest(CFG* cfg, NaturalLoopForest& loop_forest,NaturalLoop* L)
{
    L->InvariantInsList = cfg->CalculateInvariant(L);

    std::set<Instruction> EraseInsSet;
    auto I_end = *(L->preheader->Instruction_list.end()-1);
    L->preheader->Instruction_list.pop_back();

    for(auto it = L->InvariantInsList.begin();it != L->InvariantInsList.end();){
        auto I = *it;
        //in SysY, we can assume getelementptr does not affect the result of the program
        if(isDomExitBB(cfg,(*(cfg->block))[I->getBlockID()],L)){
            //move to preheader
            EraseInsSet.insert(I);
            I->setBlockID(L->preheader->block_id);
            L->preheader->push_Ins(1,I);
            //I->printIR(std::cerr);
            it = L->InvariantInsList.erase(it);//erase this Instruction
            //std::cerr<<"code motion ";I->printIR(std::cerr);
        }
        else{//can not move to the preheader
            ++it;
        }
    }
    if(!EraseInsSet.empty()){
        for(auto &lx:L->loop_nodes){
            for(auto it = lx->Instruction_list.begin();it != lx->Instruction_list.end();){
                if(EraseInsSet.find(*it) != EraseInsSet.end()){
                    it = lx->Instruction_list.erase(it);
                }
                else{
                    ++it;
                }
            }
        }
    }
    L->preheader->push_Ins(1,I_end);

    for(auto lv:loop_forest.loopG[L->loop_id]){
        DFS_loopforest(cfg,loop_forest,lv);
    }
}

void CFG::LICM()
{
    for(auto lx:loopforest.loops){
        lx->add_preheader(this);
    }

    build_CFG();
    build_dominator_tree();

    for(auto lx:loopforest.loops){
        if(lx->loop_fa == nullptr){
            DFS_loopforest(this,loopforest,lx);
        }
    }
}

