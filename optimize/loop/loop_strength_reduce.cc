#include "../../include/cfg.h"
#include "scev/scev_expr.h"
#include <functional>

static std::set<Instruction> NewGepSet;

//return b - a
SCEVValue GetAddRecursiveDiff(AddSCEVExpr* a, AddSCEVExpr* b) {
    if(a->len !=2 || b->len != 2){
        return {nullptr,OTHER,nullptr};
    }
    if(!(a->RecurExpr->st == b->RecurExpr->st)){
        return {nullptr,OTHER,nullptr};
    }
    // a->PrintSCEVExpr();
    // b->PrintSCEVExpr();
    // std::cerr<<"\n";
    auto val1 = a->st, val2 = b->st;
    
    if(val1.type != ADD && val1.type != OTHER){
        return {nullptr,OTHER,nullptr};
    }
    if(val2.type != ADD && val2.type != OTHER){
        return {nullptr,OTHER,nullptr};
    }

    if(val1.type == OTHER && val2.type == OTHER){
        if(val1.op1->GetOperandType() == BasicOperand::IMMI32 && val2.op1->GetOperandType() == BasicOperand::IMMI32){
            auto imm1 = ((ImmI32Operand*)val1.op1)->GetIntImmVal();
            auto imm2 = ((ImmI32Operand*)val2.op1)->GetIntImmVal();
            SCEVValue res;
            res.op1 = new ImmI32Operand(imm2 - imm1);
            res.type = OTHER;
            res.op2 = nullptr;
            return res;
        }else if(val1.op1->GetOperandType() == BasicOperand::IMMI32){
            auto imm = ((ImmI32Operand*)val1.op1)->GetIntImmVal();
            if(imm == 0){
                return {val2.op1,OTHER,nullptr};
            }
        }
        return {nullptr,OTHER,nullptr};
    }

    if(val1.op1->GetFullName() != val2.op1->GetFullName()){
        return {nullptr,OTHER,nullptr};
    }

    if(val1.type == OTHER && val2.type != OTHER){
        SCEVValue res;
        res.op1 = val2.op2;
        res.type = OTHER;
        res.op2 = nullptr;
        return res;   
    }

    if(val1.type != OTHER && val2.type == OTHER){
        if(val1.op2->GetOperandType() != BasicOperand::IMMI32){
            return {nullptr,OTHER,nullptr};
        }
        auto imm = ((ImmI32Operand*)val1.op2)->GetIntImmVal();
        SCEVValue res;
        res.op1 = new ImmI32Operand(-imm);
        res.type = OTHER;
        res.op2 = nullptr;
        return res;
    }

    if(val1.type != OTHER && val2.type != OTHER){
        if(val1.op2->GetOperandType() != BasicOperand::IMMI32){
            return {nullptr,OTHER,nullptr};
        }
        if(val2.op2->GetOperandType() != BasicOperand::IMMI32){
            return {nullptr,OTHER,nullptr};
        }
        auto imm1 = ((ImmI32Operand*)val1.op2)->GetIntImmVal();
        auto imm2 = ((ImmI32Operand*)val2.op2)->GetIntImmVal();
        SCEVValue res;
        res.op1 = new ImmI32Operand(imm2 - imm1);
        res.type = OTHER;
        res.op2 = nullptr;
        return res;
    }

    return {nullptr,OTHER,nullptr};
}

