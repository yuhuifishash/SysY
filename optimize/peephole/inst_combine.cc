#include "../../include/cfg.h"
#include <functional>

bool ApplyCombineRules(CFG *C, std::deque<Instruction> &InstList, std::deque<Instruction>::iterator begin);
bool EliminateDoubleI32Add(Instruction a, Instruction b);
bool EliminateSubEq(Instruction a, Instruction b);
bool EliminateDoubleConstDiv(Instruction a, Instruction b);
bool EliminateMod2EqNeCmp(CFG *C, Instruction a, Instruction b, std::deque<Instruction> &InstList,
                          std::deque<Instruction>::iterator insertit);
bool EliminateConstDivIcmp(Instruction a, Instruction b);
bool EliminateMulAdd(Instruction a, Instruction b);
void DomTreeDfsI32AddCombine(CFG *C);
static const int maxINT = 2147483647, nemaxINT = -2147483648;

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
        changed |= EliminateSubEq(*begin, *it);
        changed |= EliminateDoubleConstDiv(*begin, *it);
        changed |= EliminateMod2EqNeCmp(C, *begin, *it, InstList, it);
        changed |= EliminateConstDivIcmp(*begin, *it);
        changed |= EliminateMulAdd(*begin, *it);
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
                
                int consta = ((ImmI32Operand *)opa2)->GetIntImmVal();
                int constb = ((ImmI32Operand *)opb2)->GetIntImmVal();
                // auto ans = consta + constb;
                // if(ans > maxINT || ans < nemaxINT){
                //     return false;
                // }
                Ib->SetOperand1(opa1->CopyOperand());
                Ib->SetOperand2(new ImmI32Operand(consta + constb));
                // Ib->PrintIR(std::cerr);
                return true;
            }
        }
    }

    return false;
}

// %r = {a - (a - b)}  ->  %r = {(a - a) + b}  ->  %r = {b + 0}
// %r = {(a - b) + b}  ->  %r = {a - (b - b)}  ->  %r = {a + 0}
// %r = {a - (a + b)}  ->  %r = {(a - a) - b} -> %r = {0 - b}
// %r = {a - (b + a)}  ->  %r = {(a - a) - b} -> %r = {0 - b}
// %r = {a + (b - a)}  ->  %r = {(a - a) + b} -> %r = {b + 0}
bool EliminateSubEq(Instruction a, Instruction b) {
    if (a->GetOpcode() == SUB) {
        auto SubI1 = (ArithmeticInstruction *)a;
        auto resultreg1 = SubI1->GetResultReg();
        auto I1op1 = SubI1->GetOperand1();
        auto I1op2 = SubI1->GetOperand2();
        if (b->GetOpcode() == SUB) {
            auto SubI2 = (ArithmeticInstruction *)b;
            auto I2op1 = SubI2->GetOperand1();
            auto I2op2 = SubI2->GetOperand2();
            if (I1op1->GetFullName() != I2op1->GetFullName()) {
                return false;
            }
            if (resultreg1->GetFullName() != I2op2->GetFullName()) {
                return false;
            }
            // a->PrintIR(std::cerr);
            // SubI2->PrintIR(std::cerr);
            if (SubI2->GetDataType() == I32) {
                SubI2->SetOperand2(new ImmI32Operand(0));
            } else {
                SubI2->SetOperand2(new ImmF32Operand(0));
            }
            SubI2->SetOperand1(I1op2);
            // SubI2->PrintIR(std::cerr);
            return true;
        }
        if (b->GetOpcode() == ADD) {
            auto AddI2 = (ArithmeticInstruction *)b;
            auto I2op1 = AddI2->GetOperand1();
            auto I2op2 = AddI2->GetOperand2();
            if (resultreg1->GetFullName() == I2op2->GetFullName()) {
                std::swap(I2op1, I2op2);
            }
            if (I1op2->GetFullName() != I2op2->GetFullName()) {
                return false;
            }
            if (resultreg1->GetFullName() != I2op1->GetFullName()) {
                return false;
            }
            // a->PrintIR(std::cerr);
            // AddI2->PrintIR(std::cerr);
            if (AddI2->GetDataType() == I32) {
                AddI2->SetOperand2(new ImmI32Operand(0));
            } else {
                AddI2->SetOperand2(new ImmF32Operand(0));
            }
            AddI2->SetOperand1(I1op1);
            // AddI2->PrintIR(std::cerr);
            return true;
        }
        return false;
    }
    if (a->GetOpcode() == ADD) {
        auto AddI1 = (ArithmeticInstruction *)a;
        auto resultreg1 = AddI1->GetResultReg();
        auto I1op1 = AddI1->GetOperand1();
        auto I1op2 = AddI1->GetOperand2();
        if (b->GetOpcode() != SUB) {
            return false;
        }
        auto SubI2 = (ArithmeticInstruction *)b;
        auto I2op1 = SubI2->GetOperand1();
        auto I2op2 = SubI2->GetOperand2();
        if (I1op2->GetFullName() == I2op1->GetFullName()) {
            std::swap(I1op1, I1op2);
        } else if (I1op1->GetFullName() != I2op1->GetFullName()) {
            return false;
        }
        if (resultreg1->GetFullName() != I2op2->GetFullName()) {
            return false;
        }
        // a->PrintIR(std::cerr);
        // SubI2->PrintIR(std::cerr);
        if (SubI2->GetDataType() == I32) {
            SubI2->SetOperand1(new ImmI32Operand(0));
        } else {
            SubI2->SetOperand1(new ImmF32Operand(0));
        }
        SubI2->SetOperand2(I1op2);
        return true;
        // SubI2->PrintIR(std::cerr);
    }
    return false;
}

