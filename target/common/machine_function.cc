#include "machine_block.h"

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
MachineBlock* MachineFunction::InsertNewEmptyBlockBetweenEdge(int begin,int end){
    return nullptr;
}
MachineBlock* MachineFunction::InsertNewEmptyPreheaderBetweenThisAndAllPredecessors(int id){
    return nullptr;
}
MachineBlock* MachineFunction::InsertNewEmptySuccessorBetweenThisAndAllSuccessors(int id){
    return nullptr;
}
