#!/usr/bin/env bash
case=$1
arch=$2
option=$3
pwdasm=test_output/example
./SysY_as.sh ${case} ${arch}
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
