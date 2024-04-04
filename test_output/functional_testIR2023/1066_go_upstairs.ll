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
    %r16 = alloca i32
    %r6 = alloca [10 x i32]
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load i32, ptr %r1
    %r3 = add i32 4,0
    %r4 = icmp slt i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:  ;
    %r5 = load i32, ptr %r1
    ret i32 %r5
L3:  ;
    %r7 = add i32 0,0
    %r8 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r7
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r10 = add i32 1,0
    %r11 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r10
    %r12 = add i32 1,0
    store i32 %r12, ptr %r11
    %r13 = add i32 2,0
    %r14 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r13
    %r15 = add i32 2,0
    store i32 %r15, ptr %r14
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = add i32 3,0
    store i32 %r18, ptr %r16
    br label %L4
L4:  ;
    %r19 = load i32, ptr %r16
    %r20 = load i32, ptr %r1
    %r21 = add i32 1,0
    %r22 = add i32 %r20,%r21
    %r23 = icmp slt i32 %r19,%r22
    br i1 %r23, label %L5, label %L6
L5:  ;
    %r24 = load i32, ptr %r16
    %r25 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r24
    %r26 = load i32, ptr %r16
    %r27 = add i32 1,0
    %r28 = sub i32 %r26,%r27
    %r29 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = load i32, ptr %r16
    %r32 = add i32 2,0
    %r33 = sub i32 %r31,%r32
    %r34 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r33
    %r35 = load i32, ptr %r34
    %r36 = add i32 %r30,%r35
    store i32 %r36, ptr %r25
    %r37 = load i32, ptr %r16
    %r38 = add i32 1,0
    %r39 = add i32 %r37,%r38
    store i32 %r39, ptr %r16
    br label %L4
L6:  ;
    %r40 = load i32, ptr %r1
    %r41 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r40
    %r42 = load i32, ptr %r41
    ret i32 %r42
}
define i32 @main()
{
L0:  ;
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 5,0
    store i32 %r4, ptr %r2
    %r5 = load i32, ptr %r2
    %r6 = call i32 @climbStairs(i32 %r5)
    store i32 %r6, ptr %r0
    %r7 = load i32, ptr %r0
    ret i32 %r7
}
