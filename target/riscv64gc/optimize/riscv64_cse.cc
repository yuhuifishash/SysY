#include "riscv64_cse.h"
#include <functional>

// #define MachineCSE_DEBUG

void RiscV64CSE::Execute(){
    for (auto func : unit->functions) {
        current_func = func;
        CSEInCurrFunc();
    }
}

static bool IsNeedCSE(MachineBaseInstruction* I) {
    if(I->ExistPhysicalReg()){
        return false;
    }
    if(I->arch == MachineBaseInstruction::COPY){
        return true;
    }
    if(I->arch == MachineBaseInstruction::RiscV){
        auto rvI = (RiscV64Instruction*)I;
        if(rvI->getOpcode() == RISCV_LUI || rvI->getOpcode() == RISCV_ADDI || 
            rvI->getOpcode() == RISCV_ADD || rvI->getOpcode() == RISCV_MUL || rvI->getOpcode() == RISCV_ADDIW){
            return true;
        }
    }
    return false;
}

static std::string GetCSEInstInfo(MachineBaseInstruction* I) {
    if(I->arch == MachineBaseInstruction::COPY){
        auto cpI = (MachineCopyInstruction*)I;
        return cpI->GetDst()->toString() + " = COPY " + cpI->GetSrc()->toString();
    }else if(I->arch == MachineBaseInstruction::RiscV){
        auto rvI = (RiscV64Instruction*)I;
        if(rvI->getOpcode() == RISCV_ADD){
            return "%"+std::to_string(rvI->getRd().reg_no) + " = %"+std::to_string(rvI->getRs1().reg_no) + " + " + "%"+std::to_string(rvI->getRs2().reg_no);
        }else if(rvI->getOpcode() == RISCV_ADDI){
            if(rvI->getUseLabel()){
                return "%"+std::to_string(rvI->getRd().reg_no) + " = %"+std::to_string(rvI->getRs1().reg_no) + " + "  + rvI->getLabel().name;
            }else{
                return "%"+std::to_string(rvI->getRd().reg_no) + " = %"+std::to_string(rvI->getRs1().reg_no) + " + " + std::to_string(rvI->getImm());
            }
        }else if(rvI->getOpcode() == RISCV_ADDIW){
            if(rvI->getUseLabel()){
                return "%"+std::to_string(rvI->getRd().reg_no) + " = %"+std::to_string(rvI->getRs1().reg_no) + " + "  + rvI->getLabel().name;
            }else{
                return "%"+std::to_string(rvI->getRd().reg_no) + " = %"+std::to_string(rvI->getRs1().reg_no) + " + " + std::to_string(rvI->getImm());
            }
        }else if(rvI->getOpcode() == RISCV_LUI){
            if(rvI->getUseLabel()){
                return "%"+std::to_string(rvI->getRd().reg_no) + " = lui " + rvI->getLabel().name;
            }else{
                return "%"+std::to_string(rvI->getRd().reg_no) + " = lui " + std::to_string(rvI->getImm());
            }
        }else if(rvI->getOpcode() == RISCV_MUL){
            return "%"+std::to_string(rvI->getRd().reg_no)+ " = %"+std::to_string(rvI->getRs1().reg_no) + " * " + "%"+std::to_string(rvI->getRs2().reg_no);
        }else{
            ERROR("Unexpected Opcode");
        }
    }else{
        ERROR("Unexpected Arch");
    }
    return "";
}

