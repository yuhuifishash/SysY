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
@maxn = global i32 10005
@n = global i32 zeroinitializer
@m = global i32 zeroinitializer
@f = global [10005x [20x i32]] zeroinitializer
@dep = global [10005x i32] zeroinitializer
@to = global [10005x i32] zeroinitializer
@next = global [10005x i32] zeroinitializer
@head = global [10005x i32] zeroinitializer
@cnt = global i32 0
define i32 @LCA(i32 %r0,i32 %r1)
{
L0:
    %r17 = alloca i32
    %r13 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r4
    %r6 = load i32, ptr %r5
    %r7 = load i32, ptr %r3
    %r8 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r7
    %r9 = load i32, ptr %r8
    %r10 = icmp slt i32 %r6,%r9
    br i1 %r10, label %L2, label %L3
L2:
    %r14 = load i32, ptr %r2
    store i32 %r14, ptr %r13
    %r15 = load i32, ptr %r3
    store i32 %r15, ptr %r2
    %r16 = load i32, ptr %r13
    store i32 %r16, ptr %r3
    br label %L3
L3:
    %r18 = add i32 0,19
    store i32 %r18, ptr %r17
    %r19 = load i32, ptr %r2
    %r20 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r3
    %r23 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = icmp sgt i32 %r21,%r24
    br i1 %r25, label %L5, label %L7
L5:
    %r28 = load i32, ptr %r2
    %r29 = load i32, ptr %r17
    %r30 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r28, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = icmp ne i32 %r31,0
    br i1 %r32, label %L10, label %L9
L6:
    %r55 = load i32, ptr %r2
    %r56 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r55
    %r57 = load i32, ptr %r56
    %r58 = load i32, ptr %r3
    %r59 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r58
    %r60 = load i32, ptr %r59
    %r61 = icmp sgt i32 %r57,%r60
    br i1 %r61, label %L5, label %L7
L7:
    %r64 = load i32, ptr %r2
    %r65 = load i32, ptr %r3
    %r66 = icmp eq i32 %r64,%r65
    br i1 %r66, label %L12, label %L13
L8:
    %r48 = load i32, ptr %r2
    %r49 = load i32, ptr %r17
    %r50 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r48, i32 %r49
    %r51 = load i32, ptr %r50
    store i32 %r51, ptr %r2
    br label %L9
L9:
    %r52 = load i32, ptr %r17
    %r53 = add i32 0,1
    %r54 = sub i32 %r52,%r53
    store i32 %r54, ptr %r17
    br label %L6
L10:
    %r33 = load i32, ptr %r2
    %r34 = load i32, ptr %r17
    %r35 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r33, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = load i32, ptr %r3
    %r40 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r39
    %r41 = load i32, ptr %r40
    %r42 = icmp sge i32 %r38,%r41
    br i1 %r42, label %L8, label %L9
L12:
    %r69 = load i32, ptr %r2
    ret i32 %r69
L13:
    %r70 = add i32 0,19
    store i32 %r70, ptr %r17
    %r71 = load i32, ptr %r17
    %r72 = add i32 0,0
    %r73 = icmp sge i32 %r71,%r72
    br i1 %r73, label %L15, label %L17
L15:
    %r76 = load i32, ptr %r2
    %r77 = load i32, ptr %r17
    %r78 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r76, i32 %r77
    %r79 = load i32, ptr %r78
    %r80 = load i32, ptr %r3
    %r81 = load i32, ptr %r17
    %r82 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r80, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = icmp ne i32 %r79,%r83
    br i1 %r84, label %L18, label %L19
L16:
    %r98 = load i32, ptr %r17
    %r99 = add i32 0,0
    %r100 = icmp sge i32 %r98,%r99
    br i1 %r100, label %L15, label %L17
L17:
    %r103 = load i32, ptr %r2
    %r104 = add i32 0,0
    %r105 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r103, i32 %r104
    %r106 = load i32, ptr %r105
    ret i32 %r106
L18:
    %r87 = load i32, ptr %r2
    %r88 = load i32, ptr %r17
    %r89 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r87, i32 %r88
    %r90 = load i32, ptr %r89
    store i32 %r90, ptr %r2
    %r91 = load i32, ptr %r3
    %r92 = load i32, ptr %r17
    %r93 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r91, i32 %r92
    %r94 = load i32, ptr %r93
    store i32 %r94, ptr %r3
    br label %L19
L19:
    %r95 = load i32, ptr %r17
    %r96 = add i32 0,1
    %r97 = sub i32 %r95,%r96
    store i32 %r97, ptr %r17
    br label %L16
}
define i32 @quick_read()
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getch()
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,48
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L6
L3:
    %r19 = load i32, ptr %r0
    %r20 = add i32 0,45
    %r21 = icmp eq i32 %r19,%r20
    br i1 %r21, label %L8, label %L9
