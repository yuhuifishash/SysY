#include "cfg.h"
#include <assert.h>

/*
while(cond){
    body
}

will be transformed to:

if(cond){
    do{
        body
    }while(cond)
}

the loop needs to have only one exit
*/
void LoopRotate(CFG* C)
{
    for(auto loop:C->LoopForest.loop_set){
        loop->LoopRotate(C);
    }
}

/*
                       exit
                        |
preheader -> header -> body 
               |<--------|(latch)
               
preheader will be if(cond){header}
(if preheader has multiple successors, add transform block)
header will become preheader
the Successor of header in loop will become new header
(if multiple, can not rotate)

preheader ->(transformBB)-> header -> body
              |->exit              | <--|(latch)
*/
void NaturalLoop::LoopRotate(CFG* C)
{
    if(exit_nodes.size() > 1){
        is_rotate = false;
        return;
    }
    if(exiting_nodes.find(header) == exiting_nodes.end()){
        is_rotate = false;
        return;
    }

    //add CondBlock(preheader -> CondBlock -> header)
    LLVMBlock CondBlock = C->NewBlock();         
    auto I = preheader->Instruction_list.back();
    if(I->GetOpcode() == BR_COND){
        auto brI = (BrCondInstruction*)I;
        brI->SetNewTarget(header->block_id, CondBlock->block_id);
    }else if(I->GetOpcode() == BR_UNCOND){
        auto brI = (BrUncondInstruction*)I;
        brI->SetTarget(new LabelOperand(CondBlock->block_id));
    }
    
    //Insert CondBlock Instruction
    std::map<int,int> RegReplaceMap;
    for(auto I:header->Instruction_list){
        auto nI = I->CopyInstruction();
        
        if(nI->GetOpcode() == PHI){
            auto PhiI = (PhiInstruction*)nI;
            auto t = *latches.begin();
            PhiI->ErasePhi(t->block_id);
            PhiI->SetResultReg(++C->max_reg);
            RegReplaceMap[I->GetResultRegNo()] = C->max_reg;
        }else{
            nI->ReplaceByMap(RegReplaceMap);
        }   
        //br_uncond is impossible
        assert(nI->GetOpcode() != BR_UNCOND);
        if(nI->GetOpcode() == BR_COND){
            auto nBrI = (BrCondInstruction*)nI;
            int true_id = ((LabelOperand*)nBrI->GetTrueLabel())->GetLabelNo();
            int false_id = ((LabelOperand*)nBrI->GetFalseLabel())->GetLabelNo();
            auto exit = *exit_nodes.begin();
            if(true_id == exit->block_id){
                nBrI->SetNewTarget(false_id,header->block_id);
            }else{
                nBrI->SetNewTarget(true_id,header->block_id);
            }
        }
        CondBlock->InsertInstruction(1,nI);
    }

    //erase single phi node in CondBlock
    std::map<int,Operand> RegValMap;
    for(auto I:CondBlock->Instruction_list){
        if(I->GetOpcode() == PHI){
            auto PhiI = (PhiInstruction*)I;
            assert(PhiI->GetPhiList().size() == 1);
            RegValMap[PhiI->GetResultRegNo()] = PhiI->GetValOperand(preheader->block_id);
        }else{
            std::vector<Operand> NonResultList = I->GetNonResultOperands();
            for(auto &op:NonResultList){
                if(op->GetOperandType() == BasicOperand::REG){
                    int RegNo = ((RegOperand*)op)->GetRegNo();
                    if(RegValMap.find(RegNo) != RegValMap.end()){
                        op = RegValMap[RegNo];
                    }
                }
            }
            I->SetNonResultOperands(NonResultList);
        }
    }
    while(CondBlock->Instruction_list.front()->GetOpcode() == PHI){
        CondBlock->Instruction_list.pop_front();
    }
    //TODO:update phi instructions in exit(add label from CondBlock)
    //use RegValMap


    auto latch = *latches.begin();
    assert(latch->Instruction_list.back()->GetOpcode() == BR_UNCOND);
    latch->Instruction_list.pop_back();

    //copy header to latch
    RegValMap.clear();
    std::map<int,int> NewResultRegMap;
    for(auto &I:header->Instruction_list){
        if(I->GetOpcode() == PHI){
            auto PhiI = (PhiInstruction*)I;
            PhiI->SetNewFrom(preheader->block_id, CondBlock->block_id);
            RegValMap[PhiI->GetResultRegNo()] = PhiI->GetValOperand(latch->block_id);
        }else{
            if(I->GetResultRegNo() != -1){
                NewResultRegMap[I->GetResultRegNo()] = ++C->max_reg;
            }

            auto nI = I->CopyInstruction();
            nI->ReplaceByMap(NewResultRegMap);
            latch->InsertInstruction(1,nI);
            //br_uncond is impossible
            assert(nI->GetOpcode() != BR_UNCOND);
            if(nI->GetOpcode() == BR_COND){
                auto nBrCondI = (BrCondInstruction*)nI;
                int body_label_id;
                auto exit = *exit_nodes.begin();

                //change br_cond in header to br_uncond
                if(((LabelOperand*)nBrCondI->GetFalseLabel())->GetLabelNo() == exit->block_id){
                    body_label_id = ((LabelOperand*)nBrCondI->GetTrueLabel())->GetLabelNo();
                    nBrCondI->SetNewTarget(body_label_id,header->block_id);
                    I = new BrUncondInstruction(new LabelOperand(body_label_id));
                }else{
                    body_label_id = ((LabelOperand*)nBrCondI->GetFalseLabel())->GetLabelNo();
                    nBrCondI->SetNewTarget(body_label_id,header->block_id);
                    I = new BrUncondInstruction(new LabelOperand(body_label_id));
                }      
            }
            std::vector<Operand> NonResultList = nI->GetNonResultOperands();
            for(auto &op:NonResultList){
                if(op->GetOperandType() == BasicOperand::REG){
                    int RegNo = ((RegOperand*)op)->GetRegNo();
                    if(RegValMap.find(RegNo) != RegValMap.end()){
                        op = RegValMap[RegNo];
                    }
                }
            }
            nI->SetNonResultOperands(NonResultList);
        }
    }
    //TODO: update phi instructions in exit(from header to latch)
    //use RegValMap
    
    //erase useless instructions in header
    for(auto it = header->Instruction_list.begin(); it != header->Instruction_list.end();){
        auto I = *it;
        if(I->GetOpcode() != PHI && I->GetOpcode() != BR_UNCOND){
            it = header->Instruction_list.erase(it);
        }else{
            ++it;
        }
    }

    is_rotate = true;
}