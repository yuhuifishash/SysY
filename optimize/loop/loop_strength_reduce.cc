#include "../../include/cfg.h"
#include "scev/scev_expr.h"
#include <functional>

static std::set<Instruction> NewGepSet;

void LoopGepStrengthReduce(CFG *C) {
    NewGepSet.clear();
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *, NaturalLoopForest &loop_forest,
                                                                             NaturalLoop *L) {
        for (auto lv : loop_forest.loopG[L->loop_id]) {
            dfs(C, loop_forest, lv);
        }
        L->LoopGepStrengthReduce(C);
    };

    for (auto l : C->LoopForest.loop_set) {
        if (l->fa_loop == nullptr) {
            dfs(C, C->LoopForest, l);
        }
    }
}

SCEVValue GetGEPStep(GetElementptrInstruction* GEPI, std::vector<SCEVValue> values) {
    // GEPI->PrintIR(std::cerr);
    // for(auto val:values){
    //     val.PrintSCEVValue();
    //     std::cerr<<"\n";
    // }std::cerr<<"\n";

    SCEVValue res;
    res.op1 = new ImmI32Operand(0);
    res.type = OTHER;

    int ArrayDim = 1;
    for(auto dim:GEPI->GetDims()){
        ArrayDim *= dim;
    }
    for(int i = 0; i < values.size(); ++i){
        auto val = values[i];
        SCEVValue Sz;
        Sz.op1 = new ImmI32Operand(ArrayDim);
        Sz.type = OTHER;

        Sz = Sz*val;
        if(Sz.op1 == nullptr){
            return {nullptr, OTHER, nullptr};
        }
        if(i < GEPI->GetDims().size()){
            ArrayDim /= (GEPI->GetDims())[i];
        }

        res = res + Sz;
        if(res.op1 == nullptr){
            return res;
        }
    }
    // res.PrintSCEVValue();
    return res;
}


