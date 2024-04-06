#ifndef GRAPH_COLOR_H
#define GRAPH_COLOR_H
#include "basic_register_allocation.h"
class GraphColor : public RegisterAlloc{
private:
    // All States here
    std::stack<int> alloc_stk;

    // Adj vector
    std::vector<std::vector<int> >interference_graph;
    std::vector<int> node_degree;

    void ConstructInterferenceGraph();
    bool TryReduce();
    int SelectSpill();
    void Spill(int am_reg);
    void StkAssign();
public:
    GraphColor(MachineFunction* mfun,PhysicalRegisters* phy):RegisterAlloc(mfun,phy){}
    void DoAlloc(){}
};
#endif