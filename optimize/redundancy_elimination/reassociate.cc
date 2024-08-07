#include "../../include/cfg.h"
#include <functional>
// TODO():Reassociate
void SimpleDCE(CFG *C);
void ReassociateAddSubStoreMap(std::deque<Instruction> InstList);
bool ReassociateAddSub(CFG *C, Instruction a, Instruction b, 
                       std::deque<Instruction> &InstList,std::deque<Instruction>::iterator insertit);
static std::map<std::pair<std::string,std::string>,int> addmap;
static std::map<std::pair<std::string,std::string>,Operand> addoperandmap;
static std::map<int,Instruction> definemap;
/*
int t1 = a + b;
int t2 = a + 2 + b; 

will be transformed to:

int t1 = a + b;
int t2 = (a + b) + 2;

NaryReassociate works as follows. For every instruction in the form of (a +
b) + c, it checks whether a + c or b + c is already computed by a dominating
instruction. If so, it then reassociates (a + b) + c into (a + c) + b or (b +
c) + a and removes the redundancy accordingly. To efficiently look up whether
an expression is computed before, we need to store each instruction seen.

we need to run multiple iterations

we only consider add.
*/

// reference: LLVM  lib/Transforms/Scalar/NaryReassociate.cpp

/*
int t1 = i + b + c;
b and c are loop invariant,
we reassociate i + b + c into i + (b + c)
we consider add and sub
*/
void LoopInvariantReassociate(CFG* C)
{
    std::map<int,int> usemap;
    for(auto [id,bb]:*C->block_map){
        for(auto I:bb->Instruction_list){
            for(auto op:I->GetNonResultOperands()){
                if(op->GetOperandType() == BasicOperand::REG){
                    auto regno = ((RegOperand*)op)->GetRegNo();
                    if(usemap.find(regno) == usemap.end()){
                        usemap[regno]=1;
                    }else{
                        usemap[regno]++;
                    }
                }
            }
        }
    }
    for(auto l:C->LoopForest.loop_set){
        auto scev = l->scev;
        // use scev.InvariantSet to find the invariant register in loop l;
        for(auto bb:l->loop_nodes){
            for (auto it = bb->Instruction_list.begin()+1; it != bb->Instruction_list.end(); it++) {
                auto a = *(it-1);
                auto b = *it;
                ArithmeticInstruction* I1;
                ArithmeticInstruction* I2;
                if(a->GetOpcode() == ADD && b->GetOpcode() == ADD){
                    I1 = (ArithmeticInstruction*)a;
                    I2 = (ArithmeticInstruction*)b;
                }else if(a->GetOpcode() == ADD && b->GetOpcode() == SUB){
                    continue;
                }else if(a->GetOpcode() == SUB && b->GetOpcode() == ADD){
                    continue;
                }else if(a->GetOpcode() == SUB && b->GetOpcode() == SUB){
                    continue;
                }else{
                    continue;
                }
                auto result1 = ((RegOperand*)I1->GetResultReg());
                auto result2 = ((RegOperand*)I1->GetResultReg());
                if(usemap[result1->GetRegNo()] > 1){
                    continue;
                }
                auto I1op1 = I1->GetOperand1();
                auto I1op2 = I1->GetOperand2();
                auto I2op1 = I2->GetOperand1();
                auto I2op2 = I2->GetOperand2();
                if(I2op2->GetFullName() == result1->GetFullName()){
                    std::swap(I2op1,I2op2);
                }else if(I2op1->GetFullName() != result1->GetFullName()){
                    continue;
                }
                if(I2op2->GetOperandType() != BasicOperand::REG){
                    continue;
                }
                auto reg2 = (RegOperand*)I2op2;
                auto regno2 = reg2->GetRegNo();
                if(scev.InvariantSet.find(regno2)==scev.InvariantSet.end()){
                    continue;
                }
                if(I1op2->GetOperandType() == BasicOperand::REG){
                    auto reg1 = (RegOperand*)I1op2;
                    auto regno1 = reg1->GetRegNo();
                    if(scev.InvariantSet.find(regno1)!=scev.InvariantSet.end()){
                        std::swap(I1op1,I2op2);
                        continue;
                    }
                }
                if(I1op1->GetOperandType() == BasicOperand::REG){
                    auto reg1 = (RegOperand*)I1op1;
                    auto regno1 = reg1->GetRegNo();
                    if(scev.InvariantSet.find(regno1)!=scev.InvariantSet.end()){
                        std::swap(I1op2,I2op2);
                        continue;
                    }
                }
            }
        }
    }
}

