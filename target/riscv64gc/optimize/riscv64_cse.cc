#include "riscv64_cse.h"
void RiscV64CSE::Execute(){
    for (auto func : unit->functions) {
        current_func = func;
        // for (auto block : func->blocks) {
        //     cur_block = block;
        // }
    }
}