// if the value I1 calculated is same as I2, return true
static bool isSameInst(MachineBaseInstruction* I1, MachineBaseInstruction* I2) {
    if(I1->arch != I2->arch){
        return false;
    }
    if(I1->arch == MachineBaseInstruction::COPY){
        auto cpI1 = (MachineCopyInstruction*)I1;
        auto cpI2 = (MachineCopyInstruction*)I2;
        return cpI1->GetSrc()->toString() == cpI2->GetSrc()->toString() && cpI1->GetCopyType() == cpI2->GetCopyType();
        
    }else if(I1->arch == MachineBaseInstruction::RiscV){
        auto rvI1 = (RiscV64Instruction*)I1;
        auto rvI2 = (RiscV64Instruction*)I2;
        if(rvI1->getOpcode() != rvI2->getOpcode()){
            return false;
        }
        if(rvI1->getOpcode() == RISCV_ADD){
            return rvI1->getRs1() == rvI2->getRs1() && rvI1->getRs2() == rvI2->getRs2();
        }else if(rvI1->getOpcode() == RISCV_ADDI){
            if(rvI1->getUseLabel()){
                return rvI1->getRs1() == rvI2->getRs1() && rvI1->getLabel() == rvI2->getLabel();
            }else{
                return rvI1->getRs1() == rvI2->getRs1() && rvI1->getImm() == rvI2->getImm();
            }
        }else if(rvI1->getOpcode() == RISCV_ADDIW){
            if(rvI1->getUseLabel()){
                return rvI1->getRs1() == rvI2->getRs1() && rvI1->getLabel() == rvI2->getLabel();
            }else{
                return rvI1->getRs1() == rvI2->getRs1() && rvI1->getImm() == rvI2->getImm();
            }
        }else if(rvI1->getOpcode() == RISCV_LUI){
            if(rvI1->getUseLabel()){
               return rvI1->getLabel() == rvI2->getLabel();
            }else{
                return rvI1->getImm() == rvI2->getImm();
            }
        }else if(rvI1->getOpcode() == RISCV_MUL){
            return rvI1->getRs1() == rvI2->getRs1() && rvI1->getRs2() == rvI2->getRs2();
        }else{
            ERROR("Unexpected Opcode");
        }
    }else{
        ERROR("Unexpected Arch");
    }
    return false;
}

void RiscV64CSE::CSEInCurrFunc(){
    bool is_changed = true;
    std::set<MachineBaseInstruction*> CSESet;
    std::map<int,int> regreplace_map;
    std::function<void(int)> dfs = [&](int bbid) {
        std::set<MachineBaseInstruction*> tmpcse_set;

        auto C = current_func->getMachineCFG();
        MachineBlock* now = C->GetNodeByBlockId(bbid)->Mblock;
        for (auto it = now->begin();it != now->end();++it) {
            auto I = *it;
            if(!IsNeedCSE(I)){
                continue;
            }
            bool is_cse = false;
            for(auto oldI : CSESet){
                if(isSameInst(I,oldI)){
                    #ifdef MachineCSE_DEBUG
                        std::cerr<<GetCSEInstInfo(oldI)<<"\n";
                        std::cerr<<GetCSEInstInfo(I)<<"\n\n";
                    #endif

                    is_cse = true;
                    auto vw1 = oldI->GetWriteReg();
                    auto vw2 = I->GetWriteReg();
                    assert(vw1.size() == 1 && vw2.size() == 1);
                    regreplace_map[vw2[0]->reg_no] = vw1[0]->reg_no;
                    break;
                }
            }
            if(!is_cse){
                tmpcse_set.insert(I);
                CSESet.insert(I);
            }
        }
        for (auto v : C->DomTree.dom_tree[bbid]) {
            dfs(v->getLabelId());
        }

        for (auto I : tmpcse_set){
            CSESet.erase(I);
        }

    };
    while(is_changed){
        is_changed = false;
        dfs(0);

        //replace reg
        for (auto func : unit->functions) {
            auto C = func->getMachineCFG();
            auto block_it = C->getSeqScanIterator();
            block_it->open();
            while (block_it->hasNext()) {
                auto block = block_it->next()->Mblock;
                for (auto it = block->begin();it != block->end();++it) {
                    auto I = *it;
                    I->ReplaceByMap(regreplace_map);
                }
            }
        }
    }
}