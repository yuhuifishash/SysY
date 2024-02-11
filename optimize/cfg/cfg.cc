#include "cfg.h"
#include "ir.h"
#include "Instruction.h"
#include "IRgen.h"
#include <bitset>

void LLVMIR::ElimateUnreachedInstructionAndBlocks(){
    for(auto& [defI,blocks]:function_block_map){
        std::stack<int> stk;
        stk.push(0);
        std::map<int,int> reachable;
        while(!stk.empty()){
            int cur = stk.top();
            stk.pop();
            reachable[cur] = 1;
            auto& block = blocks[cur];
            auto& blockList = block->Instruction_list;
            int ret_pos = blockList.size();
            for(int i = 0;i < blockList.size();i++){
                if(blockList[i]->GetOpcode() == RET){
                    ret_pos = i;
                    break;
                }
            }
            while(blockList.size() > ret_pos+1){
                blockList.pop_back();
            }
            Instruction blocklast = blockList[blockList.size()-1];
            if(blocklast->GetOpcode() == BR_UNCOND){
                BrUncondInstruction* bruncond = (BrUncondInstruction*)blocklast;
                int target_block_no = ((LabelOperand*)bruncond->GetDestLabel())->GetLabelNo();
                if(reachable[target_block_no] == 0){
                    reachable[target_block_no] = 1;
                    stk.push(target_block_no);
                }
            }
            if(blocklast->GetOpcode() == BR_COND){
                BrCondInstruction* brcond = (BrCondInstruction*)blocklast;
                int target_trueblock_no = ((LabelOperand*)brcond->getTrueLabel())->GetLabelNo();
                int target_falseblock_no = ((LabelOperand*)brcond->getFalseLabel())->GetLabelNo();
                if(reachable[target_trueblock_no] == 0){
                    reachable[target_trueblock_no] = 1;
                    stk.push(target_trueblock_no);
                }
                if(reachable[target_falseblock_no] == 0){
                    reachable[target_falseblock_no] = 1;
                    stk.push(target_falseblock_no);
                }
            }
        }
        std::queue<int> deadblocks;
        for(auto id_block_pair:blocks){
            if(reachable[id_block_pair.first] == 0){
                deadblocks.push(id_block_pair.first);
            }
        }
        while(!deadblocks.empty()){
            blocks.erase(deadblocks.front());
            deadblocks.pop();
        }
    }
}

void LLVMIR::CFGInit()
{   
    ElimateUnreachedInstructionAndBlocks();
    for(auto& [defI,bb_map]:function_block_map){
        CFG* cfg = new CFG();

        cfg->block_map = &bb_map;
        cfg->function_def = defI;
        cfg->max_reg = max_reg_map[defI];
        cfg->max_label = max_label_map[defI];
        llvm_cfg[defI] = cfg;
    }
}

void LLVMIR::BuildCFG()
{
    for(auto [defI,cfg]:llvm_cfg){
        cfg->BuildCFG();
    }
}

void CFG::BuildCFG()
{
    G.clear();
    invG.clear();

    G.resize(max_label + 1);
    invG.resize(max_label + 1);

    for(auto [id,bb]:*block_map){
        Instruction lastIns = bb->Instruction_list[bb->Instruction_list.size() - 1];
        if(lastIns->GetOpcode() == BR_UNCOND){
            BrUncondInstruction* bruncond = (BrUncondInstruction*)lastIns;
            int target_block_no = ((LabelOperand*)bruncond->GetDestLabel())->GetLabelNo();
            G[id].push_back((*block_map)[target_block_no]);
            invG[target_block_no].push_back(bb);
        }else if(lastIns->GetOpcode() == BR_COND){
            BrCondInstruction* brcond = (BrCondInstruction*)lastIns;
            int target_trueblock_no = ((LabelOperand*)brcond->getTrueLabel())->GetLabelNo();
            int target_falseblock_no = ((LabelOperand*)brcond->getFalseLabel())->GetLabelNo();
            G[id].push_back((*block_map)[target_trueblock_no]);
            G[id].push_back((*block_map)[target_falseblock_no]);
            invG[target_trueblock_no].push_back(bb);
            invG[target_falseblock_no].push_back(bb);
        }
    }
}

std::vector<LLVMBlock> CFG::GetPredecessor(LLVMBlock B)
{
    return invG[B->block_id];
}

std::vector<LLVMBlock> CFG::GetPredecessor(int bbid)
{
    return invG[bbid];
}

std::vector<LLVMBlock> CFG::GetSuccessor(LLVMBlock B)
{
    return G[B->block_id];
}

std::vector<LLVMBlock> CFG::GetSuccessor(int bbid)
{
    return G[bbid];
}

LLVMBlock CFG::GetBlock(int bbid)
{
    return (*block_map)[bbid];
}