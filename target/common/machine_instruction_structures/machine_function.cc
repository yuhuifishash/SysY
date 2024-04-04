#include "machine.h"

int MachineFunction::GetNewRegister(int regtype,int reglength){
    int new_regno;
    if(am_registers.empty()){
        new_regno = 0;
    }else{
        new_regno = (am_registers.rbegin())->first+1;
    }
    am_registers[new_regno].data_type = regtype;
    am_registers[new_regno].data_length = reglength;
    InitializeNewVirtualRegister(new_regno);
    return new_regno;
}

MachineBlock* MachineFunction::CreateNewEmptyBlock(std::vector<int>pre,std::vector<int>succ){
    return nullptr;
}
MachineBlock* MachineFunction::InsertNewBranchOnlyBlockBetweenEdge(int begin,int end){
    return nullptr;
}
MachineBlock* MachineFunction::InsertNewBranchOnlyPreheaderBetweenThisAndAllPredecessors(int id){
    return nullptr;
}
MachineBlock* MachineFunction::InsertNewBranchOnlySuccessorBetweenThisAndAllSuccessors(int id){
    return nullptr;
}
void RedirectPhiNodePredecessor(int phi_block,int old_predecessor,int new_predecessor){
    // in phi_block, find all phi_instructions containing <label old_predecessor> in phi instruction
    // then replace <label old_predecessor> to <label new_predecessor>

}