//return b - a
static Operand GetGEPDiff(Instruction a, Instruction b, NaturalLoop* L) {
    assert(a->GetOpcode() == GETELEMENTPTR);
    assert(b->GetOpcode() == GETELEMENTPTR);
    auto GEPI1 = (GetElementptrInstruction*)a;
    auto GEPI2 = (GetElementptrInstruction*)b;
    if(GEPI1->GetIndexes().size() != GEPI2->GetIndexes().size()){
        return nullptr;
    }
    if(GEPI1->GetPtrVal()->GetFullName() != GEPI2->GetPtrVal()->GetFullName()){
        return nullptr;
    }
    if(GEPI1->GetDims().size() != GEPI2->GetDims().size()){
        return nullptr;
    }
    for(int i = 0; i < GEPI1->GetDims().size(); ++i){
        auto d1 = GEPI1->GetDims()[i];
        auto d2 = GEPI2->GetDims()[i];
        if(d1 != d2){
            return nullptr;
        }
    }

    SCEVValue res;
    res.op1 = new ImmI32Operand(0);
    res.type = OTHER;

    int ArrayDim = 1;
    for (auto dim : GEPI1->GetDims()) {
        ArrayDim *= dim;
    }
    for(int i = 0; i < GEPI1->GetIndexes().size(); ++i){
        auto idx1 = GEPI1->GetIndexes()[i];
        auto idx2 = GEPI2->GetIndexes()[i];
        if(idx1->GetOperandType() == BasicOperand::IMMI32 || idx2->GetOperandType() == BasicOperand::IMMI32){
            if(GEPI1->GetIndexes().size() == 1){
                return nullptr;
            }
            if(idx1->GetOperandType() != idx2->GetOperandType()){
                return nullptr;
            }
            auto imm1 = ((ImmI32Operand*)idx1)->GetIntImmVal();
            auto imm2 = ((ImmI32Operand*)idx2)->GetIntImmVal();
            if(imm1 != imm2){
                SCEVValue diff;
                diff.op1 = new ImmI32Operand((imm2-imm1)*ArrayDim);
                diff.type = OTHER;
                diff.op2 = nullptr;
                res = res + diff;
            }
        }
        else if(idx1->GetFullName() != idx2->GetFullName()){
            auto R1 = (RegOperand *)idx1;
            if (L->scev.SCEVMap.find(R1->GetRegNo()) == L->scev.SCEVMap.end()){
                return nullptr;
            }
            auto R2 = (RegOperand *)idx2;
            if (L->scev.SCEVMap.find(R2->GetRegNo()) == L->scev.SCEVMap.end()){
                return nullptr;
            }
            auto scev1 = L->scev.SCEVMap[R1->GetRegNo()];
            auto scev2 = L->scev.SCEVMap[R2->GetRegNo()];
            auto diff = GetAddRecursiveDiff(scev1,scev2);
            if(diff.op1 == nullptr){
                return nullptr;
            }
            SCEVValue Sz;
            Sz.op1 = new ImmI32Operand(ArrayDim);
            Sz.type = OTHER;

            diff = Sz * diff;
            res = res + diff;
        }
        if (i < GEPI1->GetDims().size()) {
            ArrayDim /= (GEPI1->GetDims())[i];
        }
    }
    if(res.type == OTHER){
        return res.op1;
    }
    return nullptr;
}
/*
non-zero index at end of GEP(only one)
%r0 = getelementptr [100 x i32], ptr @g, i32 0, i32 %r2
%r1 = getelementptr [100 x i32], ptr @g, i32 0, i32 %r3

scevmap: %r2 {%x+c1,+,512}   %r3 {%x+c2,+,512}
c1 and c2 are constant
so we can use %r0 to get %r1
then %r3 may be useless
*/
static void LoopBasicBlockGEPStrengthReduce(CFG *C, NaturalLoop *L) {
    for(auto bb:L->loop_nodes){
        std::vector<GetElementptrInstruction*> GEPIList;
        for(auto &I:bb->Instruction_list){
            if(I->GetOpcode() != GETELEMENTPTR){
                continue;
            }
            auto GEPI = (GetElementptrInstruction*)I;
            bool is_reduce = false;
            for(auto oldI:GEPIList){
                auto op = GetGEPDiff(oldI,I,L);
                if(op != nullptr){
                    is_reduce = true;
                    auto nI = new GetElementptrInstruction(oldI->GetType(),I->GetResultReg(),oldI->GetResult());
                    nI->push_index(op);

                    // I->PrintIR(std::cerr);
                    // oldI->PrintIR(std::cerr);
                    // nI->PrintIR(std::cerr);
                    // std::cerr<<op<<"\n";
                    // std::cerr<<"\n";

                    I = nI;                   
                    break;
                }
            }
            // GEPI->PrintIR(std::cerr);
            GEPIList.push_back(GEPI);
        }
    }
}


