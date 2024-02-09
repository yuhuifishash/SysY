// #include "llvm_cfg.h"
// #include "llvm_ir.h"
// #include "Instruction.h"
// #include "IRgen.h"
// #include <bitset>

// extern LLVMIR llvmIR;

// void LLVMIR::build_dominator_tree()
// {
//     for(auto node:llvm_cfg){
//         node.second->build_dominator_tree();
//     }
// }

// void LLVMIR::insert_phi()
// {
//     for(auto node:llvm_cfg){
//         node.second->insert_phi();
//     }
// }

// void LLVMIR::var_rename()
// {
//     for(auto node:llvm_cfg){
//         node.second->var_rename();
//     }
// }

// void LLVMIR::mem2reg()
// {
//     build_dominator_tree();
//     insert_phi();
//     var_rename();
// }

// void CFG::calc_defs_uses()
// {
//     for(auto B1:*block){
//         for(auto Ins:B1.second->Instruction_list){
            
//             if(Ins->GetOpcode() == STORE){
//                 defs[((StoreInstruction*)Ins)->GetDefRegNo()].insert(B1.first);
//                 def_num[((StoreInstruction*)Ins)->GetDefRegNo()]++;
//             }
//             if(Ins->GetOpcode() == LOAD){
//                 uses[((LoadInstruction*)Ins)->get_useregno()].insert(B1.first);
//             }
//         }
//     }
// }

// std::set<int> CFG::calc_DF(std::set<int> S)
// {
//     std::bitset<65536>result;
//     for(auto node:S){
//         result|=DF[node];
//     }
//     std::set<int> ret;
//     for(int i=0;i<=max_label;++i){
//         if(result[i]){
//             ret.insert(i);
//         }
//     }
//     return ret;
// }

// std::set<int> CFG::calc_DF(int BB_id)
// {
//     std::set<int> ret;
//     for(int i=0;i<=max_label;++i){
//         if(DF[BB_id][i]){
//             ret.insert(i);
//         }
//     }
//     return ret;
// }

// void CFG::mem2reg_no_use_alloca(std::set<int>& no_use_vset)
// {
//     for(auto B1:*block){
//         for(auto Ins:B1.second->Instruction_list){
//             if(Ins->GetOpcode() == STORE && ((StoreInstruction*)Ins)->GetPointer()->GetOperandType() == BasicOperand::REG){
//                 if(no_use_vset.find(((StoreInstruction*)Ins)->GetDefRegNo()) == no_use_vset.end() || ((StoreInstruction*)Ins)->erase_tag ){continue;}
//                 ((StoreInstruction*)Ins)->erase_tag = 1;
//             }
//         }
//     }
// }

// void CFG::mem2reg_in_sameblock(int regno,int block_id)//pointer BB
// {
//     int current_regno = 0;
//     for(auto Ins:(*block)[block_id]->Instruction_list){
//         if(Ins->GetOpcode() == STORE && ((StoreInstruction*)Ins)->GetPointer()->GetOperandType() == BasicOperand::REG){
//             if(((StoreInstruction*)Ins)->GetDefRegNo() != regno || ((StoreInstruction*)Ins)->erase_tag ){continue;}
//             current_regno = ((RegOperand*)(((StoreInstruction*)Ins)->GetValue()))->GetRegNo();
//             ((StoreInstruction*)Ins)->erase_tag = 1;
//         }
//         if(Ins->GetOpcode() == LOAD && ((LoadInstruction*)Ins)->GetPointer()->GetOperandType() == BasicOperand::REG){
//             if(((LoadInstruction*)Ins)->get_useregno() != regno || ((LoadInstruction*)Ins)->erase_tag){continue;}
//             mem2reg_map[Ins->GetResultRegNo()] = current_regno;
//             ((LoadInstruction*)Ins)->erase_tag = 1;
//         }
//     }
// }

