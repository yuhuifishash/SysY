#include "../../include/cfg.h"
#include <functional>

bool ApplyCombineRules(CFG *C, std::deque<Instruction> &InstList, std::deque<Instruction>::iterator begin);
bool EliminateDoubleI32Add(Instruction a, Instruction b);
bool EliminateSubEq(Instruction a, Instruction b);
bool EliminateDoubleConstDiv(Instruction a, Instruction b);
bool EliminateMod2EqNeCmp(CFG *C, Instruction a, Instruction b, std::deque<Instruction> &InstList,
                          std::deque<Instruction>::iterator insertit);
void DomTreeDfsI32AddCombine(CFG *C);

void InstCombine(CFG *C) {
    /* dfs domtree InstCombine*/
    DomTreeDfsI32AddCombine(C);

    /* window InstCombine*/
    for (auto [id, bb] : *C->block_map) {
        bool changed = true;
        while (changed) {
            changed = false;
            for (auto it = bb->Instruction_list.begin(); it != bb->Instruction_list.end(); ++it) {
                changed |= ApplyCombineRules(C, bb->Instruction_list, it);
            }
        }
    }
}

void DomTreeDfsI32AddCombine(CFG *C) {
    bool is_changed = true;
    std::set<Instruction> AddInstConstantSet;
    std::function<void(int)> dfs = [&](int bbid) {
        std::set<Instruction> tmpset;
        LLVMBlock now = (*C->block_map)[bbid];

        for (auto I : now->Instruction_list) {
            if (I->GetOpcode() == ADD) {
                auto op2 = ((ArithmeticInstruction *)I)->GetOperand2();
                if (op2->GetOperandType() == BasicOperand::IMMI32) {
                    bool is_combine = false;
                    for (auto oldI : AddInstConstantSet) {
                        if (EliminateDoubleI32Add(oldI, I)) {
                            is_changed = true;
                            is_combine = true;
                            break;
                        }
                    }
                    if (!is_combine) {
                        AddInstConstantSet.insert(I);
                        tmpset.insert(I);
                    }
                }
            }
        }

        for (auto v : C->DomTree.dom_tree[bbid]) {
            dfs(v->block_id);
        }

        for (auto I : tmpset) {
            AddInstConstantSet.erase(I);
        }
    };
    while (is_changed) {
        is_changed = false;
        dfs(0);
    }
}

bool ApplyCombineRules(CFG *C, std::deque<Instruction> &InstList, std::deque<Instruction>::iterator begin) {
    int win_size = 4;
    int cnt = 0;

    bool changed = false;
    for (auto it = begin + 1; it != InstList.end() && cnt < win_size; ++it, ++cnt) {
        // changed |= EliminateSubEq(*begin,*it);
        changed |= EliminateDoubleConstDiv(*begin, *it);
        changed |= EliminateMod2EqNeCmp(C, *begin, *it, InstList, it);
    }
    return changed;
}

// c1 and c2 is const
// %r = (a + c1) + c2  ->  %r = a + (c1 + c2)
// a must be i32
bool EliminateDoubleI32Add(Instruction a, Instruction b) {
    if (a->GetOpcode() != ADD || b->GetOpcode() != ADD) {
        return false;
    }
    auto Ia = (ArithmeticInstruction *)a;
    auto Ib = (ArithmeticInstruction *)b;

    auto opa2 = Ia->GetOperand2();
    auto opb2 = Ib->GetOperand2();

    /*
      resulta = add i32 opa1,   opa2(const i32)
      resultb = add i32 resulta,opb2(const i32)
    */
    if (opa2->GetOperandType() == BasicOperand::IMMI32 && opb2->GetOperandType() == BasicOperand::IMMI32) {
        int resulta_regno = Ia->GetResultRegNo();
        int opb1_regno = -1;

        auto opa1 = Ia->GetOperand1();
        auto opb1 = Ib->GetOperand1();
        if (opb1->GetOperandType() == BasicOperand::REG) {
            opb1_regno = ((RegOperand *)opb1)->GetRegNo();
            if (opb1_regno == resulta_regno) {
                Ib->SetOperand1(opa1->CopyOperand());

                int consta = ((ImmI32Operand *)opa2)->GetIntImmVal();
                int constb = ((ImmI32Operand *)opb2)->GetIntImmVal();

                Ib->SetOperand2(new ImmI32Operand(consta + constb));
                // Ib->PrintIR(std::cerr);
                return true;
            }
        }
    }

    return false;
}

// TODO():
// %r = {a - (a - b)}  ->  %r = {(a - a) - b}  ->  %r = {0 - b}
// %r = {(a - b) + b}  ->  %r = {a - (b - b)}  ->  %r = {a + 0}
bool EliminateSubEq(Instruction a, Instruction b) {
    TODO("EliminateSubEq");
    return false;
}


