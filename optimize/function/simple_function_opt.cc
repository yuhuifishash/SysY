#include "../../include/cfg.h"

/**
 * this function will make function only has one return block.
 * if the function has multiple return block and the return type is not void,
 * you will generate a new alloca Instruction in bb0.
 * then replace all the ret instruction with store instruction and br uncond instruction
 * then create a new bb for ret instruction.(this bb is the target of the new br uncond instruction)
 * you should set CFG::max_reg correctly
 * @param C the control flow graph of the function */
void MakeFunctionOneExit(CFG *C) {
    std::queue<LLVMBlock> OneExitqueue;
    enum LLVMType ret_type = VOID;
    int ret_cnt = 0;
    for (auto [id, bb] : *C->block_map) {
        // if(id==(*C->block_map).size()-1){
        //     break;
        // }//function main()
        auto I = bb->Instruction_list.back();
        if (I->GetOpcode() != RET) {
            continue;
        }
        ret_cnt++;
        auto RetI = (RetInstruction *)I;
        // if (RetI->GetType() == VOID) {
        //     continue;
        // }
        ret_type = RetI->GetType();
        OneExitqueue.push(bb);
    }
    if (ret_cnt <= 1) {
        if (!OneExitqueue.empty()) {
            OneExitqueue.pop();
        }
        return;
    }
    auto B = C->NewBlock();
    if(ret_type!=VOID){
            /*
            ret type value -->
            store type value pointer
            br uncond newblock
            */
            /*
            load reg_type pointer reg
            ret reg
            */
        auto ret_ptr = new RegOperand(++C->max_reg);
        auto B_Retreg = new RegOperand(++C->max_reg);
        auto bb0 = C->block_map->begin()->second;
        auto AllocaI = new AllocaInstruction(ret_type, ret_ptr);
        bb0->InsertInstruction(0, AllocaI);
        while (!OneExitqueue.empty()) {
            auto bb = OneExitqueue.front();
            OneExitqueue.pop();
            auto RetI = (RetInstruction *)bb->Instruction_list.back();
            bb->Instruction_list.pop_back();
            bb->InsertInstruction(1, new StoreInstruction(ret_type, ret_ptr, RetI->GetRetVal()));
            bb->InsertInstruction(1, new BrUncondInstruction(new LabelOperand(B->block_id)));
        }
        B->InsertInstruction(1, new LoadInstruction(ret_type, ret_ptr, B_Retreg));
        B->InsertInstruction(1, new RetInstruction(ret_type, B_Retreg));
    }else{
         while (!OneExitqueue.empty()) {
            auto bb = OneExitqueue.front();
            OneExitqueue.pop();
            bb->Instruction_list.pop_back();
            bb->InsertInstruction(1, new BrUncondInstruction(new LabelOperand(B->block_id)));
        }
        B->InsertInstruction(1, new RetInstruction(VOID,0));
    }

    C->ret_block = B;
    C->BuildCFG();
}

/**
 * this function will elimate tailrecursive
 * you can use testcase 087_gcd.sy to check
 * you should set CFG::max_reg correctly
 * @param C the control flow graph of the function */
