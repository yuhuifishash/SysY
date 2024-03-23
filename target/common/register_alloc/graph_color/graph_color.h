#ifndef GRAPH_COLOR_H
#define GRAPH_COLOR_H
#include "basic_register_allocation.h"
class GraphColor : public RegisterAlloc{
private:
    // All States here, like interference graph
    // May need another class,.h
    // May need new folder
public:
    GraphColor(MachineCFG* mcfg):RegisterAlloc(mcfg){}
    void DoAlloc(){}
};
#endif