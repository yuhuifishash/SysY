#include "../../include/ir.h"
#include "function_basicinfo.h"
// we process function call in bottom-up order(CallGraphSCC)
// in one SCC, we only inline several calls(the code size should not become to large)
// if one node's call is a node in SCC(size > 1 or direct_recursive),we will not inline this call(f -> SCC)
void FunctionInline(LLVMIR *IR) {}
