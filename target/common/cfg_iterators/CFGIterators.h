private:
#define ITERATOR_INTERFACE \
    void open();\
    MachineCFGNode* next();\
    bool hasNext();\
    void rewind();\
    void close();

    class SeqScanIterator : public Iterator{
    private:
        decltype(block_map.begin()) current;
    public:
        SeqScanIterator(MachineCFG* mcfg):Iterator(mcfg){}
        // Not Implemented
    };
    class ReverseIterator : public Iterator{
    private:
        Iterator* child;
    public:
        ReverseIterator(Iterator* child):Iterator(child->getMachineCFG()){}
        // Not Implemented
    };
    class DFSIterator : public Iterator{
    private:
        std::map<int,int> visited;
        std::stack<int> stk;
    public:
        DFSIterator(MachineCFG* mcfg):Iterator(mcfg){}
        ITERATOR_INTERFACE
    };
    class BFSIterator : public Iterator{
    private:
        std::map<int,int>visited;
        std::queue<int> que;
    public:
        BFSIterator(MachineCFG* mcfg):Iterator(mcfg){}
        ITERATOR_INTERFACE
    };
#undef ITERATOR_INTERFACE
public:
    DFSIterator* getDFSIterator(){return new DFSIterator(this);}
    BFSIterator* getBFSIterator(){return new BFSIterator(this);}