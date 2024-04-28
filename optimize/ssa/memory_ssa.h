#ifndef MEMORY_SSA_H
#define MEMORY_SSA_H
#include "../../include/cfg.h"

class MemoryAccess {
public:
    enum {
        MemoryUse = 0,
        MemoryDef = 1,
        MemoryPhi = 2,
    } type;
};

class MemorySSA {
private:
    CFG *C;

public:
};

class IRMSSA {
private:
    LLVMIR *IR;
    std::map<CFG *, MemorySSA> MSSAMap;

public:
};

#endif