#include "../../include/ir.h"
#include "function_basicinfo.h"

void SparseConditionalConstantPropagation(CFG *C);
void InstSimplify(CFG *C);
void InstCombine(CFG *C);
void SimplifyCFG(CFG *C);

extern std::map<std::string, CFG *> CFGMap;

// we process function call in bottom-up order(CallGraphSCC)
// in SysY2022, the SCC's size <= 1, so we only need to consider self-recursive
// after each iterations, we need to use SCCP, SimplifyCFG to optimize the cfg
/*
    InlineDFS(CFG* now) {

        for(auto v: CG->GetSuccessor(now)) {
            InlineDFS(v);

            if(v is self-recursive) { // do not inline
                continue;
            }

            if(v == now){ // now has self-recursive
                while(inline self is better){
                    for(auto t : call v in now){
                        if(inline self is better){
                            inline t -> now
                        }
                    }
                }
                return;
            }

            for(auto t : call v in now){ //other situations
                if(inline t is better) {
                    inline t -> now;
                }
            }

        }

        SCCP(now);
        SimplifyCFG(now);
    }
*/

void FunctionInline(LLVMIR *IR) {}