L4:
    %r26 = load i32, ptr %r0
    %r27 = add i32 0,48
    %r28 = icmp slt i32 %r26,%r27
    br i1 %r28, label %L3, label %L10
L5:
    %r39 = load i32, ptr %r0
    %r40 = add i32 0,48
    %r41 = icmp sge i32 %r39,%r40
    br i1 %r41, label %L16, label %L15
L6:
    %r11 = load i32, ptr %r0
    %r12 = add i32 0,57
    %r13 = icmp sgt i32 %r11,%r12
    br i1 %r13, label %L3, label %L5
L8:
    %r24 = add i32 0,1
    store i32 %r24, ptr %r4
    br label %L9
L9:
    %r25 = call i32 @getch()
    store i32 %r25, ptr %r0
    br label %L4
L10:
    %r31 = load i32, ptr %r0
    %r32 = add i32 0,57
    %r33 = icmp sgt i32 %r31,%r32
    br i1 %r33, label %L3, label %L5
L13:
    %r52 = load i32, ptr %r2
    %r53 = add i32 0,10
    %r54 = mul i32 %r52,%r53
    %r55 = load i32, ptr %r0
    %r56 = add i32 %r54,%r55
    %r57 = add i32 0,48
    %r58 = sub i32 %r56,%r57
    store i32 %r58, ptr %r2
    %r59 = call i32 @getch()
    store i32 %r59, ptr %r0
    br label %L14
L14:
    %r60 = load i32, ptr %r0
    %r61 = add i32 0,48
    %r62 = icmp sge i32 %r60,%r61
    br i1 %r62, label %L18, label %L15
L15:
    %r73 = load i32, ptr %r4
    %r74 = icmp ne i32 %r73,0
    br i1 %r74, label %L20, label %L21
L16:
    %r44 = load i32, ptr %r0
    %r45 = add i32 0,57
    %r46 = icmp sle i32 %r44,%r45
    br i1 %r46, label %L13, label %L15
L18:
    %r65 = load i32, ptr %r0
    %r66 = add i32 0,57
    %r67 = icmp sle i32 %r65,%r66
    br i1 %r67, label %L13, label %L15
L20:
    %r75 = load i32, ptr %r2
    %r76 = sub i32 0,%r75
    ret i32 %r76
