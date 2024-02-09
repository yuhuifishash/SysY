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
@array = global [110x i32] zeroinitializer
@n = global i32 zeroinitializer
define void @init(i32 %r0)
{
L0:
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
    %r6 = load i32, ptr %r1
    %r7 = mul i32 %r5,%r6
    %r8 = add i32 1,0
    %r9 = add i32 %r7,%r8
    %r10 = icmp sle i32 %r4,%r9
    br i1 %r10, label %L3, label %L4
L3:
    %r11 = load i32, ptr %r2
    %r12 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r11
    %r13 = add i32 1,0
    %r14 = sub i32 0,%r13
    store i32 %r14, ptr %r12
    %r15 = load i32, ptr %r2
    %r16 = add i32 1,0
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r2
    br label %L2
L4:
    ret void
}
define i32 @main()
{
L0:
    %r135 = alloca i32
    %r30 = alloca i32
    %r17 = alloca i32
    %r14 = alloca i32
    %r12 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    store i32 0, ptr %r1
    store i32 0, ptr %r2
    store i32 0, ptr %r3
    %r4 = add i32 1,0
    store i32 %r4, ptr %r0
    br label %L2
L2:
    %r5 = load i32, ptr %r0
    %r6 = icmp ne i32 %r5,0
    br i1 %r6, label %L3, label %L4
L3:
    %r7 = load i32, ptr %r0
    %r8 = add i32 1,0
    %r9 = sub i32 %r7,%r8
    store i32 %r9, ptr %r0
    %r10 = add i32 4,0
    store i32 %r10, ptr @n
    %r11 = add i32 10,0
    store i32 %r11, ptr %r1
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr @n
    call void @init(i32 %r16)
    %r18 = load i32, ptr @n
    %r19 = load i32, ptr @n
    %r20 = mul i32 %r18,%r19
    %r21 = add i32 1,0
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r17
    br label %L5
L4:
    %r149 = add i32 0,0
    ret i32 %r149
L5:
    %r23 = load i32, ptr %r12
    %r24 = load i32, ptr %r1
    %r25 = icmp slt i32 %r23,%r24
    br i1 %r25, label %L6, label %L7
L6:
    %r26 = call i32 @getint()
    store i32 %r26, ptr %r2
    %r27 = call i32 @getint()
    store i32 %r27, ptr %r3
    %r28 = load i32, ptr %r14
    %r29 = icmp eq i32 %r28,0
    br i1 %r29, label %L8, label %L9
L7:
    %r144 = load i32, ptr %r14
    %r145 = icmp eq i32 %r144,0
    br i1 %r145, label %L30, label %L31
L8:
    %r31 = load i32, ptr @n
    %r32 = load i32, ptr %r2
    %r33 = add i32 1,0
    %r34 = sub i32 %r32,%r33
    %r35 = mul i32 %r31,%r34
    %r36 = load i32, ptr %r3
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r30
    %r38 = load i32, ptr %r30
    %r39 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r38
    %r40 = load i32, ptr %r30
    store i32 %r40, ptr %r39
    %r41 = load i32, ptr %r2
    %r42 = add i32 1,0
    %r43 = icmp eq i32 %r41,%r42
    br i1 %r43, label %L10, label %L11
L9:
    %r141 = load i32, ptr %r12
    %r142 = add i32 1,0
    %r143 = add i32 %r141,%r142
    store i32 %r143, ptr %r12
    br label %L5
L10:
    %r44 = add i32 0,0
    %r45 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r44
    %r46 = add i32 0,0
    store i32 %r46, ptr %r45
    %r47 = load i32, ptr %r30
    %r48 = add i32 0,0
    call void @mmerge(i32 %r47,i32 %r48)
    br label %L11
L11:
    %r49 = load i32, ptr %r2
    %r50 = load i32, ptr @n
    %r51 = icmp eq i32 %r49,%r50
    br i1 %r51, label %L12, label %L13
L12:
    %r52 = load i32, ptr %r17
    %r53 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r52
    %r54 = load i32, ptr %r17
    store i32 %r54, ptr %r53
    %r55 = load i32, ptr %r30
    %r56 = load i32, ptr %r17
    call void @mmerge(i32 %r55,i32 %r56)
    br label %L13
L13:
    %r57 = load i32, ptr %r3
    %r58 = load i32, ptr @n
    %r59 = icmp slt i32 %r57,%r58
    br i1 %r59, label %L16, label %L15
L14:
    %r68 = load i32, ptr %r30
    %r69 = load i32, ptr %r30
    %r70 = add i32 1,0
    %r71 = add i32 %r69,%r70
    call void @mmerge(i32 %r68,i32 %r71)
    br label %L15
L15:
    %r72 = load i32, ptr %r3
    %r73 = add i32 1,0
    %r74 = icmp sgt i32 %r72,%r73
    br i1 %r74, label %L19, label %L18
L16:
    %r60 = load i32, ptr %r30
    %r61 = add i32 1,0
    %r62 = add i32 %r60,%r61
    %r63 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = add i32 1,0
    %r66 = sub i32 0,%r65
    %r67 = icmp ne i32 %r64,%r66
    br i1 %r67, label %L14, label %L15
L17:
    %r83 = load i32, ptr %r30
    %r84 = load i32, ptr %r30
    %r85 = add i32 1,0
    %r86 = sub i32 %r84,%r85
    call void @mmerge(i32 %r83,i32 %r86)
    br label %L18
L18:
    %r87 = load i32, ptr %r2
    %r88 = load i32, ptr @n
    %r89 = icmp slt i32 %r87,%r88
    br i1 %r89, label %L22, label %L21
L19:
    %r75 = load i32, ptr %r30
    %r76 = add i32 1,0
    %r77 = sub i32 %r75,%r76
    %r78 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r77
    %r79 = load i32, ptr %r78
    %r80 = add i32 1,0
    %r81 = sub i32 0,%r80
    %r82 = icmp ne i32 %r79,%r81
    br i1 %r82, label %L17, label %L18
L20:
    %r98 = load i32, ptr %r30
    %r99 = load i32, ptr %r30
    %r100 = load i32, ptr @n
    %r101 = add i32 %r99,%r100
    call void @mmerge(i32 %r98,i32 %r101)
    br label %L21
L21:
    %r102 = load i32, ptr %r2
    %r103 = add i32 1,0
    %r104 = icmp sgt i32 %r102,%r103
    br i1 %r104, label %L25, label %L24
L22:
    %r90 = load i32, ptr %r30
    %r91 = load i32, ptr @n
    %r92 = add i32 %r90,%r91
    %r93 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r92
    %r94 = load i32, ptr %r93
    %r95 = add i32 1,0
    %r96 = sub i32 0,%r95
    %r97 = icmp ne i32 %r94,%r96
    br i1 %r97, label %L20, label %L21
L23:
    %r113 = load i32, ptr %r30
    %r114 = load i32, ptr %r30
    %r115 = load i32, ptr @n
    %r116 = sub i32 %r114,%r115
    call void @mmerge(i32 %r113,i32 %r116)
    br label %L24
L24:
    %r117 = add i32 0,0
    %r118 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r117
    %r119 = load i32, ptr %r118
    %r120 = add i32 1,0
    %r121 = sub i32 0,%r120
    %r122 = icmp ne i32 %r119,%r121
    br i1 %r122, label %L29, label %L27
L25:
    %r105 = load i32, ptr %r30
    %r106 = load i32, ptr @n
    %r107 = sub i32 %r105,%r106
    %r108 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r107
    %r109 = load i32, ptr %r108
    %r110 = add i32 1,0
    %r111 = sub i32 0,%r110
    %r112 = icmp ne i32 %r109,%r111
    br i1 %r112, label %L23, label %L24
L26:
    %r134 = add i32 1,0
    store i32 %r134, ptr %r14
    %r136 = load i32, ptr %r12
    %r137 = add i32 1,0
    %r138 = add i32 %r136,%r137
    store i32 %r138, ptr %r135
    %r139 = load i32, ptr %r135
    call void @putint(i32 %r139)
    %r140 = add i32 10,0
    call void @putch(i32 %r140)
    br label %L27
L27:
    br label %L9
L28:
    %r129 = add i32 0,0
    %r130 = call i32 @findfa(i32 %r129)
    %r131 = load i32, ptr %r17
    %r132 = call i32 @findfa(i32 %r131)
    %r133 = icmp eq i32 %r130,%r132
    br i1 %r133, label %L26, label %L27
L29:
    %r123 = load i32, ptr %r17
    %r124 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r123
    %r125 = load i32, ptr %r124
    %r126 = add i32 1,0
    %r127 = sub i32 0,%r126
    %r128 = icmp ne i32 %r125,%r127
    br i1 %r128, label %L28, label %L27
L30:
    %r146 = add i32 1,0
    %r147 = sub i32 0,%r146
    call void @putint(i32 %r147)
    %r148 = add i32 10,0
    call void @putch(i32 %r148)
    br label %L31
L31:
    br label %L2
}
define void @mmerge(i32 %r0,i32 %r1)
{
L0:
    %r7 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r5 = load i32, ptr %r2
    %r6 = call i32 @findfa(i32 %r5)
    store i32 %r6, ptr %r4
    %r8 = load i32, ptr %r3
    %r9 = call i32 @findfa(i32 %r8)
    store i32 %r9, ptr %r7
    %r10 = load i32, ptr %r4
    %r11 = load i32, ptr %r7
    %r12 = icmp ne i32 %r10,%r11
    br i1 %r12, label %L2, label %L3
L2:
    %r13 = load i32, ptr %r4
    %r14 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r13
    %r15 = load i32, ptr %r7
    store i32 %r15, ptr %r14
    br label %L3
L3:
    ret void
}
define i32 @findfa(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r2
    %r4 = load i32, ptr %r3
    %r5 = load i32, ptr %r1
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r7 = load i32, ptr %r1
    ret i32 %r7
    br label %L4
L3:
    %r8 = load i32, ptr %r1
    %r9 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r8
    %r10 = load i32, ptr %r1
    %r11 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = call i32 @findfa(i32 %r12)
    store i32 %r13, ptr %r9
    %r14 = load i32, ptr %r1
    %r15 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r14
    %r16 = load i32, ptr %r15
    ret i32 %r16
    br label %L4
L4:
    ret i32 0
}
