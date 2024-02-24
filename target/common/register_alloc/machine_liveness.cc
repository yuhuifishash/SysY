#include "machine_block.h"

template<class T>
std::set<T> SetIntersect(const std::set<T>&a,const std::set<T>&b){
    std::set<T> ret;
    for(auto x:b){
        if(a.count(x)!=0){
            ret.insert(x);
        }
    }
    return ret;
}

template<class T>
std::set<T> SetUnion(const std::set<T>&a,const std::set<T>&b){
    std::set<T> ret(a);
    for(auto x:b){
        ret.insert(x);
    }
    return ret;
}

// a-b
template<class T>
std::set<T> SetDiff(const std::set<T>&a,const std::set<T>&b){
    std::set<T> ret(a);
    for(auto x:b){
        // if(ret.count(x) != 0){
            ret.erase(x);
        // }
    }
    return ret;
}


template<class MachineBlk>
void MachineCFG<MachineBlk>::UpdateDefUse(){
    for(auto [id,node] : block_map){
        node->UpdateDefUse();
    }
}

template<class MachineBlk>
void MachineCFG<MachineBlk>::UpdateLiveness(){
    this->UpdateDefUse();
    bool changed = 1;
    while(changed){
        changed = 0;
        for(auto [id,node] : block_map){
            std::set<int> out;
            for(auto succ : G[id]){
                out = SetUnion(out,succ->IN);
            }
            if(out != node->OUT){
                // changed = 1;
                node->OUT = out;
            }
            std::set<int> in = SetUnion(node->USE,SetDiff(node->OUT,node->DEF));
            if(in != node->IN){
                changed = 1;
                node->IN = in;
            }
        }
    }
}
