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
define i32 @palindrome(i32 %r0)
{
L0:
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca [4 x i32]
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    store i32 0, ptr %r3
    store i32 0, ptr %r4
    %r5 = add i32 0,0
    store i32 %r5, ptr %r3
    br label %L2
L2:
    %r6 = load i32, ptr %r3
    %r7 = add i32 4,0
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L4
L3:
    %r9 = load i32, ptr %r3
    %r10 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r9
    %r11 = load i32, ptr %r1
    %r12 = add i32 10,0
    %r13 = srem i32 %r11,%r12
    store i32 %r13, ptr %r10
    %r14 = load i32, ptr %r1
    %r15 = add i32 10,0
    %r16 = sdiv i32 %r14,%r15
    store i32 %r16, ptr %r1
    %r17 = load i32, ptr %r3
    %r18 = add i32 1,0
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r3
    br label %L2
L4:
    %r20 = add i32 0,0
    %r21 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = add i32 3,0
    %r24 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = icmp eq i32 %r22,%r25
    br i1 %r26, label %L8, label %L6
L5:
    %r34 = add i32 1,0
    store i32 %r34, ptr %r4
    br label %L7
L6:
    %r35 = add i32 0,0
    store i32 %r35, ptr %r4
    br label %L7
L7:
    %r36 = load i32, ptr %r4
    ret i32 %r36
L8:
    %r27 = add i32 1,0
    %r28 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = add i32 2,0
    %r31 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = icmp eq i32 %r29,%r32
    br i1 %r33, label %L5, label %L6
}
define i32 @main()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r1 = add i32 1221,0
    store i32 %r1, ptr %r0
    store i32 0, ptr %r2
    %r3 = load i32, ptr %r0
    %r4 = call i32 @palindrome(i32 %r3)
    store i32 %r4, ptr %r2
    %r5 = load i32, ptr %r2
    %r6 = add i32 1,0
    %r7 = icmp eq i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r8 = load i32, ptr %r0
    call void @putint(i32 %r8)
    br label %L4
L3:
    %r9 = add i32 0,0
    store i32 %r9, ptr %r2
    %r10 = load i32, ptr %r2
    call void @putint(i32 %r10)
    br label %L4
L4:
    %r11 = add i32 10,0
    store i32 %r11, ptr %r2
    %r12 = load i32, ptr %r2
    call void @putch(i32 %r12)
    %r13 = add i32 0,0
    ret i32 %r13
}
