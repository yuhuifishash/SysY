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
@V = global i32 4
@space = global i32 32
@LF = global i32 10
define i32 @graphColoring(ptr %r0,i32 %r1,i32 %r2,ptr %r3)
{
L0:
    %r18 = alloca i32
    %r4 = alloca i32
    store i32 %r1, ptr %r4
    %r5 = alloca i32
    store i32 %r2, ptr %r5
    %r6 = load i32, ptr %r5
    %r7 = load i32, ptr @V
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L1, label %L2
L1:
    %r11 = getelementptr i32, ptr %r0
    %r12 = getelementptr i32, ptr %r3
    %r13 = call i32 @isSafe(ptr %r11,ptr %r12)
    %r14 = icmp ne i32 %r13,0
    br i1 %r14, label %L3, label %L4
L2:
    %r19 = add i32 0,1
    store i32 %r19, ptr %r18
    br label %L5
L3:
    %r15 = getelementptr i32, ptr %r3
    call void @printSolution(ptr %r15)
    %r16 = add i32 0,1
    ret i32 %r16
L4:
    %r17 = add i32 0,0
    ret i32 %r17
L5:
    %r20 = load i32, ptr %r18
    %r21 = load i32, ptr %r4
    %r22 = icmp sle i32 %r20,%r21
    br i1 %r22, label %L6, label %L7
L6:
    %r25 = load i32, ptr %r18
    %r26 = load i32, ptr %r5
    %r27 = getelementptr i32, ptr %r3, i32 %r26
    store i32 %r25, ptr %r27
    %r28 = getelementptr i32, ptr %r0
    %r29 = load i32, ptr %r4
    %r30 = load i32, ptr %r5
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    %r33 = getelementptr i32, ptr %r3
    %r34 = call i32 @graphColoring(ptr %r28,i32 %r29,i32 %r32,ptr %r33)
    %r35 = icmp ne i32 %r34,0
    br i1 %r35, label %L8, label %L9
L7:
    %r43 = add i32 0,0
    ret i32 %r43
L8:
    %r36 = add i32 0,1
    ret i32 %r36
L9:
    %r37 = add i32 0,0
    %r38 = load i32, ptr %r5
    %r39 = getelementptr i32, ptr %r3, i32 %r38
    store i32 %r37, ptr %r39
    %r40 = load i32, ptr %r18
    %r41 = add i32 0,1
    %r42 = add i32 %r40,%r41
    store i32 %r42, ptr %r18
    br label %L5
}
define void @printSolution(ptr %r0)
{
L0:
    %r1 = alloca i32
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    br label %L1
L1:
    %r3 = load i32, ptr %r1
    %r4 = load i32, ptr @V
    %r5 = icmp slt i32 %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = load i32, ptr %r1
    %r9 = getelementptr i32, ptr %r0, i32 %r8
    %r10 = load i32, ptr %r9
    call void @putint(i32 %r10)
    %r11 = load i32, ptr @space
    call void @putch(i32 %r11)
    %r12 = load i32, ptr %r1
    %r13 = add i32 0,1
    %r14 = add i32 %r12,%r13
    store i32 %r14, ptr %r1
    br label %L1
L3:
    %r15 = load i32, ptr @LF
    call void @putch(i32 %r15)
    ret void
}
define i32 @main()
{
L0:
    %r36 = alloca i32
    %r35 = alloca [4 x i32]
    %r33 = alloca i32
    %r0 = alloca [4 x [4 x i32]]
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 64,i1 0)
    %r1 = add i32 0,0
    %r2 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 0, i32 0
    store i32 %r1, ptr %r2
    %r3 = add i32 0,1
    %r4 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 0, i32 1
    store i32 %r3, ptr %r4
    %r5 = add i32 0,1
    %r6 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 0, i32 2
    store i32 %r5, ptr %r6
    %r7 = add i32 0,1
    %r8 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 0, i32 3
    store i32 %r7, ptr %r8
    %r9 = add i32 0,1
    %r10 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 1, i32 0
    store i32 %r9, ptr %r10
    %r11 = add i32 0,0
    %r12 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 1, i32 1
    store i32 %r11, ptr %r12
    %r13 = add i32 0,1
    %r14 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 1, i32 2
    store i32 %r13, ptr %r14
    %r15 = add i32 0,0
    %r16 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 1, i32 3
    store i32 %r15, ptr %r16
    %r17 = add i32 0,1
    %r18 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 2, i32 0
    store i32 %r17, ptr %r18
    %r19 = add i32 0,1
    %r20 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 2, i32 1
    store i32 %r19, ptr %r20
    %r21 = add i32 0,0
    %r22 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 2, i32 2
    store i32 %r21, ptr %r22
    %r23 = add i32 0,1
    %r24 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 2, i32 3
    store i32 %r23, ptr %r24
    %r25 = add i32 0,1
    %r26 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 3, i32 0
    store i32 %r25, ptr %r26
    %r27 = add i32 0,0
    %r28 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 3, i32 1
    store i32 %r27, ptr %r28
    %r29 = add i32 0,1
    %r30 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 3, i32 2
    store i32 %r29, ptr %r30
    %r31 = add i32 0,0
    %r32 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 3, i32 3
    store i32 %r31, ptr %r32
    %r34 = add i32 0,3
    store i32 %r34, ptr %r33
    %r37 = add i32 0,0
    store i32 %r37, ptr %r36
    br label %L1