void NaturalLoop::LoopGepStrengthReduce(CFG *C) {
    // first we try to reduce GEP (non zero indexs >= 2) .
    // all the index of GEP must be loop induction variable or invariant variable
    // the GEP must dominate latch of the loop
    
    /*
        %ry = GEP [100x[100xi32]], ptr @G, i32 0, i32 %r1, i32 %r2
        %r2: {0,+,3}            %r1: Invariant
        ------------------------------------------------------will become
        preheader:
            %st = GEP [100x[100xi32]], ptr @G, i32 0, i32 %r1, i32 0
        header:
            %ry = phi [%st, %preheader], [%n, %latch]
        latch:
            %n = GEP i32, ptr %ry, i32 3
    */
    assert(latches.size() == 1);
    auto latch = *latches.begin();
    // std::cerr<<latch->block_id<<"\n";
    for(auto bb:loop_nodes){
        for(auto &I:bb->Instruction_list){
            if(I->GetOpcode() != GETELEMENTPTR){
                continue;
            }
            if(!C->IsDominate(bb->block_id,latch->block_id)){
                if(NewGepSet.find(I) == NewGepSet.end()){
                    continue;
                }
            }
            auto GEPI = (GetElementptrInstruction*)I;
            bool isReduceBetter = false;
            int is_induction = true;
            for(int i = 0; i < GEPI->GetIndexes().size(); ++i){
                auto index = (GEPI->GetIndexes())[i];
                if(index->GetOperandType() == BasicOperand::IMMI32){
                    auto imm = ((ImmI32Operand*)index)->GetIntImmVal();
                }else if(index->GetOperandType() == BasicOperand::REG){
                    auto R = (RegOperand*)index;
                    if(scev.SCEVMap.find(R->GetRegNo()) == scev.SCEVMap.end()){
                        is_induction = false;
                        break;
                    }
                    auto val = scev.SCEVMap[R->GetRegNo()];
                    if(val->len > 2){
                        is_induction = false;
                        break;
                    }
                    if(i + 1 != GEPI->GetIndexes().size()){
                        isReduceBetter = true;
                    }
                }else{// should not reach here
                    assert(false);
                }
            }
            if(isReduceBetter == false || is_induction == false){
                continue;
            }
            std::vector<SCEVValue> step_vals;
            for(auto index:GEPI->GetIndexes()){
                SCEVValue t;
                t.op1 = new ImmI32Operand(0);
                t.type = OTHER;
                if(index->GetOperandType() == BasicOperand::IMMI32){
                    auto imm = ((ImmI32Operand*)index)->GetIntImmVal();
                    step_vals.push_back(t);
                }else if(index->GetOperandType() == BasicOperand::REG){
                    auto R = (RegOperand*)index;
                    auto val = scev.SCEVMap[R->GetRegNo()];
                    if(val->len == 1){
                        step_vals.push_back(t);
                    }else if(val->len == 2){
                        step_vals.push_back(val->RecurExpr->st);
                    }else{// should not reach here
                        assert(false);
                    }
                }
            }
            auto StepVal = GetGEPStep(GEPI, step_vals);
            if(StepVal.op1 == nullptr){
                continue;
            }
            
            auto InitGEPI = new GetElementptrInstruction(GEPI->GetType(),GetNewRegOperand(++C->max_reg),
                                                            GEPI->GetPtrVal(),GEPI->GetDims());

            bool isInitReduce = true;
            for(auto index:GEPI->GetIndexes()){
                if(index->GetOperandType() == BasicOperand::IMMI32){
                    auto imm = ((ImmI32Operand*)index)->GetIntImmVal();
                    InitGEPI->push_idx_imm32(imm);
                }else if(index->GetOperandType() == BasicOperand::REG){
                    auto R = (RegOperand*)index;
                    auto val = scev.SCEVMap[R->GetRegNo()];
                    if(val->len == 1){
                        if(val->st.type != OTHER){
                            isInitReduce = false;
                            break;
                        }
                        InitGEPI->push_index(val->st.op1);
                    }else if(val->len == 2){
                        if(val->st.type != OTHER){
                            isInitReduce = false;
                            break;
                        }
                        InitGEPI->push_index(val->st.op1);
                    }else{// should not reach here
                        assert(false);
                    }
                }
            }
            if(!isInitReduce){
                continue;
            }

            if(StepVal.type == OTHER){ 
                std::cerr<<"LoopStrengthInLoop Header = "<<header->block_id<<"\n\n";
                std::cerr<<"LoopStrengthReduce:Row  ";GEPI->PrintIR(std::cerr);
                // now we only consider single step and initval
                std::cerr<<"LoopStrengthReduce:PreHeader  ";InitGEPI->PrintIR(std::cerr);

                // we add initVal to preheader
                auto tmpI = preheader->Instruction_list.back();
                assert(tmpI->GetOpcode() == BR_UNCOND);
                preheader->Instruction_list.pop_back();
                preheader->Instruction_list.push_back(InitGEPI);
                preheader->Instruction_list.push_back(tmpI);
                NewGepSet.insert(InitGEPI);
                
                // then we add induction change to latch
                auto LatchGEPI = new GetElementptrInstruction(GEPI->GetType(),GetNewRegOperand(++C->max_reg),GEPI->GetResult());
                LatchGEPI->push_index(StepVal.op1);
                std::cerr<<"LoopStrengthReduce:Latch  " ;LatchGEPI->PrintIR(std::cerr);

                tmpI = latch->Instruction_list.back();
                assert(tmpI->GetOpcode() == BR_UNCOND);
                latch->Instruction_list.pop_back();
                latch->Instruction_list.push_back(LatchGEPI);
                latch->Instruction_list.push_back(tmpI);

                // final we add val to header
                auto PhiI = new PhiInstruction(PTR,GEPI->GetResult());
                PhiI->InsertPhi(InitGEPI->GetResult(), GetNewLabelOperand(preheader->block_id));
                PhiI->InsertPhi(LatchGEPI->GetResult(), GetNewLabelOperand(latch->block_id));
                header->InsertInstruction(0,PhiI);
                std::cerr<<"LoopStrengthReduce:Header  ";PhiI->PrintIR(std::cerr); 

                //Set GEPI's result to new Reg, then it will be eliminate in DCE
                I = new ArithmeticInstruction(ADD,I32,new ImmI32Operand(0),new ImmI32Operand(0),GetNewRegOperand(++C->max_reg));
            }
        }
    }


    

}

// then we reduce other instructions
/*
    %r2 = mul %r1, 105 (only used for %r3)
    %r3 = add %r2, 2
    %r2:{0,+,105}     %r3:{2,+,105}
    ---------------------------------------------------will become
    preheader:
    header:
        %r2 = phi [0, %preheader], [%n1, %latch]
        %r3 = phi [2, %preheader], [%n2, %latch]
    latch:
        %n1 = add %r2,105
        %n2 = add %r3,105

    then %r2 is dead, we can eliminate it by ADCE
*/