// void CFG::mem2reg_onedef_dom_alluses(int regno)//pointer  value
// {
//     int result = 0;
//     for(auto B1:*block){
//         for(auto Ins:B1.second->Instruction_list){
//             if(Ins->GetOpcode() == STORE && ((StoreInstruction*)Ins)->GetPointer()->GetOperandType() == BasicOperand::REG ){
//                 if(((StoreInstruction*)Ins)->GetDefRegNo() != regno || ((StoreInstruction*)Ins)->erase_tag ){continue;}
//                 result = ((RegOperand*)(((StoreInstruction*)Ins)->GetValue()))->GetRegNo();
//                 ((StoreInstruction*)Ins)->erase_tag = 1;
//                 break;
//             }
//         }
//     }
//     for(auto B1:*block){
//         for(auto Ins:B1.second->Instruction_list){
//             if(Ins->GetOpcode() == LOAD && ((LoadInstruction*)Ins)->GetPointer()->GetOperandType() == BasicOperand::REG){
//                 if(((LoadInstruction*)Ins)->get_useregno() != regno || ((LoadInstruction*)Ins)->erase_tag){continue;}
//                 mem2reg_map[Ins->GetResultRegNo()] = result;
//                 ((LoadInstruction*)Ins)->erase_tag = 1;
//             }
//         }
//     }
// }

// void CFG::insert_phi()
// {
//     LLVMBlock entry_BB = (*block)[0];
//     std::set<int> no_use_vset;
//     for(auto Ins:entry_BB->Instruction_list){
//         if(Ins->GetOpcode() != ALLOCA){continue;}

//         auto I = (AllocaInstruction*)Ins;
//         if(!(I->GetDims().empty())){continue;}//array can not be promoted
//         int v = I->GetResultRegNo();
//         LLVMType type = I->GetDataType();

//         auto I_defs = defs[v];
//         auto I_uses = uses[v];
//         if(I_uses.size() == 0){//not use
//             I->erase_tag = 1;
//             no_use_vset.insert(v);
//             continue;
//         }

//         if(I_defs.size() == 1){
//             int block_id = *(I_defs.begin());
//             if(I_uses.size() == 1 && *(I_uses.begin()) == block_id){//def and use in the same block
//                 I->erase_tag = 2;
//                 mem2reg_in_sameblock(v,block_id);
//                 continue;
//             }
//         }

//         if(def_num[v] == 1){//only def once
//             int block_id = *(I_defs.begin());
//             int dom_flag = 1;
//             for(auto load_BB:I_uses){
//                 if(!if_dominate(block_id,load_BB)){
//                     dom_flag = 0;
//                     break;
//                 }
//             }
//             if(dom_flag){//one def dominate all uses
//                 I->erase_tag = 3;
//                 mem2reg_onedef_dom_alluses(v);
//                 continue;
//             }
//         }

//         //next is the common situation
//         allocas.insert(v);
//         I->erase_tag = 4;

//         std::set<int> F{};//set of blocks where phi is added
//         std::set<int> W = defs[v];//set of blocks that contain the def of regno

//         while(!W.empty()){
//             int BB_X = *W.begin();
//             W.erase(BB_X);
//             for(auto BB_Y:calc_DF(BB_X)){
//                 //std::cout<<v<<" "<<BB_X<<" "<<BB_Y<<"\n";
//                 if(F.find(BB_Y) == F.end()){
//                     PhiInstruction* phi_ins = new PhiInstruction(type,new RegOperand(++max_reg));
//                     (*block)[BB_Y]->InsertInstruction(0,phi_ins);
//                     new_phi_map[phi_ins] = v;
//                     F.insert(BB_Y);
//                     if(defs[v].find(BB_Y) == defs[v].end()){
//                         W.insert(BB_Y);
//                     }
//                 }
//             }
//         }
//     }
//     mem2reg_no_use_alloca(no_use_vset);
//     //std::cerr<<func_ins->get_Func_name()<<"\n";
//     //for(auto [r1,r2]:mem2reg_map){std::cerr<<r1<<" "<<r2<<"\n";}
// }

// int in_allocas(std::set<int>& S,Instruction I)
// {
//     if(I->GetOpcode() == LOAD){
//         auto Ins = (LoadInstruction*)I;
//         if(Ins->GetPointer()->GetOperandType() != BasicOperand::REG){return -1;}
//         int pointer = Ins->get_useregno();
//         if(S.find(pointer) != S.end()){
//             return pointer;
//         }
//     }
//     if(I->GetOpcode() == STORE){
//         auto Ins = (StoreInstruction*)I;
//         if(Ins->GetPointer()->GetOperandType() != BasicOperand::REG){return -1;}
//         int pointer = Ins->GetDefRegNo();
//         if(S.find(pointer) != S.end()){
//             return pointer;
//         }
//     }
//     return -1;
// }

