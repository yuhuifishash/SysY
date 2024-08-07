#!/usr/bin/env bash
if [ $# != 3 ] ; then 
    echo "arguments number is invalid" 
    exit 1; 
fi

if [[ "$2" != "O1" ]] && [[ "$2" != "O0" ]] ; then 
    echo "optimize_flag is invalid" 
    exit 1; 
fi

#user example:
#./SysY_test.sh llvm O1 armv7
#./SysY_test.sh llvm O0 armv7
#./SysY_test.sh S O0 rv64gc
step=$1
optimize_flag=$2
target=$3

if [ $1 == 'llvm' ] ; then
    score=0
    score_all=0
    pwdin=testcase/functional_test
    pwdout=test_output/functional_testIR
    rm -rf ${pwdout}/*
    for file in ${pwdin}/*.sy
    do
        score_all=`expr ${score_all} + 1`
        var=${file%.*}
        bin/SysYc $file \-$step -o ${pwdout}/${var##*/}.ll \-${optimize_flag}
        clang ${pwdout}/${var##*/}.ll -c -o ${pwdout}/${var##*/}.o -w
        clang -static ${pwdout}/${var##*/}.o lib/libsysy_x86.a lib/libcalculate_x86.a lib/libloop_parallel_x86.a
        rm -rf ${pwdout}/${var##*/}.o
        mv a.out ${pwdout}/${var##*/}
        if [ -f "${pwdin}/${var##*/}.in" ];then
            timeout 600 ./${pwdout}/${var##*/} < ${pwdin}/${var##*/}.in > ./${pwdout}/${var##*/}.out
            echo $? >> ${pwdout}/${var##*/}.out
        else
            timeout 600 ./${pwdout}/${var##*/} > ./${pwdout}/${var##*/}.out
            echo $? >> ${pwdout}/${var##*/}.out
        fi
        diff --strip-trailing-cr -b ${pwdin}/${var##*/}.out ${pwdout}/${var##*/}.out > /dev/null
        if [ $? == 0 ];then
            echo -e "\033[0;32;1m" Accept "\033[0;37;1m" ${var##*/}
            score=`expr ${score} + 1`
            rm ${pwdout}/${var##*/}.out
        else
            echo -e "\033[0;31;1m" Wrong answer "\033[0;37;1m" on ${var##*/}
        fi
        rm ${pwdout}/${var##*/}
    done
    echo IRTest:${score}/${score_all}
elif [ $1 == 'S' ] && [ $3 == 'armv7' ] ; then
    score=0
    score_all=0
    pwdin=testcase/functional_test
    pwdout=test_output/functional_testAsm
    rm -rf ${pwdout}/*
    for file in ${pwdin}/*.sy
    do
        score_all=`expr ${score_all} + 1`
        var=${file%.*}
        bin/SysYc $file \-$step -o ${pwdout}/${var##*/}.s \-${optimize_flag}
        arm-linux-gnueabihf-gcc ${pwdout}/${var##*/}.s -c -static -march=armv7
        arm-linux-gnueabihf-gcc -static ${var##*/}.o lib/libsysy_armv7.a
        rm -rf ${var##*/}.o
        mv a.out ${pwdout}/${var##*/}
        if [ -f "${pwdin}/${var##*/}.in" ];then
            timeout 600 qemu-arm ./${pwdout}/${var##*/} < ${pwdin}/${var##*/}.in > ./${pwdout}/${var##*/}.out
            echo $? >> ${pwdout}/${var##*/}.out
        else
            timeout 600 qemu-arm ./${pwdout}/${var##*/} > ./${pwdout}/${var##*/}.out
            echo $? >> ${pwdout}/${var##*/}.out
        fi
        diff --strip-trailing-cr -b ${pwdin}/${var##*/}.out ${pwdout}/${var##*/}.out > /dev/null
        if [ $? == 0 ];then
            echo -e "\033[0;32;1m" Accept "\033[0;37;1m" ${var##*/}
            rm ${pwdout}/${var##*/}.out
            score=`expr ${score} + 1`
        else
            echo -e "\033[0;31;1m" Wrong answer "\033[0;37;1m" on ${var##*/}
        fi
        rm ${pwdout}/${var##*/}
    done
    echo Armv7Test:${score}/${score_all}
elif [ $1 == 'S' ] && [ $3 == 'rv64gc' ] ; then
    score=0
    score_all=0
    pwdin=testcase/functional_test
    pwdout=test_output/functional_testAsm
    rm -rf ${pwdout}/*
    for file in ${pwdin}/*.sy
    do
        score_all=`expr ${score_all} + 1`
        var=${file%.*}
        bin/SysYc $file \-$step -o ${pwdout}/${var##*/}.s \-${optimize_flag}
        riscv64-unknown-linux-gnu-gcc ${pwdout}/${var##*/}.s -c -static -march=rv64gczba
        riscv64-unknown-linux-gnu-gcc -static ${var##*/}.o lib/libsysy_rv.a
        rm -rf ${var##*/}.o
        mv a.out ${pwdout}/${var##*/}
        if [ -f "${pwdin}/${var##*/}.in" ];then
            timeout 600 qemu-riscv64 ./${pwdout}/${var##*/} < ${pwdin}/${var##*/}.in > ./${pwdout}/${var##*/}.out
            echo $? >> ${pwdout}/${var##*/}.out
        else
            timeout 600 qemu-riscv64 ./${pwdout}/${var##*/} > ./${pwdout}/${var##*/}.out
            echo $? >> ${pwdout}/${var##*/}.out
        fi
        diff --strip-trailing-cr -b ${pwdin}/${var##*/}.out ${pwdout}/${var##*/}.out > /dev/null
        if [ $? == 0 ];then
            echo -e "\033[0;32;1m" Accept "\033[0;37;1m" ${var##*/}
            rm ${pwdout}/${var##*/}.out
            score=`expr ${score} + 1`
        else
            echo -e "\033[0;31;1m" Wrong answer "\033[0;37;1m" on ${var##*/}
        fi
        rm ${pwdout}/${var##*/}
    done
    echo RiscV64gcTest:${score}/${score_all}
else
    echo "step arguments is invalid"
fi