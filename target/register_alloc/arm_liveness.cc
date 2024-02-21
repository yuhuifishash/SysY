#include "arm_block.h"

template<>
void MachineCFG<ArmBlock>::MachineCFGNode::UpdateDefUse(){
    DEF.clear();
    USE.clear();
    for(auto ins : Mblock->instructions){
        // this->USE += (ins->GetUse() - this->DEF)
        // this->DEF += (ins->GetDef() - this->USE)
    }
}
