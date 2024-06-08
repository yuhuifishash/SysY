#include "../../include/cfg.h"
#include "scev/scev_expr.h"
#include <functional>

static std::map<int, Instruction> ResultMap;

void LoopIdomRecognize(CFG *C) {
    ResultMap.clear();
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            int v = I->GetResultRegNo();
            if (v != -1) {    // result exists
                ResultMap[v] = I;
            }
        }
    }

    bool is_recognize = false;
    std::function<void(CFG *, NaturalLoopForest &, NaturalLoop *)> dfs = [&](CFG *, NaturalLoopForest &loop_forest,
                                                                             NaturalLoop *L) {
        for (auto lv : loop_forest.loopG[L->loop_id]) {
            dfs(C, loop_forest, lv);
        }
        if (is_recognize == true) {
            return;
        }
        is_recognize = L->LoopIdomRecognize(C);
    };

    for (auto l : C->LoopForest.loop_set) {
        if (l->fa_loop == nullptr) {
            is_recognize = false;
            dfs(C, C->LoopForest, l);
        }
    }

    C->BuildCFG();
    C->BuildDominatorTree();
}

static bool IsLoopSideEffect(CFG* C, NaturalLoop *L) {
    for(auto n:L->loop_nodes){
        for(auto I:n->Instruction_list){
            if(I->GetOpcode() == STORE){
                return true;
            }else if(I->GetOpcode() == CALL){
                return true;
            }
        }
    }
    return false;
}

static Operand GetLoopIterations(CFG* C, NaturalLoop *L) {
    auto lb = L->scev.forloop_info.lowerbound;
    auto ub = L->scev.forloop_info.upperbound;
    auto step = L->scev.forloop_info.step;
    if(step.type != OTHER || step.op1->GetOperandType() != BasicOperand::IMMI32){
        return nullptr;
    }
    if(((ImmI32Operand*)step.op1)->GetIntImmVal() != 1){
        return nullptr;
    }
    auto tmpI = L->preheader->Instruction_list.back();
    L->preheader->Instruction_list.pop_back();
    auto I1 = ub.GenerateValueInst(C);
    auto I2 = lb.GenerateValueInst(C);
    L->preheader->Instruction_list.push_back(I1);
    L->preheader->Instruction_list.push_back(I2);
    auto res1 = I1->GetResultReg();
    auto res2 = I2->GetResultReg();
    if(L->scev.forloop_info.is_upperbound_closed){
        //ub - (lb - 2)
        auto I3 = new ArithmeticInstruction(SUB,I32,res2,new ImmI32Operand(2),GetNewRegOperand(++C->max_reg));
        L->preheader->Instruction_list.push_back(I3);
        auto I4 = new ArithmeticInstruction(SUB,I32,res1,I3->GetResultReg(),GetNewRegOperand(++C->max_reg));
        L->preheader->Instruction_list.push_back(I4);    
    }else{
        //ub - (lb - 1)
        auto I3 = new ArithmeticInstruction(SUB,I32,res2,new ImmI32Operand(1),GetNewRegOperand(++C->max_reg));
        L->preheader->Instruction_list.push_back(I3);
        auto I4 = new ArithmeticInstruction(SUB,I32,res1,I3->GetResultReg(),GetNewRegOperand(++C->max_reg));
        L->preheader->Instruction_list.push_back(I4);  
    }
    L->preheader->Instruction_list.push_back(tmpI);

    return GetNewRegOperand(C->max_reg);
}
/*
c is positive const
p is positive const
S = 0
i = l
do{
    S += c;
    S %= p;
    i = i + 1;
}while(i < u)
----------------------------------------
S = S0 + 1ll*(u-l)*c%p
*/

