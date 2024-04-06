#include "graph_color.h"
void GraphColor::ConstructInterferenceGraph(){
    for(auto i : intervals){
        for(auto j : intervals){
            if(0/*i conflict with j and i != j*/){
                /* MakeEdge Between i,j */
                /* Update node_degree */
            }
        }
    }
}

bool GraphColor::TryReduce(){
    return false;
}

void GraphColor::StkAssign(){

}

int GraphColor::SelectSpill(){
    return -1;
}

void GraphColor::Spill(int am_reg){

}

void GraphColor::DoAlloc(){
    do{
        UpdateIntervals();
        ConstructInterferenceGraph();
        if(TryReduce()){
            StkAssign();
            break;
        }else{
            Spill(SelectSpill());
        }
        InsertLoadStore(mfun).ExecuteInFunc();
    }while(1);
}