// TODO():EliminateMulAdd
// a*c + a => a*(c+1) (c is const and c+1 can not overflow)
bool EliminateMulAdd(Instruction a, Instruction b) { 
    if(a->GetOpcode() != MUL || b->GetOpcode() != ADD){
        return false;
    }
    auto I1 = (ArithmeticInstruction*)a;
    auto I2 = (ArithmeticInstruction*)b;
    auto I1op1 = I1->GetOperand1();
    auto I1op2 = I1->GetOperand2();
    auto I2op1 = I2->GetOperand1();
    auto I2op2 = I2->GetOperand2();
    if(I1op2->GetFullName() == I2op2->GetFullName()){
        // c*a+a
        std::swap(I1op1,I1op2);
    }else if(I1op2->GetFullName() == I2op1->GetFullName()){
        // a+c*a
        std::swap(I1op1,I1op2);
        std::swap(I2op1,I2op2);
    }else if(I1op1->GetFullName() == I2op1->GetFullName()){
        // a+a*c
        std::swap(I2op1,I2op2);
    }
    if(I1op1->GetFullName() != I2op2->GetFullName()){
        return false;
    }
    if(I1op1->GetOperandType() != BasicOperand::REG || I1op2->GetOperandType() != BasicOperand::IMMI32){
        return false;
    }
    auto result1 = I1->GetResultOperand();
    auto result2 = I2->GetResultOperand();
    if(result1->GetFullName() != I2op1->GetFullName()){
        return false;
    }
    I2->Setopcode(MUL);
    I2->SetOperand1(I1op1);
    auto imm = ((ImmI32Operand*)I1op2)->GetIntImmVal();
    I2->SetOperand2(new ImmI32Operand(imm+1));
    // I2->PrintIR(std::cerr);
    return true; 
}

