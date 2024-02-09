#include "llvm_cfg.h"
#include "llvm_ir.h"
#include "Instruction.h"
#include "IRgen.h"
#include <bitset>

extern LLVMIR llvmIR;

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
    for(auto& func_blocks_pair:function_block_map){
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
            for(int i = 0;i < blockList.size();i++){
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
        // std::cerr<<"Safe\n";
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