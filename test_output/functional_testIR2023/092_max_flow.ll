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
define i32 @dfs(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r51 = alloca i32
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
    br label %L3
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
    %r96 = add i32 0,0
    ret i32 %r96
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
L9:
    br label %L8
L10:
    %r36 = load i32, ptr %r13
    %r37 = add i32 1,0
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r13
    br label %L4
L11:
    store i32 0, ptr %r39
    %r40 = load i32, ptr %r5
    %r41 = load i32, ptr %r3
    %r42 = load i32, ptr %r13
    %r43 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r41, i32 %r42
    %r44 = load i32, ptr %r43
    %r45 = icmp slt i32 %r40,%r44
    br i1 %r45, label %L13, label %L14
L12:
    br label %L11
L13:
    %r46 = load i32, ptr %r5
    store i32 %r46, ptr %r39
    br label %L15
L14:
    %r47 = load i32, ptr %r3
    %r48 = load i32, ptr %r13
    %r49 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r47, i32 %r48
    %r50 = load i32, ptr %r49
    store i32 %r50, ptr %r39
    br label %L15
L15:
    %r52 = load i32, ptr %r3
    %r53 = load i32, ptr %r13
    %r54 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r52, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = load i32, ptr %r4
    %r57 = load i32, ptr %r39
    %r58 = call i32 @dfs(i32 %r55,i32 %r56,i32 %r57)
    store i32 %r58, ptr %r51
    %r59 = load i32, ptr %r51
    %r60 = add i32 0,0
    %r61 = icmp sgt i32 %r59,%r60
    br i1 %r61, label %L16, label %L17
L16:
    %r62 = load i32, ptr %r3
    %r63 = load i32, ptr %r13
    %r64 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r62, i32 %r63
    %r65 = load i32, ptr %r3
    %r66 = load i32, ptr %r13
    %r67 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r65, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = load i32, ptr %r51
    %r70 = sub i32 %r68,%r69
    store i32 %r70, ptr %r64
    %r71 = load i32, ptr %r3
    %r72 = load i32, ptr %r13
    %r73 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r71, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = load i32, ptr %r3
    %r76 = load i32, ptr %r13
    %r77 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r75, i32 %r76
    %r78 = load i32, ptr %r77
    %r79 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r74, i32 %r78
    %r80 = load i32, ptr %r3
    %r81 = load i32, ptr %r13
    %r82 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r80, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = load i32, ptr %r3
    %r85 = load i32, ptr %r13
    %r86 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r84, i32 %r85
    %r87 = load i32, ptr %r86
    %r88 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r83, i32 %r87
    %r89 = load i32, ptr %r88
    %r90 = load i32, ptr %r51
    %r91 = add i32 %r89,%r90
    store i32 %r91, ptr %r79
    %r92 = load i32, ptr %r51
    ret i32 %r92
    br label %L17
L17:
    %r93 = load i32, ptr %r13
    %r94 = add i32 1,0
    %r95 = add i32 %r93,%r94
    store i32 %r95, ptr %r13
    br label %L4
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
define i32 @main()
{
L0:
    %r14 = alloca i32
    %r11 = alloca i32
    %r10 = alloca i32
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    store i32 0, ptr %r1
    %r2 = call i32 @getint()
    store i32 %r2, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r1
    %r4 = getelementptr [10 x i32], ptr @size, i32 0
    %r5 = add i32 0,0
    %r6 = add i32 10,0
    call void @my_memset(ptr %r4,i32 %r5,i32 %r6)
    br label %L2
L2:
    %r7 = load i32, ptr %r1
    %r8 = add i32 0,0
    %r9 = icmp sgt i32 %r7,%r8
    br i1 %r9, label %L3, label %L4
L3:
    store i32 0, ptr %r10
    store i32 0, ptr %r11
    %r12 = call i32 @getint()
    store i32 %r12, ptr %r10
    %r13 = call i32 @getint()
    store i32 %r13, ptr %r11
    %r15 = call i32 @getint()
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r10
    %r17 = load i32, ptr %r11
    %r18 = load i32, ptr %r14
    call void @add_node(i32 %r16,i32 %r17,i32 %r18)
    %r19 = load i32, ptr %r1
    %r20 = add i32 1,0
    %r21 = sub i32 %r19,%r20
    store i32 %r21, ptr %r1
    br label %L2
L4:
    %r22 = add i32 1,0
    %r23 = load i32, ptr %r0
    %r24 = call i32 @max_flow(i32 %r22,i32 %r23)
    call void @putint(i32 %r24)
    %r25 = add i32 10,0
    call void @putch(i32 %r25)
    %r26 = add i32 0,0
    ret i32 %r26
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
    br label %L6
L6:
    %r20 = load i32, ptr %r4
    %r21 = load i32, ptr %r11
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r4
    br label %L2
}
