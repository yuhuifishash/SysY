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
    br label %L1
L1:
    %r8 = icmp eq i32 %r2,4
    br i1 %r8, label %L2, label %L3
L2:
    %r11 = getelementptr i32, ptr %r0
    %r12 = getelementptr i32, ptr %r3
    %r13 = call i32 @isSafe(ptr %r11,ptr %r12)
    %r14 = icmp ne i32 %r13,0
    br i1 %r14, label %L4, label %L5
L3:
    %r22 = icmp sle i32 1,%r1
    br i1 %r22, label %L18, label %L9
L4:
    %r15 = getelementptr i32, ptr %r3
    br label %L12
L5:
    ret i32 0
L7:
    %r49 = phi i32 [%r42,%L8],[1,%L18]
    store i32 %r49, ptr %r27
    %r34 = call i32 @graphColoring(ptr %r28,i32 %r1,i32 %r32,ptr %r33)
    %r35 = icmp ne i32 %r34,0
    br i1 %r35, label %L10, label %L11
L8:
    %r45 = icmp sle i32 %r42,%r1
    br i1 %r45, label %L7, label %L9
L9:
    ret i32 0
L10:
    ret i32 1
L11:
    %r39 = getelementptr i32, ptr %r3, i32 %r2
    store i32 0, ptr %r39
    %r42 = add i32 %r49,1
    br label %L8
L12:
    br label %L14
L13:
    ret i32 1
L14:
    br label %L19
L15:
    %r52 = phi i32 [%r51,%L16],[0,%L19]
    %r53 = getelementptr i32, ptr %r15, i32 %r52
    %r54 = load i32, ptr %r53
    call void @putint(i32 %r54)
    call void @putch(i32 32)
    %r51 = add i32 %r52,1
    br label %L16
L16:
    %r55 = icmp slt i32 %r51,4
    br i1 %r55, label %L15, label %L17
L17:
    call void @putch(i32 10)
    br label %L13
L18:
    %r27 = getelementptr i32, ptr %r3, i32 %r2
    %r28 = getelementptr i32, ptr %r0
    %r32 = add i32 %r2,1
    %r33 = getelementptr i32, ptr %r3
    br label %L7
L19:
    br label %L15
}
define void @printSolution(ptr %r0)
{
L0:
    br label %L1
L1:
    br label %L6
L3:
    %r21 = phi i32 [0,%L6],[%r14,%L4]
    %r9 = getelementptr i32, ptr %r0, i32 %r21
    %r10 = load i32, ptr %r9
    call void @putint(i32 %r10)
    call void @putch(i32 32)
    %r14 = add i32 %r21,1
    br label %L4
L4:
    %r17 = icmp slt i32 %r14,4
    br i1 %r17, label %L3, label %L5
L5:
    call void @putch(i32 10)
    ret void
L6:
    br label %L3
}
define i32 @main()
{
L0:
    %r35 = alloca [4 x i32]
    %r0 = alloca [4 x [4 x i32]]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 64,i1 0)
    %r2 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 0, i32 0
    store i32 0, ptr %r2
    %r4 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 0, i32 1
    store i32 1, ptr %r4
    %r6 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 0, i32 2
    store i32 1, ptr %r6
    %r8 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 0, i32 3
    store i32 1, ptr %r8
    %r10 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 1, i32 0
    store i32 1, ptr %r10
    %r12 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 1, i32 1
    store i32 0, ptr %r12
    %r14 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 1, i32 2
    store i32 1, ptr %r14
    %r16 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 1, i32 3
    store i32 0, ptr %r16
    %r18 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 2, i32 0
    store i32 1, ptr %r18
    %r20 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 2, i32 1
    store i32 1, ptr %r20
    %r22 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 2, i32 2
    store i32 0, ptr %r22
    %r24 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 2, i32 3
    store i32 1, ptr %r24
    %r26 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 3, i32 0
    store i32 1, ptr %r26
    %r28 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 3, i32 1
    store i32 0, ptr %r28
    %r30 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 3, i32 2
    store i32 1, ptr %r30
    %r32 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0, i32 3, i32 3
    store i32 0, ptr %r32
    br label %L11
L3:
    %r63 = phi i32 [%r48,%L4],[0,%L11]
    %r45 = getelementptr [4 x i32], ptr %r35, i32 0, i32 %r63
    store i32 0, ptr %r45
    %r48 = add i32 %r63,1
    br label %L4
L4:
    %r51 = icmp slt i32 %r48,4
    br i1 %r51, label %L3, label %L5
L5:
    %r54 = getelementptr i32, ptr %r0, i32 0
    %r57 = getelementptr i32, ptr %r35, i32 0
    %r58 = call i32 @graphColoring(ptr %r54,i32 3,i32 0,ptr %r57)
    %r59 = icmp eq i32 %r58,0
    br i1 %r59, label %L6, label %L7
L6:
    br label %L8
L7:
    ret i32 0
L8:
    br label %L10
L9:
    br label %L7
L10:
    call void @putch(i32 78)
    call void @putch(i32 111)
    call void @putch(i32 116)
    call void @putch(i32 32)
    call void @putch(i32 101)
    call void @putch(i32 120)
    call void @putch(i32 105)
    call void @putch(i32 115)
    call void @putch(i32 116)
    br label %L9
L11:
    br label %L3
}
define i32 @isSafe(ptr %r0,ptr %r1)
{
L0:
    br label %L1
L1:
    br label %L14
L3:
    %r57 = phi i32 [%r46,%L4],[0,%L14]
    %r12 = add i32 %r57,1
    %r15 = icmp slt i32 %r12,4
    br i1 %r15, label %L15, label %L9
L4:
    %r49 = icmp slt i32 %r46,4
    br i1 %r49, label %L3, label %L5
L5:
    ret i32 1
L7:
    %r55 = phi i32 [%r38,%L8],[%r12,%L15]
    %r20 = getelementptr i32, ptr %r59, i32 %r55
    %r21 = load i32, ptr %r20
    %r22 = icmp ne i32 %r21,0
    br i1 %r22, label %L12, label %L11
L8:
    %r41 = icmp slt i32 %r38,4
    br i1 %r41, label %L7, label %L9
L9:
    %r46 = add i32 %r57,1
    br label %L4
L10:
    ret i32 0
L11:
    %r38 = add i32 %r55,1
    br label %L8
L12:
    %r24 = getelementptr i32, ptr %r1, i32 %r55
    %r25 = load i32, ptr %r24
    %r27 = getelementptr i32, ptr %r1, i32 %r57
    %r28 = load i32, ptr %r27
    %r29 = icmp eq i32 %r25,%r28
    br i1 %r29, label %L10, label %L11
L14:
    br label %L3
L15:
    %r59 = getelementptr [4 x i32], ptr %r0, i32 %r57
    br label %L7
}
define void @printMessage()
{
L0:
    br label %L1
L1:
    call void @putch(i32 78)
    call void @putch(i32 111)
    call void @putch(i32 116)
    call void @putch(i32 32)
    call void @putch(i32 101)
    call void @putch(i32 120)
    call void @putch(i32 105)
    call void @putch(i32 115)
    call void @putch(i32 116)
    ret void
}