L21:
    %r77 = load i32, ptr %r2
    ret i32 %r77
}
define void @add_edge(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r3
    %r5 = load i32, ptr @cnt
    %r6 = getelementptr [10005 x i32], ptr @to, i32 0, i32 %r5
    store i32 %r4, ptr %r6
    %r7 = load i32, ptr %r2
    %r8 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r7
    %r9 = load i32, ptr %r8
    %r10 = load i32, ptr @cnt
    %r11 = getelementptr [10005 x i32], ptr @next, i32 0, i32 %r10
    store i32 %r9, ptr %r11
    %r12 = load i32, ptr @cnt
    %r13 = load i32, ptr %r2
    %r14 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r13
    store i32 %r12, ptr %r14
    %r15 = load i32, ptr @cnt
    %r16 = add i32 0,1
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr @cnt
    %r18 = load i32, ptr %r2
    %r19 = load i32, ptr %r3
    %r20 = add i32 0,0
    %r21 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r19, i32 %r20
    store i32 %r18, ptr %r21
    ret void
}
define void @init()
{
L0:
    %r3 = alloca i32
    br label %L1
L1:
    %r0 = add i32 0,1061109567
    %r1 = add i32 0,0
    %r2 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r1
    store i32 %r0, ptr %r2
    %r4 = add i32 0,1
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r5,%r6
    br i1 %r7, label %L3, label %L5
L3:
    %r10 = add i32 0,1
    %r11 = sub i32 0,%r10
    %r12 = load i32, ptr %r3
    %r13 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r12
    store i32 %r11, ptr %r13
    %r14 = load i32, ptr %r3
    %r15 = add i32 0,1
    %r16 = add i32 %r14,%r15
    store i32 %r16, ptr %r3
    br label %L4
L4:
    %r17 = load i32, ptr %r3
    %r18 = load i32, ptr @n
    %r19 = icmp sle i32 %r17,%r18
    br i1 %r19, label %L3, label %L5
L5:
    ret void
}
define void @tree(i32 %r0,i32 %r1)
{
L0:
    %r43 = alloca i32
    %r7 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r3
    %r5 = load i32, ptr %r2
    %r6 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r5
    store i32 %r4, ptr %r6
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r9 = load i32, ptr %r2
    %r10 = load i32, ptr %r7
    %r11 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r9, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = icmp ne i32 %r12,0
    br i1 %r13, label %L3, label %L5
L3:
    %r14 = load i32, ptr %r2
    %r15 = load i32, ptr %r7
    %r16 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r14, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = load i32, ptr %r7
    %r19 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r17, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = load i32, ptr %r2
    %r22 = load i32, ptr %r7
    %r23 = add i32 0,1
    %r24 = add i32 %r22,%r23
    %r25 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r21, i32 %r24
    store i32 %r20, ptr %r25
    %r26 = load i32, ptr %r7
    %r27 = add i32 0,1
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r7
    br label %L4
L4:
    %r29 = load i32, ptr %r2
    %r30 = load i32, ptr %r7
    %r31 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r29, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = icmp ne i32 %r32,0
    br i1 %r33, label %L3, label %L5
L5:
    %r34 = load i32, ptr %r2
    %r35 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    store i32 %r36, ptr %r7
    %r37 = load i32, ptr %r7
    %r38 = add i32 0,1
    %r39 = sub i32 0,%r38
    %r40 = icmp ne i32 %r37,%r39
    br i1 %r40, label %L7, label %L9
L7:
    %r44 = load i32, ptr %r7
    %r45 = getelementptr [10005 x i32], ptr @to, i32 0, i32 %r44
    %r46 = load i32, ptr %r45
    store i32 %r46, ptr %r43
    %r47 = load i32, ptr %r43
    %r48 = load i32, ptr %r3
    %r49 = add i32 0,1
    %r50 = add i32 %r48,%r49
    call void @tree(i32 %r47,i32 %r50)
    %r51 = load i32, ptr %r7
    %r52 = getelementptr [10005 x i32], ptr @next, i32 0, i32 %r51
    %r53 = load i32, ptr %r52
    store i32 %r53, ptr %r7
    br label %L8
L8:
    %r54 = load i32, ptr %r7
    %r55 = add i32 0,1
    %r56 = sub i32 0,%r55
    %r57 = icmp ne i32 %r54,%r56
    br i1 %r57, label %L7, label %L9
L9:
    ret void
}
define i32 @main()
{
L0:
    %r29 = alloca i32
    %r27 = alloca i32
    %r11 = alloca i32
    %r9 = alloca i32
    %r2 = alloca i32
    br label %L1
L1:
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    %r1 = call i32 @quick_read()
    store i32 %r1, ptr @m
    call void @init()
    %r3 = add i32 0,1
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr @n
    %r6 = icmp ne i32 %r4,%r5
    br i1 %r6, label %L3, label %L5
L3:
    %r10 = call i32 @quick_read()
    store i32 %r10, ptr %r9
    %r12 = call i32 @quick_read()
    store i32 %r12, ptr %r11
    %r13 = load i32, ptr %r9
    %r14 = load i32, ptr %r11
    call void @add_edge(i32 %r13,i32 %r14)
    %r15 = load i32, ptr %r2
    %r16 = add i32 0,1
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r2
    br label %L4
L4:
    %r18 = load i32, ptr %r2
    %r19 = load i32, ptr @n
    %r20 = icmp ne i32 %r18,%r19
    br i1 %r20, label %L3, label %L5
L5:
    %r23 = add i32 0,1
    %r24 = add i32 0,1
    call void @tree(i32 %r23,i32 %r24)
    %r25 = load i32, ptr @m
    %r26 = icmp ne i32 %r25,0
    br i1 %r26, label %L7, label %L9
L7:
    %r28 = call i32 @quick_read()
    store i32 %r28, ptr %r27
    %r30 = call i32 @quick_read()
    store i32 %r30, ptr %r29
    %r31 = load i32, ptr %r27
    %r32 = load i32, ptr %r29
    %r33 = call i32 @LCA(i32 %r31,i32 %r32)
    call void @putint(i32 %r33)
    %r34 = add i32 0,10
    call void @putch(i32 %r34)
    %r35 = load i32, ptr @m
    %r36 = add i32 0,1
    %r37 = sub i32 %r35,%r36
    store i32 %r37, ptr @m
    br label %L8
L8:
    %r38 = load i32, ptr @m
    %r39 = icmp ne i32 %r38,0
    br i1 %r39, label %L7, label %L9
L9:
    %r40 = add i32 0,0
    ret i32 %r40
}
