// #include "llvm_cfg.h"
// #include "llvm_ir.h"

// extern std::map<std::string,CFG*> CFG_M;

// void LLVM_IR::SimpleDCE()
// {
//     for(auto node:llvm_cfg){
//         node.second->SimpleDCE();
//         node.second->build_SSA_Graph();
//     }
// }

// void CFG::SimpleDCE()
// {
//     std::set<int> WorkList;
//     std::map<int,int> reg_use_count;
    
//     for(auto b:*block){
//         for(auto I:b.second->Instruction_list){
//             int v = I->get_resultregno();
//             if(v != -1){WorkList.insert(v);}
//             for(auto op:I->get_nonresult_operands()){
//                 if(op->getOperandType() == basic_operand::REG){
//                     reg_use_count[((reg_operand*)op)->getRegNo()]++;
//                 }
//             }
//         }
//     }
//     while(!WorkList.empty()){
//         int v = *WorkList.begin();
//         WorkList.erase(v);
//         if(reg_use_count[v] == 0){
//             auto resultI = regresult_ins_map[v];
//             if(resultI->get_opcode() == CALL){
//                 auto I = (call_Instruction*)resultI;
//                 if(CFG_M.find(I->get_funcName()) == CFG_M.end()){continue;}
//                 auto target_cfg = CFG_M[I->get_funcName()];
//                 if(!target_cfg->func_info.is_independent_tag){continue;}
//             }
//             resultI->erase_tag = 1;
//             for(auto op:resultI->get_nonresult_operands()){
//                 if(op->getOperandType() == basic_operand::REG){
//                     int x = ((reg_operand*)op)->getRegNo();
//                     reg_use_count[x]--;
//                     WorkList.insert(x);
//                 }
//             }
//         }
//     }

//     for(auto B1:*block){
//         auto tmp_Instruction_list = B1.second->Instruction_list;
//         B1.second->Instruction_list.clear();
//         for(auto I:tmp_Instruction_list){
//             if(I->erase_tag){continue;}
//             B1.second->push_Ins(1,I);
//         }
//     }
// }