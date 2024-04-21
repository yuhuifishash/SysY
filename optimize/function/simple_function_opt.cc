#include "../include/ir.h"

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
        auto I = bb->Instruction_list.back();
        if (I->GetOpcode() != RET) {
            continue;
        }
        ret_cnt++;
        auto RetI = (RetInstruction *)I;
        if (RetI->GetType() == VOID) {
            continue;
        }
        ret_type = RetI->GetType();
        OneExitqueue.push(bb);
    }
    if (ret_cnt <= 1) {
        if (!OneExitqueue.empty()) {
            OneExitqueue.pop();
        }
        return;
    }
    auto ret_ptr = new RegOperand(++C->max_reg);
    auto B = C->NewBlock();
    auto B_Retreg = new RegOperand(++C->max_reg);
    auto bb0 = C->block_map->begin()->second;
    auto AllocaI = new AllocaInstruction(ret_type, ret_ptr);
    bb0->InsertInstruction(0, AllocaI);
    /*
    ret type value -->
    store type value pointer
    br uncond newblock
    */
    while (!OneExitqueue.empty()) {
        auto bb = OneExitqueue.front();
        OneExitqueue.pop();
        auto RetI = (RetInstruction *)bb->Instruction_list.back();
        bb->Instruction_list.pop_back();
        if (ret_type != VOID) {
            bb->InsertInstruction(1, new StoreInstruction(ret_type, ret_ptr, RetI->GetRetVal()));
        }
        bb->InsertInstruction(1, new BrUncondInstruction(new LabelOperand(B->block_id)));
    }
    /*
    load reg_type pointer reg
    ret reg
    */
    if (ret_type != VOID) {
        B->InsertInstruction(1, new LoadInstruction(ret_type, ret_ptr, B_Retreg));
    }
    B->InsertInstruction(1, new RetInstruction(ret_type, B_Retreg));
    C->ret_block = B;
    C->BuildCFG();
}

/**
 * this function will elimate tailrecursive
 * you can use testcase 087_gcd.sy to check
 * you should set CFG::max_reg correctly
 * @param C the control flow graph of the function */
void TailRecursiveEliminate(CFG *C) {
    std::set<Instruction> EraseSet;
    auto FuncdefI = C->function_def;
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
                auto bb0 = (*C->block_map->begin()).second;
                auto bb0_it = --bb0->Instruction_list.end();
                for (auto i = 0; i < list_size; i++, bb0_it--) {
                    auto allocaI = *bb0_it;
                    if (callI->GetParameterList()[i].first == PTR) {
                        bb0_it++;
                        continue;
                    }
                    while (allocaI->GetOpcode() != ALLOCA) {
                        bb0_it--;
                        allocaI = *bb0_it;
                    }
                    auto callI_reg = (RegOperand *)(callI->GetParameterList()[i].second);
                    auto funcdefI_reg = (RegOperand *)FuncdefI->formals_reg[i];
                    if (callI_reg->GetRegNo() == i) {
                        continue;
                    }    // funtion params id stand by i
                    auto storeI = new StoreInstruction(callI->GetParameterList()[i].first, allocaI->GetResultReg(),
                                                       callI->GetParameterList()[i].second);
                    bb->InsertInstruction(1, storeI);
                }
                bb->InsertInstruction(1, new BrUncondInstruction(new LabelOperand(1)));
            }
        }
    }
    // std::cout<<FuncdefI->GetFunctionName()<<"\n";
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
    EraseSet.clear();
    // std::cerr<<"TailRecursiveElimate is not implemented now\n";
}