// void CFG::var_rename()
// {
//     std::map<int,std::map<int,int> > WorkList;//< BB, <alloca_reg,val_reg> >
//     WorkList.insert({0,std::map<int,int>{}});
//     std::vector<int> BBvis;
//     BBvis.resize(max_label+1);
//     while(!WorkList.empty()){
//         int BB = (*WorkList.begin()).first;
//         auto IncomingVals = (*WorkList.begin()).second;
//         WorkList.erase(BB);
//         if(BBvis[BB]){continue;}
//         BBvis[BB] = 1;
//         for(auto &I:(*block)[BB]->Instruction_list){
//             if(I->GetOpcode() == LOAD){
//                 auto Ins = (LoadInstruction*)I;
//                 int v = in_allocas(allocas,I);
//                 if(v >= 0){//load instruction is in allocas
//                     //如果当前指令是 load，找到对应的 alloca v，将用到 load 结果的地方都替换成 IncomingVals[v]
//                     Ins->erase_tag = 1;
//                     mem2reg_map[Ins->GetResultRegNo()] = IncomingVals[v]; 
//                 }
//             }
//             if(I->GetOpcode() == STORE){
//                 auto Ins = (StoreInstruction*)I;
//                 int v = in_allocas(allocas,I);
//                 if(v >= 0){//store instruction is in allocas
//                     //如果当前指令是 store，找到对应的 alloca v，更新IncomingVals[v] = val,并删除store
//                     Ins->erase_tag = 1;
//                     IncomingVals[v] = ((RegOperand*)(Ins->GetValue()))->GetRegNo();
//                 }
//             }
//             if(I->GetOpcode() == PHI){
//                 auto Ins = (PhiInstruction*)I;
//                 if(Ins->erase_tag){continue;}
//                 auto it = new_phi_map.find(Ins);
//                 if(it != new_phi_map.end()){//phi instruction is in allocas
//                     //更新IncomingVals[v] = val
//                     IncomingVals[it->second] = Ins->GetResultRegNo();
//                 }
//             }
//         }
//         for(auto succ:G[BB]){
//             int BBv = succ->block_id;
//             WorkList.insert({BBv,IncomingVals});
//             for(auto I:(*block)[BBv]->Instruction_list){
//                 if(I->GetOpcode() != PHI){break;}
//                 auto Ins = (PhiInstruction*)I;
//                 //找到 phi 对应的 alloca
//                 auto it = new_phi_map.find(Ins);
//                 if(it != new_phi_map.end()){
//                     int v = it->second;
//                     if(IncomingVals.find(v) == IncomingVals.end()){
//                         Ins->erase_tag = 1;
//                         continue;
//                     }
//                     //为 phi 添加前驱块到当前块的边
//                     Ins->Insert_phi(new RegOperand(IncomingVals[v]),new LabelOperand(BB));
//                 }
//             }
//         }
//     }

//     for(auto B1:*block){
//         for(auto Ins:B1.second->Instruction_list){
//             if(Ins->GetOpcode() == LOAD && ((LoadInstruction*)Ins)->GetPointer()->GetOperandType() == BasicOperand::REG){
//                 int result = Ins->GetResultRegNo();
//                 if(mem2reg_map.find(result) != mem2reg_map.end()){
//                     int result2 = mem2reg_map[result];
//                     while(mem2reg_map.find(result2) != mem2reg_map.end()){
//                         mem2reg_map[result] = mem2reg_map[result2];
//                         result2 = mem2reg_map[result];
//                     }
//                 }
//             }
//         }
//     }
    
//     for(auto B1:*block){
//         auto tmp_Instruction_list = B1.second->Instruction_list;
//         B1.second->Instruction_list.clear();
//         for(auto I:tmp_Instruction_list){
//             if(I->GetOpcode() == ALLOCA && ((AllocaInstruction*)I)->erase_tag){continue;}
//             if(I->GetOpcode() == LOAD && ((LoadInstruction*)I)->erase_tag){continue;}
//             if(I->GetOpcode() == STORE && ((StoreInstruction*)I)->erase_tag){continue;}
//             if(I->GetOpcode() == PHI && ((PhiInstruction*)I)->erase_tag){continue;}
//             B1.second->InsertInstruction(1,I);
//         }
//     }
    
//     for(auto B1:*block){
//         for(auto I:B1.second->Instruction_list){
//             // replace mem2reg_map
//             I->ReplaceByMap(mem2reg_map);
//         }
//     }
//     defs.clear();
//     uses.clear();
//     def_num.clear();
//     mem2reg_map.clear();
//     allocas.clear();
//     new_phi_map.clear();
//     // std::cerr<<func_ins->get_Func_name()<<"\n";
//     // for(auto [r1,r2]:mem2reg_map){std::cerr<<r1<<" "<<r2<<"\n";}
// }