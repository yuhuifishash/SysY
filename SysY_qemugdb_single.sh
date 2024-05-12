#!/usr/bin/env bash
case=$1
arch=$2
pwdasm=test_output/example
./SysY_as.sh ${case} ${arch}
if [ $arch == "armv7" ] ; then
    echo "TODO: run armv7"
elif [ $arch == "rv64gc" ] ; then
    if [ -f "${pwdasm}/${case}.in" ] ; then
        qemu-riscv64 -g 1234 ${pwdasm}/${case} < ${pwdasm}/${case}.in > ${pwdasm}/${case}.output &
        echo $? >> ${pwdasm}/${case}.output
    else
        qemu-riscv64 -g 1234 ${pwdasm}/${case} > ${pwdasm}/${case}.output &
        echo $? >> ${pwdasm}/${case}.output
    fi
    riscv64-unknown-linux-gnu-gdb \
        -ex "file ${pwdasm}/${case}" \
        -ex "set arch riscv:rv64" \
        -ex "target remote localhost:1234" \
        -ex "b main" \
        -ex "continue" 
    rm ${pwdasm}/${case}
else
    echo "Unsupported architecture"
    exit 1
fi
