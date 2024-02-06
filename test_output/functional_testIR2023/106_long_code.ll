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
@n = global i32 zeroinitializer
define i32 @QuickSort(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r130 = alloca i32
    %r16 = alloca i32
    %r13 = alloca i32
    %r10 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = alloca i32
    store i32 %r2, ptr %r4
    br label %L1
L1:
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr %r4
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    %r12 = load i32, ptr %r3
    store i32 %r12, ptr %r10
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    %r15 = load i32, ptr %r4
    store i32 %r15, ptr %r13
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r3
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    store i32 %r20, ptr %r16
    %r21 = load i32, ptr %r10
    %r22 = load i32, ptr %r13
    %r23 = icmp slt i32 %r21,%r22
    br i1 %r23, label %L5, label %L7
L3:
    %r146 = add i32 0,0
    ret i32 %r146
L5:
    %r26 = load i32, ptr %r10
    %r27 = load i32, ptr %r13
    %r28 = icmp slt i32 %r26,%r27
    br i1 %r28, label %L12, label %L11
L6:
    %r122 = load i32, ptr %r10
    %r123 = load i32, ptr %r13
    %r124 = icmp slt i32 %r122,%r123
    br i1 %r124, label %L5, label %L7
L7:
    %r127 = load i32, ptr %r16
    %r128 = load i32, ptr %r10
    %r129 = getelementptr i32, ptr %r0, i32 %r128
    store i32 %r127, ptr %r129
    %r131 = add i32 0,0
    store i32 %r131, ptr %r130
    %r132 = load i32, ptr %r10
    %r133 = add i32 0,1
    %r134 = sub i32 %r132,%r133
    store i32 %r134, ptr %r130
    %r135 = getelementptr i32, ptr %r0
    %r136 = load i32, ptr %r3
    %r137 = load i32, ptr %r130
    %r138 = call i32 @QuickSort(ptr %r135,i32 %r136,i32 %r137)
    store i32 %r138, ptr %r130
    %r139 = load i32, ptr %r10
    %r140 = add i32 0,1
    %r141 = add i32 %r139,%r140
    store i32 %r141, ptr %r130
    %r142 = getelementptr i32, ptr %r0
    %r143 = load i32, ptr %r130
    %r144 = load i32, ptr %r4
    %r145 = call i32 @QuickSort(ptr %r142,i32 %r143,i32 %r144)
    store i32 %r145, ptr %r130
    br label %L3
L9:
    %r43 = load i32, ptr %r13
    %r44 = add i32 0,1
    %r45 = sub i32 %r43,%r44
    store i32 %r45, ptr %r13
    br label %L10
L10:
    %r46 = load i32, ptr %r10
    %r47 = load i32, ptr %r13
    %r48 = icmp slt i32 %r46,%r47
    br i1 %r48, label %L14, label %L11
L11:
    %r63 = load i32, ptr %r10
    %r64 = load i32, ptr %r13
    %r65 = icmp slt i32 %r63,%r64
    br i1 %r65, label %L16, label %L17
L12:
    %r31 = load i32, ptr %r13
    %r32 = getelementptr i32, ptr %r0, i32 %r31
    %r33 = load i32, ptr %r32
    %r34 = load i32, ptr %r16
    %r35 = add i32 0,1
    %r36 = sub i32 %r34,%r35
    %r37 = icmp sgt i32 %r33,%r36
    br i1 %r37, label %L9, label %L11
L14:
    %r51 = load i32, ptr %r13
    %r52 = getelementptr i32, ptr %r0, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = load i32, ptr %r16
    %r55 = add i32 0,1
    %r56 = sub i32 %r54,%r55
    %r57 = icmp sgt i32 %r53,%r56
    br i1 %r57, label %L9, label %L11
L16:
    %r68 = load i32, ptr %r13
    %r69 = getelementptr i32, ptr %r0, i32 %r68
    %r70 = load i32, ptr %r69
    %r71 = load i32, ptr %r10
    %r72 = getelementptr i32, ptr %r0, i32 %r71
    store i32 %r70, ptr %r72
    %r73 = load i32, ptr %r10
    %r74 = add i32 0,1
    %r75 = add i32 %r73,%r74
    store i32 %r75, ptr %r10
    br label %L17
L17:
    %r76 = load i32, ptr %r10
    %r77 = load i32, ptr %r13
    %r78 = icmp slt i32 %r76,%r77
    br i1 %r78, label %L22, label %L21
L19:
    %r91 = load i32, ptr %r10
    %r92 = add i32 0,1
    %r93 = add i32 %r91,%r92
    store i32 %r93, ptr %r10
    br label %L20
L20:
    %r94 = load i32, ptr %r10
    %r95 = load i32, ptr %r13
    %r96 = icmp slt i32 %r94,%r95
    br i1 %r96, label %L24, label %L21
L21:
    %r109 = load i32, ptr %r10
    %r110 = load i32, ptr %r13
    %r111 = icmp slt i32 %r109,%r110
    br i1 %r111, label %L26, label %L27
L22:
    %r81 = load i32, ptr %r10
    %r82 = getelementptr i32, ptr %r0, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = load i32, ptr %r16
    %r85 = icmp slt i32 %r83,%r84
    br i1 %r85, label %L19, label %L21
L24:
    %r99 = load i32, ptr %r10
    %r100 = getelementptr i32, ptr %r0, i32 %r99
    %r101 = load i32, ptr %r100
    %r102 = load i32, ptr %r16
    %r103 = icmp slt i32 %r101,%r102
    br i1 %r103, label %L19, label %L21
L26:
    %r114 = load i32, ptr %r10
    %r115 = getelementptr i32, ptr %r0, i32 %r114
    %r116 = load i32, ptr %r115
    %r117 = load i32, ptr %r13
    %r118 = getelementptr i32, ptr %r0, i32 %r117
    store i32 %r116, ptr %r118
    %r119 = load i32, ptr %r13
    %r120 = add i32 0,1
    %r121 = sub i32 %r119,%r120
    store i32 %r121, ptr %r13
    br label %L27
L27:
    br label %L6
}
define i32 @insertsort(ptr %r0)
{
L0:
    %r14 = alloca i32
    %r9 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r3 = add i32 0,1
    store i32 %r3, ptr %r1
    %r4 = load i32, ptr %r1
    %r5 = load i32, ptr @n
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L5
L3:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r1
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    store i32 %r13, ptr %r9
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r1
    %r17 = add i32 0,1
    %r18 = sub i32 %r16,%r17
    store i32 %r18, ptr %r14
    %r19 = load i32, ptr %r14
    %r20 = add i32 0,1
    %r21 = sub i32 0,%r20
    %r22 = icmp sgt i32 %r19,%r21
    br i1 %r22, label %L10, label %L9
L4:
    %r69 = load i32, ptr %r1
    %r70 = load i32, ptr @n
    %r71 = icmp slt i32 %r69,%r70
    br i1 %r71, label %L3, label %L5
L5:
    %r74 = add i32 0,0
    ret i32 %r74
L7:
    %r35 = load i32, ptr %r14
    %r36 = getelementptr i32, ptr %r0, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = load i32, ptr %r14
    %r39 = add i32 0,1
    %r40 = add i32 %r38,%r39
    %r41 = getelementptr i32, ptr %r0, i32 %r40
    store i32 %r37, ptr %r41
    %r42 = load i32, ptr %r14
    %r43 = add i32 0,1
    %r44 = sub i32 %r42,%r43
    store i32 %r44, ptr %r14
    br label %L8
L8:
    %r45 = load i32, ptr %r14
    %r46 = add i32 0,1
    %r47 = sub i32 0,%r46
    %r48 = icmp sgt i32 %r45,%r47
    br i1 %r48, label %L12, label %L9
L9:
    %r61 = load i32, ptr %r9
    %r62 = load i32, ptr %r14
    %r63 = add i32 0,1
    %r64 = add i32 %r62,%r63
    %r65 = getelementptr i32, ptr %r0, i32 %r64
    store i32 %r61, ptr %r65
    %r66 = load i32, ptr %r1
    %r67 = add i32 0,1
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr %r1
    br label %L4
L10:
    %r25 = load i32, ptr %r9
    %r26 = load i32, ptr %r14
    %r27 = getelementptr i32, ptr %r0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = icmp slt i32 %r25,%r28
    br i1 %r29, label %L7, label %L9
L12:
    %r51 = load i32, ptr %r9
    %r52 = load i32, ptr %r14
    %r53 = getelementptr i32, ptr %r0, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = icmp slt i32 %r51,%r54
    br i1 %r55, label %L7, label %L9
}
define i32 @bubblesort(ptr %r0)
{
L0:
    %r34 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r1
    %r6 = load i32, ptr %r1
    %r7 = load i32, ptr @n
    %r8 = add i32 0,1
    %r9 = sub i32 %r7,%r8
    %r10 = icmp slt i32 %r6,%r9
    br i1 %r10, label %L3, label %L5
L3:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r3
    %r14 = load i32, ptr %r3
    %r15 = load i32, ptr @n
    %r16 = load i32, ptr %r1
    %r17 = sub i32 %r15,%r16
    %r18 = add i32 0,1
    %r19 = sub i32 %r17,%r18
    %r20 = icmp slt i32 %r14,%r19
    br i1 %r20, label %L7, label %L9
L4:
    %r66 = load i32, ptr %r1
    %r67 = load i32, ptr @n
    %r68 = add i32 0,1
    %r69 = sub i32 %r67,%r68
    %r70 = icmp slt i32 %r66,%r69
    br i1 %r70, label %L3, label %L5
L5:
    %r73 = add i32 0,0
    ret i32 %r73
L7:
    %r23 = load i32, ptr %r3
    %r24 = getelementptr i32, ptr %r0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = load i32, ptr %r3
    %r27 = add i32 0,1
    %r28 = add i32 %r26,%r27
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = icmp sgt i32 %r25,%r30
    br i1 %r31, label %L10, label %L11
L8:
    %r54 = load i32, ptr %r3
    %r55 = load i32, ptr @n
    %r56 = load i32, ptr %r1
    %r57 = sub i32 %r55,%r56
    %r58 = add i32 0,1
    %r59 = sub i32 %r57,%r58
    %r60 = icmp slt i32 %r54,%r59
    br i1 %r60, label %L7, label %L9
L9:
    %r63 = load i32, ptr %r1
    %r64 = add i32 0,1
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r1
    br label %L4
L10:
    %r35 = add i32 0,0
    store i32 %r35, ptr %r34
    %r36 = load i32, ptr %r3
    %r37 = add i32 0,1
    %r38 = add i32 %r36,%r37
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r39
    store i32 %r40, ptr %r34
    %r41 = load i32, ptr %r3
    %r42 = getelementptr i32, ptr %r0, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = load i32, ptr %r3
    %r45 = add i32 0,1
    %r46 = add i32 %r44,%r45
    %r47 = getelementptr i32, ptr %r0, i32 %r46
    store i32 %r43, ptr %r47
    %r48 = load i32, ptr %r34
    %r49 = load i32, ptr %r3
    %r50 = getelementptr i32, ptr %r0, i32 %r49
    store i32 %r48, ptr %r50
    br label %L11
L11:
    %r51 = load i32, ptr %r3
    %r52 = add i32 0,1
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr %r3
    br label %L8
}
define i32 @getMid(ptr %r0)
{
L0:
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r3 = load i32, ptr @n
    %r4 = add i32 0,2
    %r5 = srem i32 %r3,%r4
    %r6 = add i32 0,0
    %r7 = icmp eq i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r10 = load i32, ptr @n
    %r11 = add i32 0,2
    %r12 = sdiv i32 %r10,%r11
    store i32 %r12, ptr %r1
    %r13 = load i32, ptr %r1
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = load i32, ptr %r1
    %r17 = add i32 0,1
    %r18 = sub i32 %r16,%r17
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = add i32 %r15,%r20
    %r22 = add i32 0,2
    %r23 = sdiv i32 %r21,%r22
    ret i32 %r23
L3:
    %r24 = load i32, ptr @n
    %r25 = add i32 0,2
    %r26 = sdiv i32 %r24,%r25
    store i32 %r26, ptr %r1
    %r27 = load i32, ptr %r1
    %r28 = getelementptr i32, ptr %r0, i32 %r27
    %r29 = load i32, ptr %r28
    ret i32 %r29
}
define i32 @getMost(ptr %r0)
{
L0:
    %r32 = alloca i32
    %r24 = alloca i32
    %r22 = alloca i32
    %r2 = alloca i32
    %r1 = alloca [1000 x i32]
    br label %L1
L1:
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r2
    %r5 = load i32, ptr %r2
    %r6 = add i32 0,1000
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L3, label %L5
L3:
    %r10 = add i32 0,0
    %r11 = load i32, ptr %r2
    %r12 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r11
    store i32 %r10, ptr %r12
    %r13 = load i32, ptr %r2
    %r14 = add i32 0,1
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr %r2
    br label %L4
L4:
    %r16 = load i32, ptr %r2
    %r17 = add i32 0,1000
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L3, label %L5
L5:
    %r21 = add i32 0,0
    store i32 %r21, ptr %r2
    %r23 = add i32 0,0
    store i32 %r23, ptr %r22
    %r25 = add i32 0,0
    store i32 %r25, ptr %r24
    %r26 = add i32 0,0
    store i32 %r26, ptr %r22
    %r27 = load i32, ptr %r2
    %r28 = load i32, ptr @n
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L7, label %L9
L7:
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r34 = load i32, ptr %r2
    %r35 = getelementptr i32, ptr %r0, i32 %r34
    %r36 = load i32, ptr %r35
    store i32 %r36, ptr %r32
    %r37 = load i32, ptr %r32
    %r38 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r37
    %r39 = load i32, ptr %r38
    %r40 = add i32 0,1
    %r41 = add i32 %r39,%r40
    %r42 = load i32, ptr %r32
    %r43 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r42
    store i32 %r41, ptr %r43
    %r44 = load i32, ptr %r32
    %r45 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = load i32, ptr %r22
    %r48 = icmp sgt i32 %r46,%r47
    br i1 %r48, label %L10, label %L11
L8:
    %r58 = load i32, ptr %r2
    %r59 = load i32, ptr @n
    %r60 = icmp slt i32 %r58,%r59
    br i1 %r60, label %L7, label %L9
L9:
    %r63 = load i32, ptr %r24
    ret i32 %r63
L10:
    %r51 = load i32, ptr %r32
    %r52 = getelementptr [1000 x i32], ptr %r1, i32 0, i32 %r51
    %r53 = load i32, ptr %r52
    store i32 %r53, ptr %r22
    %r54 = load i32, ptr %r32
    store i32 %r54, ptr %r24
    br label %L11
L11:
    %r55 = load i32, ptr %r2
    %r56 = add i32 0,1
    %r57 = add i32 %r55,%r56
    store i32 %r57, ptr %r2
    br label %L8
}
define i32 @arrCopy(ptr %r0,ptr %r1)
{
L0:
    %r2 = alloca i32
    br label %L1
L1:
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r2
    %r5 = load i32, ptr %r2
    %r6 = load i32, ptr @n
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L3, label %L5
L3:
    %r10 = load i32, ptr %r2
    %r11 = getelementptr i32, ptr %r0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = load i32, ptr %r2
    %r14 = getelementptr i32, ptr %r1, i32 %r13
    store i32 %r12, ptr %r14
    %r15 = load i32, ptr %r2
    %r16 = add i32 0,1
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r2
    br label %L4
L4:
    %r18 = load i32, ptr %r2
    %r19 = load i32, ptr @n
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L3, label %L5
L5:
    %r23 = add i32 0,0
    ret i32 %r23
}
define i32 @revert(ptr %r0)
{
L0:
    %r5 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 0,0
    store i32 %r7, ptr %r3
    %r8 = add i32 0,0
    store i32 %r8, ptr %r5
    %r9 = load i32, ptr %r3
    %r10 = load i32, ptr %r5
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L3, label %L5
L3:
    %r14 = load i32, ptr %r3
    %r15 = getelementptr i32, ptr %r0, i32 %r14
    %r16 = load i32, ptr %r15
    store i32 %r16, ptr %r1
    %r17 = load i32, ptr %r5
    %r18 = getelementptr i32, ptr %r0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = load i32, ptr %r3
    %r21 = getelementptr i32, ptr %r0, i32 %r20
    store i32 %r19, ptr %r21
    %r22 = load i32, ptr %r1
    %r23 = load i32, ptr %r5
    %r24 = getelementptr i32, ptr %r0, i32 %r23
    store i32 %r22, ptr %r24
    %r25 = load i32, ptr %r3
    %r26 = add i32 0,1
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r3
    %r28 = load i32, ptr %r5
    %r29 = add i32 0,1
    %r30 = sub i32 %r28,%r29
    store i32 %r30, ptr %r5
    br label %L4
L4:
    %r31 = load i32, ptr %r3
    %r32 = load i32, ptr %r5
    %r33 = icmp slt i32 %r31,%r32
    br i1 %r33, label %L3, label %L5
L5:
    %r36 = add i32 0,0
    ret i32 %r36
}
define i32 @calSum(ptr %r0,i32 %r1)
{
L0:
    %r6 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r3
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = add i32 0,0
    store i32 %r8, ptr %r6
    %r9 = load i32, ptr %r6
    %r10 = load i32, ptr @n
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L3, label %L5
L3:
    %r14 = load i32, ptr %r3
    %r15 = load i32, ptr %r6
    %r16 = getelementptr i32, ptr %r0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = add i32 %r14,%r17
    store i32 %r18, ptr %r3
    %r19 = load i32, ptr %r6
    %r20 = load i32, ptr %r2
    %r21 = srem i32 %r19,%r20
    %r22 = load i32, ptr %r2
    %r23 = add i32 0,1
    %r24 = sub i32 %r22,%r23
    %r25 = icmp ne i32 %r21,%r24
    br i1 %r25, label %L6, label %L7
L4:
    %r38 = load i32, ptr %r6
    %r39 = load i32, ptr @n
    %r40 = icmp slt i32 %r38,%r39
    br i1 %r40, label %L3, label %L5
L5:
    %r43 = add i32 0,0
    ret i32 %r43
L6:
    %r28 = add i32 0,0
    %r29 = load i32, ptr %r6
    %r30 = getelementptr i32, ptr %r0, i32 %r29
    store i32 %r28, ptr %r30
    br label %L8
L7:
    %r31 = load i32, ptr %r3
    %r32 = load i32, ptr %r6
    %r33 = getelementptr i32, ptr %r0, i32 %r32
    store i32 %r31, ptr %r33
    %r34 = add i32 0,0
    store i32 %r34, ptr %r3
    br label %L8
L8:
    %r35 = load i32, ptr %r6
    %r36 = add i32 0,1
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r6
    br label %L4
}
define i32 @avgPooling(ptr %r0,i32 %r1)
{
L0:
    %r9 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 0,0
    store i32 %r7, ptr %r5
    %r8 = add i32 0,0
    store i32 %r8, ptr %r3
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r5
    %r12 = load i32, ptr @n
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L5
L3:
    %r16 = load i32, ptr %r5
    %r17 = load i32, ptr %r2
    %r18 = add i32 0,1
    %r19 = sub i32 %r17,%r18
    %r20 = icmp slt i32 %r16,%r19
    br i1 %r20, label %L6, label %L7
L4:
    %r69 = load i32, ptr %r5
    %r70 = load i32, ptr @n
    %r71 = icmp slt i32 %r69,%r70
    br i1 %r71, label %L3, label %L5
L5:
    %r74 = load i32, ptr @n
    %r75 = load i32, ptr %r2
    %r76 = sub i32 %r74,%r75
    %r77 = add i32 0,1
    %r78 = add i32 %r76,%r77
    store i32 %r78, ptr %r5
    %r79 = load i32, ptr %r5
    %r80 = load i32, ptr @n
    %r81 = icmp slt i32 %r79,%r80
    br i1 %r81, label %L13, label %L15
L6:
    %r23 = load i32, ptr %r3
    %r24 = load i32, ptr %r5
    %r25 = getelementptr i32, ptr %r0, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = add i32 %r23,%r26
    store i32 %r27, ptr %r3
    br label %L8
L7:
    %r28 = load i32, ptr %r5
    %r29 = load i32, ptr %r2
    %r30 = add i32 0,1
    %r31 = sub i32 %r29,%r30
    %r32 = icmp eq i32 %r28,%r31
    br i1 %r32, label %L9, label %L10
L8:
    %r66 = load i32, ptr %r5
    %r67 = add i32 0,1
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr %r5
    br label %L4
L9:
    %r35 = add i32 0,0
    %r36 = getelementptr i32, ptr %r0, i32 %r35
    %r37 = load i32, ptr %r36
    store i32 %r37, ptr %r9
    %r38 = load i32, ptr %r3
    %r39 = load i32, ptr %r2
    %r40 = sdiv i32 %r38,%r39
    %r41 = add i32 0,0
    %r42 = getelementptr i32, ptr %r0, i32 %r41
    store i32 %r40, ptr %r42
    br label %L11
L10:
    %r43 = load i32, ptr %r3
    %r44 = load i32, ptr %r5
    %r45 = getelementptr i32, ptr %r0, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = add i32 %r43,%r46
    %r48 = load i32, ptr %r9
    %r49 = sub i32 %r47,%r48
    store i32 %r49, ptr %r3
    %r50 = load i32, ptr %r5
    %r51 = load i32, ptr %r2
    %r52 = sub i32 %r50,%r51
    %r53 = add i32 0,1
    %r54 = add i32 %r52,%r53
    %r55 = getelementptr i32, ptr %r0, i32 %r54
    %r56 = load i32, ptr %r55
    store i32 %r56, ptr %r9
    %r57 = load i32, ptr %r3
    %r58 = load i32, ptr %r2
    %r59 = sdiv i32 %r57,%r58
    %r60 = load i32, ptr %r5
    %r61 = load i32, ptr %r2
    %r62 = sub i32 %r60,%r61
    %r63 = add i32 0,1
    %r64 = add i32 %r62,%r63
    %r65 = getelementptr i32, ptr %r0, i32 %r64
    store i32 %r59, ptr %r65
    br label %L11
L11:
    br label %L8
L13:
    %r84 = add i32 0,0
    %r85 = load i32, ptr %r5
    %r86 = getelementptr i32, ptr %r0, i32 %r85
    store i32 %r84, ptr %r86
    %r87 = load i32, ptr %r5
    %r88 = add i32 0,1
    %r89 = add i32 %r87,%r88
    store i32 %r89, ptr %r5
    br label %L14
L14:
    %r90 = load i32, ptr %r5
    %r91 = load i32, ptr @n
    %r92 = icmp slt i32 %r90,%r91
    br i1 %r92, label %L13, label %L15
L15:
    %r95 = add i32 0,0
    ret i32 %r95
}
define i32 @main()
{
L0:
    %r106 = alloca i32
    %r99 = alloca i32
    %r2 = alloca [32 x i32]
    %r1 = alloca [32 x i32]
    br label %L1
L1:
    %r0 = add i32 0,32
    store i32 %r0, ptr @n
    %r3 = add i32 0,7
    %r4 = add i32 0,0
    %r5 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r4
    store i32 %r3, ptr %r5
    %r6 = add i32 0,23
    %r7 = add i32 0,1
    %r8 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r7
    store i32 %r6, ptr %r8
    %r9 = add i32 0,89
    %r10 = add i32 0,2
    %r11 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r10
    store i32 %r9, ptr %r11
    %r12 = add i32 0,26
    %r13 = add i32 0,3
    %r14 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r13
    store i32 %r12, ptr %r14
    %r15 = add i32 0,282
    %r16 = add i32 0,4
    %r17 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r16
    store i32 %r15, ptr %r17
    %r18 = add i32 0,254
    %r19 = add i32 0,5
    %r20 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r19
    store i32 %r18, ptr %r20
    %r21 = add i32 0,27
    %r22 = add i32 0,6
    %r23 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r22
    store i32 %r21, ptr %r23
    %r24 = add i32 0,5
    %r25 = add i32 0,7
    %r26 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r25
    store i32 %r24, ptr %r26
    %r27 = add i32 0,83
    %r28 = add i32 0,8
    %r29 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r28
    store i32 %r27, ptr %r29
    %r30 = add i32 0,273
    %r31 = add i32 0,9
    %r32 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r31
    store i32 %r30, ptr %r32
    %r33 = add i32 0,574
    %r34 = add i32 0,10
    %r35 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r34
    store i32 %r33, ptr %r35
    %r36 = add i32 0,905
    %r37 = add i32 0,11
    %r38 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r37
    store i32 %r36, ptr %r38
    %r39 = add i32 0,354
    %r40 = add i32 0,12
    %r41 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r40
    store i32 %r39, ptr %r41
    %r42 = add i32 0,657
    %r43 = add i32 0,13
    %r44 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r43
    store i32 %r42, ptr %r44
    %r45 = add i32 0,935
    %r46 = add i32 0,14
    %r47 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r46
    store i32 %r45, ptr %r47
    %r48 = add i32 0,264
    %r49 = add i32 0,15
    %r50 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r49
    store i32 %r48, ptr %r50
    %r51 = add i32 0,639
    %r52 = add i32 0,16
    %r53 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r52
    store i32 %r51, ptr %r53
    %r54 = add i32 0,459
    %r55 = add i32 0,17
    %r56 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r55
    store i32 %r54, ptr %r56
    %r57 = add i32 0,29
    %r58 = add i32 0,18
    %r59 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r58
    store i32 %r57, ptr %r59
    %r60 = add i32 0,68
    %r61 = add i32 0,19
    %r62 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r61
    store i32 %r60, ptr %r62
    %r63 = add i32 0,929
    %r64 = add i32 0,20
    %r65 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r64
    store i32 %r63, ptr %r65
    %r66 = add i32 0,756
    %r67 = add i32 0,21
    %r68 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r67
    store i32 %r66, ptr %r68
    %r69 = add i32 0,452
    %r70 = add i32 0,22
    %r71 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r70
    store i32 %r69, ptr %r71
    %r72 = add i32 0,279
    %r73 = add i32 0,23
    %r74 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r73
    store i32 %r72, ptr %r74
    %r75 = add i32 0,58
    %r76 = add i32 0,24
    %r77 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r76
    store i32 %r75, ptr %r77
    %r78 = add i32 0,87
    %r79 = add i32 0,25
    %r80 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r79
    store i32 %r78, ptr %r80
    %r81 = add i32 0,96
    %r82 = add i32 0,26
    %r83 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r82
    store i32 %r81, ptr %r83
    %r84 = add i32 0,36
    %r85 = add i32 0,27
    %r86 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r85
    store i32 %r84, ptr %r86
    %r87 = add i32 0,39
    %r88 = add i32 0,28
    %r89 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r88
    store i32 %r87, ptr %r89
    %r90 = add i32 0,28
    %r91 = add i32 0,29
    %r92 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r91
    store i32 %r90, ptr %r92
    %r93 = add i32 0,1
    %r94 = add i32 0,30
    %r95 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r94
    store i32 %r93, ptr %r95
    %r96 = add i32 0,290
    %r97 = add i32 0,31
    %r98 = getelementptr [32 x i32], ptr %r1, i32 0, i32 %r97
    store i32 %r96, ptr %r98
    %r100 = add i32 0,0
    store i32 %r100, ptr %r99
    %r101 = getelementptr i32, ptr %r1, i32 0
    %r102 = getelementptr i32, ptr %r2, i32 0
    %r103 = call i32 @arrCopy(ptr %r101,ptr %r102)
    store i32 %r103, ptr %r99
    %r104 = getelementptr i32, ptr %r2, i32 0
    %r105 = call i32 @revert(ptr %r104)
    store i32 %r105, ptr %r99
    %r107 = add i32 0,0
    store i32 %r107, ptr %r106
    %r108 = add i32 0,0
    store i32 %r108, ptr %r106
    %r109 = load i32, ptr %r106
    %r110 = add i32 0,32
    %r111 = icmp slt i32 %r109,%r110
    br i1 %r111, label %L3, label %L5
L3:
    %r114 = load i32, ptr %r106
    %r115 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r114
    %r116 = load i32, ptr %r115
    store i32 %r116, ptr %r99
    %r117 = load i32, ptr %r99
    call void @putint(i32 %r117)
    %r118 = load i32, ptr %r106
    %r119 = add i32 0,1
    %r120 = add i32 %r118,%r119
    store i32 %r120, ptr %r106
    br label %L4
L4:
    %r121 = load i32, ptr %r106
    %r122 = add i32 0,32
    %r123 = icmp slt i32 %r121,%r122
    br i1 %r123, label %L3, label %L5
L5:
    %r126 = getelementptr i32, ptr %r2, i32 0
    %r127 = call i32 @bubblesort(ptr %r126)
    store i32 %r127, ptr %r99
    %r128 = add i32 0,0
    store i32 %r128, ptr %r106
    %r129 = load i32, ptr %r106
    %r130 = add i32 0,32
    %r131 = icmp slt i32 %r129,%r130
    br i1 %r131, label %L7, label %L9
L7:
    %r134 = load i32, ptr %r106
    %r135 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r134
    %r136 = load i32, ptr %r135
    store i32 %r136, ptr %r99
    %r137 = load i32, ptr %r99
    call void @putint(i32 %r137)
    %r138 = load i32, ptr %r106
    %r139 = add i32 0,1
    %r140 = add i32 %r138,%r139
    store i32 %r140, ptr %r106
    br label %L8
L8:
    %r141 = load i32, ptr %r106
    %r142 = add i32 0,32
    %r143 = icmp slt i32 %r141,%r142
    br i1 %r143, label %L7, label %L9
L9:
    %r146 = getelementptr i32, ptr %r2, i32 0
    %r147 = call i32 @getMid(ptr %r146)
    store i32 %r147, ptr %r99
    %r148 = load i32, ptr %r99
    call void @putint(i32 %r148)
    %r149 = getelementptr i32, ptr %r2, i32 0
    %r150 = call i32 @getMost(ptr %r149)
    store i32 %r150, ptr %r99
    %r151 = load i32, ptr %r99
    call void @putint(i32 %r151)
    %r152 = getelementptr i32, ptr %r1, i32 0
    %r153 = getelementptr i32, ptr %r2, i32 0
    %r154 = call i32 @arrCopy(ptr %r152,ptr %r153)
    store i32 %r154, ptr %r99
    %r155 = getelementptr i32, ptr %r2, i32 0
    %r156 = call i32 @bubblesort(ptr %r155)
    store i32 %r156, ptr %r99
    %r157 = add i32 0,0
    store i32 %r157, ptr %r106
    %r158 = load i32, ptr %r106
    %r159 = add i32 0,32
    %r160 = icmp slt i32 %r158,%r159
    br i1 %r160, label %L11, label %L13
L11:
    %r163 = load i32, ptr %r106
    %r164 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r163
    %r165 = load i32, ptr %r164
    store i32 %r165, ptr %r99
    %r166 = load i32, ptr %r99
    call void @putint(i32 %r166)
    %r167 = load i32, ptr %r106
    %r168 = add i32 0,1
    %r169 = add i32 %r167,%r168
    store i32 %r169, ptr %r106
    br label %L12
L12:
    %r170 = load i32, ptr %r106
    %r171 = add i32 0,32
    %r172 = icmp slt i32 %r170,%r171
    br i1 %r172, label %L11, label %L13
L13:
    %r175 = getelementptr i32, ptr %r1, i32 0
    %r176 = getelementptr i32, ptr %r2, i32 0
    %r177 = call i32 @arrCopy(ptr %r175,ptr %r176)
    store i32 %r177, ptr %r99
    %r178 = getelementptr i32, ptr %r2, i32 0
    %r179 = call i32 @insertsort(ptr %r178)
    store i32 %r179, ptr %r99
    %r180 = add i32 0,0
    store i32 %r180, ptr %r106
    %r181 = load i32, ptr %r106
    %r182 = add i32 0,32
    %r183 = icmp slt i32 %r181,%r182
    br i1 %r183, label %L15, label %L17
L15:
    %r186 = load i32, ptr %r106
    %r187 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r186
    %r188 = load i32, ptr %r187
    store i32 %r188, ptr %r99
    %r189 = load i32, ptr %r99
    call void @putint(i32 %r189)
    %r190 = load i32, ptr %r106
    %r191 = add i32 0,1
    %r192 = add i32 %r190,%r191
    store i32 %r192, ptr %r106
    br label %L16
L16:
    %r193 = load i32, ptr %r106
    %r194 = add i32 0,32
    %r195 = icmp slt i32 %r193,%r194
    br i1 %r195, label %L15, label %L17
L17:
    %r198 = getelementptr i32, ptr %r1, i32 0
    %r199 = getelementptr i32, ptr %r2, i32 0
    %r200 = call i32 @arrCopy(ptr %r198,ptr %r199)
    store i32 %r200, ptr %r99
    %r201 = add i32 0,0
    store i32 %r201, ptr %r106
    %r202 = add i32 0,31
    store i32 %r202, ptr %r99
    %r203 = getelementptr i32, ptr %r2, i32 0
    %r204 = load i32, ptr %r106
    %r205 = load i32, ptr %r99
    %r206 = call i32 @QuickSort(ptr %r203,i32 %r204,i32 %r205)
    store i32 %r206, ptr %r99
    %r207 = load i32, ptr %r106
    %r208 = add i32 0,32
    %r209 = icmp slt i32 %r207,%r208
    br i1 %r209, label %L19, label %L21
L19:
    %r212 = load i32, ptr %r106
    %r213 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r212
    %r214 = load i32, ptr %r213
    store i32 %r214, ptr %r99
    %r215 = load i32, ptr %r99
    call void @putint(i32 %r215)
    %r216 = load i32, ptr %r106
    %r217 = add i32 0,1
    %r218 = add i32 %r216,%r217
    store i32 %r218, ptr %r106
    br label %L20
L20:
    %r219 = load i32, ptr %r106
    %r220 = add i32 0,32
    %r221 = icmp slt i32 %r219,%r220
    br i1 %r221, label %L19, label %L21
L21:
    %r224 = getelementptr i32, ptr %r1, i32 0
    %r225 = getelementptr i32, ptr %r2, i32 0
    %r226 = call i32 @arrCopy(ptr %r224,ptr %r225)
    store i32 %r226, ptr %r99
    %r227 = getelementptr i32, ptr %r2, i32 0
    %r228 = add i32 0,4
    %r229 = call i32 @calSum(ptr %r227,i32 %r228)
    store i32 %r229, ptr %r99
    %r230 = add i32 0,0
    store i32 %r230, ptr %r106
    %r231 = load i32, ptr %r106
    %r232 = add i32 0,32
    %r233 = icmp slt i32 %r231,%r232
    br i1 %r233, label %L23, label %L25
L23:
    %r236 = load i32, ptr %r106
    %r237 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r236
    %r238 = load i32, ptr %r237
    store i32 %r238, ptr %r99
    %r239 = load i32, ptr %r99
    call void @putint(i32 %r239)
    %r240 = load i32, ptr %r106
    %r241 = add i32 0,1
    %r242 = add i32 %r240,%r241
    store i32 %r242, ptr %r106
    br label %L24
L24:
    %r243 = load i32, ptr %r106
    %r244 = add i32 0,32
    %r245 = icmp slt i32 %r243,%r244
    br i1 %r245, label %L23, label %L25
L25:
    %r248 = getelementptr i32, ptr %r1, i32 0
    %r249 = getelementptr i32, ptr %r2, i32 0
    %r250 = call i32 @arrCopy(ptr %r248,ptr %r249)
    store i32 %r250, ptr %r99
    %r251 = getelementptr i32, ptr %r2, i32 0
    %r252 = add i32 0,3
    %r253 = call i32 @avgPooling(ptr %r251,i32 %r252)
    store i32 %r253, ptr %r99
    %r254 = add i32 0,0
    store i32 %r254, ptr %r106
    %r255 = load i32, ptr %r106
    %r256 = add i32 0,32
    %r257 = icmp slt i32 %r255,%r256
    br i1 %r257, label %L27, label %L29
L27:
    %r260 = load i32, ptr %r106
    %r261 = getelementptr [32 x i32], ptr %r2, i32 0, i32 %r260
    %r262 = load i32, ptr %r261
    store i32 %r262, ptr %r99
    %r263 = load i32, ptr %r99
    call void @putint(i32 %r263)
    %r264 = load i32, ptr %r106
    %r265 = add i32 0,1
    %r266 = add i32 %r264,%r265
    store i32 %r266, ptr %r106
    br label %L28
L28:
    %r267 = load i32, ptr %r106
    %r268 = add i32 0,32
    %r269 = icmp slt i32 %r267,%r268
    br i1 %r269, label %L27, label %L29
L29:
    %r272 = add i32 0,0
    ret i32 %r272
}
