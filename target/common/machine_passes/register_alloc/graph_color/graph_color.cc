#include "graph_color.h"
void GraphColor::ConstructInterferenceGraph() {
    for (auto i : intervals) {
        for (auto j : intervals) {
            TODO("Implement ConstructInterferenceGraph");
            if (0 /*i conflict with j and i != j*/) {
                /* MakeEdge Between i,j */
                /* Update node_degree */
            }
        }
    }
}

bool GraphColor::TryReduce() {
    TODO("Implement TryReduce");
    return false;
}

bool GraphColor::StkAssign() {
    TODO("Implement StkAssign");
    return false;
}

int GraphColor::SelectSpill() {
    TODO("Implement SelectSpill(Not sure if it's used)");
    return -1;
}

void GraphColor::Spill(int v_reg) { TODO("Implement Spill(Not sure if it's used)"); }

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
