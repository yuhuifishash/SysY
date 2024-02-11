#ifndef PEEHOLERULES_H
#define PEEHOLERULES_H
#include "basic_block.h"
#include "cfg.h"
int Apply_Rules(const std::deque<Instruction>&old_list,int pos,std::deque<Instruction>&new_list,CFG*cfg);

#endif