void TailRecursiveEliminate(CFG *C) {
    auto FuncdefI = C->function_def;
    if(FuncdefI->GetFormalSize()>5){return;}
    auto bb0 = (*C->block_map->begin()).second;
    bool NeedtoInsertPTR=0;
    std::deque<Instruction> StoreDeque;
    std::deque<Instruction> AllocaDeque;
    std::vector<Operand> PtrArr;//store newptr equal to oldparam
    std::set<Instruction> EraseSet;
    std::set<Instruction> InsertSet;
    //when exist call ptr, ret
    for (auto [id, bb] : *C->block_map) {
        if (bb->Instruction_list.back()->GetOpcode() != RET) {
            continue;
        }
        auto retI = (RetInstruction *)bb->Instruction_list.back();
        for (auto I : bb->Instruction_list) {
            if (I->GetOpcode() != CALL) {
                continue;
            }
            auto callI = (CallInstruction *)I;
            if (callI->GetFunctionName() != FuncdefI->GetFunctionName()) {
                continue;
            }
            bool opt1 =
            callI->GetResult() != NULL && callI->GetResult()->GetFullName() == retI->GetRetVal()->GetFullName();
            bool opt2 = callI->GetResult() == NULL && retI->GetType() == VOID;
            if (opt1 || opt2) {
                EraseSet.insert(callI);
                EraseSet.insert(retI);
                auto list_size = callI->GetParameterList().size();
                auto bb0_it = --bb0->Instruction_list.end();
                if(!NeedtoInsertPTR){
                    //insert alloca and store instruction of ptr
                    NeedtoInsertPTR=1;
                    for(u_int32_t i=0;i<FuncdefI->GetFormalSize();++i){
                        if(FuncdefI->formals[i]==PTR){
                            auto PtrReg=new RegOperand(++C->max_reg);
                            PtrArr.push_back(PtrReg);
                            AllocaDeque.push_back(new AllocaInstruction(PTR,PtrReg));
                            StoreDeque.push_back(new StoreInstruction(PTR,PtrReg,FuncdefI->formals_reg[i]));
                        }
                    }
                    while(!StoreDeque.empty()){
                        bb0->InsertInstruction(0,StoreDeque.back());
                        StoreDeque.pop_back();
                    }
                    for(auto *it:AllocaDeque){
                        bb0->InsertInstruction(0,it);
                    }
                }
                auto bb0_ptr_it = bb0->Instruction_list.begin();
                while((*bb0_ptr_it)->GetOpcode() == ALLOCA){
                    bb0_ptr_it++;
                }
                //if exist alloca ptr,bb0_ptr_it=the end of alloca ptr
                for (auto i = 0; i < list_size; i++) {
                    Instruction allocaI;
                    if (callI->GetParameterList()[i].first == PTR) {
                        bb0_ptr_it--;
                        allocaI = *bb0_ptr_it;
                    }else{
                        bb0_it--;
                        allocaI = *bb0_it;
                        while (allocaI->GetOpcode() != ALLOCA) {
                            bb0_it--;
                            allocaI = *bb0_it;
                        }
                    }
                    auto callI_reg = (RegOperand *)(callI->GetParameterList()[i].second);
                    auto storeI = new StoreInstruction(callI->GetParameterList()[i].first, allocaI->GetResultReg(),
                                                       callI->GetParameterList()[i].second);
                    bb->InsertInstruction(1, storeI);
                }
                bb->InsertInstruction(1, new BrUncondInstruction(new LabelOperand(1)));
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
            auto ResultOperands=I->GetNonResultOperands();
            bool NeedtoUpdate=0;
            if(id!=0&&NeedtoInsertPTR&&!ResultOperands.empty()){
                for(u_int32_t i=0;i<ResultOperands.size();++i){
                    auto ResultReg=ResultOperands[i];
                    for(u_int32_t j=0;j<FuncdefI->formals_reg.size();++j){
                        auto DefReg=FuncdefI->formals_reg[j];
                        if(ResultReg->GetFullName()==DefReg->GetFullName()){
                            NeedtoUpdate=1;
                            auto PtrReg=new RegOperand(++C->max_reg);
                            bb->InsertInstruction(1, new LoadInstruction(PTR,PtrArr[j],PtrReg));
                            ResultOperands[i]=PtrReg;
                            break;
                        }
                    }
                    
                }
                if(NeedtoUpdate){
                    I->SetNonResultOperands(ResultOperands);
                }
            }
            bb->InsertInstruction(1, I);
        }
    }
    while(!AllocaDeque.empty()){
        AllocaDeque.pop_back();
    }
    EraseSet.clear();
    C->BuildCFG();
    // std::cerr<<"TailRecursiveElimate is not implemented now\n";
}
