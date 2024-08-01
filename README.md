# SysY Compiler
#### SysY -> RISC-V 64bits GC_Zba_Zbb

## OverView

### Grammar of SysY (subset of C)


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
## first put your input file in testcase/example
## then run the command. output file is in test_output/example
## you can see SysY_test_single.sh for more details
./SysY_test_single.sh [filename] S O1  
```

## Mid-End Optimization

## Back-End Optimization


## Reference

