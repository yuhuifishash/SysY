#include "machine_block.h"
// template<class INSPTR>
// MachineUnit<INSPTR>::MachineUnit(LLVM_IR& IR){
//     global_def = IR.global_def;
//     for(auto func_pair:IR.llvm_cfg){
//         auto cfg = func_pair.second;
//         std::string name = cfg->func_ins->get_Func_name();
//         auto cur_machfunc = new MachineFunc<INSPTR>(name);
//         functions.push_back(cur_machfunc);
//         for(auto block_pair:*(cfg->block)){
//             auto block = block_pair.second;
//             // We assume IR blocks have already been concated
//             auto cur_machblk = new MachineBlock<INSPTR>(block_pair.first);
//             cur_machfunc->blocks.push_back(cur_machblk);
//             // Expand
//             for(auto instruction : block->Instruction_list){
//                 cur_machblk->ConvertAndAppend<Instruction>(instruction);
//             }
//             // Simplify&Match : peehole
//         }
//     }
// }
