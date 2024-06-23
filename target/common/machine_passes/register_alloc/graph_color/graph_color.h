#ifndef GRAPH_COLOR_H
#define GRAPH_COLOR_H
#include "../basic_register_allocation.h"
class GraphColor : public RegisterAllocation {
private:
    // All States here
    std::stack<int> alloc_stk;

    // Adj vector
    std::vector<std::vector<int>> interference_graph;
    std::vector<int> node_degree;

    void ConstructInterferenceGraph();
    bool TryReduce();
    int SelectSpill();
    void Spill(int v_reg);
    bool StkAssign();

protected:
    bool DoAllocInCurrentFunc();

public:
    GraphColor(MachineUnit *unit, PhysicalRegisters *phy, SpillCodeGen *spiller)
        : RegisterAllocation(unit, phy, spiller) {}
};
#endif