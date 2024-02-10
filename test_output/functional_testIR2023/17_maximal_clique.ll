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
@maxN = global i32 30
@maxM = global i32 600
@store = global [30x i32] zeroinitializer
@n = global i32 zeroinitializer
@m = global i32 zeroinitializer
@graph = global [30x [30x i32]] zeroinitializer
define i32 @is_clique(i32 %r0)
{
L0:
    %r7 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r3 = add i32 1,0
    store i32 %r3, ptr %r2
    br label %L2
L2:
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr %r1
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:
    %r8 = load i32, ptr %r2
    %r9 = add i32 1,0
    %r10 = add i32 %r8,%r9
    store i32 %r10, ptr %r7
    br label %L5
L4:
    %r31 = add i32 1,0
    ret i32 %r31
L5:
    %r11 = load i32, ptr %r7
    %r12 = load i32, ptr %r1
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L6, label %L7
L6:
    %r14 = load i32, ptr %r2
    %r15 = getelementptr [30 x i32], ptr @store, i32 0, i32 %r14
    %r16 = load i32, ptr %r15
    %r17 = load i32, ptr %r7
    %r18 = getelementptr [30 x i32], ptr @store, i32 0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = getelementptr [30 x [30 x i32]], ptr @graph, i32 0, i32 %r16, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = add i32 0,0
    %r23 = icmp eq i32 %r21,%r22
    br i1 %r23, label %L8, label %L9
L7:
    %r28 = load i32, ptr %r2
    %r29 = add i32 1,0
    %r30 = add i32 %r28,%r29
    store i32 %r30, ptr %r2
    br label %L2
L8:
    %r24 = add i32 0,0
    ret i32 %r24
L9:
    %r25 = load i32, ptr %r7
    %r26 = add i32 1,0
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r7
    br label %L5
}
define i32 @maxCliques(i32 %r0,i32 %r1)
{
L0:
    %r24 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 1,0
    store i32 %r7, ptr %r6
    %r8 = add i32 1,0
    store i32 %r8, ptr %r2
    br label %L2
L2:
    %r9 = load i32, ptr %r6
    %r10 = load i32, ptr @n
    %r11 = icmp sle i32 %r9,%r10
    br i1 %r11, label %L3, label %L4
L3:
    %r12 = load i32, ptr %r3
    %r13 = getelementptr [30 x i32], ptr @store, i32 0, i32 %r12
    %r14 = load i32, ptr %r6
    store i32 %r14, ptr %r13
    %r15 = load i32, ptr %r3
    %r16 = add i32 1,0
    %r17 = add i32 %r15,%r16
    %r18 = call i32 @is_clique(i32 %r17)
    %r19 = icmp ne i32 %r18,0
    br i1 %r19, label %L5, label %L6
L4:
    %r37 = load i32, ptr %r4
    ret i32 %r37
L5:
    %r20 = load i32, ptr %r3
    %r21 = load i32, ptr %r4
    %r22 = icmp sgt i32 %r20,%r21
    br i1 %r22, label %L7, label %L8
L6:
    %r34 = load i32, ptr %r6
    %r35 = add i32 1,0
    %r36 = add i32 %r34,%r35
    store i32 %r36, ptr %r6
    br label %L2
L7:
    %r23 = load i32, ptr %r3
    store i32 %r23, ptr %r4
    br label %L8
L8:
    %r25 = load i32, ptr %r6
    %r26 = load i32, ptr %r3
    %r27 = add i32 1,0
    %r28 = add i32 %r26,%r27
    %r29 = call i32 @maxCliques(i32 %r25,i32 %r28)
    store i32 %r29, ptr %r24
    %r30 = load i32, ptr %r24
    %r31 = load i32, ptr %r4
    %r32 = icmp sgt i32 %r30,%r31
    br i1 %r32, label %L9, label %L10
L9:
    %r33 = load i32, ptr %r24
    store i32 %r33, ptr %r4
    br label %L10
L10:
    br label %L6
}
define i32 @main()
{
L0:
    %r3 = alloca i32
    %r2 = alloca [600 x [2 x i32]]
    br label %L1
L1:
    %r0 = call i32 @getint()
    store i32 %r0, ptr @n
    %r1 = call i32 @getint()
    store i32 %r1, ptr @m
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    br label %L2
L2:
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr @m
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:
    %r8 = load i32, ptr %r3
    %r9 = add i32 0,0
    %r10 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r8, i32 %r9
    %r11 = call i32 @getint()
    store i32 %r11, ptr %r10
    %r12 = load i32, ptr %r3
    %r13 = add i32 1,0
    %r14 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r12, i32 %r13
    %r15 = call i32 @getint()
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r3
    %r17 = add i32 1,0
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r3
    br label %L2
L4:
    %r19 = add i32 0,0
    store i32 %r19, ptr %r3
    br label %L5
L5:
    %r20 = load i32, ptr %r3
    %r21 = load i32, ptr @m
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L6, label %L7
L6:
    %r23 = load i32, ptr %r3
    %r24 = add i32 0,0
    %r25 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r23, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = load i32, ptr %r3
    %r28 = add i32 1,0
    %r29 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r27, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = getelementptr [30 x [30 x i32]], ptr @graph, i32 0, i32 %r26, i32 %r30
    %r32 = add i32 1,0
    store i32 %r32, ptr %r31
    %r33 = load i32, ptr %r3
    %r34 = add i32 1,0
    %r35 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r33, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = load i32, ptr %r3
    %r38 = add i32 0,0
    %r39 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r37, i32 %r38
    %r40 = load i32, ptr %r39
    %r41 = getelementptr [30 x [30 x i32]], ptr @graph, i32 0, i32 %r36, i32 %r40
    %r42 = add i32 1,0
    store i32 %r42, ptr %r41
    %r43 = load i32, ptr %r3
    %r44 = add i32 1,0
    %r45 = add i32 %r43,%r44
    store i32 %r45, ptr %r3
    br label %L5
L7:
    %r46 = add i32 0,0
    %r47 = add i32 1,0
    %r48 = call i32 @maxCliques(i32 %r46,i32 %r47)
    call void @putint(i32 %r48)
    %r49 = add i32 0,0
    ret i32 %r49
}
