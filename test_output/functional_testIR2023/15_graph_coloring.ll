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
    br label %L1
L1:
    %r6 = load i32, ptr %r5
    %r7 = load i32, ptr @V
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r11 = getelementptr i32, ptr %r0
    %r12 = getelementptr i32, ptr %r3
    %r13 = call i32 @isSafe(ptr %r11,ptr %r12)
    %r14 = icmp ne i32 %r13,0
    br i1 %r14, label %L4, label %L5
L3:
    %r19 = add i32 0,1
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr %r18
    %r21 = load i32, ptr %r4
    %r22 = icmp sle i32 %r20,%r21
    br i1 %r22, label %L7, label %L9
L4:
    %r15 = getelementptr i32, ptr %r3
    call void @printSolution(ptr %r15)
    %r16 = add i32 0,1
    ret i32 %r16
L5:
    %r17 = add i32 0,0
    ret i32 %r17
L7:
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
    br i1 %r35, label %L10, label %L11
L8:
    %r43 = load i32, ptr %r18
    %r44 = load i32, ptr %r4
    %r45 = icmp sle i32 %r43,%r44
    br i1 %r45, label %L7, label %L9
L9:
    %r48 = add i32 0,0
    ret i32 %r48
L10:
    %r36 = add i32 0,1
    ret i32 %r36
L11:
    %r37 = add i32 0,0
    %r38 = load i32, ptr %r5
    %r39 = getelementptr i32, ptr %r3, i32 %r38
    store i32 %r37, ptr %r39
    %r40 = load i32, ptr %r18
    %r41 = add i32 0,1
    %r42 = add i32 %r40,%r41
    store i32 %r42, ptr %r18
    br label %L8
}
define void @printSolution(ptr %r0)
{
L0:
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r3 = load i32, ptr %r1
    %r4 = load i32, ptr @V
    %r5 = icmp slt i32 %r3,%r4
    br i1 %r5, label %L3, label %L5
L3:
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
    br label %L4
L4:
    %r15 = load i32, ptr %r1
    %r16 = load i32, ptr @V
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L5
L5:
    %r20 = load i32, ptr @LF
    call void @putch(i32 %r20)
    ret void
}
define i32 @main()
{
L0:
    %r36 = alloca i32
    %r35 = alloca [4 x i32]
    %r33 = alloca i32
    %r0 = alloca [4 x [4 x i32]]
    br label %L1
L1:
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
    %r38 = load i32, ptr %r36
    %r39 = load i32, ptr @V
    %r40 = icmp slt i32 %r38,%r39
    br i1 %r40, label %L3, label %L5
L3:
    %r43 = add i32 0,0
    %r44 = load i32, ptr %r36
    %r45 = getelementptr [4 x i32], ptr %r35, i32 0, i32 %r44
    store i32 %r43, ptr %r45
    %r46 = load i32, ptr %r36
    %r47 = add i32 0,1
    %r48 = add i32 %r46,%r47
    store i32 %r48, ptr %r36
    br label %L4
L4:
    %r49 = load i32, ptr %r36
    %r50 = load i32, ptr @V
    %r51 = icmp slt i32 %r49,%r50
    br i1 %r51, label %L3, label %L5
L5:
    %r54 = getelementptr i32, ptr %r0, i32 0
    %r55 = load i32, ptr %r33
    %r56 = add i32 0,0
    %r57 = getelementptr i32, ptr %r35, i32 0
    %r58 = call i32 @graphColoring(ptr %r54,i32 %r55,i32 %r56,ptr %r57)
    %r59 = icmp eq i32 %r58,0
    br i1 %r59, label %L6, label %L7
L6:
    call void @printMessage()
    br label %L7
L7:
    %r62 = add i32 0,0
    ret i32 %r62
}
define i32 @isSafe(ptr %r0,ptr %r1)
{
L0:
    %r9 = alloca i32
    %r2 = alloca i32
    br label %L1
L1:
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr @V
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L5
L3:
    %r10 = load i32, ptr %r2
    %r11 = add i32 0,1
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r9
    %r13 = load i32, ptr %r9
    %r14 = load i32, ptr @V
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L7, label %L9
L4:
    %r47 = load i32, ptr %r2
    %r48 = load i32, ptr @V
    %r49 = icmp slt i32 %r47,%r48
    br i1 %r49, label %L3, label %L5
L5:
    %r52 = add i32 0,1
    ret i32 %r52
L7:
    %r18 = load i32, ptr %r2
    %r19 = load i32, ptr %r9
    %r20 = getelementptr [4 x i32], ptr %r0, i32 %r18, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = icmp ne i32 %r21,0
    br i1 %r22, label %L12, label %L11
L8:
    %r39 = load i32, ptr %r9
    %r40 = load i32, ptr @V
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L7, label %L9
L9:
    %r44 = load i32, ptr %r2
    %r45 = add i32 0,1
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r2
    br label %L4
L10:
    %r35 = add i32 0,0
    ret i32 %r35
L11:
    %r36 = load i32, ptr %r9
    %r37 = add i32 0,1
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r9
    br label %L8
L12:
    %r23 = load i32, ptr %r9
    %r24 = getelementptr i32, ptr %r1, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = load i32, ptr %r2
    %r27 = getelementptr i32, ptr %r1, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = icmp eq i32 %r25,%r28
    br i1 %r29, label %L10, label %L11
}
define void @printMessage()
{
L0:
    br label %L1
L1:
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
