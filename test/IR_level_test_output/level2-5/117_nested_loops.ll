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
@arr1 = global [10x [2x [3x [4x [5x [6x [2x i32]]]]]]] zeroinitializer
@arr2 = global [10x [2x [3x [2x [4x [8x [7x i32]]]]]]] zeroinitializer
define void @loop1(i32 %r0,i32 %r1)
{
L0:
    %r16 = alloca i32
    %r14 = alloca i32
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = add i32 0,0
    store i32 %r18, ptr %r4
    br label %L1
L1:
    %r19 = load i32, ptr %r4
    %r20 = load i32, ptr %r2
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L4, label %L3
L2:
    %r32 = add i32 0,0
    store i32 %r32, ptr %r6
    br label %L6
L3:
    ret void
L4:
    %r24 = load i32, ptr %r4
    %r25 = load i32, ptr %r3
    %r26 = icmp slt i32 %r24,%r25
    br i1 %r26, label %L2, label %L3
L6:
    %r33 = load i32, ptr %r6
    %r34 = add i32 0,2
    %r35 = icmp slt i32 %r33,%r34
    br i1 %r35, label %L7, label %L8
L7:
    %r38 = add i32 0,0
    store i32 %r38, ptr %r8
    br label %L9
L8:
    %r111 = load i32, ptr %r4
    %r112 = add i32 0,1
    %r113 = add i32 %r111,%r112
    store i32 %r113, ptr %r4
    br label %L1
L9:
    %r39 = load i32, ptr %r8
    %r40 = add i32 0,3
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L10, label %L11
L10:
    %r44 = add i32 0,0
    store i32 %r44, ptr %r10
    br label %L12
L11:
    %r108 = load i32, ptr %r6
    %r109 = add i32 0,1
    %r110 = add i32 %r108,%r109
    store i32 %r110, ptr %r6
    br label %L6
L12:
    %r45 = load i32, ptr %r10
    %r46 = add i32 0,4
    %r47 = icmp slt i32 %r45,%r46
    br i1 %r47, label %L13, label %L14
L13:
    %r50 = add i32 0,0
    store i32 %r50, ptr %r12
    br label %L15
L14:
    %r105 = load i32, ptr %r8
    %r106 = add i32 0,1
    %r107 = add i32 %r105,%r106
    store i32 %r107, ptr %r8
    br label %L9
L15:
    %r51 = load i32, ptr %r12
    %r52 = add i32 0,5
    %r53 = icmp slt i32 %r51,%r52
    br i1 %r53, label %L16, label %L17
L16:
    %r56 = add i32 0,0
    store i32 %r56, ptr %r14
    br label %L18
L17:
    %r102 = load i32, ptr %r10
    %r103 = add i32 0,1
    %r104 = add i32 %r102,%r103
    store i32 %r104, ptr %r10
    br label %L12
L18:
    %r57 = load i32, ptr %r14
    %r58 = add i32 0,6
    %r59 = icmp slt i32 %r57,%r58
    br i1 %r59, label %L19, label %L20
L19:
    %r62 = add i32 0,0
    store i32 %r62, ptr %r16
    br label %L21
L20:
    %r99 = load i32, ptr %r12
    %r100 = add i32 0,1
    %r101 = add i32 %r99,%r100
    store i32 %r101, ptr %r12
    br label %L15
L21:
    %r63 = load i32, ptr %r16
    %r64 = add i32 0,2
    %r65 = icmp slt i32 %r63,%r64
    br i1 %r65, label %L22, label %L23
L22:
    %r68 = load i32, ptr %r4
    %r69 = load i32, ptr %r6
    %r70 = add i32 %r68,%r69
    %r71 = load i32, ptr %r8
    %r72 = add i32 %r70,%r71
    %r73 = load i32, ptr %r10
    %r74 = add i32 %r72,%r73
    %r75 = load i32, ptr %r12
    %r76 = add i32 %r74,%r75
    %r77 = load i32, ptr %r14
    %r78 = add i32 %r76,%r77
    %r79 = load i32, ptr %r16
    %r80 = add i32 %r78,%r79
    %r81 = load i32, ptr %r2
    %r82 = add i32 %r80,%r81
    %r83 = load i32, ptr %r3
    %r84 = add i32 %r82,%r83
    %r85 = load i32, ptr %r4
    %r86 = load i32, ptr %r6
    %r87 = load i32, ptr %r8
    %r88 = load i32, ptr %r10
    %r89 = load i32, ptr %r12
    %r90 = load i32, ptr %r14
    %r91 = load i32, ptr %r16
    %r92 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], ptr @arr1, i32 0, i32 %r85, i32 %r86, i32 %r87, i32 %r88, i32 %r89, i32 %r90, i32 %r91
    store i32 %r84, ptr %r92
    %r93 = load i32, ptr %r16
    %r94 = add i32 0,1
    %r95 = add i32 %r93,%r94
    store i32 %r95, ptr %r16
    br label %L21
