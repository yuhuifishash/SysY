# SysY Compiler
#### SysY -> RISC-V 64bits GC_Zba_Zbb

## OverView

### Introduction to SysY (subset of C)

supports int and float

supports array of any dimensions

supports while,for,if,else,break,continue

you can see more details in lexer/SysY_lexer.l and parser/SysY_parser.y

### IO
see lib/sylib.c and lib/sylib.h

### Architecture of Compilers

## Prerequisites

Clang 15.0+

riscv64-unknown-linux-gnu-gcc 12.2+

qemu-riscv64 7.0+

flex 2.6+

bison 3.8+

## Build Steps
```bash
mkdir obj
mkdir bin
make -j
```

## Tests

To test **functional** testcases without optimization
```bash
## see SysY_test.sh for more details
./SysY_test.sh S 00 rv64gc
```

To test **functional** testcases with optimization
```bash
## see SysY_test.sh for more details
./SysY_test.sh S 01 rv64gc
```

To test **performance** testcases with optimization 
```bash
## see SysY_performance.sh for more details
./SysY_test_performance.sh S rv64gc
```

To generate asm of single file(*.sy) with optimization
```bash
## first put your inputfile in testcase/example
## then run the command below, outputfile is in test_output/example
## you can see SysY_test_single.sh for more details
./SysY_test_single.sh [filename] S O1  
```

## Mid-End Optimization

##### Analysis Pass
-ControlFlowGraph
-DomTree
-AliasAnalysis
-MemoryDependencyAnalysis
-LoopBasicInformation
-ScalarEvolution
-LoopCarriedDependencyAnalysis



##### TransForm Pass

-TailrecursiveElimination
-Mem2reg
-SparseConditionalConstantPropagation
-SimplifyCFG
-InstSimplify
-InstCombine
-AggressiveDeadCodeElimination
-CommonSubexpressionElimination
-FunctionInline
-LoopSimplify
-LCSSA
-LoopInvariantCodeMotion
-LoopFullUnroll
-LoopIdomRecognize
-LoopFusion
-LoopParallel
-LoopStrengthReduce
-LoopUnroll

## Back-End Optimization
-Machine-peephole
-Machine-CSE
-Machine-LICM
-Machine-InstructionSchedule
-RegisterCoalesce
-LinearScan

## Reference
https://github.com/llvm/llvm-project/blob/main/llvm/lib
