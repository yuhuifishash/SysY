#include "../include/cfg.h"
/**
    * this function will eliminate some simple short circult
    * for example, if(a && b) will be transformed as below:
    *   %r1 = icmp ne i32 %a(register of a), 0
        %r2 = icmp ne i32 %b(register of b), 0
        %r3 = and i1 %r1, %r2
        br i1 %r3, label %true, label %false
    *
    * the short circult CFG will be like:
    * B1 ->  B2  ->  B3    this will be transformed to  B1 -> B3
    * |      |--> B4  |                                 |--> B4
    * |_______________|
    * B2 shoule have few instructions and do not have store instruction
*/
void EliminateSimpleShortCircult(CFG *C) {
    std::cerr << "EliminateSimpleShortCircult in SimplifyCFG is not implemented now\n";
}

/*
  /B1\
B0    B3  may be transformed to B0(B1 B2 use select)->B3
  \B2/

B0--->B2  may be transformed to B0(B1 use select)->B2
  \B1/
*/
void SimpleIfConversion(CFG *C) {}

void SimplifyCFGBeforeMem2Reg(CFG *C) { EliminateSimpleShortCircult(C); }

/**
    * this function will eliminate the double br_uncond
    *
    * example:
    * L1:
        LIST1
        br label %L2
      L2:
        LIST2
        br label %L3
      L3:
        LIST3
        br label %L4

    * the example after this function will be:
    * L1:
        LIST1
        LIST2
        LIST3
        br label %L4

    * this pass will be useful after sccp
    * you can use testcase 29_lone_line.sy to check
    * @param C the control flow graph of the function */
void EliminateDoubleBrUnCond(CFG *C) { std::cerr << "EliminateDoubleBrUnCond in SimplifyCFG is not implemented now\n"; }

/*
 * this function will eliminate useless phi
 * such as %rx = phi [%ry, %L1], [%ry, %L1]
 * such as %rx = phi [5, %L5]
 */
void EliminateUselessPhi(CFG *C) { std::cerr << "EliminateUselessPhi in SimplifyCFG is not implemented now\n"; }

void SimplifyCFGAfterMem2Reg(CFG *C) {
    EliminateDoubleBrUnCond(C);
    EliminateUselessPhi(C);
}