L23:
    %r96 = load i32, ptr %r14
    %r97 = add i32 0,1
    %r98 = add i32 %r96,%r97
    store i32 %r98, ptr %r14
    br label %L18
}
define i32 @main()
{
L0:
    %r16 = alloca i32
    %r14 = alloca i32
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r2
    %r5 = call i32 @getint()
    store i32 %r5, ptr %r4
    %r7 = call i32 @getint()
    store i32 %r7, ptr %r6
    %r9 = call i32 @getint()
    store i32 %r9, ptr %r8
    %r11 = call i32 @getint()
    store i32 %r11, ptr %r10
    %r13 = call i32 @getint()
    store i32 %r13, ptr %r12
    %r15 = call i32 @getint()
    store i32 %r15, ptr %r14
    %r17 = call i32 @getint()
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r0
    %r19 = load i32, ptr %r2
    call void @loop1(i32 %r18,i32 %r19)
    call void @loop2()
    %r20 = load i32, ptr %r4
    %r21 = load i32, ptr %r6
    %r22 = load i32, ptr %r8
    %r23 = load i32, ptr %r10
    %r24 = load i32, ptr %r12
    %r25 = load i32, ptr %r14
    %r26 = load i32, ptr %r16
    %r27 = call i32 @loop3(i32 %r20,i32 %r21,i32 %r22,i32 %r23,i32 %r24,i32 %r25,i32 %r26)
    ret i32 %r27
}
define i32 @loop3(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6)
{
L0:
    %r28 = alloca i32
    %r26 = alloca i32
    %r24 = alloca i32
    %r22 = alloca i32
    %r20 = alloca i32
    %r18 = alloca i32
    %r16 = alloca i32
    %r14 = alloca i32
    %r7 = alloca i32
    store i32 %r0, ptr %r7
    %r8 = alloca i32
    store i32 %r1, ptr %r8
    %r9 = alloca i32
    store i32 %r2, ptr %r9
    %r10 = alloca i32
    store i32 %r3, ptr %r10
    %r11 = alloca i32
    store i32 %r4, ptr %r11
    %r12 = alloca i32
    store i32 %r5, ptr %r12
    %r13 = alloca i32
    store i32 %r6, ptr %r13
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    %r21 = add i32 0,0
    store i32 %r21, ptr %r20
    %r23 = add i32 0,0
    store i32 %r23, ptr %r22
    %r25 = add i32 0,0
    store i32 %r25, ptr %r24
    %r27 = add i32 0,0
    store i32 %r27, ptr %r26
    %r29 = add i32 0,0
    store i32 %r29, ptr %r28
    %r30 = add i32 0,0
    store i32 %r30, ptr %r14
    br label %L1
L1:
    %r31 = load i32, ptr %r14
    %r32 = add i32 0,10
    %r33 = icmp slt i32 %r31,%r32
    br i1 %r33, label %L2, label %L3
L2:
    %r36 = add i32 0,0
    store i32 %r36, ptr %r16
    br label %L4
L3:
    %r151 = load i32, ptr %r28
    ret i32 %r151
L4:
    %r37 = load i32, ptr %r16
    %r38 = add i32 0,100
    %r39 = icmp slt i32 %r37,%r38
    br i1 %r39, label %L5, label %L6
L5:
    %r42 = add i32 0,0
    store i32 %r42, ptr %r18
    br label %L7
L6:
    %r143 = load i32, ptr %r14
    %r144 = add i32 0,1
    %r145 = add i32 %r143,%r144
    store i32 %r145, ptr %r14
    %r146 = load i32, ptr %r14
    %r147 = load i32, ptr %r7
    %r148 = icmp sge i32 %r146,%r147
    br i1 %r148, label %L40, label %L41
L7:
    %r43 = load i32, ptr %r18
    %r44 = add i32 0,1000
    %r45 = icmp slt i32 %r43,%r44
    br i1 %r45, label %L8, label %L9
L8:
    %r48 = add i32 0,0
    store i32 %r48, ptr %r20
    br label %L10
L9:
    %r135 = load i32, ptr %r16
    %r136 = add i32 0,1
    %r137 = add i32 %r135,%r136
    store i32 %r137, ptr %r16
    %r138 = load i32, ptr %r16
    %r139 = load i32, ptr %r8
    %r140 = icmp sge i32 %r138,%r139
    br i1 %r140, label %L37, label %L38
L10:
    %r49 = load i32, ptr %r20
    %r50 = add i32 0,10000
    %r51 = icmp slt i32 %r49,%r50
    br i1 %r51, label %L11, label %L12
L11:
    %r54 = add i32 0,0
    store i32 %r54, ptr %r22
    br label %L13
L12:
    %r127 = load i32, ptr %r18
    %r128 = add i32 0,1
    %r129 = add i32 %r127,%r128
    store i32 %r129, ptr %r18
    %r130 = load i32, ptr %r18
    %r131 = load i32, ptr %r9
    %r132 = icmp sge i32 %r130,%r131
    br i1 %r132, label %L34, label %L35
L13:
    %r55 = load i32, ptr %r22
    %r56 = add i32 0,100000
    %r57 = icmp slt i32 %r55,%r56
    br i1 %r57, label %L14, label %L15
L14:
    %r60 = add i32 0,0
    store i32 %r60, ptr %r24
    br label %L16
L15:
    %r119 = load i32, ptr %r20
    %r120 = add i32 0,1
    %r121 = add i32 %r119,%r120
    store i32 %r121, ptr %r20
    %r122 = load i32, ptr %r20
    %r123 = load i32, ptr %r10
    %r124 = icmp sge i32 %r122,%r123
    br i1 %r124, label %L31, label %L32
L16:
    %r61 = load i32, ptr %r24
    %r62 = add i32 0,1000000
    %r63 = icmp slt i32 %r61,%r62
    br i1 %r63, label %L17, label %L18
L17:
    %r66 = add i32 0,0
    store i32 %r66, ptr %r26
    br label %L19
L18:
    %r111 = load i32, ptr %r22
    %r112 = add i32 0,1
    %r113 = add i32 %r111,%r112
    store i32 %r113, ptr %r22
    %r114 = load i32, ptr %r22
    %r115 = load i32, ptr %r11
    %r116 = icmp sge i32 %r114,%r115
    br i1 %r116, label %L28, label %L29
L19:
    %r67 = load i32, ptr %r26
    %r68 = add i32 0,10000000
    %r69 = icmp slt i32 %r67,%r68
    br i1 %r69, label %L20, label %L21
L20:
    %r72 = load i32, ptr %r28
    %r73 = add i32 0,817
    %r74 = srem i32 %r72,%r73
    %r75 = load i32, ptr %r14
    %r76 = load i32, ptr %r16
    %r77 = load i32, ptr %r18
    %r78 = load i32, ptr %r20
    %r79 = load i32, ptr %r22
    %r80 = load i32, ptr %r24
    %r81 = load i32, ptr %r26
    %r82 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], ptr @arr1, i32 0, i32 %r75, i32 %r76, i32 %r77, i32 %r78, i32 %r79, i32 %r80, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = add i32 %r74,%r83
    %r85 = load i32, ptr %r14
    %r86 = load i32, ptr %r16
    %r87 = load i32, ptr %r18
    %r88 = load i32, ptr %r20
    %r89 = load i32, ptr %r22
    %r90 = load i32, ptr %r24
    %r91 = load i32, ptr %r26
    %r92 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], ptr @arr2, i32 0, i32 %r85, i32 %r86, i32 %r87, i32 %r88, i32 %r89, i32 %r90, i32 %r91
    %r93 = load i32, ptr %r92
    %r94 = add i32 %r84,%r93
    store i32 %r94, ptr %r28
    %r95 = load i32, ptr %r26
    %r96 = add i32 0,1
    %r97 = add i32 %r95,%r96
    store i32 %r97, ptr %r26
    %r98 = load i32, ptr %r26
    %r99 = load i32, ptr %r13
    %r100 = icmp sge i32 %r98,%r99
    br i1 %r100, label %L22, label %L23
