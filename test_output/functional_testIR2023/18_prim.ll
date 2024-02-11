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
@maxm = global i32 1005
@maxn = global i32 105
@n = global i32 zeroinitializer
@m = global i32 zeroinitializer
@u = global [1005x i32] zeroinitializer
@v = global [1005x i32] zeroinitializer
@c = global [1005x i32] zeroinitializer
@fa = global [1005x i32] zeroinitializer
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
    br label %L2
L2:
    %r6 = load i32, ptr %r0
    %r7 = add i32 48,0
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L5
L3:
    %r12 = load i32, ptr %r0
    %r13 = add i32 45,0
    %r14 = icmp eq i32 %r12,%r13
    br i1 %r14, label %L6, label %L7
L4:
    br label %L8
L5:
    %r9 = load i32, ptr %r0
    %r10 = add i32 57,0
    %r11 = icmp sgt i32 %r9,%r10
    br i1 %r11, label %L3, label %L4
L6:
    %r15 = add i32 1,0
    store i32 %r15, ptr %r4
    br label %L7
L7:
    %r16 = call i32 @getch()
    store i32 %r16, ptr %r0
    br label %L2
L8:
    %r17 = load i32, ptr %r0
    %r18 = add i32 48,0
    %r19 = icmp sge i32 %r17,%r18
    br i1 %r19, label %L11, label %L10
L9:
    %r23 = load i32, ptr %r2
    %r24 = add i32 10,0
    %r25 = mul i32 %r23,%r24
    %r26 = load i32, ptr %r0
    %r27 = add i32 %r25,%r26
    %r28 = add i32 48,0
    %r29 = sub i32 %r27,%r28
    store i32 %r29, ptr %r2
    %r30 = call i32 @getch()
    store i32 %r30, ptr %r0
    br label %L8
L10:
    %r31 = load i32, ptr %r4
    %r32 = icmp ne i32 %r31,0
    br i1 %r32, label %L12, label %L13
L11:
    %r20 = load i32, ptr %r0
    %r21 = add i32 57,0
    %r22 = icmp sle i32 %r20,%r21
    br i1 %r22, label %L9, label %L10
L12:
    %r33 = load i32, ptr %r2
    %r34 = sub i32 0,%r33
    ret i32 %r34
