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
define void @printSolution(ptr %r0)
{
L0:  ;
    %r1 = alloca i32
    br label %L1
L1:  ;
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    br label %L2
L2:  ;
    %r3 = load i32, ptr %r1
    %r4 = load i32, ptr @V
    %r5 = icmp slt i32 %r3,%r4
    br i1 %r5, label %L3, label %L4
L3:  ;
    %r6 = load i32, ptr %r1
    %r7 = getelementptr i32, ptr %r0, i32 %r6
    %r8 = load i32, ptr %r7
    call void @putint(i32 %r8)
    %r9 = load i32, ptr @space
    call void @putch(i32 %r9)
    %r10 = load i32, ptr %r1
    %r11 = add i32 1,0
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r1
    br label %L2
L4:  ;
    %r13 = load i32, ptr @LF
    call void @putch(i32 %r13)
    ret void
}
define void @printMessage()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = add i32 78,0
    call void @putch(i32 %r0)
    %r1 = add i32 111,0
    call void @putch(i32 %r1)
    %r2 = add i32 116,0
    call void @putch(i32 %r2)
    %r3 = load i32, ptr @space
    call void @putch(i32 %r3)
    %r4 = add i32 101,0
    call void @putch(i32 %r4)
    %r5 = add i32 120,0
    call void @putch(i32 %r5)
    %r6 = add i32 105,0
    call void @putch(i32 %r6)
    %r7 = add i32 115,0
    call void @putch(i32 %r7)
    %r8 = add i32 116,0
    call void @putch(i32 %r8)
    ret void
}
define i32 @isSafe(ptr %r0,ptr %r1)
{
L0:  ;
    %r7 = alloca i32
    %r2 = alloca i32
    br label %L1
L1:  ;
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L2
L2:  ;
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr @V
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r8 = load i32, ptr %r2
    %r9 = add i32 1,0
    %r10 = add i32 %r8,%r9
    store i32 %r10, ptr %r7
    br label %L5
L4:  ;
    %r33 = add i32 1,0
    ret i32 %r33
L5:  ;
    %r11 = load i32, ptr %r7
    %r12 = load i32, ptr @V
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L6, label %L7
L6:  ;
    %r14 = load i32, ptr %r2
    %r15 = load i32, ptr %r7
    %r16 = getelementptr [4 x i32], ptr %r0, i32 %r14, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = icmp ne i32 %r17,0
    br i1 %r18, label %L10, label %L9
L7:  ;
    %r30 = load i32, ptr %r2
    %r31 = add i32 1,0
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r2
    br label %L2
L8:  ;
    %r26 = add i32 0,0
    ret i32 %r26
L9:  ;
    %r27 = load i32, ptr %r7
    %r28 = add i32 1,0
    %r29 = add i32 %r27,%r28
    store i32 %r29, ptr %r7
    br label %L5
L10:  ;
    %r19 = load i32, ptr %r7
    %r20 = getelementptr i32, ptr %r1, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r2
    %r23 = getelementptr i32, ptr %r1, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = icmp eq i32 %r21,%r24
    br i1 %r25, label %L8, label %L9
}
define i32 @graphColoring(ptr %r0,i32 %r1,i32 %r2,ptr %r3)
{
L0:  ;
    %r16 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    store i32 %r1, ptr %r4
    store i32 %r2, ptr %r5
    br label %L1
L1:  ;
    %r6 = load i32, ptr %r5
    %r7 = load i32, ptr @V
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:  ;
    %r9 = getelementptr [4 x i32], ptr %r0
    %r10 = getelementptr i32, ptr %r3
    %r11 = call i32 @isSafe(ptr %r9,ptr %r10)
    %r12 = icmp ne i32 %r11,0
    br i1 %r12, label %L4, label %L5
L3:  ;
    %r17 = add i32 1,0
    store i32 %r17, ptr %r16
    br label %L6
L4:  ;
    %r13 = getelementptr i32, ptr %r3
    call void @printSolution(ptr %r13)
    %r14 = add i32 1,0
    ret i32 %r14
L5:  ;
    %r15 = add i32 0,0
    ret i32 %r15
L6:  ;
    %r18 = load i32, ptr %r16
    %r19 = load i32, ptr %r4
    %r20 = icmp sle i32 %r18,%r19
    br i1 %r20, label %L7, label %L8
L7:  ;
    %r21 = load i32, ptr %r5
    %r22 = getelementptr i32, ptr %r3, i32 %r21
    %r23 = load i32, ptr %r16
    store i32 %r23, ptr %r22
    %r24 = getelementptr [4 x i32], ptr %r0
    %r25 = load i32, ptr %r4
    %r26 = load i32, ptr %r5
    %r27 = add i32 1,0
    %r28 = add i32 %r26,%r27
    %r29 = getelementptr i32, ptr %r3
    %r30 = call i32 @graphColoring(ptr %r24,i32 %r25,i32 %r28,ptr %r29)
    %r31 = icmp ne i32 %r30,0
    br i1 %r31, label %L9, label %L10
L8:  ;
    %r39 = add i32 0,0
    ret i32 %r39
L9:  ;
    %r32 = add i32 1,0
    ret i32 %r32
L10:  ;
    %r33 = load i32, ptr %r5
    %r34 = getelementptr i32, ptr %r3, i32 %r33
    %r35 = add i32 0,0
    store i32 %r35, ptr %r34
    %r36 = load i32, ptr %r16
    %r37 = add i32 1,0
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r16
    br label %L6
}
define i32 @main()
{
L0:  ;
    %r36 = alloca i32
    %r35 = alloca [4 x i32]
    %r33 = alloca i32
    %r0 = alloca [4 x [4 x i32]]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 64,i1 0)
    %r1 = add i32 0,0
    %r2 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 0, i32 0
    store i32 %r1, ptr %r2
    %r3 = add i32 1,0
    %r4 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 0, i32 1
    store i32 %r3, ptr %r4
    %r5 = add i32 1,0
    %r6 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 0, i32 2
    store i32 %r5, ptr %r6
    %r7 = add i32 1,0
    %r8 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 0, i32 3
    store i32 %r7, ptr %r8
    %r9 = add i32 1,0
    %r10 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 1, i32 0
    store i32 %r9, ptr %r10
    %r11 = add i32 0,0
    %r12 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 1, i32 1
    store i32 %r11, ptr %r12
    %r13 = add i32 1,0
    %r14 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 1, i32 2
    store i32 %r13, ptr %r14
    %r15 = add i32 0,0
    %r16 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 1, i32 3
    store i32 %r15, ptr %r16
    %r17 = add i32 1,0
    %r18 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 2, i32 0
    store i32 %r17, ptr %r18
    %r19 = add i32 1,0
    %r20 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 2, i32 1
    store i32 %r19, ptr %r20
    %r21 = add i32 0,0
    %r22 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 2, i32 2
    store i32 %r21, ptr %r22
    %r23 = add i32 1,0
    %r24 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 2, i32 3
    store i32 %r23, ptr %r24
    %r25 = add i32 1,0
    %r26 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 3, i32 0
    store i32 %r25, ptr %r26
    %r27 = add i32 0,0
    %r28 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 3, i32 1
    store i32 %r27, ptr %r28
    %r29 = add i32 1,0
    %r30 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 3, i32 2
    store i32 %r29, ptr %r30
    %r31 = add i32 0,0
    %r32 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 3, i32 3
    store i32 %r31, ptr %r32
    %r34 = add i32 3,0
    store i32 %r34, ptr %r33
    %r37 = add i32 0,0
    store i32 %r37, ptr %r36
    br label %L2
L2:  ;
    %r38 = load i32, ptr %r36
    %r39 = load i32, ptr @V
    %r40 = icmp slt i32 %r38,%r39
    br i1 %r40, label %L3, label %L4
L3:  ;
    %r41 = load i32, ptr %r36
    %r42 = getelementptr [4 x i32], ptr %r35, i32 0, i32 %r41
    %r43 = add i32 0,0
    store i32 %r43, ptr %r42
    %r44 = load i32, ptr %r36
    %r45 = add i32 1,0
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r36
    br label %L2
L4:  ;
    %r47 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0
    %r48 = load i32, ptr %r33
    %r49 = add i32 0,0
    %r50 = getelementptr [4 x i32], ptr %r35, i32 0
    %r51 = call i32 @graphColoring(ptr %r47,i32 %r48,i32 %r49,ptr %r50)
    %r52 = icmp eq i32 %r51,0
    br i1 %r52, label %L5, label %L6
L5:  ;
    call void @printMessage()
    br label %L6
L6:  ;
    %r53 = add i32 0,0
    ret i32 %r53
}
