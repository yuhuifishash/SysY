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
@INF = global i32 1879048192
@size = global [10x i32] zeroinitializer
@to = global [10x [10x i32]] zeroinitializer
@cap = global [10x [10x i32]] zeroinitializer
@rev = global [10x [10x i32]] zeroinitializer
@used = global [10x i32] zeroinitializer
define void @my_memset(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    store i32 %r2, ptr %r4
    br label %L1
L1:
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    br label %L2
L2:
    %r7 = load i32, ptr %r5
    %r8 = load i32, ptr %r4
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L3, label %L4
L3:
    %r10 = load i32, ptr %r5
    %r11 = getelementptr i32, ptr %r0, i32 %r10
    %r12 = load i32, ptr %r3
    store i32 %r12, ptr %r11
    %r13 = load i32, ptr %r5
    %r14 = add i32 1,0
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr %r5
    br label %L2
L4:
    ret void
}
define void @add_node(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    store i32 %r1, ptr %r4
    store i32 %r2, ptr %r5
    br label %L1
L1:
    %r6 = load i32, ptr %r3
    %r7 = load i32, ptr %r3
    %r8 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r7
    %r9 = load i32, ptr %r8
    %r10 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r6, i32 %r9
    %r11 = load i32, ptr %r4
    store i32 %r11, ptr %r10
    %r12 = load i32, ptr %r3
    %r13 = load i32, ptr %r3
    %r14 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r12, i32 %r15
    %r17 = load i32, ptr %r5
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r3
    %r19 = load i32, ptr %r3
    %r20 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r18, i32 %r21
    %r23 = load i32, ptr %r4
    %r24 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r23
    %r25 = load i32, ptr %r24
    store i32 %r25, ptr %r22
    %r26 = load i32, ptr %r4
    %r27 = load i32, ptr %r4
    %r28 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r26, i32 %r29
    %r31 = load i32, ptr %r3
    store i32 %r31, ptr %r30
    %r32 = load i32, ptr %r4
    %r33 = load i32, ptr %r4
    %r34 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r33
    %r35 = load i32, ptr %r34
    %r36 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r32, i32 %r35
    %r37 = add i32 0,0
    store i32 %r37, ptr %r36
    %r38 = load i32, ptr %r4
    %r39 = load i32, ptr %r4
    %r40 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r39
    %r41 = load i32, ptr %r40
    %r42 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r38, i32 %r41
    %r43 = load i32, ptr %r3
    %r44 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    store i32 %r45, ptr %r42
    %r46 = load i32, ptr %r3
    %r47 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r46
    %r48 = load i32, ptr %r3
    %r49 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = add i32 1,0
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r47
    %r53 = load i32, ptr %r4
    %r54 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r53
    %r55 = load i32, ptr %r4
    %r56 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r55
    %r57 = load i32, ptr %r56
    %r58 = add i32 1,0
    %r59 = add i32 %r57,%r58
    store i32 %r59, ptr %r54
    ret void
}
define i32 @dfs(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r52 = alloca i32
    %r39 = alloca i32
    %r13 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    store i32 %r1, ptr %r4
    store i32 %r2, ptr %r5
    br label %L1
L1:
    %r6 = load i32, ptr %r3
    %r7 = load i32, ptr %r4
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r9 = load i32, ptr %r5
    ret i32 %r9
L3:
    %r10 = load i32, ptr %r3
    %r11 = getelementptr [10 x i32], ptr @used, i32 0, i32 %r10
    %r12 = add i32 1,0
    store i32 %r12, ptr %r11
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    br label %L4
L4:
    %r15 = load i32, ptr %r13
    %r16 = load i32, ptr %r3
    %r17 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r16
    %r18 = load i32, ptr %r17
    %r19 = icmp slt i32 %r15,%r18
    br i1 %r19, label %L5, label %L6
L5:
    %r20 = load i32, ptr %r3
    %r21 = load i32, ptr %r13
    %r22 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r20, i32 %r21
    %r23 = load i32, ptr %r22
    %r24 = getelementptr [10 x i32], ptr @used, i32 0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = icmp ne i32 %r25,0
    br i1 %r26, label %L7, label %L8
L6:
    %r97 = add i32 0,0
    ret i32 %r97
L7:
    %r27 = load i32, ptr %r13
    %r28 = add i32 1,0
    %r29 = add i32 %r27,%r28
    store i32 %r29, ptr %r13
    br label %L4
L8:
    %r30 = load i32, ptr %r3
    %r31 = load i32, ptr %r13
    %r32 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r30, i32 %r31
    %r33 = load i32, ptr %r32
    %r34 = add i32 0,0
    %r35 = icmp sle i32 %r33,%r34
    br i1 %r35, label %L10, label %L11
L10:
    %r36 = load i32, ptr %r13
    %r37 = add i32 1,0
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r13
    br label %L4
L11:
    %r40 = add i32 0,0
    store i32 %r40, ptr %r39
    %r41 = load i32, ptr %r5
    %r42 = load i32, ptr %r3
    %r43 = load i32, ptr %r13
    %r44 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r42, i32 %r43
    %r45 = load i32, ptr %r44
    %r46 = icmp slt i32 %r41,%r45
    br i1 %r46, label %L13, label %L14
L13:
    %r47 = load i32, ptr %r5
    store i32 %r47, ptr %r39
    br label %L15
L14:
    %r48 = load i32, ptr %r3
    %r49 = load i32, ptr %r13
    %r50 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r48, i32 %r49
    %r51 = load i32, ptr %r50
    store i32 %r51, ptr %r39
    br label %L15
L15:
    %r53 = load i32, ptr %r3
    %r54 = load i32, ptr %r13
    %r55 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r53, i32 %r54
    %r56 = load i32, ptr %r55
    %r57 = load i32, ptr %r4
    %r58 = load i32, ptr %r39
    %r59 = call i32 @dfs(i32 %r56,i32 %r57,i32 %r58)
    store i32 %r59, ptr %r52
    %r60 = load i32, ptr %r52
    %r61 = add i32 0,0
    %r62 = icmp sgt i32 %r60,%r61
    br i1 %r62, label %L16, label %L17
L16:
    %r63 = load i32, ptr %r3
    %r64 = load i32, ptr %r13
    %r65 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r63, i32 %r64
    %r66 = load i32, ptr %r3
    %r67 = load i32, ptr %r13
    %r68 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r66, i32 %r67
    %r69 = load i32, ptr %r68
    %r70 = load i32, ptr %r52
    %r71 = sub i32 %r69,%r70
    store i32 %r71, ptr %r65
    %r72 = load i32, ptr %r3
    %r73 = load i32, ptr %r13
    %r74 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r72, i32 %r73
    %r75 = load i32, ptr %r74
    %r76 = load i32, ptr %r3
    %r77 = load i32, ptr %r13
    %r78 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r76, i32 %r77
    %r79 = load i32, ptr %r78
    %r80 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r75, i32 %r79
    %r81 = load i32, ptr %r3
    %r82 = load i32, ptr %r13
    %r83 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r81, i32 %r82
    %r84 = load i32, ptr %r83
    %r85 = load i32, ptr %r3
    %r86 = load i32, ptr %r13
    %r87 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r85, i32 %r86
    %r88 = load i32, ptr %r87
    %r89 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r84, i32 %r88
    %r90 = load i32, ptr %r89
    %r91 = load i32, ptr %r52
    %r92 = add i32 %r90,%r91
    store i32 %r92, ptr %r80
    %r93 = load i32, ptr %r52
    ret i32 %r93
L17:
    %r94 = load i32, ptr %r13
    %r95 = add i32 1,0
    %r96 = add i32 %r94,%r95
    store i32 %r96, ptr %r13
    br label %L4
}
define i32 @max_flow(i32 %r0,i32 %r1)
{
L0:
    %r11 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L2
L2:
    %r6 = add i32 1,0
    %r7 = icmp ne i32 %r6,0
    br i1 %r7, label %L3, label %L4
L3:
    %r8 = getelementptr [10 x i32], ptr @used, i32 0
    %r9 = add i32 0,0
    %r10 = add i32 10,0
    call void @my_memset(ptr %r8,i32 %r9,i32 %r10)
    %r12 = load i32, ptr %r2
    %r13 = load i32, ptr %r3
    %r14 = load i32, ptr @INF
    %r15 = call i32 @dfs(i32 %r12,i32 %r13,i32 %r14)
    store i32 %r15, ptr %r11
    %r16 = load i32, ptr %r11
    %r17 = add i32 0,0
    %r18 = icmp eq i32 %r16,%r17
    br i1 %r18, label %L5, label %L6
L4:
    ret i32 0
L5:
    %r19 = load i32, ptr %r4
    ret i32 %r19
L6:
    %r20 = load i32, ptr %r4
    %r21 = load i32, ptr %r11
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r4
    br label %L2
}
define i32 @main()
{
L0:
    %r18 = alloca i32
    %r14 = alloca i32
    %r12 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = call i32 @getint()
    store i32 %r4, ptr %r0
    %r5 = call i32 @getint()
    store i32 %r5, ptr %r2
    %r6 = getelementptr [10 x i32], ptr @size, i32 0
    %r7 = add i32 0,0
    %r8 = add i32 10,0
    call void @my_memset(ptr %r6,i32 %r7,i32 %r8)
    br label %L2
L2:
    %r9 = load i32, ptr %r2
    %r10 = add i32 0,0
    %r11 = icmp sgt i32 %r9,%r10
    br i1 %r11, label %L3, label %L4
L3:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r16 = call i32 @getint()
    store i32 %r16, ptr %r12
    %r17 = call i32 @getint()
    store i32 %r17, ptr %r14
    %r19 = call i32 @getint()
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr %r12
    %r21 = load i32, ptr %r14
    %r22 = load i32, ptr %r18
    call void @add_node(i32 %r20,i32 %r21,i32 %r22)
    %r23 = load i32, ptr %r2
    %r24 = add i32 1,0
    %r25 = sub i32 %r23,%r24
    store i32 %r25, ptr %r2
    br label %L2
L4:
    %r26 = add i32 1,0
    %r27 = load i32, ptr %r0
    %r28 = call i32 @max_flow(i32 %r26,i32 %r27)
    call void @putint(i32 %r28)
    %r29 = add i32 10,0
    call void @putch(i32 %r29)
    %r30 = add i32 0,0
    ret i32 %r30
}
