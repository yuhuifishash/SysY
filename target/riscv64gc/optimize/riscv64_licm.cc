#include "riscv64_licm.h"
#include <functional>

// #define MachineLICM_DEBUG

void RiscV64LICM::Execute() {
    for (auto func : unit->functions) {
        current_func = func;
        InitResultMapInCurrFunc();
    }
}

void RiscV64LICM::InitResultMapInCurrFunc() {
    InstResultMap.clear();

    auto C = current_func->getMachineCFG();
    auto block_it = C->getSeqScanIterator();
    block_it->open();
    while (block_it->hasNext()) {
        auto block = block_it->next()->Mblock;
        for (auto it = block->begin();it != block->end();++it) {
            auto I = *it;
            auto write_vector = I->GetWriteReg();
            if(write_vector.size() == 1){
                auto r = *write_vector.begin();
                if(r->is_virtual){
                    InstResultMap[r->reg_no] = I;
                }
            }
        }
    }

    #ifdef MachineLICM_DEBUG
        // for(auto [r,I]:InstResultMap){
        //     std::cerr<<r<<"   ";
        //     for(auto rr:I->GetReadReg()){
        //         std::cerr<<rr->reg_no<<" ";
        //     }std::cerr<<"\n";
        // }
    #endif

}

static bool isNeedLicm(MachineBaseInstruction* I) {
    if(I->ExistPhysicalReg()){
        return false;
    }
    if(I->arch == MachineBaseInstruction::COPY){
        return true;
    }
    if(I->arch == MachineBaseInstruction::RiscV){
        auto rvI = (RiscV64Instruction*)I;
        if(rvI->getOpcode() == RISCV_LUI || rvI->getOpcode() == RISCV_ADDI || 
            rvI->getOpcode() == RISCV_ADD || rvI->getOpcode() == RISCV_MUL){
            return true;
        }
    }
    return false;
}

static bool isInvariant(MachineCFG* C, MachineBaseInstruction* I, MachineNaturalLoop* L) {
    if(!isNeedLicm(I)){
        return false;
    }
    if(I->arch == MachineBaseInstruction::COPY){
        auto cpI = (MachineCopyInstruction*)I;

    }else if(I->arch == MachineBaseInstruction::RiscV){

    }else{
        ERROR("Unexpected Arch");
    }
}

void RiscV64LICM::GetInvariantInCurrLoop() {
    InvariantInstList.clear();
    InvariantSet.clear();

    std::set<MachineBaseInstruction*> InsVisited;

    int change_flag = 1;
    while (change_flag) {
        change_flag = 0;

        for (auto LBB : curr_loop->loop_nodes) {
            for (auto it = LBB->begin();it != LBB->end();++it) {
                auto I = *it;
                if (InsVisited.find(I) == InsVisited.end() && isInvariant(current_func->getMachineCFG(), I, curr_loop)) {
                    change_flag = true;
                    InsVisited.insert(I);
                    InvariantInstList.push_back(I);
                }
            }
        }
    }
}