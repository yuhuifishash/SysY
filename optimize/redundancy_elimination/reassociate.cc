#include "../../include/cfg.h"
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



void NaryReassociate(CFG *C){
    for(auto [id,bb]:*C->block_map){
        bool changed = true;
        while (changed) {
            addmap.clear();
            definemap.clear();
            ReassociateAddSubStoreMap(bb->Instruction_list);
            changed = false;
            // std::cerr<<id<<'\n';
            // puts("=================================");
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
            // bb->printIR(std::cerr);
            break;
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
    auto itb = InstList.begin() + 1;
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
                }else{
                    addmap[pair1]++;
                }
                if(pair1 != pair2){
                    if(addmap.find(pair2) == addmap.end()){
                        addmap[pair2] = 1;
                    }else{
                        addmap[pair2]++;
                    }
                }
            }
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
        }else if(resultreg1->GetFullName() != I2op1->GetFullName()){
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
                    // addI->PrintIR(std::cerr);
                    InstList.insert(insertit,addI);
                }else{
                    addop = (RegOperand*)addoperandmap[pairnow];
                }
                if(!existoptimize){
                    if(i&1){
                        AddI2->SetOperand1(I1op2);
                    }else{
                        AddI2->SetOperand1(I1op1);
                    }
                    AddI2->SetOperand2(addop);
                    AddI2->PrintIR(std::cerr);
                    existoptimize = 1;
                }
                // puts("HERE");
            }
        }
        return existoptimize;
    }
    return false;
}