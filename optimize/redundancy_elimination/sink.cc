#include "../../include/cfg.h"
#include <functional>

void Sink(CFG *C) {
    std::map<int, std::map<int, int> > BBRegUseMap; // <regno, <bbid, number> >
    std::map<int,int> BBLoopDep; // <bbid, loopdepth>
    for(auto l:C->LoopForest.loop_set){
        for(auto bb:l->loop_nodes){
            BBLoopDep[bb->block_id] += 1;
        }
    }

    for(auto [id,bb]:*C->block_map) {
        for(auto I:bb->Instruction_list){
            if(I->GetOpcode() == PHI){
                auto PhiI = (PhiInstruction*)I;
                for(auto [label,val]:PhiI->GetPhiList()){
                    assert(label->GetOperandType() == BasicOperand::LABEL);
                    if(val->GetOperandType() == BasicOperand::REG){
                        auto prebb_id = ((LabelOperand*)label)->GetLabelNo();
                        auto r = (RegOperand*)val;
                        BBRegUseMap[r->GetRegNo()][prebb_id] += 1;
                    }
                }
            }else{
                auto vuse = I->GetNonResultOperands();
                for(auto op:vuse){
                    if(op->GetOperandType() == BasicOperand::REG){
                        auto r = (RegOperand*)op;
                        BBRegUseMap[r->GetRegNo()][bb->block_id] += 1;
                    }
                }
            }
        }
    }

    // for(auto [reg,m]:BBRegUseMap) {
    //     std::cerr<<reg<<":  \n";
    //     for(auto [bb,number]:m){
    //         std::cerr<<bb<<" "<<number<<"\n";
    //     }std::cerr<<"--------------------------\n";
    // }
    for(auto [id,bb]:*C->block_map){
        std::set<Instruction> EraseSet;
        auto endI = *(bb->Instruction_list.end() - 1);
        if(endI->GetOpcode() == BR_UNCOND){
            continue;
        }
        for(auto it = bb->Instruction_list.rbegin(); it != bb->Instruction_list.rend(); ++it){
            auto I = *it;
            if(I->GetOpcode() == LOAD || I->GetOpcode() == STORE || I->GetOpcode() == CALL){
                continue;
            }
            if(I->GetOpcode() == PHI || I->GetOpcode() == ICMP || I->GetOpcode() == FCMP || I->GetOpcode() == ALLOCA){
                continue;
            }
            if(I->GetOpcode() == RET || I->GetOpcode() == BR_COND || I->GetOpcode() == BR_UNCOND){
                continue;
            }
            LLVMBlock selected_sinkbb = nullptr;

            std::set<int> UsebbSet;
            for(auto [bbid,num]:BBRegUseMap[I->GetResultRegNo()]){
                if(num != 0) {
                    UsebbSet.insert(bbid);
                }
            }
            // I->PrintIR(std::cerr);
            // for(auto bbid:UsebbSet){
            //     std::cerr<<bbid<<" ";
            // }std::cerr<<"\n";

            // now we choose best sink bb
            for(auto succbb:C->GetSuccessor(bb->block_id)){
                // succbb must dominate all the use bb
                // bb must dominate succbb
                if(bb == succbb) {
                    continue;
                }
                if(C->GetPredecessor(succbb->block_id).size() > 1){
                    continue;
                }

                if(!C->IsDominate(bb->block_id, succbb->block_id)){
                    continue;
                }
                bool is_domtag = true;
                for(auto bbid:UsebbSet){
                    if(!C->IsDominate(succbb->block_id, bbid)){
                        is_domtag = false;
                        break;
                    }
                }
                if(!is_domtag){
                    continue;
                }

                // now we can sink the instruction to this succbb
                selected_sinkbb = succbb;
                break;
            }

            if(selected_sinkbb == nullptr){
                continue;
            }
            // we can not sink the instruction to nested loop
            if(BBLoopDep[selected_sinkbb->block_id] > BBLoopDep[bb->block_id]){
                continue;
            }

            EraseSet.insert(I);
            auto succit = selected_sinkbb->Instruction_list.begin();
            for(;succit != selected_sinkbb->Instruction_list.end(); ++succit){
                auto I = *succit;
                if(I->GetOpcode() != PHI) {
                    break;
                }
            }
            selected_sinkbb->Instruction_list.insert(succit,I);

            // std::cerr<<"Sink ";
            // I->PrintIR(std::cerr);
            // std::cerr<<"to BasicBlock"<<selected_sinkbb->block_id<<"\n\n";

            // now we update the BBRegUseMap
            for(auto op:I->GetNonResultOperands()){
                if(op->GetOperandType() == BasicOperand::REG) {
                    auto regno = ((RegOperand*)op)->GetRegNo();
                    assert(BBRegUseMap[regno][bb->block_id] != 0);

                    BBRegUseMap[regno][bb->block_id] -= 1;
                    if(BBRegUseMap[regno][bb->block_id] == 0){
                        BBRegUseMap[regno].erase(bb->block_id);
                    }
                    BBRegUseMap[regno][selected_sinkbb->block_id] += 1;
                }
            }
        }      

        if (!EraseSet.empty()) {
            auto tmp_Instruction_list = bb->Instruction_list;
            bb->Instruction_list.clear();
            for (auto I : tmp_Instruction_list) {
                if (EraseSet.find(I) != EraseSet.end()) {
                    continue;
                }
                bb->InsertInstruction(1, I);
            }
        }

    }

}