#ifndef ARM_BLOCK_H
#define ARM_BLOCK_H
#include "arm.h"
#include <deque>
class Arm_block{
public:
    std::deque<Arm_baseins*>block;
};
#endif