void Reassociate(CFG *C){
    for(auto [id,bb]:*C->block_map){
        bool changed = true;
        while (changed) {
            addmap.clear();
            definemap.clear();
            addoperandmap.clear();
            // std::cerr<<id<<'\n';
            // puts("=================================");
            // if(C->max_reg==495){
            //     // bb->printIR(std::cerr);
            //     break;
            // }
            ReassociateAddSubStoreMap(bb->Instruction_list);
            changed = false;
            
            auto lastreg = C->max_reg;
            for (auto it = bb->Instruction_list.begin()+1; it != bb->Instruction_list.end(); it++) {
                if(ReassociateAddSub(C,*(it-1), *it,  bb->Instruction_list, it) == 1){
                    changed |= 1;
                    it++;
                    if(it == bb->Instruction_list.end()){
                        break;
                    }
                }
            }
            SimpleDCE(C);
            // if(C->max_reg==494){
            //     bb->printIR(std::cerr);
            //     // break;
            // }else if(C->max_reg<493){
            //     std::cerr<<C->max_reg<<'\n';
            // }
            // bb->printIR(std::cerr);
            // break;
        }
    }
}
// add: 
//     a + b + c  ===> a + (b + c) 
//     d + b + c  ===> d + (b + c)
// take an example:
// r1 = r0 + a
// r2 = r1 + b
// (r2 = r0 + a + b)
// we store <a,b> in addmap, value is <r2,r0>
// sub: 
//     a - b + c(a + c - b) ===> a - (b - c)
//     d - b + c(d + c - b) ===> d - (b - c)
void ReassociateAddSubStoreMap(std::deque<Instruction> InstList){
    for(auto I:InstList){
        if(I->GetResultReg()!=nullptr){
            definemap[I->GetResultRegNo()] = I;
        }
    }
    std::function<bool(Operand)> check = [&](Operand op) -> bool {
        if(op->GetOperandType() == BasicOperand::IMMI32){
            auto num = ((ImmI32Operand*)op)->GetIntImmVal();
            if(num == 0){
                return true;
            }
            return false;
        }
        if(op->GetOperandType() == BasicOperand::IMMF32){
            auto num = ((ImmF32Operand*)op)->GetFloatVal();
            if(num == 0){
                return true;
            }
            return false;
        }
        return false;
    };
    if(InstList.size() < 4){
        return;
    }
    auto itb = InstList.begin() + 1;
    bool existlast1 = 0;
    bool existlast2 = 0;
    std::pair<std::string,std::string> laststr1;
    std::pair<std::string,std::string> laststr2;
    while(itb != InstList.end()){
        auto ita = itb - 1;
        auto a = *ita;
        auto b = *itb;
        if(a->GetOpcode() == ADD && b->GetOpcode() == ADD){
            auto AddI1 = (ArithmeticInstruction*)a;
            auto AddI2 = (ArithmeticInstruction*)b;
            auto resultreg1 = AddI1->GetResultReg();
            auto resultreg2 = AddI2->GetResultReg();
            auto I1op1 = AddI1->GetOperand1();
            auto I1op2 = AddI1->GetOperand2();
            auto I2op1 = AddI2->GetOperand1();
            auto I2op2 = AddI2->GetOperand2();
            if(resultreg1->GetFullName() == I2op2->GetFullName()){
                std::swap(I2op1,I2op2);
            }
            // if(check(I1op1) || check(I1op2) || check(I2op2)){
            //     existlast = 0;
            //     itb++;
            //     continue;
            // }
            std::pair<std::string,std::string> pair1,pair2;
            if(resultreg1->GetFullName() == I2op1->GetFullName()){
                if(I1op2->GetFullName() > I2op2->GetFullName()){
                    pair1 = std::make_pair(I2op2->GetFullName(),I1op2->GetFullName());
                }else{
                    pair1 = std::make_pair(I1op2->GetFullName(),I2op2->GetFullName());
                }
                if(I1op1->GetFullName() > I2op2->GetFullName()){
                    pair2 = std::make_pair(I2op2->GetFullName(),I1op1->GetFullName());
                }else{
                    pair2 = std::make_pair(I1op1->GetFullName(),I2op2->GetFullName());
                }
                if(addmap.find(pair1) == addmap.end()){
                    addmap[pair1] = 1;
                    existlast1 = 1;
                }else{
                    if(!existlast1 || (pair1 != laststr1 && pair1 != laststr2)){
                        addmap[pair1]++;
                        existlast1 = 1;
                    }else{
                        existlast1 = 0;
                    }
                }
                laststr1 = pair1;
                // AddI1->PrintIR(std::cerr);AddI2->PrintIR(std::cerr);
                // std::cerr<<pair1.first<<" "<<pair1.second<<'\n';
                // std::cerr<<pair2.first<<" "<<pair2.second<<'\n';
                if(pair1 != pair2){
                    if(addmap.find(pair2) == addmap.end()){
                        existlast2 = 1;
                        addmap[pair2] = 1;
                    }else {
                        if(!existlast2 || (pair2 != laststr2&& pair2 != laststr1)){
                            addmap[pair2]++;
                            existlast2 = 1;
                        }else{
                            existlast2 = 0;
                        } 
                    }
                }else{
                    existlast2 = 1;
                }
                laststr2 = pair2;
                // std::cerr<<existlast1<<' '<<existlast2<<'\n';
            }else{
                existlast1 = 0;
                existlast2 = 0;
            }
        }else{
            existlast1 = 0;
            existlast2 = 0;
        }
        itb++;
    }
    
}
bool ReassociateAddSub(CFG *C, Instruction a, Instruction b, std::deque<Instruction> &InstList,std::deque<Instruction>::iterator insertit){
    if(a->GetOpcode() == ADD && b->GetOpcode() == ADD){
        
        auto AddI1 = (ArithmeticInstruction*)a;
        auto AddI2 = (ArithmeticInstruction*)b;
        auto resultreg1 = AddI1->GetResultReg();
        auto resultreg2 = AddI2->GetResultReg();
        auto resulttype = resultreg1->GetOperandType();
        auto I1op1 = AddI1->GetOperand1();
        auto I1op2 = AddI1->GetOperand2();
        auto I2op1 = AddI2->GetOperand1();
        auto I2op2 = AddI2->GetOperand2();
        if(resultreg1->GetFullName() == I2op2->GetFullName()){
            std::swap(I2op1,I2op2);
        }else if(resultreg1->GetFullName() != I2op1->GetFullName() || I2op2->GetFullName() == I2op1->GetFullName()){
            return false;
        }
        // a->PrintIR(std::cerr);
        // b->PrintIR(std::cerr);
        std::pair<std::string,std::string> pair1,pair2;
        if(I1op2->GetFullName() > I2op2->GetFullName()){
            pair1 = std::make_pair(I2op2->GetFullName(),I1op2->GetFullName());
        }else{
            pair1 = std::make_pair(I1op2->GetFullName(),I2op2->GetFullName());
        }
        if(I1op1->GetFullName() > I2op2->GetFullName()){
            pair2 = std::make_pair(I2op2->GetFullName(),I1op1->GetFullName());
        }else{
            pair2 = std::make_pair(I1op1->GetFullName(),I2op2->GetFullName());
        }
        std::pair<std::string,std::string> pairn[2] = {pair1,pair2};
        bool existoptimize = 0;
        for(int i = 0;i <= 1 ;++i){
            auto pairnow = pairn[i];
            // std::cerr<<pairnow.first<<" "<<pairnow.second<<" "<<addmap[pairnow]<<'\n';
            if(addmap.find(pairnow) != addmap.end() && addmap[pairnow] > 1){
                RegOperand *addop = nullptr;
                if(addoperandmap.find(pairnow) == addoperandmap.end()){
                    addop = GetNewRegOperand(++C->max_reg);
                    addoperandmap[pairnow] = addop;
                    Instruction addI;
                    if(AddI1->GetDataType() == I32){
                        if(i&1){
                            addI = new ArithmeticInstruction(ADD,I32,I1op1,I2op2,addop);
                        }else{
                            addI = new ArithmeticInstruction(ADD,I32,I1op2,I2op2,addop);
                        }
                        
                    }else{
                        if(i&1){
                            addI = new ArithmeticInstruction(FADD,FLOAT32,I1op1,I2op2,addop);
                        }else{
                            addI = new ArithmeticInstruction(FADD,FLOAT32,I1op2,I2op2,addop);
                        }
                        
                    }
                    // a->PrintIR(std::cerr);
                    // if(addI->GetResultRegNo() == 401){
                    //     addI->PrintIR(std::cerr);
                    //     // std::cerr<<C->max_reg<<'\n';
                    //     puts("asda");
                    // }
                    InstList.insert(insertit,addI);
                }else{
                    addop = (RegOperand*)addoperandmap[pairnow];
                }
                if(!existoptimize){
                    // if(addop->GetRegNo() <= 495){
                    //     AddI1->PrintIR(std::cerr);
                    //     AddI2->PrintIR(std::cerr);                    
                    // }
                    if(i&1){
                        AddI2->SetOperand1(I1op2);
                    }else{
                        AddI2->SetOperand1(I1op1);
                    }
                    AddI2->SetOperand2(addop);
                    // if(addop->GetRegNo() <= 495){
                    //     AddI2->PrintIR(std::cerr);
                    //     std::cerr<<addmap[pairnow]<<'\n';
                    //     for(auto I : InstList){
                    //         I->PrintIR(std::cerr);
                    //     }
                    //     puts("_)________===========");
                    // }
                    
                    existoptimize = 1;
                }
                // puts("HERE");
            }
        }
        return existoptimize;
    }
    return false;
}


