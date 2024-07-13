#!/usr/bin/env bash
case=$1
arch=$2
pwdasm=test_output/example

# Example:
# ./SysY_asm2exe.sh DFS rv64gc
# Should exist testoutput/example/DFS.sy.out.s
# ELF file : test_output/example/DFS

if [ $arch == "armv7" ] ; then
    echo "TODO: as armv7"
elif [ $arch == "rv64gc" ] ; then
    riscv64-unknown-linux-gnu-gcc -g ${pwdasm}/${case}.sy.out.s -c -static -march=rv64gczba
    riscv64-unknown-linux-gnu-gcc -static ${case}.sy.out.o lib/libsysy_rv.a
    rm -rf ${case}.sy.out.o
    mv a.out ${pwdasm}/${case}
else
    echo "Unsupported architecture"
    exit 1
fi
