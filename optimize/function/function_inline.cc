#include "../../include/ir.h"
#include "function_basicinfo.h"
// we process function call in bottom-up order(CallGraphSCC)
// in one SCC, we only inline several calls(the code size should not become to large)
// if one node's call is a node in SCC, we will not inline this call(f -> SCC)
// in SysY2022, the SCC's size <= 1, so we only need to consider self-recursive
void FunctionInline(LLVMIR *IR) {}
