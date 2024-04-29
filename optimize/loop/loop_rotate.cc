#include "../../include/cfg.h"
#include <assert.h>
#include <set>

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
void LoopRotate(CFG *C) {
    for (auto loop : C->LoopForest.loop_set) {
        loop->LoopRotate(C);
    }
    // update cfg information
    C->BuildCFG();
    C->BuildDominatorTree();

    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            I->SetBlockID(bb->block_id);
        }
    }

    // for(auto loop:C->LoopForest.loop_set){
    //     loop->LoopSimplifyCheck(C);
    // }
}

/*
while(a[i]){
    S += a[i];
    i = i + 1;
}
after CSE, the a[i] will be CSE, so the code is
while(t = a[i]){ //the value def in header will be used in loop body
    S += t;
    i = i + 1;
}
after rotate, the loop will be
if(t1 = a[i]){
    do{
        S += t1;
        i = i + 1;
    }while(a[i])
}
the loop after rotate is obviously wrong, so we need to change the loop to:

if(t1 = a[i]){
    do{
        t3 = phi(t1,t2)
        S += t3;
        i = i + 1;
    }while(t2 = a[i])
}
*/
std::set<Instruction> CheckHeaderUseInLoopBody(CFG *C, NaturalLoop *L, int result_regno) {
    std::set<Instruction> res;
    for (auto bb : L->loop_nodes) {
        if (bb == L->header) {
            continue;
        }
        for (auto I : bb->Instruction_list) {
            for (auto op : I->GetNonResultOperands()) {
                if (op->GetOperandType() == BasicOperand::REG) {
                    auto rop = (RegOperand *)op;
                    if (rop->GetRegNo() == result_regno) {
                        res.insert(I);
                    }
                }
            }
        }
    }
    return res;
}

void SolveHeaderUseInLoopBody(CFG *C, NaturalLoop *L, Instruction defI, int new_regno, std::set<Instruction> useinsts,
                              LLVMBlock CondBlock, LLVMBlock latch) {
    assert(defI->GetResultType() != VOID);

    int old_regno = defI->GetResultRegNo();
    auto PhiI = new PhiInstruction(defI->GetResultType(), new RegOperand(++C->max_reg));
    PhiI->InsertPhi(new RegOperand(old_regno), new LabelOperand(CondBlock->block_id));
    PhiI->InsertPhi(new RegOperand(new_regno), new LabelOperand(latch->block_id));
    L->header->InsertInstruction(0, PhiI);
    // PhiI->PrintIR(std::cerr);
    std::map<int, int> replace_map;
    replace_map[old_regno] = C->max_reg;
    for (auto I : useinsts) {
        I->ReplaceByMap(replace_map);
    }
}

