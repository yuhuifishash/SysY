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
define i32 @maxCliques(i32 %r0,i32 %r1)
{
L0:
    %r28 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,1
    store i32 %r7, ptr %r6
    %r8 = add i32 0,1
    store i32 %r8, ptr %r2
    %r9 = load i32, ptr %r6
    %r10 = load i32, ptr @n
    %r11 = icmp sle i32 %r9,%r10
    br i1 %r11, label %L3, label %L5
L3:
    %r14 = load i32, ptr %r6
    %r15 = load i32, ptr %r3
    %r16 = getelementptr [30 x i32], ptr @store, i32 0, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = load i32, ptr %r3
    %r18 = add i32 0,1
    %r19 = add i32 %r17,%r18
    %r20 = call i32 @is_clique(i32 %r19)
    %r21 = icmp ne i32 %r20,0
    br i1 %r21, label %L6, label %L7
L4:
    %r43 = load i32, ptr %r6
    %r44 = load i32, ptr @n
    %r45 = icmp sle i32 %r43,%r44
    br i1 %r45, label %L3, label %L5
L5:
    %r48 = load i32, ptr %r4
    ret i32 %r48
L6:
    %r22 = load i32, ptr %r3
    %r23 = load i32, ptr %r4
    %r24 = icmp sgt i32 %r22,%r23
    br i1 %r24, label %L8, label %L9
L7:
    %r40 = load i32, ptr %r6
    %r41 = add i32 0,1
    %r42 = add i32 %r40,%r41
    store i32 %r42, ptr %r6
    br label %L4
L8:
    %r27 = load i32, ptr %r3
    store i32 %r27, ptr %r4
    br label %L9
L9:
    %r29 = load i32, ptr %r6
    %r30 = load i32, ptr %r3
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    %r33 = call i32 @maxCliques(i32 %r29,i32 %r32)
    store i32 %r33, ptr %r28
    %r34 = load i32, ptr %r28
    %r35 = load i32, ptr %r4
    %r36 = icmp sgt i32 %r34,%r35
    br i1 %r36, label %L10, label %L11
L10:
    %r39 = load i32, ptr %r28
    store i32 %r39, ptr %r4
    br label %L11
L11:
    br label %L7
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
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr @m
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L3, label %L5
L3:
    %r10 = call i32 @getint()
    %r11 = load i32, ptr %r3
    %r12 = add i32 0,0
    %r13 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r11, i32 %r12
    store i32 %r10, ptr %r13
    %r14 = call i32 @getint()
    %r15 = load i32, ptr %r3
    %r16 = add i32 0,1
    %r17 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r15, i32 %r16
    store i32 %r14, ptr %r17
    %r18 = load i32, ptr %r3
    %r19 = add i32 0,1
    %r20 = add i32 %r18,%r19
    store i32 %r20, ptr %r3
    br label %L4
L4:
    %r21 = load i32, ptr %r3
    %r22 = load i32, ptr @m
    %r23 = icmp slt i32 %r21,%r22
    br i1 %r23, label %L3, label %L5
L5:
    %r26 = add i32 0,0
    store i32 %r26, ptr %r3
    %r27 = load i32, ptr %r3
    %r28 = load i32, ptr @m
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L7, label %L9
L7:
    %r32 = add i32 0,1
    %r33 = load i32, ptr %r3
    %r34 = add i32 0,0
    %r35 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r33, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = load i32, ptr %r3
    %r38 = add i32 0,1
    %r39 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r37, i32 %r38
    %r40 = load i32, ptr %r39
    %r41 = getelementptr [30 x [30 x i32]], ptr @graph, i32 0, i32 %r36, i32 %r40
    store i32 %r32, ptr %r41
    %r42 = add i32 0,1
    %r43 = load i32, ptr %r3
    %r44 = add i32 0,1
    %r45 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r43, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = load i32, ptr %r3
    %r48 = add i32 0,0
    %r49 = getelementptr [600 x [2 x i32]], ptr %r2, i32 0, i32 %r47, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = getelementptr [30 x [30 x i32]], ptr @graph, i32 0, i32 %r46, i32 %r50
    store i32 %r42, ptr %r51
    %r52 = load i32, ptr %r3
    %r53 = add i32 0,1
    %r54 = add i32 %r52,%r53
    store i32 %r54, ptr %r3
    br label %L8
L8:
    %r55 = load i32, ptr %r3
    %r56 = load i32, ptr @m
    %r57 = icmp slt i32 %r55,%r56
    br i1 %r57, label %L7, label %L9
L9:
    %r60 = add i32 0,0
    %r61 = add i32 0,1
    %r62 = call i32 @maxCliques(i32 %r60,i32 %r61)
    call void @putint(i32 %r62)
    %r63 = add i32 0,0
    ret i32 %r63
}
define i32 @is_clique(i32 %r0)
{
L0:
    %r9 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r3 = add i32 0,1
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr %r1
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L5
L3:
    %r10 = load i32, ptr %r2
    %r11 = add i32 0,1
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r9
    %r13 = load i32, ptr %r9
    %r14 = load i32, ptr %r1
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L7, label %L9
L4:
    %r42 = load i32, ptr %r2
    %r43 = load i32, ptr %r1
    %r44 = icmp slt i32 %r42,%r43
    br i1 %r44, label %L3, label %L5
L5:
    %r47 = add i32 0,1
    ret i32 %r47
L7:
    %r18 = load i32, ptr %r2
    %r19 = getelementptr [30 x i32], ptr @store, i32 0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = load i32, ptr %r9
    %r22 = getelementptr [30 x i32], ptr @store, i32 0, i32 %r21
    %r23 = load i32, ptr %r22
    %r24 = getelementptr [30 x [30 x i32]], ptr @graph, i32 0, i32 %r20, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = add i32 0,0
    %r27 = icmp eq i32 %r25,%r26
    br i1 %r27, label %L10, label %L11
L8:
    %r34 = load i32, ptr %r9
    %r35 = load i32, ptr %r1
    %r36 = icmp slt i32 %r34,%r35
    br i1 %r36, label %L7, label %L9
L9:
    %r39 = load i32, ptr %r2
    %r40 = add i32 0,1
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r2
    br label %L4
L10:
    %r30 = add i32 0,0
    ret i32 %r30
L11:
    %r31 = load i32, ptr %r9
    %r32 = add i32 0,1
    %r33 = add i32 %r31,%r32
    store i32 %r33, ptr %r9
    br label %L8
}
