#include "ir.h"
#include "cfg.h"
#include <tuple>

//due to IRgen, we can assume that all the store value are RegOperand

static std::set<Instruction> EraseSet;
static std::map<int,int> mem2reg_map;//<old regno, new regno>

auto CalculatedDefAndUse(CFG* C)
{
    //set of basic blocks id that contain definitions(uses) of key
    std::map<int,std::set<int> > defs,uses;
    //key is the alloca register, value is the definitions number of this register
    std::map<int,int> def_num;
    for(auto [id,BB]:*C->block_map){
        for(auto I:BB->Instruction_list){
            if(I->GetOpcode() == STORE){
                defs[((StoreInstruction*)I)->GetDefRegNo()].insert(id);
                def_num[((StoreInstruction*)I)->GetDefRegNo()]++;
            }else if(I->GetOpcode() == LOAD){
                uses[((LoadInstruction*)I)->GetUseRegNo()].insert(id);
            }
        }
    }
    return std::tuple(defs,uses,def_num);
}

//vset is the set of alloca regno that only store but not load
void Mem2RegNoUseAlloca(CFG* C,std::set<int>& vset)
{
    for(auto [id,bb]:*C->block_map){
        for(auto I:bb->Instruction_list){
            if(I->GetOpcode() == STORE){
                auto StoreI = (StoreInstruction*)I;
                if(StoreI->GetPointer()->GetOperandType() != BasicOperand::REG){continue;}
                int v = (StoreI)->GetDefRegNo();
                if(vset.find(v) == vset.end()){continue;}
                EraseSet.insert(I);
            }
        }
    }
}

//vset is the set of alloca regno that load and store are all in the BB block_id
void Mem2RegUseDefInSameBlock(CFG* C,std::set<int> vset,int block_id)
{
    std::map<int,int> curr_reg_map;//<alloca reg, current store value regno>
    for(auto I:(*C->block_map)[block_id]->Instruction_list){
        if(I->GetOpcode() == STORE){
            auto StoreI = (StoreInstruction*)I;
            if(StoreI->GetPointer()->GetOperandType() != BasicOperand::REG){continue;}
            int v = StoreI->GetDefRegNo();
            if(vset.find(v) == vset.end()){continue;}
            curr_reg_map[v] = ((RegOperand*)(StoreI->GetValue()))->GetRegNo();
            EraseSet.insert(I);
        }
        if(I->GetOpcode() == LOAD){
            auto LoadI = (LoadInstruction*)I;
            if(LoadI->GetPointer()->GetOperandType() != BasicOperand::REG){continue;}
            int v = LoadI->GetUseRegNo();
            if(vset.find(v) == vset.end()){continue;}
            mem2reg_map[LoadI->GetResultRegNo()] = curr_reg_map[v];
            EraseSet.insert(I);
        }
    }
}

//vset is the set of alloca regno that one store dominators all load instructions
void Mem2RegOneDefDomAllUses(CFG* C,std::set<int> vset)
{
    std::map<int,int> v_result_map;
    for(auto [id,bb]:*C->block_map){
        for(auto I:bb->Instruction_list){
            if(I->GetOpcode() == STORE){
                auto StoreI = (StoreInstruction*)I;
                if(StoreI->GetPointer()->GetOperandType() != BasicOperand::REG){continue;}
                int v = StoreI->GetDefRegNo();
                if(vset.find(v) == vset.end()){continue;}
                v_result_map[v] = ((RegOperand*)(StoreI->GetValue()))->GetRegNo();
                EraseSet.insert(I);
            }
        }
    }
    for(auto [id,bb]:*C->block_map){
        for(auto I:bb->Instruction_list){
            if(I->GetOpcode() == LOAD){
                auto LoadI = (LoadInstruction*)I;
                if(LoadI->GetPointer()->GetOperandType() != BasicOperand::REG){continue;}
                int v = LoadI->GetUseRegNo();
                if(vset.find(v) == vset.end()){continue;}
                mem2reg_map[LoadI->GetResultRegNo()] = v_result_map[v];
                EraseSet.insert(I);
            }
        }
    }
}

void InsertPhi(CFG* C)
{
    auto [defs,uses,def_num] = CalculatedDefAndUse(C);
    LLVMBlock entry_BB = (*C->block_map)[0];
    std::set<int> no_use_vset, onedom_vset;
    std::map<int,std::set<int> > sameblock_vset_map;

    for(auto I:entry_BB->Instruction_list){
        if(I->GetOpcode() != ALLOCA){continue;}

        auto AllocaI = (AllocaInstruction*)I;
        if(!(AllocaI->GetDims().empty())){continue;}//array can not be promoted
        int v = AllocaI->GetResultRegNo();
        LLVMType type = AllocaI->GetDataType();

        auto alloca_defs = defs[v];
        auto alloca_uses = uses[v];
        if(alloca_uses.size() == 0){//not use
            EraseSet.insert(I);
            no_use_vset.insert(v);
            continue;
        }

        if(alloca_defs.size() == 1){
            int block_id = *(alloca_defs.begin());
            if(alloca_uses.size() == 1 && *(alloca_uses.begin()) == block_id){//def and use in the same block
                EraseSet.insert(I);
                sameblock_vset_map[block_id].insert(v);
                continue;
            }
        }

    }
    Mem2RegNoUseAlloca(C,no_use_vset);
    Mem2RegOneDefDomAllUses(C,onedom_vset);
    for(auto [id,vset]:sameblock_vset_map){
        Mem2RegUseDefInSameBlock(C,vset,id);
    }
}

void VarRename(CFG* C)
{

}

void Mem2Reg(CFG* C)
{
    InsertPhi(C);
    VarRename(C);
}

