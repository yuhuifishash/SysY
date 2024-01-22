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
declare void @starttime()
declare void @stoptime()
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
define i32 @main()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 0,5
    store i32 %r4, ptr %r2
    %r5 = load i32, ptr %r2
    %r6 = call i32 @climbStairs(i32 %r5)
    store i32 %r6, ptr %r0
    %r7 = load i32, ptr %r0
    ret i32 %r7
}
define i32 @climbStairs(i32 %r0)
{
L0:
    %r18 = alloca i32
    %r8 = alloca [10 x i32]
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = add i32 0,4
    %r4 = icmp slt i32 %r2,%r3
    br i1 %r4, label %L1, label %L2
L1:
    %r7 = load i32, ptr %r1
    ret i32 %r7
L2:
    %r9 = add i32 0,0
    %r10 = add i32 0,0
    %r11 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r10
    store i32 %r9, ptr %r11
    %r12 = add i32 0,1
    %r13 = add i32 0,1
    %r14 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r13
    store i32 %r12, ptr %r14
    %r15 = add i32 0,2
    %r16 = add i32 0,2
    %r17 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r16
    store i32 %r15, ptr %r17
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    %r20 = add i32 0,3
    store i32 %r20, ptr %r18
    br label %L3
L3:
    %r21 = load i32, ptr %r18
    %r22 = load i32, ptr %r1
    %r23 = add i32 0,1
    %r24 = add i32 %r22,%r23
    %r25 = icmp slt i32 %r21,%r24
    br i1 %r25, label %L4, label %L5
L4:
    %r28 = load i32, ptr %r18
    %r29 = add i32 0,1
    %r30 = sub i32 %r28,%r29
    %r31 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = load i32, ptr %r18
    %r34 = add i32 0,2
    %r35 = sub i32 %r33,%r34
    %r36 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = add i32 %r32,%r37
    %r39 = load i32, ptr %r18
    %r40 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r39
    store i32 %r38, ptr %r40
    %r41 = load i32, ptr %r18
    %r42 = add i32 0,1
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r18
    br label %L3
L5:
    %r44 = load i32, ptr %r1
    %r45 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r44
    %r46 = load i32, ptr %r45
    ret i32 %r46
}
