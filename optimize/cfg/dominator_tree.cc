#include "dominator_tree.h"
#include "../../include/ir.h"

void LLVMIR::BuildDominatorTree() {
    for (auto [defI, cfg] : llvm_cfg) {
        cfg->BuildDominatorTree();
    }
}

void dfs_postorder(int cur, const std::vector<std::vector<LLVMBlock>> &G, std::vector<int> &result,
                   std::vector<int> &vsd) {
    vsd[cur] = 1;
    for (auto next_block : G[cur]) {
        if (vsd[next_block->block_id] == 0) {
            dfs_postorder(next_block->block_id, G, result, vsd);
        }
    }
    result.push_back(cur);
}

void DominatorTree::BuildDominatorTree() {
    int block_num = C->max_label + 1;

    std::vector<int> PostOrder_id;
    std::vector<int> vsd;
    dom_tree.clear();
    dom_tree.resize(block_num);
    idom.clear();

    // df.clear();
    if(df != nullptr){
        delete[] df;
        df = nullptr;
    }

    // atdom.clear();
    if(atdom != nullptr){
        delete[] atdom;
        atdom = nullptr;
    }

    for (int i = 0; i <= C->max_label; i++) {
        vsd.push_back(0);
    }

    dfs_postorder(0, C->G, PostOrder_id, vsd);
    // dom(u) = {u} | {& dom(v)}
    // Pseudo code

    // std::vector<std::bitset<65536>> indom;
    DynamicBitset* indom;
    // indom.resize(block_num);
    indom = new DynamicBitset[block_num];
    for(int i=0;i<block_num;i++){
        indom[i].remake(block_num);
    }

    // dom[u][v] = 1 <==> v dom u <==> v is in set dom(u)

    // indom[0][0] = 1;
    indom[0].setbit(0,1);
    for (int i = 1; i <= C->max_label; i++) {
        for (int j = 0; j <= C->max_label; j++) {
            indom[i].setbit(j,1);
            // indom[i][j] = 1;
        }
    }
    bool changed = 1;
    while (changed) {
        changed = 0;
        for (std::vector<int>::reverse_iterator it = PostOrder_id.rbegin(); it != PostOrder_id.rend(); ++it) {
            auto u = *it;

            // std::bitset<65536> new_dom_u;
            DynamicBitset new_dom_u(block_num);

            // Goal: calculate
            // dom(u) |= {u} | {& dom(v)}
            // First:
            // dom(u) = {& dom(v)}, v is qianqu
            if (!C->invG[u].empty()) {
                new_dom_u = indom[(*(C->invG[u].begin()))->block_id];
                for (auto v : C->invG[u]) {
                    // new_dom_u &= indom[v->block_id];
                    new_dom_u = new_dom_u & indom[v->block_id];
                }
            }
            // Second:
            // dom(u) |= {u}
            // new_dom_u[u] = 1;
            new_dom_u.setbit(u,1);
            if (new_dom_u != indom[u]) {
                indom[u] = new_dom_u;
                changed = 1;
            }
        }
    }
    // std::cerr<<"dom calculate safe\n";
    idom.clear();
    idom.resize(block_num);
    // Goal calculate all immediate dom(idom)
    for (auto [u, bb] : *C->block_map) {
        if (u == 0) {
            continue;
        }
        for (int v = 0; v <= C->max_label; v++) {
            // if v idom u, v must dom u
            // if (indom[u][v]) {
            if (indom[u].getbit(v)) {
                // dom(u) = {u,???,v,{domv path}}
                // dom(v) = {v,{domv path}}
                // ??? = NULL set if v idom u

                // equals dom(u)-dom(v)
                auto tmp = (indom[u] & indom[v]) ^ indom[u];
                if (tmp.count() == 1 && tmp.getbit(u)) {
                    idom[u] = (*C->block_map)[v];
                    dom_tree[v].push_back((*C->block_map)[u]);
                }
            }
        }
    }
    // delete[]indom;
    atdom = indom;
    // Dom Frontier DF
    // DF[x][y]: x dom prev(y), but (x==y or x not dom y)
    // df.resize(block_num);
    df = new DynamicBitset[block_num];
    for(int i=0;i<block_num;i++){
        df[i].remake(block_num);
    }

    for (int i = 0; i < C->G.size(); i++) {
        for (auto edg_end : C->G[i]) {
            // foreach every edge a->b
            int a = i;
            int b = edg_end->block_id;
            // a dom prev(b)=a
            int x = a;
            // a==b or a not dom b
            while (x == b || IsDominate(x, b) == 0) {
                // df[x][b] = 1;
                df[x].setbit(b,1);
                if (idom[x] != NULL) {
                    // idom(a) must dom prev(b)=a
                    x = idom[x]->block_id;
                } else {
                    // std::cerr<<"Meet null idom node "<<x<<std::endl;
                    break;
                }
            }
        }
    }
}

std::set<int> DominatorTree::GetDF(std::set<int> S) {
    DynamicBitset result(C->max_label + 1);
    for (auto node : S) {
        // result |= df[node];
        result = result | df[node];
    }
    std::set<int> ret;
    for (int i = 0; i <= C->max_label; ++i) {
        // if (result[i]) {
        if (result.getbit(i)) {
            ret.insert(i);
        }
    }
    return ret;
}

std::set<int> DominatorTree::GetDF(int id) {
    std::set<int> ret;
    for (int i = 0; i <= C->max_label; ++i) {
        // if (df[id][i]) {
        if (df[id].getbit(i)) {
            ret.insert(i);
        }
    }
    return ret;
}

bool DominatorTree::IsDominate(int id1, int id2) { 
    // return atdom[id2][id1]; 
    return atdom[id2].getbit(id1); 
}