#include "graph_color.h"
void GraphColor::ConstructInterferenceGraph() {
    for (auto i : intervals) {
        for (auto j : intervals) {
            if (0 /*i conflict with j and i != j*/) {
                /* MakeEdge Between i,j */
                /* Update node_degree */
            }
        }
    }
}

bool GraphColor::TryReduce() { return false; }

bool GraphColor::StkAssign() { return false;}

int GraphColor::SelectSpill() { return -1; }

void GraphColor::Spill(int v_reg) {}

bool GraphColor::DoAllocInCurrentFunc() {
    auto mfun = current_func;
    ConstructInterferenceGraph();
    TryReduce();
    StkAssign();
    // if (TryReduce()) {
    //     StkAssign();
    // } else {
    //     Spill(SelectSpill());
    // }
    return false;
}
