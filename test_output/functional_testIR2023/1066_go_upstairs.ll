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
L0:
    %r16 = alloca i32
    %r6 = alloca [10 x i32]
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = add i32 4,0
    %r4 = icmp slt i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r5 = load i32, ptr %r1
    ret i32 %r5
L3:
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
    store i32 0, ptr %r16
    %r17 = add i32 3,0
    store i32 %r17, ptr %r16
    br label %L4
L4:
    %r18 = load i32, ptr %r16
    %r19 = load i32, ptr %r1
    %r20 = add i32 1,0
    %r21 = add i32 %r19,%r20
    %r22 = icmp slt i32 %r18,%r21
    br i1 %r22, label %L5, label %L6
L5:
    %r23 = load i32, ptr %r16
    %r24 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r23
    %r25 = load i32, ptr %r16
    %r26 = add i32 1,0
    %r27 = sub i32 %r25,%r26
    %r28 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = load i32, ptr %r16
    %r31 = add i32 2,0
    %r32 = sub i32 %r30,%r31
    %r33 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = add i32 %r29,%r34
    store i32 %r35, ptr %r24
    %r36 = load i32, ptr %r16
    %r37 = add i32 1,0
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r16
    br label %L4
L6:
    %r39 = load i32, ptr %r1
    %r40 = getelementptr [10 x i32], ptr %r6, i32 0, i32 %r39
    %r41 = load i32, ptr %r40
    ret i32 %r41
}
define i32 @main()
{
L0:
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    store i32 0, ptr %r1
    %r2 = add i32 5,0
    store i32 %r2, ptr %r1
    %r3 = load i32, ptr %r1
    %r4 = call i32 @climbStairs(i32 %r3)
    store i32 %r4, ptr %r0
    %r5 = load i32, ptr %r0
    ret i32 %r5
}