L1:
    %r38 = load i32, ptr %r36
    %r39 = load i32, ptr @V
    %r40 = icmp slt i32 %r38,%r39
    br i1 %r40, label %L2, label %L3
L2:
    %r43 = add i32 0,0
    %r44 = load i32, ptr %r36
    %r45 = getelementptr [4 x i32], ptr %r35, i32 0, i32 %r44
    store i32 %r43, ptr %r45
    %r46 = load i32, ptr %r36
    %r47 = add i32 0,1
    %r48 = add i32 %r46,%r47
    store i32 %r48, ptr %r36
    br label %L1
L3:
    %r49 = getelementptr i32, ptr %r0, i32 0
    %r50 = load i32, ptr %r33
    %r51 = add i32 0,0
    %r52 = getelementptr i32, ptr %r35, i32 0
    %r53 = call i32 @graphColoring(ptr %r49,i32 %r50,i32 %r51,ptr %r52)
    %r54 = icmp eq i32 %r53,0
    br i1 %r54, label %L4, label %L5
L4:
    call void @printMessage()
    br label %L5
L5:
    %r57 = add i32 0,0
    ret i32 %r57
}
define i32 @isSafe(ptr %r0,ptr %r1)
{
L0:
    %r9 = alloca i32
    %r2 = alloca i32
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr @V
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r10 = load i32, ptr %r2
    %r11 = add i32 0,1
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r9
    br label %L4
L3:
    %r42 = add i32 0,1
    ret i32 %r42
L4:
    %r13 = load i32, ptr %r9
    %r14 = load i32, ptr @V
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L5, label %L6
L5:
    %r18 = load i32, ptr %r2
    %r19 = load i32, ptr %r9
    %r20 = getelementptr [4 x i32], ptr %r0, i32 %r18, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = icmp ne i32 %r21,0
    br i1 %r22, label %L9, label %L8
L6:
    %r39 = load i32, ptr %r2
    %r40 = add i32 0,1
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r2
    br label %L1
L7:
    %r35 = add i32 0,0
    ret i32 %r35
L8:
    %r36 = load i32, ptr %r9
    %r37 = add i32 0,1
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r9
    br label %L4
L9:
    %r23 = load i32, ptr %r9
    %r24 = getelementptr i32, ptr %r1, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = load i32, ptr %r2
    %r27 = getelementptr i32, ptr %r1, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = icmp eq i32 %r25,%r28
    br i1 %r29, label %L7, label %L8
}
define void @printMessage()
{
L0:
    %r0 = add i32 0,78
    call void @putch(i32 %r0)
    %r1 = add i32 0,111
    call void @putch(i32 %r1)
    %r2 = add i32 0,116
    call void @putch(i32 %r2)
    %r3 = load i32, ptr @space
    call void @putch(i32 %r3)
    %r4 = add i32 0,101
    call void @putch(i32 %r4)
    %r5 = add i32 0,120
    call void @putch(i32 %r5)
    %r6 = add i32 0,105
    call void @putch(i32 %r6)
    %r7 = add i32 0,115
    call void @putch(i32 %r7)
    %r8 = add i32 0,116
    call void @putch(i32 %r8)
    ret void
}