L21:
    %r103 = load i32, ptr %r24
    %r104 = add i32 0,1
    %r105 = add i32 %r103,%r104
    store i32 %r105, ptr %r24
    %r106 = load i32, ptr %r24
    %r107 = load i32, ptr %r12
    %r108 = icmp sge i32 %r106,%r107
    br i1 %r108, label %L25, label %L26
L22:
    br label %L21
L23:
    br label %L19
L25:
    br label %L18
L26:
    br label %L16
L28:
    br label %L15
L29:
    br label %L13
L31:
    br label %L12
L32:
    br label %L10
L34:
    br label %L9
L35:
    br label %L7
L37:
    br label %L6
L38:
    br label %L4
L40:
    br label %L3
L41:
    br label %L1
}
define void @loop2()
{
L0:
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r0
    br label %L1
L1:
    %r15 = load i32, ptr %r0
    %r16 = add i32 0,10
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L2, label %L3
L2:
    %r20 = add i32 0,0
    store i32 %r20, ptr %r2
    br label %L4
L3:
    ret void
L4:
    %r21 = load i32, ptr %r2
    %r22 = add i32 0,2
    %r23 = icmp slt i32 %r21,%r22
    br i1 %r23, label %L5, label %L6
L5:
    %r26 = add i32 0,0
    store i32 %r26, ptr %r4
    br label %L7
L6:
    %r89 = load i32, ptr %r0
    %r90 = add i32 0,1
    %r91 = add i32 %r89,%r90
    store i32 %r91, ptr %r0
    br label %L1
L7:
    %r27 = load i32, ptr %r4
    %r28 = add i32 0,3
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L8, label %L9
L8:
    %r32 = add i32 0,0
    store i32 %r32, ptr %r6
    br label %L10
L9:
    %r86 = load i32, ptr %r2
    %r87 = add i32 0,1
    %r88 = add i32 %r86,%r87
    store i32 %r88, ptr %r2
    br label %L4
L10:
    %r33 = load i32, ptr %r6
    %r34 = add i32 0,2
    %r35 = icmp slt i32 %r33,%r34
    br i1 %r35, label %L11, label %L12
L11:
    %r38 = add i32 0,0
    store i32 %r38, ptr %r8
    br label %L13
L12:
    %r83 = load i32, ptr %r4
    %r84 = add i32 0,1
    %r85 = add i32 %r83,%r84
    store i32 %r85, ptr %r4
    br label %L7
L13:
    %r39 = load i32, ptr %r8
    %r40 = add i32 0,4
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L14, label %L15
L14:
    %r44 = add i32 0,0
    store i32 %r44, ptr %r10
    br label %L16
L15:
    %r80 = load i32, ptr %r6
    %r81 = add i32 0,1
    %r82 = add i32 %r80,%r81
    store i32 %r82, ptr %r6
    br label %L10
L16:
    %r45 = load i32, ptr %r10
    %r46 = add i32 0,8
    %r47 = icmp slt i32 %r45,%r46
    br i1 %r47, label %L17, label %L18
L17:
    %r50 = add i32 0,0
    store i32 %r50, ptr %r12
    br label %L19
L18:
    %r77 = load i32, ptr %r8
    %r78 = add i32 0,1
    %r79 = add i32 %r77,%r78
    store i32 %r79, ptr %r8
    br label %L13
L19:
    %r51 = load i32, ptr %r12
    %r52 = add i32 0,7
    %r53 = icmp slt i32 %r51,%r52
    br i1 %r53, label %L20, label %L21
L20:
    %r56 = load i32, ptr %r0
    %r57 = load i32, ptr %r2
    %r58 = add i32 %r56,%r57
    %r59 = load i32, ptr %r6
    %r60 = add i32 %r58,%r59
    %r61 = load i32, ptr %r12
    %r62 = add i32 %r60,%r61
    %r63 = load i32, ptr %r0
    %r64 = load i32, ptr %r2
    %r65 = load i32, ptr %r4
    %r66 = load i32, ptr %r6
    %r67 = load i32, ptr %r8
    %r68 = load i32, ptr %r10
    %r69 = load i32, ptr %r12
    %r70 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], ptr @arr2, i32 0, i32 %r63, i32 %r64, i32 %r65, i32 %r66, i32 %r67, i32 %r68, i32 %r69
    store i32 %r62, ptr %r70
    %r71 = load i32, ptr %r12
    %r72 = add i32 0,1
    %r73 = add i32 %r71,%r72
    store i32 %r73, ptr %r12
    br label %L19
L21:
    %r74 = load i32, ptr %r10
    %r75 = add i32 0,1
    %r76 = add i32 %r74,%r75
    store i32 %r76, ptr %r10
    br label %L16
}