void LoopGepStrengthReduce(CFG *C) {
    for (auto l : C->LoopForest.loop_set) {
        LoopBasicBlockGEPStrengthReduce(C, l);
    }
    
    NewGepSet.clear();
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *C, NaturalLoopForest &loop_forest,
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

static SCEVValue GetGEPStep(GetElementptrInstruction *GEPI, std::vector<SCEVValue> values) {
    // GEPI->PrintIR(std::cerr);
    // for(auto val:values){
    //     val.PrintSCEVValue();
    //     std::cerr<<"\n";
    // }std::cerr<<"\n";

    SCEVValue res;
    res.op1 = new ImmI32Operand(0);
    res.type = OTHER;

    int ArrayDim = 1;
    for (auto dim : GEPI->GetDims()) {
        ArrayDim *= dim;
    }
    for (int i = 0; i < values.size(); ++i) {
        auto val = values[i];
        SCEVValue Sz;
        Sz.op1 = new ImmI32Operand(ArrayDim);
        Sz.type = OTHER;

        Sz = Sz * val;
        if (Sz.op1 == nullptr) {
            return {nullptr, OTHER, nullptr};
        }
        if (i < GEPI->GetDims().size()) {
            ArrayDim /= (GEPI->GetDims())[i];
        }

        res = res + Sz;
        if (res.op1 == nullptr) {
            return res;
        }
    }
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
    std::vector<Instruction> LatchInstList;
    std::vector<Instruction> HeaderInstList;
    for (auto bb : loop_nodes) {
        for (auto &I : bb->Instruction_list) {
            if (I->GetOpcode() != GETELEMENTPTR) {
                continue;
            }
            if (!C->IsDominate(bb->block_id, latch->block_id)) {
                if (NewGepSet.find(I) == NewGepSet.end()) {
                    continue;
                }
            }
            auto GEPI = (GetElementptrInstruction *)I;
            bool isReduceBetter = false;
            int is_induction = true;
            for (int i = 0; i < GEPI->GetIndexes().size(); ++i) {
                auto index = (GEPI->GetIndexes())[i];
                if (index->GetOperandType() == BasicOperand::IMMI32) {
                    auto imm = ((ImmI32Operand *)index)->GetIntImmVal();
                } else if (index->GetOperandType() == BasicOperand::REG) {
                    auto R = (RegOperand *)index;
                    if (scev.SCEVMap.find(R->GetRegNo()) == scev.SCEVMap.end()) {
                        is_induction = false;
                        break;
                    }
                    auto val = scev.SCEVMap[R->GetRegNo()];
                    if (val->len > 2) {
                        is_induction = false;
                        break;
                    }
                    if (val->len == 2){
                        isReduceBetter = true;
                    }
                } else {    // should not reach here
                    assert(false);
                }
            }
            
            if (isReduceBetter == false || is_induction == false) {
                continue;
            }
            std::vector<SCEVValue> step_vals;
            for (auto index : GEPI->GetIndexes()) {
                SCEVValue t;
                t.op1 = new ImmI32Operand(0);
                t.type = OTHER;
                if (index->GetOperandType() == BasicOperand::IMMI32) {
                    auto imm = ((ImmI32Operand *)index)->GetIntImmVal();
                    step_vals.push_back(t);
                } else if (index->GetOperandType() == BasicOperand::REG) {
                    auto R = (RegOperand *)index;
                    auto val = scev.SCEVMap[R->GetRegNo()];
                    if (val->len == 1) {
                        step_vals.push_back(t);
                    } else if (val->len == 2) {
                        step_vals.push_back(val->RecurExpr->st);
                    } else {    // should not reach here
                        assert(false);
                    }
                }
            }
            auto StepVal = GetGEPStep(GEPI, step_vals);
            if (StepVal.op1 == nullptr) {
                continue;
            }
            auto InitGEPI = new GetElementptrInstruction(GEPI->GetType(), GetNewRegOperand(++C->max_reg),
                                                         GEPI->GetPtrVal(), GEPI->GetDims());

            for (auto index : GEPI->GetIndexes()) {
                if (index->GetOperandType() == BasicOperand::IMMI32) {
                    auto imm = ((ImmI32Operand *)index)->GetIntImmVal();
                    InitGEPI->push_idx_imm32(imm);
                } else if (index->GetOperandType() == BasicOperand::REG) {
                    auto R = (RegOperand *)index;
                    auto val = scev.SCEVMap[R->GetRegNo()];
                    if (val->len <= 2) {
                        if (val->st.type != OTHER) {
                            // std::cerr << "InitGEPI Generate New ArithI ";
                            // val->PrintSCEVExpr();
                            auto ArithI = new ArithmeticInstruction(val->st.type, I32, val->st.op1, val->st.op2,
                                                                    GetNewRegOperand(++C->max_reg));
                            auto tmpI = preheader->Instruction_list.back();
                            assert(tmpI->GetOpcode() == BR_UNCOND);
                            preheader->Instruction_list.pop_back();
                            preheader->Instruction_list.push_back(ArithI);
                            preheader->Instruction_list.push_back(tmpI);
                            InitGEPI->push_index(ArithI->GetResultReg());
                            continue;
                        }
                        InitGEPI->push_index(val->st.op1);
                    } else {    // should not reach here
                        assert(false);
                    }
                }
            }
            // now we only consider single step
            if (StepVal.type == OTHER) {
                // std::cerr << "LoopStrengthInLoop Header = " << header->block_id << "\n";
                // std::cerr << "LoopStrengthReduce:Raw  ";
                // GEPI->PrintIR(std::cerr);
                // std::cerr << "LoopStrengthReduce:PreHeader  ";
                // InitGEPI->PrintIR(std::cerr);

                // we add initVal to preheader
                auto tmpI = preheader->Instruction_list.back();
                assert(tmpI->GetOpcode() == BR_UNCOND);
                preheader->Instruction_list.pop_back();
                preheader->Instruction_list.push_back(InitGEPI);
                preheader->Instruction_list.push_back(tmpI);
                NewGepSet.insert(InitGEPI);

                // then we add induction change to latch
                auto LatchGEPI =
                new GetElementptrInstruction(GEPI->GetType(), GetNewRegOperand(++C->max_reg), GEPI->GetResult());
                LatchGEPI->push_index(StepVal.op1);

                LatchInstList.push_back(LatchGEPI);
                // std::cerr << "LoopStrengthReduce:Latch  ";
                // LatchGEPI->PrintIR(std::cerr);

                // final we add val to header
                auto PhiI = new PhiInstruction(PTR, GEPI->GetResult());
                PhiI->InsertPhi(InitGEPI->GetResult(), GetNewLabelOperand(preheader->block_id));
                PhiI->InsertPhi(LatchGEPI->GetResult(), GetNewLabelOperand(latch->block_id));

                HeaderInstList.push_back(PhiI);

                // std::cerr << "LoopStrengthReduce:Header  ";
                // PhiI->PrintIR(std::cerr);
                // std::cerr << "\n";

                // Set GEPI's result to new Reg, then it will be eliminate in DCE
                I = new ArithmeticInstruction(ADD, I32, new ImmI32Operand(0), new ImmI32Operand(0),
                                              GetNewRegOperand(++C->max_reg));
            }
        }
    }
    auto tmpI = latch->Instruction_list.back();
    assert(tmpI->GetOpcode() == BR_UNCOND);
    latch->Instruction_list.pop_back();
    for(auto I:LatchInstList){
        latch->Instruction_list.push_back(I);
    }
    latch->Instruction_list.push_back(tmpI);

    for(auto I:HeaderInstList){
        header->InsertInstruction(0,I);
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



/*
L4: (preheader)
    something
L1: (header)
    %r25 = phi i32 [0,%L4],[%r251,%L1]
    %r24 = phi i32 [0,%L4],[%r252,%L1]
    ......
    %r251 = add i32 %r25,4
    %r252 = add i32 %r24,4 

then %r25 and %r24 are same 
*/
void LoopIndVarSimplify(CFG* C)
{
    std::map<int,Instruction> definemap;
    std::set<Instruction> EraseSet;
    std::map<int,int> replacemap;
    for(auto [id,bb] : *C->block_map){
        for(auto I : bb->Instruction_list){
            if(I->GetOpcode() == ADD){
                auto addI = (ArithmeticInstruction*)I;
                if(addI->GetDataType() != I32 && addI->GetOperand1()->GetOperandType() != BasicOperand::REG && addI->GetOperand2()->GetOperandType() != BasicOperand::IMMI32){
                    continue;
                }
                definemap[I->GetResultRegNo()] = addI;
            }else if(I->GetOpcode() == GETELEMENTPTR){
                auto gepI = (GetElementptrInstruction*)I;
                auto ptr = gepI->GetPtrVal();
                if(gepI->GetDims().size() != 0 || ptr->GetOperandType() != BasicOperand::REG){
                    continue;
                }
                definemap[I->GetResultRegNo()] = gepI;
                // gepI->PrintIR(std::cerr);
            }
        }
    }
    for(auto l:C->LoopForest.loop_set){
        auto header = l->header;
        assert(l->latches.size() == 1);
        auto latch = *l->latches.begin();

        for(auto I:header->Instruction_list){
            if(I->GetOpcode() == PHI){
                auto PhiI1 = (PhiInstruction*)I;
                auto result_val1 = PhiI1->GetResultOp();
                auto preheader_val1 = PhiI1->GetValOperand(l->preheader->block_id);
                auto latch_val1 = PhiI1->GetValOperand(latch->block_id);
                
                if(latch_val1->GetOperandType() != BasicOperand::REG){
                    continue;
                }
                
                auto latch_reg1 = (RegOperand*)latch_val1;
                auto latch_regno1 = latch_reg1->GetRegNo();
                if(definemap.find(latch_regno1) == definemap.end()){
                    continue;
                }
                
                auto origin_latchI1 = definemap[latch_regno1];
                if(origin_latchI1->GetOpcode() == ADD){
                    if(((ArithmeticInstruction*)origin_latchI1)->GetOperand1()->GetFullName() != result_val1->GetFullName()){
                        continue;
                    }
                }else{
                    if(((GetElementptrInstruction*)origin_latchI1)->GetPtrVal()->GetFullName() != result_val1->GetFullName()){
                        continue;
                    }
                }
                
                // PhiI1->PrintIR(std::cerr);
                // latchI1->PrintIR(std::cerr);
                bool start_flag = 0;
                for(auto &secI:header->Instruction_list){
                    if(secI->GetOpcode() == PHI){
                        if(!start_flag){
                            if(secI->GetResultRegNo() == I->GetResultRegNo()){
                                start_flag = 1;
                            }
                            continue;
                        }
                        
                        
                        auto PhiI2 = (PhiInstruction*)secI;
                        auto result_val2 = PhiI2->GetResultOp();
                        auto preheader_val2 = PhiI2->GetValOperand(l->preheader->block_id);
                        auto latch_val2 = PhiI2->GetValOperand(latch->block_id);
                        if(preheader_val1->GetFullName() != preheader_val2->GetFullName()){
                            continue;
                        }
                        if(latch_val2->GetOperandType() != BasicOperand::REG){
                            continue;
                        }
                        
                        auto latch_reg2 = (RegOperand*)latch_val2;
                        auto latch_regno2 = latch_reg2->GetRegNo();
                        if(definemap.find(latch_regno2) == definemap.end()){
                            continue;
                        }
                        auto origin_latchI2 = definemap[latch_regno2];
                        if(origin_latchI2->GetOpcode() != origin_latchI1->GetOpcode()){
                            continue;
                        }
                        if(origin_latchI1->GetOpcode() == ADD){
                            auto latchI1 = (ArithmeticInstruction*)origin_latchI1;
                            auto latchI2 = (ArithmeticInstruction*)origin_latchI2;
                            if(latchI2->GetOperand1()->GetFullName() != result_val2->GetFullName()){
                                continue;
                            }
                            if(latchI1->GetOperand2()->GetFullName() != latchI2->GetOperand2()->GetFullName()){
                                continue;
                            }
                            // I->PrintIR(std::cerr);
                            // secI->PrintIR(std::cerr);
                            // latchI1->PrintIR(std::cerr);
                            // latchI2->PrintIR(std::cerr);
                            // puts("----------");
                        }else{
                            auto latchI1 = (GetElementptrInstruction*)origin_latchI1;
                            auto latchI2 = (GetElementptrInstruction*)origin_latchI2;
                            
                            if(latchI2->GetPtrVal()->GetFullName() != result_val2->GetFullName()){
                                continue;
                            }
                            // I->PrintIR(std::cerr);
                            // secI->PrintIR(std::cerr);
                            // latchI1->PrintIR(std::cerr);
                            // latchI2->PrintIR(std::cerr);
                            // puts("----------");
                            if(latchI1->GetIndexes()[0]->GetFullName() != latchI2->GetIndexes()[0]->GetFullName()){
                                continue;
                            }
                            
                        }
                        
                        // secI->PrintIR(std::cerr);
                        // first option : %r24 = %25 + 0
                        // secI = new ArithmeticInstruction(ADD,I32,result_val1,new ImmI32Operand(0),result_val2);
                        
                        // second option: %24 = phi i32 [0,%L4],[%r251,%L1](definition of %r25)
                        // auto vec = PhiI2->GetNonResultOperands();
                        // vec.pop_back();
                        // vec.push_back(PhiI1->GetNonResultOperands().back());
                        // PhiI2->SetNonResultOperands(vec);

                        //replace
                        // std::cerr<<result_val2->GetFullName()<<"->"<<result_val1->GetFullName()<<'\n';
                        auto regno1 = ((RegOperand*)result_val1)->GetRegNo();
                        auto regno2 = ((RegOperand*)result_val2)->GetRegNo();
                        while(replacemap.find(regno1) != replacemap.end()){
                            regno1 = replacemap[regno1];
                        }
                        replacemap[regno2] = regno1;
                        // std::cerr<<regno2<<" -> "<<regno1<<'\n';
                        // secI->PrintIR(std::cerr);
                        // puts("----------");
                    }else{
                        break;
                    }
                }
                // puts("-------------------------");
            }else{
                break;
            }
        }
    }
    for(auto [id,bb]:*C->block_map){
        for(auto &I:bb->Instruction_list){
            // I->ReplaceRegByMap(replacemap);
            auto vec = I->GetNonResultOperands();
            for(auto &op : vec){
                if(op->GetOperandType() == BasicOperand::REG){
                    auto reg = (RegOperand*)op;
                    auto regno = reg->GetRegNo();
                    if(replacemap.find(regno) != replacemap.end()){
                        op = GetNewRegOperand(regno);
                    }
                }
            }
            I->SetNonResultOperands(vec);
        }
    }
}