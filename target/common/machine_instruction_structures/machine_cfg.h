#ifndef MACHINE_CFG_H
#define MACHINE_CFG_H
#include "machine_classdecl.h"
class MachineCFG{
private:
    class MachineCFGNode{
    public:
        MachineBlock* Mblock;
    public:
        std::set<int>IN{},OUT{},DEF{},USE{};
        void UpdateDefUse();
    };
    void UpdateDefUse();
private:
    std::map<int,MachineCFGNode*> block_map{};
    std::vector<std::vector<MachineCFGNode*> > G{},invG{};
    // std::vector<std::vector<int> > G{},invG{};
public:
    void AssignEmptyNode(int id,MachineBlock* Mblk);

    // Just modify CFG edge, no change on branch instructions
    void MakeEdge(int edg_begin,int edg_end);
    void RemoveEdge(int edg_begin,int edg_end);

    MachineCFGNode* GetNodeByBlockId(int id){return block_map[id];}
    std::vector<MachineCFGNode*> GetSuccessorsByBlockId(int id){return G[id];}
    std::vector<MachineCFGNode*> GetPredecessorsByBlockId(int id){return G[id];}

    void UpdateLiveness();
    std::set<int> GetIN(int bid){return block_map[bid]->IN;}
    std::set<int> GetOUT(int bid){return block_map[bid]->OUT;}
    std::set<int> GetDef(int bid){return block_map[bid]->DEF;}
    std::set<int> GetUse(int bid){return block_map[bid]->USE;}

private:
    class Iterator{
    protected:
        MachineCFG* mcfg;
    public:
        Iterator(MachineCFG* mcfg):mcfg(mcfg){}
        MachineCFG* getMachineCFG(){return mcfg;}
        virtual void open() = 0;
        virtual MachineCFGNode* next() = 0;
        virtual bool hasNext() = 0;
        virtual void rewind() = 0;
        virtual void close() = 0;
    };
    class SeqScanIterator;
    class ReverseIterator;
    class DFSIterator;
    class BFSIterator;
public:
    DFSIterator* getDFSIterator();
    BFSIterator* getBFSIterator();
    SeqScanIterator* getSeqScanIterator();
    ReverseIterator* getReverseIterator(Iterator*);
};
#include "cfg_iterators/cfg_iterators.h"
#endif