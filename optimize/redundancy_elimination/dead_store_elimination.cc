#include "../../include/cfg.h"
#include "../alias_analysis/alias_analysis.h"
#include "memdep/memdep.h"

// dead store elimination, only considers basic-block local redundant stores
void BasicBlockDSE(CFG *C) {}

// dead store elimination, post-dominator tree traversal
void PostDomTreeWalkDSE(CFG *C) {}

void SimpleDSE(CFG *C) {
    BasicBlockDSE(C);
    PostDomTreeWalkDSE(C);
}