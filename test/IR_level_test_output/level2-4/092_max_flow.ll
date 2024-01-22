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
@INF = global i32 1879048192
@size = global [10x i32] zeroinitializer
@to = global [10x [10x i32]] zeroinitializer
@cap = global [10x [10x i32]] zeroinitializer
@rev = global [10x [10x i32]] zeroinitializer
@used = global [10x i32] zeroinitializer
define void @add_node(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    %r4 = alloca i32
    store i32 %r1, ptr %r4
    %r5 = alloca i32
    store i32 %r2, ptr %r5
    %r6 = load i32, ptr %r4
    %r7 = load i32, ptr %r3
    %r8 = load i32, ptr %r3
    %r9 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r8
    %r10 = load i32, ptr %r9
    %r11 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r7, i32 %r10
    store i32 %r6, ptr %r11
    %r12 = load i32, ptr %r5
    %r13 = load i32, ptr %r3
    %r14 = load i32, ptr %r3
    %r15 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r14
    %r16 = load i32, ptr %r15
    %r17 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r13, i32 %r16
    store i32 %r12, ptr %r17
    %r18 = load i32, ptr %r4
    %r19 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = load i32, ptr %r3
    %r22 = load i32, ptr %r3
    %r23 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r21, i32 %r24
    store i32 %r20, ptr %r25
    %r26 = load i32, ptr %r3
    %r27 = load i32, ptr %r4
    %r28 = load i32, ptr %r4
    %r29 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r27, i32 %r30
    store i32 %r26, ptr %r31
    %r32 = add i32 0,0
    %r33 = load i32, ptr %r4
    %r34 = load i32, ptr %r4
    %r35 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r33, i32 %r36
    store i32 %r32, ptr %r37
    %r38 = load i32, ptr %r3
    %r39 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r38
    %r40 = load i32, ptr %r39
    %r41 = load i32, ptr %r4
    %r42 = load i32, ptr %r4
    %r43 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r42
    %r44 = load i32, ptr %r43
    %r45 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r41, i32 %r44
    store i32 %r40, ptr %r45
    %r46 = load i32, ptr %r3
    %r47 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = add i32 0,1
    %r50 = add i32 %r48,%r49
    %r51 = load i32, ptr %r3
    %r52 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r51
    store i32 %r50, ptr %r52
    %r53 = load i32, ptr %r4
    %r54 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = add i32 0,1
    %r57 = add i32 %r55,%r56
    %r58 = load i32, ptr %r4
    %r59 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r58
    store i32 %r57, ptr %r59
    ret void
}
define i32 @dfs(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r60 = alloca i32
    %r45 = alloca i32
    %r15 = alloca i32
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    %r4 = alloca i32
    store i32 %r1, ptr %r4
    %r5 = alloca i32
    store i32 %r2, ptr %r5
    %r6 = load i32, ptr %r3
    %r7 = load i32, ptr %r4
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L1, label %L2
L1:
    %r11 = load i32, ptr %r5
    ret i32 %r11
L2:
    %r12 = add i32 0,1
    %r13 = load i32, ptr %r3
    %r14 = getelementptr [10 x i32], ptr @used, i32 0, i32 %r13
    store i32 %r12, ptr %r14
    %r16 = add i32 0,0
    store i32 %r16, ptr %r15
    br label %L3
L3:
    %r17 = load i32, ptr %r15
    %r18 = load i32, ptr %r3
    %r19 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = icmp slt i32 %r17,%r20
    br i1 %r21, label %L4, label %L5
L4:
    %r24 = load i32, ptr %r3
    %r25 = load i32, ptr %r15
    %r26 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r24, i32 %r25
    %r27 = load i32, ptr %r26
    %r28 = getelementptr [10 x i32], ptr @used, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = icmp ne i32 %r29,0
    br i1 %r30, label %L6, label %L7
L5:
    %r107 = add i32 0,0
    ret i32 %r107
L6:
    %r31 = load i32, ptr %r15
    %r32 = add i32 0,1
    %r33 = add i32 %r31,%r32
    store i32 %r33, ptr %r15
    br label %L3
L7:
    %r34 = load i32, ptr %r3
    %r35 = load i32, ptr %r15
    %r36 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r34, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = add i32 0,0
    %r39 = icmp sle i32 %r37,%r38
    br i1 %r39, label %L9, label %L10
L9:
    %r42 = load i32, ptr %r15
    %r43 = add i32 0,1
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r15
    br label %L3
L10:
    %r46 = add i32 0,0
    store i32 %r46, ptr %r45
    %r47 = load i32, ptr %r5
    %r48 = load i32, ptr %r3
    %r49 = load i32, ptr %r15
    %r50 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r48, i32 %r49
    %r51 = load i32, ptr %r50
    %r52 = icmp slt i32 %r47,%r51
    br i1 %r52, label %L12, label %L13
L12:
    %r55 = load i32, ptr %r5
    store i32 %r55, ptr %r45
    br label %L14
L13:
    %r56 = load i32, ptr %r3
    %r57 = load i32, ptr %r15
    %r58 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r56, i32 %r57
    %r59 = load i32, ptr %r58
    store i32 %r59, ptr %r45
    br label %L14
L14:
    %r61 = load i32, ptr %r3
    %r62 = load i32, ptr %r15
    %r63 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r61, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = load i32, ptr %r4
    %r66 = load i32, ptr %r45
    %r67 = call i32 @dfs(i32 %r64,i32 %r65,i32 %r66)
    store i32 %r67, ptr %r60
    %r68 = load i32, ptr %r60
    %r69 = add i32 0,0
    %r70 = icmp sgt i32 %r68,%r69
    br i1 %r70, label %L15, label %L16
L15:
    %r73 = load i32, ptr %r3
    %r74 = load i32, ptr %r15
    %r75 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r73, i32 %r74
    %r76 = load i32, ptr %r75
    %r77 = load i32, ptr %r60
    %r78 = sub i32 %r76,%r77
    %r79 = load i32, ptr %r3
    %r80 = load i32, ptr %r15
    %r81 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r79, i32 %r80
    store i32 %r78, ptr %r81
    %r82 = load i32, ptr %r3
    %r83 = load i32, ptr %r15
    %r84 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r82, i32 %r83
    %r85 = load i32, ptr %r84
    %r86 = load i32, ptr %r3
    %r87 = load i32, ptr %r15
    %r88 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r86, i32 %r87
    %r89 = load i32, ptr %r88
    %r90 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r85, i32 %r89
    %r91 = load i32, ptr %r90
    %r92 = load i32, ptr %r60
    %r93 = add i32 %r91,%r92
    %r94 = load i32, ptr %r3
    %r95 = load i32, ptr %r15
    %r96 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r94, i32 %r95
    %r97 = load i32, ptr %r96
    %r98 = load i32, ptr %r3
    %r99 = load i32, ptr %r15
    %r100 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r98, i32 %r99
    %r101 = load i32, ptr %r100
    %r102 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r97, i32 %r101
    store i32 %r93, ptr %r102
    %r103 = load i32, ptr %r60
    ret i32 %r103
L16:
    %r104 = load i32, ptr %r15
    %r105 = add i32 0,1
    %r106 = add i32 %r104,%r105
    store i32 %r106, ptr %r15
    br label %L3
}
define i32 @max_flow(i32 %r0,i32 %r1)
{
L0:
    %r11 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L1
L1:
    %r6 = add i32 0,1
    %r7 = icmp ne i32 %r6,0
    br i1 %r7, label %L2, label %L3
L2:
    %r8 = getelementptr i32, ptr @used, i32 0
    %r9 = add i32 0,0
    %r10 = add i32 0,10
    call void @my_memset(ptr %r8,i32 %r9,i32 %r10)
    %r12 = load i32, ptr %r2
    %r13 = load i32, ptr %r3
    %r14 = load i32, ptr @INF
    %r15 = call i32 @dfs(i32 %r12,i32 %r13,i32 %r14)
    store i32 %r15, ptr %r11
    %r16 = load i32, ptr %r11
    %r17 = add i32 0,0
    %r18 = icmp eq i32 %r16,%r17
    br i1 %r18, label %L4, label %L5
L3:
    ret i32 0
L4:
    %r21 = load i32, ptr %r4
    ret i32 %r21
L5:
    %r22 = load i32, ptr %r4
    %r23 = load i32, ptr %r11
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r4
    br label %L1
}
define void @my_memset(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r5 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = alloca i32
    store i32 %r2, ptr %r4
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    br label %L1
L1:
    %r7 = load i32, ptr %r5
    %r8 = load i32, ptr %r4
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
L2:
    %r12 = load i32, ptr %r3
    %r13 = load i32, ptr %r5
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    store i32 %r12, ptr %r14
    %r15 = load i32, ptr %r5
    %r16 = add i32 0,1
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r5
    br label %L1
L3:
    ret void
}
define i32 @main()
{
L0:
    %r20 = alloca i32
    %r16 = alloca i32
    %r14 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = call i32 @getint()
    store i32 %r4, ptr %r0
    %r5 = call i32 @getint()
    store i32 %r5, ptr %r2
    %r6 = getelementptr i32, ptr @size, i32 0
    %r7 = add i32 0,0
    %r8 = add i32 0,10
    call void @my_memset(ptr %r6,i32 %r7,i32 %r8)
    br label %L1
L1:
    %r9 = load i32, ptr %r2
    %r10 = add i32 0,0
    %r11 = icmp sgt i32 %r9,%r10
    br i1 %r11, label %L2, label %L3
L2:
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = call i32 @getint()
    store i32 %r18, ptr %r14
    %r19 = call i32 @getint()
    store i32 %r19, ptr %r16
    %r21 = call i32 @getint()
    store i32 %r21, ptr %r20
    %r22 = load i32, ptr %r14
    %r23 = load i32, ptr %r16
    %r24 = load i32, ptr %r20
    call void @add_node(i32 %r22,i32 %r23,i32 %r24)
    %r25 = load i32, ptr %r2
    %r26 = add i32 0,1
    %r27 = sub i32 %r25,%r26
    store i32 %r27, ptr %r2
    br label %L1
L3:
    %r28 = add i32 0,1
    %r29 = load i32, ptr %r0
    %r30 = call i32 @max_flow(i32 %r28,i32 %r29)
    call void @putint(i32 %r30)
    %r31 = add i32 0,10
    call void @putch(i32 %r31)
    %r32 = add i32 0,0
    ret i32 %r32
}
