
#include "../../include/cfg.h"
#include <functional>
/**
    * this function will eliminate some simple short circult
    * for example, if(a && b) will be transformed as below:
    *   %r1 = icmp ne i32 %a(register of a), 0
        %r2 = icmp ne i32 %b(register of b), 0
        %r3 = and i1 %r1, %r2
        br i1 %r3, label %true, label %false
    *
    * the short circult CFG will be like:
    * B1 ->  B2  ->  B3    this will be transformed to  B1 -> B3
    * |      |--> B4  |                                 |--> B4
    * |_______________|
    * B2 shoule have few instructions and do not have store instruction
*/
void EliminateSimpleShortCircult(CFG *C) {
    std::cerr << "EliminateSimpleShortCircult in SimplifyCFG is not implemented now\n";
}

/*
  /B1\
B0    B3  may be transformed to B0(B1 B2 use select)->B3
  \B2/

B0--->B2  may be transformed to B0(B1 use select)->B2
  \B1/
*/
void SimpleIfConversion(CFG *C) {}

/**
    * this function will eliminate the double br_uncond
    *
    * example:
    * L1:
        LIST1
        br label %L2
      L2:
        LIST2
        br label %L3
      L3:
        LIST3
        br label %L4

    * the example after this function will be:
    * L1:
        LIST1
        LIST2
        LIST3
        br label %L4

    * this pass will be useful after sccp
    * you can use testcase 29_lone_line.sy to check
    * @param C the control flow graph of the function */
void EliminateDoubleBrUnCond(CFG *C) { 
  // std::cerr << "EliminateDoubleBrUnCond in SimplifyCFG is not implemented now\n"; 
}

/*
 * this function will eliminate useless phi
 * such as example1:%rx = phi [%ry, %L1], [%ry, %L3]
 * such as example2:%rx = phi [5, %L5]
 */
// int UnionFind(int RegToFind,std::unordered_map<int,int> UnionFindMap){
//     if(UnionFindMap[RegToFind]==RegToFind)return RegToFind;
// 	return UnionFindMap[RegToFind]=UnionFind(UnionFindMap[RegToFind],UnionFindMap);
// }
void EliminateUselessPhi(CFG *C) {
    std::unordered_map<int,int> UnionFindMap;
    std::set<Instruction> EraseSet;
    std::vector<int> g;
    bool changed=true;
    std::function<int(int)> UnionFind = [&](int RegToFind) -> int {
        if(UnionFindMap[RegToFind]==RegToFind)return RegToFind;
	    return UnionFindMap[RegToFind]=UnionFind(UnionFindMap[RegToFind]);
    };
    // for(int i=0;i<=C->max_reg;++i){
    //     UnionFindMap[i]=i;
    // }
    
    // init UnionFind
    auto FuncdefI = C->function_def;
    // std::cout<<FuncdefI->GetFunctionName()<<'\n';
    for (auto [id, bb] : *C->block_map) {
        for (auto I : bb->Instruction_list) {
            if(I->GetOpcode()!=PHI){
                continue;
            }
            auto PhiI=(PhiInstruction*)I;
            auto NonResultOperands = PhiI->GetNonResultOperands();
            auto ResultReg = PhiI->GetResultRegNo();
            UnionFindMap[ResultReg]=ResultReg;
            for(u_int32_t i=0;i<NonResultOperands.size();++i){
                auto NonResultReg=((RegOperand *)NonResultOperands[i])->GetRegNo();
                UnionFindMap[NonResultReg]=NonResultReg;
            }
        }
    }
    
    while(changed){
        changed=false;
        // FuncdefI->PrintIR(std::cout);
        // if(FuncdefI->GetFunctionName()=="main"){
        //     std::cout<<"asdads\n";
        // }
        for (auto [id, bb] : *C->block_map) {
            for (auto &I : bb->Instruction_list) {
                if(I->GetOpcode()!=PHI){
                    continue;
                }
                auto PhiI=(PhiInstruction*)I;
                auto ResultOperands = PhiI->GetNonResultOperands();
                auto ResultReg = PhiI->GetResultRegNo();
                bool NeedtoReleace=1;
                for(u_int32_t i=1;i<ResultOperands.size();++i){
                    if(ResultOperands[i]->GetFullName()!=ResultOperands[i-1]->GetFullName()){
                        NeedtoReleace=0;
                        // if(FuncdefI->GetFunctionName()=="func1"&&id==2){
                        //     I->PrintIR(std::cout);
                        //     std::cout<<ResultOperands[0]->GetFullName()<<" "<<ResultOperands[1]->GetFullName()<<'\n';
                        // }
                        break;
                    }
                }
                
                if(NeedtoReleace){
                    changed|=true;
                    if(ResultOperands.size()==1&&ResultOperands[0]->GetOperandType()!=BasicOperand::REG){
                        //example2
                        // std::cout<<"example2:";
                        // I->PrintIR(std::cout);
                        if (ResultOperands[0]->GetOperandType() == BasicOperand::IMMI32) {
                            I = new ArithmeticInstruction(ADD, I32, new ImmI32Operand(0), new ImmI32Operand(((ImmI32Operand *)ResultOperands[0])->GetIntImmVal()),
                                                        PhiI->GetResultReg());
                        } else {
                            I = new ArithmeticInstruction(FADD, FLOAT32, new ImmF32Operand(0),
                                                        new ImmF32Operand(((ImmF32Operand *)ResultOperands[0])->GetFloatVal()), PhiI->GetResultReg());
                        }
                        // I->PrintIR(std::cout);
                    }else{
                        //example1
                        EraseSet.insert(I);
                        auto Findfa=UnionFind(((RegOperand *)ResultOperands[0])->GetRegNo());
                        auto Findson=UnionFind(ResultReg);
                        // std::cout<<Findfa<<" "<<Findson<<'\n';
                        UnionFindMap[Findson]=Findfa;
                    }
                }
            }
        }
        for (auto [id, bb] : *C->block_map) {
            auto tmp_Instruction_list = bb->Instruction_list;
            bb->Instruction_list.clear();
            for (auto I : tmp_Instruction_list) {
                if (EraseSet.find(I) != EraseSet.end()) {
                    continue;
                }
                bb->InsertInstruction(1, I);
            }
        }
        for (auto [id, bb] : *C->block_map) {
            for (auto I : bb->Instruction_list) {
                auto NonResultOperands = I->GetNonResultOperands();
                bool Change=0;
                for (u_int32_t i = 0; i < NonResultOperands.size(); ++i) {
                    if(NonResultOperands[i]->GetOperandType()!=BasicOperand::REG){
                        continue;
                    }
                    auto NonResultOperandsno=((RegOperand *)NonResultOperands[i])->GetRegNo();
                    if (UnionFindMap.find(NonResultOperandsno) == UnionFindMap.end() || UnionFindMap[NonResultOperandsno] == NonResultOperandsno) {
                        continue;
                    }
                    Change=1;
                    auto Findfa=UnionFind(UnionFindMap[NonResultOperandsno]);
                    NonResultOperands[i]=new RegOperand(Findfa);
                    // std::cout<<NonResultOperandsno<<" "<<UnionFindMap[NonResultOperandsno]<<" "<<NonResultOperands[i]->GetFullName()<<'\n';
                }
                if(Change){
                    I->SetNonResultOperands(NonResultOperands);
                }
            }
        }
    }
    
}

void SimplifyCFG(CFG *C) {
    EliminateUselessPhi(C);
    // EliminateDoubleBrUnCond(C);
}