/*
             exit       exit
               |         |
preheader -> header -> body
               |<--------|(latch)

After LoopRotate
the Successor of header in loop will become new header
(if multiple, can not rotate)

preheader ->(CondBlock) -> header -> body -> exit
              |->exit                       | <----- |(latch) -> exit
*/
void NaturalLoop::LoopRotate(CFG *C) {
    if (exit_nodes.size() > 1) {
        return;
    }
    if (exiting_nodes.find(header) == exiting_nodes.end()) {
        return;
    }
    auto exit = *exit_nodes.begin();

    std::set<Instruction> HeaderDefLoopUseInsts;
    std::map<Instruction, std::set<Instruction>> HeaderUseMap;
    for (auto I : header->Instruction_list) {
        if (I->GetOpcode() == PHI) {
            continue;
        }
        if (I->GetResultRegNo() != -1) {
            auto useinsts = CheckHeaderUseInLoopBody(C, this, I->GetResultRegNo());
            if (useinsts.size() != 0) {
                HeaderDefLoopUseInsts.insert(I);
                HeaderUseMap[I] = useinsts;
            }
        }
    }
    // add CondBlock(preheader -> CondBlock -> header)
    LLVMBlock CondBlock = C->NewBlock();
    auto I = preheader->Instruction_list.back();
    // change preheader br, to header -> to CondBlock
    if (I->GetOpcode() == BR_COND) {
        auto brI = (BrCondInstruction *)I;
        brI->SetNewTarget(header->block_id, CondBlock->block_id);
    } else if (I->GetOpcode() == BR_UNCOND) {
        auto brI = (BrUncondInstruction *)I;
        brI->SetTarget(new LabelOperand(CondBlock->block_id));
    }

    // Insert CondBlock Instruction
    std::map<int, int> RegReplaceMap;
    for (auto I : header->Instruction_list) {
        auto nI = I->CopyInstruction();

        if (nI->GetOpcode() == PHI) {    // erase the phi from latch
            auto PhiI = (PhiInstruction *)nI;
            assert(PhiI->GetPhiList().size() == 2);
            // in header, the phi is %r = phi [%v1, %preheader],[%v2, %latch]
            // the phi is now %t = phi [%v1, %preheader]
            // all the use of %r in header should be %t in CondBlock now
            auto t = *latches.begin();
            PhiI->ErasePhi(t->block_id);
            // change result operand
            PhiI->SetResultReg(++C->max_reg);
            RegReplaceMap[I->GetResultRegNo()] = C->max_reg;
        } else {    // not phi, change its' operands
            nI->ReplaceByMap(RegReplaceMap);
        }
        // br_uncond is impossible (because preheader->header  and  latch->header)
        assert(nI->GetOpcode() != BR_UNCOND);
        if (nI->GetOpcode() == BR_COND) {
            // CondBlock -> header  and  CondBlock -> exit
            auto nBrI = (BrCondInstruction *)nI;
            int true_id = ((LabelOperand *)nBrI->GetTrueLabel())->GetLabelNo();
            int false_id = ((LabelOperand *)nBrI->GetFalseLabel())->GetLabelNo();
            if (true_id == exit->block_id) {
                nBrI->SetNewTarget(false_id, header->block_id);
            } else {
                nBrI->SetNewTarget(true_id, header->block_id);
            }
        }
        CondBlock->InsertInstruction(1, nI);
    }

    // update phi instructions in exit(add label from CondBlock)
    for (auto I : exit->Instruction_list) {
        if (I->GetOpcode() != PHI) {
            break;
        }
        auto PhiI = (PhiInstruction *)I;
        auto val = PhiI->GetValOperand(header->block_id);
        if (val->GetOperandType() != BasicOperand::REG) {
            continue;
        }
        // find the val operand in header
        bool is_find = false;
        // in header, the phi is %r = phi [%v1, %preheader],[%v2, %latch]
        // in exit, the phi is %t = phi [%r, %header], ...

        // then phi is changed to %t = phi [%v1, %CondBlock], ...
        for (auto I2 : header->Instruction_list) {
            if (I2->GetOpcode() != PHI) {
                break;
            }

            auto PhiI2 = (PhiInstruction *)I2;
            // if find %r, then add phi in exit
            if (PhiI2->GetResultOp()->GetFullName() == val->GetFullName()) {
                is_find = true;
                PhiI->InsertPhi(PhiI2->GetValOperand(preheader->block_id), new LabelOperand(CondBlock->block_id));
                break;
            }
        }
        // can not find, just insert the header val operand
        if (is_find == false) {
            PhiI->InsertPhi(PhiI->GetValOperand(header->block_id)->CopyOperand(),
                            new LabelOperand(CondBlock->block_id));
        }
    }

    auto latch = *latches.begin();
    assert(latch->Instruction_list.back()->GetOpcode() == BR_UNCOND);
    latch->Instruction_list.pop_back();

    std::map<int, Operand> RegValMap;
    // copy header to latch
    std::map<int, int> NewResultRegMap;
    for (auto &I : header->Instruction_list) {
        if (I->GetOpcode() == PHI) {
            // set from  (preheader -> CondBlock -> header)
            auto PhiI = (PhiInstruction *)I;
            PhiI->SetNewFrom(preheader->block_id, CondBlock->block_id);
            // in header, the phi is %r = phi [%v1, %CondBlock],[%v2, %latch]
            // all the use %r should be %v2 in latch
            RegValMap[PhiI->GetResultRegNo()] = PhiI->GetValOperand(latch->block_id);
        } else {
            if (I->GetResultRegNo() != -1) {    // set new result RegOperand
                NewResultRegMap[I->GetResultRegNo()] = ++C->max_reg;
                if (HeaderDefLoopUseInsts.find(I) != HeaderDefLoopUseInsts.end()) {
                    SolveHeaderUseInLoopBody(C, this, I, C->max_reg, HeaderUseMap[I], CondBlock, latch);
                }
            }

            auto nI = I->CopyInstruction();
            nI->ReplaceByMap(NewResultRegMap);
            latch->InsertInstruction(1, nI);
            // br_uncond is impossible
            assert(nI->GetOpcode() != BR_UNCOND);
            if (nI->GetOpcode() == BR_COND) {    // header -> exit  and  header->loopbody
                auto nBrCondI = (BrCondInstruction *)nI;
                int body_label_id;

                // change br_cond in header to br_uncond(header -> loopbody)
                if (((LabelOperand *)nBrCondI->GetFalseLabel())->GetLabelNo() == exit->block_id) {
                    body_label_id = ((LabelOperand *)nBrCondI->GetTrueLabel())->GetLabelNo();
                    nBrCondI->SetNewTarget(body_label_id, header->block_id);
                    I = new BrUncondInstruction(new LabelOperand(body_label_id));
                } else {
                    body_label_id = ((LabelOperand *)nBrCondI->GetFalseLabel())->GetLabelNo();
                    nBrCondI->SetNewTarget(body_label_id, header->block_id);
                    I = new BrUncondInstruction(new LabelOperand(body_label_id));
                }
            }
            // replace the operand of insts with RegValMap
            std::vector<Operand> NonResultList = nI->GetNonResultOperands();
            for (auto &op : NonResultList) {
                if (op->GetOperandType() == BasicOperand::REG) {
                    int RegNo = ((RegOperand *)op)->GetRegNo();
                    if (RegValMap.find(RegNo) != RegValMap.end()) {
                        op = RegValMap[RegNo];
                    }
                }
            }
            nI->SetNonResultOperands(NonResultList);
        }
    }

    // update phi instructions in exit(label header changes to latch)
    for (auto I : exit->Instruction_list) {
        if (I->GetOpcode() != PHI) {
            break;
        }
        auto PhiI = (PhiInstruction *)I;
        auto val = PhiI->GetValOperand(header->block_id);
        if (val->GetOperandType() != BasicOperand::REG) {
            continue;
        }
        // latch -> exit
        PhiI->SetNewFrom(header->block_id, latch->block_id);
        // find the val operand in header
        bool is_find = false;

        // in header, the phi is %r = phi [%v1, %CondBlock],[%v2, %latch]
        // in exit, the phi now is %r2 = phi [%v1, %CondBlock], [%r, %header]
        // the phi in exit should be %r2 = phi [%v1, %CondBlock], [%v2, %latch]
        for (auto I2 : header->Instruction_list) {
            if (I2->GetOpcode() != PHI) {
                break;
            }
            auto PhiI2 = (PhiInstruction *)I2;
            // if find (%r), then change phi in exit (%r -> %v2)
            if (PhiI2->GetResultOp()->GetFullName() == val->GetFullName()) {
                is_find = true;
                PhiI->SetValOperand(latch->block_id, PhiI2->GetValOperand(latch->block_id));
                break;
            }
        }
        // can not find, check if the val changes
        if (is_find == false) {
            auto v = PhiI->GetValOperand(latch->block_id);
            if (v->GetOperandType() == BasicOperand::REG) {
                auto rv = (RegOperand *)v;
                if (NewResultRegMap.find(rv->GetRegNo()) != NewResultRegMap.end()) {
                    rv->SetRegNo(NewResultRegMap[rv->GetRegNo()]);
                }
            }
        }
    }

    // erase useless instructions in header
    for (auto it = header->Instruction_list.begin(); it != header->Instruction_list.end();) {
        auto I = *it;
        if (I->GetOpcode() != PHI && I->GetOpcode() != BR_UNCOND) {
            it = header->Instruction_list.erase(it);
        } else {
            ++it;
        }
    }
}