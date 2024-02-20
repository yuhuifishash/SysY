#include "ir.h"

/*this pass will do Aggressive Dead Code Elimination, it will eliminate useless Control Flow Structure
(such as useless loop)
*/

auto BuildPostDominatorTree(std::vector<std::vector<LLVMBlock> > invG, int max_label, int ret_block_id)
{
    //build the post dominator tree of Graph G
}

void AggressiveDeadCodeElimination(CFG* C)
{
    
}