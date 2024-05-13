#!/usr/bin/env bash
case=$1
arch=$2
option=$3
pwdasm=test_output/example

# Run generated asm code
# Example:
# ./SysY_qemurun_single.sh DFS rv64gc
# ./SysY_qemurun_single.sh DFS rv64gc -f
# ./SysY_qemurun_single.sh DFS rv64gc -p
# ./SysY_qemurun_single.sh DFS rv64gc -fp

# Should exist test_output/example/DFS.sy.out.s
# -f: no std output
# -p: preserve generated ELF (don't delete ELF file)
# output will always be saved at test_output/example/DFS.output

./SysY_asm2exe.sh ${case} ${arch}
if [ $arch == "armv7" ] ; then
    echo "TODO: run armv7"
elif [ $arch == "rv64gc" ] ; then
    if [ -f "${pwdasm}/${case}.in" ] ; then
        qemu-riscv64 ${pwdasm}/${case} < ${pwdasm}/${case}.in > ${pwdasm}/${case}.output
        echo $? >> ${pwdasm}/${case}.output
    else
        qemu-riscv64 ${pwdasm}/${case} > ${pwdasm}/${case}.output
        echo $? >> ${pwdasm}/${case}.output
    fi
    if [ -z $option ] ; then
        cat ${pwdasm}/${case}.output
        rm ${pwdasm}/${case}
    elif [ $option == "-f" ] ; then
        rm ${pwdasm}/${case}
    elif [ $option == "-p" ] ; then
        cat ${pwdasm}/${case}.output
    fi
else
    echo "Unsupported architecture"
    exit 1
fi
