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
define i32 @find(i32 %r0)
{
L0:
    %r10 = alloca i32
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
    %r9 = load i32, ptr %r1
    ret i32 %r9
L3:
    %r11 = load i32, ptr %r1
    %r12 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = call i32 @find(i32 %r13)
    store i32 %r14, ptr %r10
    %r15 = load i32, ptr %r10
    %r16 = load i32, ptr %r1
    %r17 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r16
    store i32 %r15, ptr %r17
    %r18 = load i32, ptr %r10
    ret i32 %r18
}
define i32 @same(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
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
    %r13 = add i32 0,1
    ret i32 %r13
L3:
    %r14 = add i32 0,0
    ret i32 %r14
}
define i32 @prim()
{
L0:
    %r93 = alloca i32
    %r25 = alloca i32
    %r7 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr %r0
    %r3 = load i32, ptr @m
    %r4 = icmp slt i32 %r2,%r3
    br i1 %r4, label %L3, label %L5
L3:
    %r8 = load i32, ptr %r0
    %r9 = add i32 0,1
    %r10 = add i32 %r8,%r9
    store i32 %r10, ptr %r7
    %r11 = load i32, ptr %r7
    %r12 = load i32, ptr @m
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L7, label %L9
L4:
    %r70 = load i32, ptr %r0
    %r71 = load i32, ptr @m
    %r72 = icmp slt i32 %r70,%r71
    br i1 %r72, label %L3, label %L5
L5:
    %r75 = add i32 0,1
    store i32 %r75, ptr %r0
    %r76 = load i32, ptr %r0
    %r77 = load i32, ptr @n
    %r78 = icmp sle i32 %r76,%r77
    br i1 %r78, label %L13, label %L15
L7:
    %r16 = load i32, ptr %r0
    %r17 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r16
    %r18 = load i32, ptr %r17
    %r19 = load i32, ptr %r7
    %r20 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = icmp sgt i32 %r18,%r21
    br i1 %r22, label %L10, label %L11
L8:
    %r62 = load i32, ptr %r7
    %r63 = load i32, ptr @m
    %r64 = icmp slt i32 %r62,%r63
    br i1 %r64, label %L7, label %L9
L9:
    %r67 = load i32, ptr %r0
    %r68 = add i32 0,1
    %r69 = add i32 %r67,%r68
    store i32 %r69, ptr %r0
    br label %L4
L10:
    %r26 = load i32, ptr %r0
    %r27 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r26
    %r28 = load i32, ptr %r27
    store i32 %r28, ptr %r25
    %r29 = load i32, ptr %r7
    %r30 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = load i32, ptr %r0
    %r33 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r32
    store i32 %r31, ptr %r33
    %r34 = load i32, ptr %r25
    %r35 = load i32, ptr %r7
    %r36 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r35
    store i32 %r34, ptr %r36
    %r37 = load i32, ptr %r0
    %r38 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r37
    %r39 = load i32, ptr %r38
    store i32 %r39, ptr %r25
    %r40 = load i32, ptr %r7
    %r41 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r40
    %r42 = load i32, ptr %r41
    %r43 = load i32, ptr %r0
    %r44 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r43
    store i32 %r42, ptr %r44
    %r45 = load i32, ptr %r25
    %r46 = load i32, ptr %r7
    %r47 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r46
    store i32 %r45, ptr %r47
    %r48 = load i32, ptr %r0
    %r49 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    store i32 %r50, ptr %r25
    %r51 = load i32, ptr %r7
    %r52 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = load i32, ptr %r0
    %r55 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r54
    store i32 %r53, ptr %r55
    %r56 = load i32, ptr %r25
    %r57 = load i32, ptr %r7
    %r58 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r57
    store i32 %r56, ptr %r58
    br label %L11
L11:
    %r59 = load i32, ptr %r7
    %r60 = add i32 0,1
    %r61 = add i32 %r59,%r60
    store i32 %r61, ptr %r7
    br label %L8
L13:
    %r81 = load i32, ptr %r0
    %r82 = load i32, ptr %r0
    %r83 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r82
    store i32 %r81, ptr %r83
    %r84 = load i32, ptr %r0
    %r85 = add i32 0,1
    %r86 = add i32 %r84,%r85
    store i32 %r86, ptr %r0
    br label %L14
L14:
    %r87 = load i32, ptr %r0
    %r88 = load i32, ptr @n
    %r89 = icmp sle i32 %r87,%r88
    br i1 %r89, label %L13, label %L15
L15:
    %r92 = add i32 0,0
    store i32 %r92, ptr %r0
    %r94 = add i32 0,0
    store i32 %r94, ptr %r93
    %r95 = load i32, ptr %r0
    %r96 = load i32, ptr @m
    %r97 = icmp slt i32 %r95,%r96
    br i1 %r97, label %L17, label %L19
L17:
    %r100 = load i32, ptr %r0
    %r101 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r100
    %r102 = load i32, ptr %r101
    %r103 = load i32, ptr %r0
    %r104 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r103
    %r105 = load i32, ptr %r104
    %r106 = call i32 @same(i32 %r102,i32 %r105)
    %r107 = icmp ne i32 %r106,0
    br i1 %r107, label %L20, label %L21
L18:
    %r124 = load i32, ptr %r0
    %r125 = load i32, ptr @m
    %r126 = icmp slt i32 %r124,%r125
    br i1 %r126, label %L17, label %L19
L19:
    %r129 = load i32, ptr %r93
    ret i32 %r129
L20:
    br label %L18
L21:
    %r108 = load i32, ptr %r93
    %r109 = load i32, ptr %r0
    %r110 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r109
    %r111 = load i32, ptr %r110
    %r112 = add i32 %r108,%r111
    store i32 %r112, ptr %r93
    %r113 = load i32, ptr %r0
    %r114 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r113
    %r115 = load i32, ptr %r114
    %r116 = load i32, ptr %r0
    %r117 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r116
    %r118 = load i32, ptr %r117
    %r119 = call i32 @find(i32 %r118)
    %r120 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r119
    store i32 %r115, ptr %r120
    %r121 = load i32, ptr %r0
    %r122 = add i32 0,1
    %r123 = add i32 %r121,%r122
    store i32 %r123, ptr %r0
    br label %L18
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
    %r6 = load i32, ptr %r4
    %r7 = load i32, ptr %r2
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L5
L3:
    %r11 = call i32 @quick_read()
    %r12 = load i32, ptr %r4
    %r13 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r12
    store i32 %r11, ptr %r13
    %r14 = call i32 @quick_read()
    %r15 = load i32, ptr %r4
    %r16 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = call i32 @quick_read()
    %r18 = load i32, ptr %r4
    %r19 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r18
    store i32 %r17, ptr %r19
    %r20 = load i32, ptr %r4
    %r21 = add i32 0,1
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r4
    br label %L4
L4:
    %r23 = load i32, ptr %r4
    %r24 = load i32, ptr %r2
    %r25 = icmp slt i32 %r23,%r24
    br i1 %r25, label %L3, label %L5
L5:
    %r28 = call i32 @prim()
    ret i32 %r28
}
