# this shell will test the performance of IR, it will only check the correctness of it
# this shell will test the performance of Asm and will generate logs
#!/usr/bin/env bash
if [ $# != 2 ] ; then 
    echo "arguments number is invalid" 
    exit 1; 
fi

#user example:
#./SysY_test_performance.sh llvm armv7
#./SysY_test_performance.sh S armv7
#./SysY_test_performance.sh S rv64gc
step=$1
target=$2

if [ $1 == 'llvm' ] ; then
    score=0
    score_all=0
    pwdin=testcase/performance
    pwdout=test_output/performance_testIR
    rm -rf ${pwdout}/*
    for file in ${pwdin}/*.sy
    do
        score_all=`expr ${score_all} + 1`
        var=${file%.*}
        bin/SysYc $file \-$step -o ${pwdout}/${var##*/}.ll \-O1
        clang ${pwdout}/${var##*/}.ll -c -o ${pwdout}/${var##*/}.o -w -O2
        clang -static ${pwdout}/${var##*/}.o lib/libsysy_x86.a
        rm -rf ${pwdout}/${var##*/}.o
        mv a.out ${pwdout}/${var##*/}
        if [ -f "${pwdin}/${var##*/}.in" ];then
            timeout 60 ./${pwdout}/${var##*/} < ${pwdin}/${var##*/}.in > ./${pwdout}/${var##*/}.out
            echo $? >> ${pwdout}/${var##*/}.out
        else
            timeout 60 ./${pwdout}/${var##*/} > ./${pwdout}/${var##*/}.out
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
    echo IRPerformanceTest:${score}/${score_all}
elif [ $1 == 'S' ] ; then
   echo "S is not implenmented now"
else
    echo "step arguments is invalid"
fi