static bool LoopReduceSimpleAddMod(CFG *C, NaturalLoop *L) {
    if(!L->scev.is_simpleloop){
        return false;
    }
    if(L->loop_nodes.size() != 2){//empty latch
        return false;
    }
    assert(L->exit_nodes.size() == 1);
    auto exit = *L->exit_nodes.begin();
    assert(L->latches.size() == 1);
    auto latch = *L->latches.begin();
    assert(L->exiting_nodes.size() == 1);
    auto exiting = *L->exiting_nodes.begin();

    assert(C->IsDominate(L->preheader->block_id, exit->block_id));

    //check header
    int header_phicnt = 0;
    PhiInstruction* SI = nullptr;
    for(auto I:L->header->Instruction_list){
        if(I->GetOpcode() == PHI){
            ++header_phicnt;
            auto res = I->GetResultRegNo();
            if(L->scev.SCEVMap.find(res) == L->scev.SCEVMap.end()){
                SI = (PhiInstruction*)I;
            }
        }else{
            break;
        }
    }
    if(header_phicnt != 2){
        return false;
    }

    if(SI == nullptr){
        return false;
    }
    
    auto val2 = SI->GetValOperand(latch->block_id);
    if(val2->GetOperandType() != BasicOperand::REG){
        return false;
    }

    //initval must be 0
    auto val1 = SI->GetValOperand(L->preheader->block_id);
    if(val1->GetOperandType() != BasicOperand::IMMI32){
        return false;
    }
    if(((ImmI32Operand*)val1)->GetIntImmVal() != 0){
        return false;
    }

    //check LCSSA
    Instruction LCSSAI;
    int lcssa_cnt = 0;
    for(auto I:exit->Instruction_list){
        if(I->GetOpcode() == PHI){
            ++lcssa_cnt;
            LCSSAI = I;
            auto PhiI = (PhiInstruction*)I;
            auto val = PhiI->GetValOperand(exiting->block_id);
            if(val != val2){
                return false;
            }
        }else{
            break;
        }
    }
    if(lcssa_cnt != 1){
        return false;
    }

    //the loop should have no side_effect
    if(IsLoopSideEffect(C,L)){
        return false;
    }

    //now check the loop is add_mod
    //check mod
    auto I = ResultMap[((RegOperand*)val2)->GetRegNo()];
    if(I->GetOpcode() != MOD){
        return false;
    }
    auto ModI = (ArithmeticInstruction*)I;
    auto modop1 = ModI->GetOperand1();
    auto modop2 = ModI->GetOperand2();
    if(modop2->GetOperandType() != BasicOperand::IMMI32){
        return false;
    }
    if(((ImmI32Operand*)modop2)->GetIntImmVal() < 0){
        return false;
    }

    if(modop1->GetOperandType() != BasicOperand::REG){
        return false;
    }

    //check add
    I = ResultMap[((RegOperand*)modop1)->GetRegNo()];
    if(I->GetOpcode() != ADD){
        return false;
    }
    auto AddI = (ArithmeticInstruction*)I;
    auto addop1 = AddI->GetOperand1();
    auto addop2 = AddI->GetOperand2();
    if(addop2->GetOperandType() != BasicOperand::IMMI32){
        return false;
    }
    if(((ImmI32Operand*)addop2)->GetIntImmVal() < 0){
        return false;
    }

    if(addop1->GetOperandType() != BasicOperand::REG){
        return false;
    }
    if(addop1 != SI->GetResultReg()){
        return false;
    }
    
    //now we can assume the loop is reduce mod_add
    //we can replace the lcssa to be 1ll*iterations * addop2 % modop2

    //first Get iterations
    auto iterations = GetLoopIterations(C,L);
    if(iterations == nullptr){
        return false;
    }
    auto ResI = new ArithmeticInstruction(LL_ADDMOD,I32,iterations,addop2,modop2,LCSSAI->GetResultReg());
    exit->Instruction_list.pop_front();
    exit->Instruction_list.push_front(ResI);

    return true;
}

/*
c is loop invariant
S = S0
i = l
do{
    S += c;
    i = i + 1;
}while(i < u)
-----------------------------------------
S = S0 + (u-l)*c
*/
static bool LoopReduceSimpleAdd(CFG *C, NaturalLoop *L) {
    return false;
}


/*
i is invariant
j is only used for loop iteration
if(j < n)
do{
    if (i < j){ //j >= i
        j = j + 1;
        continue;
    }
    something;
    j = j + 1;
}while(j < n)
-------------------------------
if(j < min(i,n))
do{
    something;
    j = j + 1;
}while (j < min(i,n)) // min(i,n) can be motion
*/
static bool LoopUselessContinue2Break(CFG *C, NaturalLoop *L) {
    return false;
}


/*
int i = st;
do{
    a[i] = 0;
    i = i + 1;
}while(i < ed)
*/
static bool LoopMemsetRecognize(CFG *C, NaturalLoop *L) {
    return false;
}

bool NaturalLoop::LoopIdomRecognize(CFG *C) {
    if(LoopReduceSimpleAddMod(C,this)){
        return true;
    }

    return false;
}