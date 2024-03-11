declare i32 @getint()
declare i32 @getch()
declare float @getfloat()
declare i32 @getarray(ptr)
declare i32 @getfarray(ptr)
declare void @putint(i32)
declare void @putch(i32)
declare void @putfloat(float)
declare void @putarray(i32,ptr)
declare void @putfarray(i32,ptr)
declare void @putf(ptr)
declare void @_sysy_starttime(i32)
declare void @_sysy_stoptime(i32)
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
define i32 @climbStairs(i32 %r0)
{
L0:  ;
    %r6 = alloca [10 x i32]
    br label %L1
L1:  ;
    %r4 = icmp slt i32 %r0,4
    br i1 %r4, label %L2, label %L3
L2:  ;
    ret i32 %r0
L3:  ;  preheader0
    %r8 = getelementptr [10 x i32], ptr %r6, i32 0, i32 0
    store i32 0, ptr %r8
    %r11 = getelementptr [10 x i32], ptr %r6, i32 0, i32 1
    store i32 1, ptr %r11
    %r14 = getelementptr [10 x i32], ptr %r6, i32 0, i32 2
    store i32 2, ptr %r14
    br label %L4
L4:  ;  exiting0  header0
    %r43 = phi i32 [3,%L3],[%r39,%L5]
    %r22 = add i32 %r0,1
    %r23 = icmp slt i32 %r43,%r22
    br i1 %r23, label %L5, label %L6
L5:  ;  latch0
    %r25 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r43
    %r28 = sub i32 %r43,1
    %r29 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r28
    %r30 = load i32, ptr %r29
    %r33 = sub i32 %r43,2
    %r34 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r33
    %r35 = load i32, ptr %r34
    %r36 = add i32 %r30,%r35
    store i32 %r36, ptr %r25
    %r39 = add i32 %r43,1
    br label %L4
L6:  ;
    %r41 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r0
    %r42 = load i32, ptr %r41
    ret i32 %r42
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = call i32 @climbStairs(i32 5)
    ret i32 %r6
}
