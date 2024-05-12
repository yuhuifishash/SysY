#!/usr/bin/env bash
if [ $# != 3 ] ; then 
    echo "arguments number is invalid" 
    exit 1; 
fi

if [[ "$3" != "O1" ]] && [[ "$3" != "O0" ]] ; then 
    echo "optimize_flag is invalid" 
    exit 1; 
fi

input=$1
step=$2
optimize_flag=$3

pwdin=testcase/example
pwdout=test_output/example

#first you should put your file in the testcase/example
#for example, the file'name is DFS.sy and you want to test parser step without optimize
#you can type the command in your shell :  
# ./SysY_test_single.sh  DFS.sy  parser  O1
#the ouput file is in the test_output/example
if [ $step == "llvm" ] ; then 
    bin/SysYc ${pwdin}/${input} \-$step -o ${pwdout}/${input}.out.ll \-${optimize_flag}
elif [ $step == "S" ] ; then
    bin/SysYc ${pwdin}/${input} \-$step -o ${pwdout}/${input}.out.s \-${optimize_flag}
elif [ $step == "select" ] ; then
    bin/SysYc ${pwdin}/${input} \-$step -o ${pwdout}/${input}.out.select.s \-${optimize_flag}
else 
    bin/SysYc ${pwdin}/${input} \-$step -o ${pwdout}/${input}.out \-${optimize_flag}
fi