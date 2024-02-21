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
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r14 = phi i32 [0,%L1],[%r12,%L3]
    %r5 = icmp slt i32 %r14,4
    br i1 %r5, label %L3, label %L4
L3:  ;
    %r7 = getelementptr i32, ptr %r0, i32 %r14
    %r8 = load i32, ptr %r7
    call void @putint(i32 %r8)
    call void @putch(i32 32)
    %r12 = add i32 %r14,1
    br label %L2
L4:  ;
    call void @putch(i32 10)
    ret void
}
define void @printMessage()
{
L0:  ;
    br label %L1
L1:  ;
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
define i32 @isSafe(ptr %r0,ptr %r1)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r36 = phi i32 [0,%L1],[%r10,%L7]
    %r6 = icmp slt i32 %r36,4
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r10 = add i32 %r36,1
    br label %L5
L4:  ;
    ret i32 1
L5:  ;
    %r35 = phi i32 [%r10,%L3],[%r29,%L9]
    %r13 = icmp slt i32 %r35,4
    br i1 %r13, label %L6, label %L7
L6:  ;
    %r16 = getelementptr [4 x i32], ptr %r0, i32 %r36, i32 %r35
    %r17 = load i32, ptr %r16
    %r18 = icmp ne i32 %r17,0
    br i1 %r18, label %L10, label %L9
L7:  ;
    br label %L2
L8:  ;
    ret i32 0
L9:  ;
    %r29 = add i32 %r35,1
    br label %L5
L10:  ;
    %r20 = getelementptr i32, ptr %r1, i32 %r35
    %r21 = load i32, ptr %r20
    %r23 = getelementptr i32, ptr %r1, i32 %r36
    %r24 = load i32, ptr %r23
    %r25 = icmp eq i32 %r21,%r24
    br i1 %r25, label %L8, label %L9
}
define i32 @graphColoring(ptr %r0,i32 %r1,i32 %r2,ptr %r3)
{
L0:  ;
    br label %L1
L1:  ;
    %r8 = icmp eq i32 %r2,4
    br i1 %r8, label %L2, label %L3
L2:  ;
    %r9 = getelementptr [4 x i32], ptr %r0
    %r10 = getelementptr i32, ptr %r3
    %r11 = call i32 @isSafe(ptr %r9,ptr %r10)
    %r12 = icmp ne i32 %r11,0
    br i1 %r12, label %L4, label %L5
L3:  ;
    br label %L6
L4:  ;
    call void @printSolution(ptr %r10)
    ret i32 1
L5:  ;
    ret i32 0
L6:  ;
    %r40 = phi i32 [1,%L3],[%r38,%L10]
    %r20 = icmp sle i32 %r40,%r1
    br i1 %r20, label %L7, label %L8
L7:  ;
    %r22 = getelementptr i32, ptr %r3, i32 %r2
    store i32 %r40, ptr %r22
    %r24 = getelementptr [4 x i32], ptr %r0
    %r28 = add i32 %r2,1
    %r29 = getelementptr i32, ptr %r3
    %r30 = call i32 @graphColoring(ptr %r24,i32 %r1,i32 %r28,ptr %r29)
    %r31 = icmp ne i32 %r30,0
    br i1 %r31, label %L9, label %L10
L8:  ;
    ret i32 0
L9:  ;
    ret i32 1
L10:  ;
    store i32 0, ptr %r22
    %r38 = add i32 %r40,1
    br label %L6
}
define i32 @main()
{
L0:  ;
    %r35 = alloca [4 x i32]
    %r0 = alloca [4 x [4 x i32]]
    br label %L1
L1:  ;
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
    br label %L2
L2:  ;
    %r54 = phi i32 [0,%L1],[%r46,%L3]
    %r40 = icmp slt i32 %r54,4
    br i1 %r40, label %L3, label %L4
L3:  ;
    %r42 = getelementptr [4 x i32], ptr %r35, i32 0, i32 %r54
    store i32 0, ptr %r42
    %r46 = add i32 %r54,1
    br label %L2
L4:  ;
    %r47 = getelementptr [4 x [4 x i32]], ptr %r0, i32 0
    %r50 = getelementptr [4 x i32], ptr %r35, i32 0
    %r51 = call i32 @graphColoring(ptr %r47,i32 3,i32 0,ptr %r50)
    %r52 = icmp eq i32 %r51,0
    br i1 %r52, label %L5, label %L6
L5:  ;
    call void @printMessage()
    br label %L6
L6:  ;
    ret i32 0
}