// TODO():
// c1 > 0 && c2 > 0
// if(%r / c1 > c2) => if(%r > (c2+1)*c1-1) 
// if(%r / c1 >= c2) => ...
// if(%r / c1 < c2) => ...
// if(%r / c1 >= c2) => ...
// the result can not overflow
bool EliminateConstDivIcmp(Instruction a, Instruction b) {
    TODO("EliminateConstDivIcmp");
    return false;
}


// %r = a / c1 / c2  ->  %r = a / (c1*c2)
// c1*c2 can not overflow (range of int32_t)
static const int maxINT = 2147483647;
bool EliminateDoubleConstDiv(Instruction a, Instruction b) {
    // a->PrintIR(std::cerr);
    // b->PrintIR(std::cerr);
    if (a->GetOpcode() != DIV || b->GetOpcode() != DIV) {
        return false;
    }
    auto divI1 = (ArithmeticInstruction *)a;
    auto divI2 = (ArithmeticInstruction *)b;
    // divI1->PrintIR(std::cerr);
    // divI2->PrintIR(std::cerr);
    if (divI1->GetDataType() != I32 || divI2->GetResultType() != I32) {
        return false;
    }
    auto divI1resultop = divI1->GetResultOperand();
    auto divI1op1 = divI1->GetOperand1();
    auto divI1op2 = divI1->GetOperand2();
    auto divI2resultop = divI2->GetResultOperand();
    auto divI2op1 = divI2->GetOperand1();
    auto divI2op2 = divI2->GetOperand2();
    if (divI1resultop->GetFullName() != divI2op1->GetFullName() || divI2op2->GetOperandType() != BasicOperand::IMMI32 ||
        divI1op2->GetOperandType() != BasicOperand::IMMI32) {
        // std::cerr<<divI2op1->GetOperandType()<<" "<<divI1op2->GetOperandType()<<" "<<divI2op1->GetFullName()<<'\n';
        return false;
    }

    auto num1 = ((ImmI32Operand *)divI1op2)->GetIntImmVal();
    auto num2 = ((ImmI32Operand *)divI2op2)->GetIntImmVal();
    auto newnum = 1LL * num1 * num2;
    // std::cerr<<num1<<" "<<num2<<" "<<newnum<<'\n';
    if (newnum > maxINT || newnum < -maxINT - 1) {    // -2147483648 ~ 2147483647
        return false;
    }
    // divI1->PrintIR(std::cerr);
    // divI2->PrintIR(std::cerr);
    divI2->SetOperand1(divI1op1);
    divI2->SetOperand2(new ImmI32Operand(num1 * num2));
    // divI1->PrintIR(std::cerr);
    // divI2->PrintIR(std::cerr);
    // puts("-------");
    return true;
}

/*
    %6 = srem i32 %0, 2
    %7 = icmp eq i32 %6, 0
->
    %6 = and i32 %0, 1, !dbg !28
    %7 = icmp eq i32 %6, 0, !dbg !28

if(n%2 == 1)
if(n%2 == 0)
if(n%2 != 1)
if(n%2 != 0)
*/
bool EliminateMod2EqNeCmp(CFG *C, Instruction a, Instruction b, std::deque<Instruction> &InstList,
                          std::deque<Instruction>::iterator insertit) {
    if (a->GetOpcode() != MOD || b->GetOpcode() != ICMP) {
        return false;
    }
    auto modI = (ArithmeticInstruction *)a;
    auto icmpI = (IcmpInstruction *)b;
    if (icmpI->GetCompareCondition() != eq && icmpI->GetCompareCondition() != ne) {
        return false;
    }
    auto modIresult = modI->GetResultOperand();
    auto modIop1 = modI->GetOperand1();
    auto modIop2 = modI->GetOperand2();
    auto icmpIresult = icmpI->GetResult();
    auto icmpIop1 = icmpI->GetOp1();
    auto icmpIop2 = icmpI->GetOp2();
    if (modIresult->GetFullName() != icmpIop1->GetFullName()) {
        return false;
    }
    if (modIop2->GetOperandType() != BasicOperand::IMMI32 || icmpIop2->GetOperandType() != BasicOperand::IMMI32) {
        return false;
    }
    auto modInum = ((ImmI32Operand *)modIop2)->GetIntImmVal();
    auto icmpInum = ((ImmI32Operand *)icmpIop2)->GetIntImmVal();
    if (modInum != 2) {
        return false;
    }
    
    if(icmpInum == 0){
        auto newop = GetNewRegOperand(++C->max_reg);
        auto newandI = new ArithmeticInstruction(BITAND, I32, modIop1, new ImmI32Operand(1), newop);
        InstList.insert(insertit, newandI);
        icmpI->SetOp1(newop);
        // newandI->PrintIR(std::cerr);
        return true;
    }else if(icmpInum == 1){
        auto newop = GetNewRegOperand(++C->max_reg);
        auto newandI = new ArithmeticInstruction(BITAND, I32, modIop1, new ImmI32Operand(-2147483647), newop);
        InstList.insert(insertit, newandI);
        icmpI->SetOp1(newop);
        // newandI->PrintIR(std::cerr);
        return true;
    }
    return false;
}