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
        ret.erase(x);
    }
    return ret;
}

void MachineCFG::MachineCFGNode::UpdateDefUse(){
    DEF.clear();
    USE.clear();
    for(auto ins:Mblock->instructions){
        for(auto reg_r:ins->GetReadReg()){
            if(DEF.find(reg_r) == DEF.end()){
                USE.insert(reg_r);
            }
        }
        for(auto reg_w:ins->GetWriteReg()){
            if(USE.find(reg_w) == USE.end()){
                DEF.insert(reg_w);
            }
        }
    }
}

void MachineCFG::UpdateDefUse(){
    for(auto [id,node] : block_map){
        node->UpdateDefUse();
    }
}

void MachineCFG::UpdateLiveness(){
    this->UpdateDefUse();
    bool changed = 1;
    while(changed){
        changed = 0;
        for(auto [id,node] : block_map){
            std::set<int> out;
            for(auto succ : G[id]){
                out = SetUnion<int>(out,succ->IN);
            }
            if(out != node->OUT){
                // changed = 1;
                node->OUT = out;
            }
            std::set<int> in = SetUnion<int>(node->USE,SetDiff<int>(node->OUT,node->DEF));
            if(in != node->IN){
                changed = 1;
                node->IN = in;
            }
        }
    }
}