L13:
    %r35 = load i32, ptr %r2
    ret i32 %r35
}
define i32 @find(i32 %r0)
{
L0:
    %r8 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = load i32, ptr %r1
    %r4 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r3
    %r5 = load i32, ptr %r4
    %r6 = icmp eq i32 %r2,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r7 = load i32, ptr %r1
    ret i32 %r7
L3:
    %r9 = load i32, ptr %r1
    %r10 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = call i32 @find(i32 %r11)
    store i32 %r12, ptr %r8
    %r13 = load i32, ptr %r1
    %r14 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r13
    %r15 = load i32, ptr %r8
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r8
    ret i32 %r16
}
define i32 @same(i32 %r0,i32 %r1)
{
L0:
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = call i32 @find(i32 %r4)
    store i32 %r5, ptr %r2
    %r6 = load i32, ptr %r3
    %r7 = call i32 @find(i32 %r6)
    store i32 %r7, ptr %r3
    %r8 = load i32, ptr %r2
    %r9 = load i32, ptr %r3
    %r10 = icmp eq i32 %r8,%r9
    br i1 %r10, label %L2, label %L3
L2:
    %r11 = add i32 1,0
    ret i32 %r11
L3:
    %r12 = add i32 0,0
    ret i32 %r12
}
define i32 @prim()
{
L0:
    %r70 = alloca i32
    %r19 = alloca i32
    %r5 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    br label %L2
L2:
    %r2 = load i32, ptr %r0
    %r3 = load i32, ptr @m
    %r4 = icmp slt i32 %r2,%r3
    br i1 %r4, label %L3, label %L4
L3:
    %r6 = load i32, ptr %r0
    %r7 = add i32 1,0
    %r8 = add i32 %r6,%r7
    store i32 %r8, ptr %r5
    br label %L5
L4:
    %r59 = add i32 1,0
    store i32 %r59, ptr %r0
    br label %L10
L5:
    %r9 = load i32, ptr %r5
    %r10 = load i32, ptr @m
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L6, label %L7
L6:
    %r12 = load i32, ptr %r0
    %r13 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r12
    %r14 = load i32, ptr %r13
    %r15 = load i32, ptr %r5
    %r16 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = icmp sgt i32 %r14,%r17
    br i1 %r18, label %L8, label %L9
L7:
    %r56 = load i32, ptr %r0
    %r57 = add i32 1,0
    %r58 = add i32 %r56,%r57
    store i32 %r58, ptr %r0
    br label %L2
L8:
    %r20 = load i32, ptr %r0
    %r21 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r20
    %r22 = load i32, ptr %r21
    store i32 %r22, ptr %r19
    %r23 = load i32, ptr %r0
    %r24 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r23
    %r25 = load i32, ptr %r5
    %r26 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r25
    %r27 = load i32, ptr %r26
    store i32 %r27, ptr %r24
    %r28 = load i32, ptr %r5
    %r29 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r28
    %r30 = load i32, ptr %r19
    store i32 %r30, ptr %r29
    %r31 = load i32, ptr %r0
    %r32 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r31
    %r33 = load i32, ptr %r32
    store i32 %r33, ptr %r19
    %r34 = load i32, ptr %r0
    %r35 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r34
    %r36 = load i32, ptr %r5
    %r37 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    store i32 %r38, ptr %r35
    %r39 = load i32, ptr %r5
    %r40 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r39
    %r41 = load i32, ptr %r19
    store i32 %r41, ptr %r40
    %r42 = load i32, ptr %r0
    %r43 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r42
    %r44 = load i32, ptr %r43
    store i32 %r44, ptr %r19
    %r45 = load i32, ptr %r0
    %r46 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r45
    %r47 = load i32, ptr %r5
    %r48 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r47
    %r49 = load i32, ptr %r48
    store i32 %r49, ptr %r46
    %r50 = load i32, ptr %r5
    %r51 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r50
    %r52 = load i32, ptr %r19
    store i32 %r52, ptr %r51
    br label %L9
L9:
    %r53 = load i32, ptr %r5
    %r54 = add i32 1,0
    %r55 = add i32 %r53,%r54
    store i32 %r55, ptr %r5
    br label %L5
L10:
    %r60 = load i32, ptr %r0
    %r61 = load i32, ptr @n
    %r62 = icmp sle i32 %r60,%r61
    br i1 %r62, label %L11, label %L12
L11:
    %r63 = load i32, ptr %r0
    %r64 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r63
    %r65 = load i32, ptr %r0
    store i32 %r65, ptr %r64
    %r66 = load i32, ptr %r0
    %r67 = add i32 1,0
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr %r0
    br label %L10
L12:
    %r69 = add i32 0,0
    store i32 %r69, ptr %r0
    %r71 = add i32 0,0
    store i32 %r71, ptr %r70
    br label %L13
L13:
    %r72 = load i32, ptr %r0
    %r73 = load i32, ptr @m
    %r74 = icmp slt i32 %r72,%r73
    br i1 %r74, label %L14, label %L15
L14:
    %r75 = load i32, ptr %r0
    %r76 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r75
    %r77 = load i32, ptr %r76
    %r78 = load i32, ptr %r0
    %r79 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r78
    %r80 = load i32, ptr %r79
    %r81 = call i32 @same(i32 %r77,i32 %r80)
    %r82 = icmp ne i32 %r81,0
    br i1 %r82, label %L16, label %L17
L15:
    %r99 = load i32, ptr %r70
    ret i32 %r99
L16:
    br label %L13
L17:
    %r83 = load i32, ptr %r70
    %r84 = load i32, ptr %r0
    %r85 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r84
    %r86 = load i32, ptr %r85
    %r87 = add i32 %r83,%r86
    store i32 %r87, ptr %r70
    %r88 = load i32, ptr %r0
    %r89 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r88
    %r90 = load i32, ptr %r89
    %r91 = call i32 @find(i32 %r90)
    %r92 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r91
    %r93 = load i32, ptr %r0
    %r94 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r93
    %r95 = load i32, ptr %r94
    store i32 %r95, ptr %r92
    %r96 = load i32, ptr %r0
    %r97 = add i32 1,0
    %r98 = add i32 %r96,%r97
    store i32 %r98, ptr %r0
    br label %L13
}
define i32 @main()
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @quick_read()
    store i32 %r1, ptr %r0
    %r3 = call i32 @quick_read()
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L2
L2:
    %r6 = load i32, ptr %r4
    %r7 = load i32, ptr %r2
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L4
L3:
    %r9 = load i32, ptr %r4
    %r10 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r9
    %r11 = call i32 @quick_read()
    store i32 %r11, ptr %r10
    %r12 = load i32, ptr %r4
    %r13 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r12
    %r14 = call i32 @quick_read()
    store i32 %r14, ptr %r13
    %r15 = load i32, ptr %r4
    %r16 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r15
    %r17 = call i32 @quick_read()
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r4
    %r19 = add i32 1,0
    %r20 = add i32 %r18,%r19
    store i32 %r20, ptr %r4
    br label %L2
L4:
    %r21 = call i32 @prim()
    ret i32 %r21
}
