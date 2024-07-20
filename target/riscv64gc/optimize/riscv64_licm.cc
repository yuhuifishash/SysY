#include "riscv64_licm.h"
#include <functional>

#define MachineLICM_DEBUG

void RiscV64LICM::Execute(){
    for (auto func : unit->functions) {
        current_func = func;
        
    }
}