// c1 > 0 && c2 > 0
// if(%r / c1 > c2) => if(%r > (c2+1)*c1-1)
// if(%r / c1 >= c2) => if(%r >= c2*c1)
// if(%r / c1 < c2) => if(%r < c2*c1)
// if(%r / c1 <= c2) => if(%r <= (c2+1)*c1-1)
// the result can not overflow
static std::map<IcmpCond, IcmpCond> divmap = {{slt, sgt}, {sgt, slt}, {sle, sge}, {sge, sle}};
bool EliminateConstDivIcmp(Instruction a, Instruction b) {
    if (a->GetOpcode() != DIV || b->GetOpcode() != ICMP) {
        return false;
    }
    auto divI = (ArithmeticInstruction *)a;
    auto icmpI = (IcmpInstruction *)b;
    auto divresult = divI->GetResultReg();
    auto divop1 = divI->GetOperand1();
    auto divop2 = divI->GetOperand2();
    if (divop2->GetOperandType() != BasicOperand::IMMI32) {
        return false;
    }
    auto numop1 = (ImmI32Operand *)divop2;
    auto num1 = numop1->GetIntImmVal();
    auto icmpresult = icmpI->GetResultReg();
    auto icmpop1 = icmpI->GetOp1();
    auto icmpop2 = icmpI->GetOp2();
    auto icmpcond = icmpI->GetCompareCondition();
    if (divmap.find(icmpcond) == divmap.end()) {
        return false;
    }

    if (icmpop2->GetFullName() == divresult->GetFullName()) {
        std::swap(icmpop1, icmpop2);
        icmpcond = divmap[icmpcond];
    } else if (icmpop1->GetFullName() != divresult->GetFullName()) {
        return false;
    }
    if (icmpop2->GetOperandType() != BasicOperand::IMMI32) {
        return false;
    }
    // std::cerr<<icmpop2->GetFullName()<<" "<<icmpop2->GetOperandType()<<'\n';
    auto numop2 = (ImmI32Operand *)icmpop2;
    auto num2 = numop2->GetIntImmVal();
    if (icmpcond == slt || icmpcond == sge) {
        auto num = 1LL * num1 * num2;
        if (num > maxINT || num < nemaxINT) {
            return false;
        }
        auto newmulresult = new ImmI32Operand(num);
        icmpI->SetOp1(divop1);
        icmpI->SetOp2(newmulresult);
        icmpI->Setcond(icmpcond);
        // icmpI->PrintIR(std::cerr);
    } else {
        auto num = (1LL * num2 + 1) * num1;
        if (num > maxINT || num < nemaxINT) {
            return false;
        }
        num--;
        auto newmulresult = new ImmI32Operand(num);
        icmpI->SetOp1(divop1);
        icmpI->SetOp2(newmulresult);
        icmpI->Setcond(icmpcond);
        // icmpI->PrintIR(std::cerr);
        ;
    }
    return true;
}

// %r = a / c1 / c2  ->  %r = a / (c1*c2)
// c1*c2 can not overflow (range of int32_t)

bool EliminateDoubleConstDiv(Instruction a, Instruction b) {
    if (a->GetOpcode() != DIV || b->GetOpcode() != DIV) {
        return false;
    }
    auto divI1 = (ArithmeticInstruction *)a;
    auto divI2 = (ArithmeticInstruction *)b;
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
        return false;
    }

    auto num1 = ((ImmI32Operand *)divI1op2)->GetIntImmVal();
    auto num2 = ((ImmI32Operand *)divI2op2)->GetIntImmVal();
    auto newnum = 1LL * num1 * num2;
    // std::cerr<<num1<<" "<<num2<<" "<<newnum<<'\n';
    if (newnum > maxINT || newnum < nemaxINT) {    // -2147483648 ~ 2147483647
        return false;
    }
    // divI1->PrintIR(std::cerr);
    // divI2->PrintIR(std::cerr);
    divI2->SetOperand1(divI1op1);
    divI2->SetOperand2(new ImmI32Operand(num1 * num2));
    // divI1->PrintIR(std::cerr);
    // divI2->PrintIR(std::cerr);
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

    if (icmpInum == 0) {
        auto newop = GetNewRegOperand(++C->max_reg);
        auto newandI = new ArithmeticInstruction(BITAND, I32, modIop1, new ImmI32Operand(1), newop);
        InstList.insert(insertit, newandI);
        icmpI->SetOp1(newop);
        // newandI->PrintIR(std::cerr);
        return true;
    } else if (icmpInum == 1) {
        auto newop = GetNewRegOperand(++C->max_reg);
        auto newandI = new ArithmeticInstruction(BITAND, I32, modIop1, new ImmI32Operand(-2147483647), newop);
        InstList.insert(insertit, newandI);
        icmpI->SetOp1(newop);
        // newandI->PrintIR(std::cerr);
        return true;
    }
    return false;
}