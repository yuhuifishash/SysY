#include "../include/ir.h"

/**
    * this function will make function only has one return block.
    * if the function has multiple return block and the return type is not void, 
    * you will generate a new alloca Instruction in bb0.
    * then replace all the ret instruction with store instruction and br uncond instruction
    * then create a new bb for ret instruction.(this bb is the target of the new br uncond instruction)
    * you should set CFG::max_reg correctly
    * @param C the control flow graph of the function */
void MakeFunctionOneExit(CFG* C)
{
    std::queue<LLVMBlock> OneExitqueue;
    enum LLVMType ret_type = VOID;
    int ret_cnt = 0;
    for(auto [id,bb]:*C->block_map){
        auto I = bb->Instruction_list.back();
        if(I->GetOpcode() != RET ){continue;}
        ret_cnt ++;
        auto RetI = (RetInstruction*)I;
        if(RetI->GetType() == VOID){continue;}
        ret_type = RetI->GetType();
        OneExitqueue.push(bb);
    }
    if(ret_cnt <= 1){
        if(!OneExitqueue.empty()){OneExitqueue.pop();}
        return;
    }
    auto ret_ptr = new RegOperand(++C->max_reg);
    auto B = C->NewBlock();
    auto B_Retreg = new RegOperand(++C->max_reg);
    auto bb0 = C->block_map->begin()->second;
    auto AllocaI = new AllocaInstruction(ret_type,ret_ptr);
    bb0->InsertInstruction(0,AllocaI);
    /*
    ret type value --> 
    store type value pointer
    br uncond newblock
    */
    while(!OneExitqueue.empty()){
        auto bb = OneExitqueue.front();
        OneExitqueue.pop();
        auto RetI = (RetInstruction*)bb->Instruction_list.back();
        bb->Instruction_list.pop_back();
        if(ret_type != VOID){
            bb->InsertInstruction(1,new StoreInstruction(ret_type,ret_ptr,RetI->GetRetVal()));
        }
        bb->InsertInstruction(1,new BrUncondInstruction(new LabelOperand(B->block_id)));
    }
    /*
    load reg_type pointer reg
    ret reg
    */
    if(ret_type != VOID){
        B->InsertInstruction(1,new LoadInstruction(ret_type,ret_ptr,B_Retreg));
    }
    B->InsertInstruction(1,new RetInstruction(ret_type,B_Retreg));
    C->ret_block = B;
    C->BuildCFG();
    //std::cerr<<"MakeFunctionOneExit is not implemented now\n";
}


/**
    * this function will elimate tailrecursive
    * you can use testcase 087_gcd.sy to check
    * you should set CFG::max_reg correctly
    * @param C the control flow graph of the function */
void TailRecursiveEliminate(CFG* C)
{
    std::cerr<<"TailRecursiveElimate is not implemented now\n";
}



void FunctionInline(LLVMIR* IR)
{
    
}






