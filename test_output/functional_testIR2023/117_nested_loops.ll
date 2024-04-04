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
@arr1 = global [10x [2x [3x [4x [5x [6x [2x i32]]]]]]] zeroinitializer
@arr2 = global [10x [2x [3x [2x [4x [8x [7x i32]]]]]]] zeroinitializer
define void @loop1(i32 %r0,i32 %r1)
{
L0:  ;
    %r16 = alloca i32
    %r14 = alloca i32
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
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
    br label %L2
L2:  ;
    %r19 = load i32, ptr %r4
    %r20 = load i32, ptr %r2
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L5, label %L4
L3:  ;
    %r25 = add i32 0,0
    store i32 %r25, ptr %r6
    br label %L6
L4:  ;
    ret void
L5:  ;
    %r22 = load i32, ptr %r4
    %r23 = load i32, ptr %r3
    %r24 = icmp slt i32 %r22,%r23
    br i1 %r24, label %L3, label %L4
L6:  ;
    %r26 = load i32, ptr %r6
    %r27 = add i32 2,0
    %r28 = icmp slt i32 %r26,%r27
    br i1 %r28, label %L7, label %L8
L7:  ;
    %r29 = add i32 0,0
    store i32 %r29, ptr %r8
    br label %L9
L8:  ;
    %r92 = load i32, ptr %r4
    %r93 = add i32 1,0
    %r94 = add i32 %r92,%r93
    store i32 %r94, ptr %r4
    br label %L2
L9:  ;
    %r30 = load i32, ptr %r8
    %r31 = add i32 3,0
    %r32 = icmp slt i32 %r30,%r31
    br i1 %r32, label %L10, label %L11
L10:  ;
    %r33 = add i32 0,0
    store i32 %r33, ptr %r10
    br label %L12
L11:  ;
    %r89 = load i32, ptr %r6
    %r90 = add i32 1,0
    %r91 = add i32 %r89,%r90
    store i32 %r91, ptr %r6
    br label %L6
L12:  ;
    %r34 = load i32, ptr %r10
    %r35 = add i32 4,0
    %r36 = icmp slt i32 %r34,%r35
    br i1 %r36, label %L13, label %L14
L13:  ;
    %r37 = add i32 0,0
    store i32 %r37, ptr %r12
    br label %L15
L14:  ;
    %r86 = load i32, ptr %r8
    %r87 = add i32 1,0
    %r88 = add i32 %r86,%r87
    store i32 %r88, ptr %r8
    br label %L9
L15:  ;
    %r38 = load i32, ptr %r12
    %r39 = add i32 5,0
    %r40 = icmp slt i32 %r38,%r39
    br i1 %r40, label %L16, label %L17
L16:  ;
    %r41 = add i32 0,0
    store i32 %r41, ptr %r14
    br label %L18
L17:  ;
    %r83 = load i32, ptr %r10
    %r84 = add i32 1,0
    %r85 = add i32 %r83,%r84
    store i32 %r85, ptr %r10
    br label %L12
L18:  ;
    %r42 = load i32, ptr %r14
    %r43 = add i32 6,0
    %r44 = icmp slt i32 %r42,%r43
    br i1 %r44, label %L19, label %L20
L19:  ;
    %r45 = add i32 0,0
    store i32 %r45, ptr %r16
    br label %L21
L20:  ;
    %r80 = load i32, ptr %r12
    %r81 = add i32 1,0
    %r82 = add i32 %r80,%r81
    store i32 %r82, ptr %r12
    br label %L15
L21:  ;
    %r46 = load i32, ptr %r16
    %r47 = add i32 2,0
    %r48 = icmp slt i32 %r46,%r47
    br i1 %r48, label %L22, label %L23
L22:  ;
    %r49 = load i32, ptr %r4
    %r50 = load i32, ptr %r6
    %r51 = load i32, ptr %r8
    %r52 = load i32, ptr %r10
    %r53 = load i32, ptr %r12
    %r54 = load i32, ptr %r14
    %r55 = load i32, ptr %r16
    %r56 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], ptr @arr1, i32 0, i32 %r49, i32 %r50, i32 %r51, i32 %r52, i32 %r53, i32 %r54, i32 %r55
    %r57 = load i32, ptr %r4
    %r58 = load i32, ptr %r6
    %r59 = add i32 %r57,%r58
    %r60 = load i32, ptr %r8
    %r61 = add i32 %r59,%r60
    %r62 = load i32, ptr %r10
    %r63 = add i32 %r61,%r62
    %r64 = load i32, ptr %r12
    %r65 = add i32 %r63,%r64
    %r66 = load i32, ptr %r14
    %r67 = add i32 %r65,%r66
    %r68 = load i32, ptr %r16
    %r69 = add i32 %r67,%r68
    %r70 = load i32, ptr %r2
    %r71 = add i32 %r69,%r70
    %r72 = load i32, ptr %r3
    %r73 = add i32 %r71,%r72
    store i32 %r73, ptr %r56
    %r74 = load i32, ptr %r16
    %r75 = add i32 1,0
    %r76 = add i32 %r74,%r75
    store i32 %r76, ptr %r16
    br label %L21
L23:  ;
    %r77 = load i32, ptr %r14
    %r78 = add i32 1,0
    %r79 = add i32 %r77,%r78
    store i32 %r79, ptr %r14
    br label %L18
}
define void @loop2()
{
L0:  ;
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
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
    br label %L2
L2:  ;
    %r15 = load i32, ptr %r0
    %r16 = add i32 10,0
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L4
L3:  ;
    %r18 = add i32 0,0
    store i32 %r18, ptr %r2
    br label %L5
L4:  ;
    ret void
L5:  ;
    %r19 = load i32, ptr %r2
    %r20 = add i32 2,0
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L6, label %L7
L6:  ;
    %r22 = add i32 0,0
    store i32 %r22, ptr %r4
    br label %L8
L7:  ;
    %r75 = load i32, ptr %r0
    %r76 = add i32 1,0
    %r77 = add i32 %r75,%r76
    store i32 %r77, ptr %r0
    br label %L2
L8:  ;
    %r23 = load i32, ptr %r4
    %r24 = add i32 3,0
    %r25 = icmp slt i32 %r23,%r24
    br i1 %r25, label %L9, label %L10
L9:  ;
    %r26 = add i32 0,0
    store i32 %r26, ptr %r6
    br label %L11
L10:  ;
    %r72 = load i32, ptr %r2
    %r73 = add i32 1,0
    %r74 = add i32 %r72,%r73
    store i32 %r74, ptr %r2
    br label %L5
L11:  ;
    %r27 = load i32, ptr %r6
    %r28 = add i32 2,0
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L12, label %L13
L12:  ;
    %r30 = add i32 0,0
    store i32 %r30, ptr %r8
    br label %L14
L13:  ;
    %r69 = load i32, ptr %r4
    %r70 = add i32 1,0
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r4
    br label %L8
L14:  ;
    %r31 = load i32, ptr %r8
    %r32 = add i32 4,0
    %r33 = icmp slt i32 %r31,%r32
    br i1 %r33, label %L15, label %L16
L15:  ;
    %r34 = add i32 0,0
    store i32 %r34, ptr %r10
    br label %L17
L16:  ;
    %r66 = load i32, ptr %r6
    %r67 = add i32 1,0
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr %r6
    br label %L11
L17:  ;
    %r35 = load i32, ptr %r10
    %r36 = add i32 8,0
    %r37 = icmp slt i32 %r35,%r36
    br i1 %r37, label %L18, label %L19
L18:  ;
    %r38 = add i32 0,0
    store i32 %r38, ptr %r12
    br label %L20
L19:  ;
    %r63 = load i32, ptr %r8
    %r64 = add i32 1,0
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r8
    br label %L14
L20:  ;
    %r39 = load i32, ptr %r12
    %r40 = add i32 7,0
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L21, label %L22
L21:  ;
    %r42 = load i32, ptr %r0
    %r43 = load i32, ptr %r2
    %r44 = load i32, ptr %r4
    %r45 = load i32, ptr %r6
    %r46 = load i32, ptr %r8
    %r47 = load i32, ptr %r10
    %r48 = load i32, ptr %r12
    %r49 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], ptr @arr2, i32 0, i32 %r42, i32 %r43, i32 %r44, i32 %r45, i32 %r46, i32 %r47, i32 %r48
    %r50 = load i32, ptr %r0
    %r51 = load i32, ptr %r2
    %r52 = add i32 %r50,%r51
    %r53 = load i32, ptr %r6
    %r54 = add i32 %r52,%r53
    %r55 = load i32, ptr %r12
    %r56 = add i32 %r54,%r55
    store i32 %r56, ptr %r49
    %r57 = load i32, ptr %r12
    %r58 = add i32 1,0
    %r59 = add i32 %r57,%r58
    store i32 %r59, ptr %r12
    br label %L20
L22:  ;
    %r60 = load i32, ptr %r10
    %r61 = add i32 1,0
    %r62 = add i32 %r60,%r61
    store i32 %r62, ptr %r10
    br label %L17
}
define i32 @loop3(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6)
{
L0:  ;
    %r28 = alloca i32
    %r26 = alloca i32
    %r24 = alloca i32
    %r22 = alloca i32
    %r20 = alloca i32
    %r18 = alloca i32
    %r16 = alloca i32
    %r14 = alloca i32
    %r13 = alloca i32
    %r12 = alloca i32
    %r11 = alloca i32
    %r10 = alloca i32
    %r9 = alloca i32
    %r8 = alloca i32
    %r7 = alloca i32
    store i32 %r0, ptr %r7
    store i32 %r1, ptr %r8
    store i32 %r2, ptr %r9
    store i32 %r3, ptr %r10
    store i32 %r4, ptr %r11
    store i32 %r5, ptr %r12
    store i32 %r6, ptr %r13
    br label %L1
L1:  ;
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
    br label %L2
L2:  ;
    %r31 = load i32, ptr %r14
    %r32 = add i32 10,0
    %r33 = icmp slt i32 %r31,%r32
    br i1 %r33, label %L3, label %L4
L3:  ;
    %r34 = add i32 0,0
    store i32 %r34, ptr %r16
    br label %L5
L4:  ;
    %r123 = load i32, ptr %r28
    ret i32 %r123
L5:  ;
    %r35 = load i32, ptr %r16
    %r36 = add i32 100,0
    %r37 = icmp slt i32 %r35,%r36
    br i1 %r37, label %L6, label %L7
L6:  ;
    %r38 = add i32 0,0
    store i32 %r38, ptr %r18
    br label %L8
L7:  ;
    %r117 = load i32, ptr %r14
    %r118 = add i32 1,0
    %r119 = add i32 %r117,%r118
    store i32 %r119, ptr %r14
    %r120 = load i32, ptr %r14
    %r121 = load i32, ptr %r7
    %r122 = icmp sge i32 %r120,%r121
    br i1 %r122, label %L41, label %L42
L8:  ;
    %r39 = load i32, ptr %r18
    %r40 = add i32 1000,0
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L9, label %L10
L9:  ;
    %r42 = add i32 0,0
    store i32 %r42, ptr %r20
    br label %L11
L10:  ;
    %r111 = load i32, ptr %r16
    %r112 = add i32 1,0
    %r113 = add i32 %r111,%r112
    store i32 %r113, ptr %r16
    %r114 = load i32, ptr %r16
    %r115 = load i32, ptr %r8
    %r116 = icmp sge i32 %r114,%r115
    br i1 %r116, label %L38, label %L39
L11:  ;
    %r43 = load i32, ptr %r20
    %r44 = add i32 10000,0
    %r45 = icmp slt i32 %r43,%r44
    br i1 %r45, label %L12, label %L13
L12:  ;
    %r46 = add i32 0,0
    store i32 %r46, ptr %r22
    br label %L14
L13:  ;
    %r105 = load i32, ptr %r18
    %r106 = add i32 1,0
    %r107 = add i32 %r105,%r106
    store i32 %r107, ptr %r18
    %r108 = load i32, ptr %r18
    %r109 = load i32, ptr %r9
    %r110 = icmp sge i32 %r108,%r109
    br i1 %r110, label %L35, label %L36
L14:  ;
    %r47 = load i32, ptr %r22
    %r48 = add i32 100000,0
    %r49 = icmp slt i32 %r47,%r48
    br i1 %r49, label %L15, label %L16
L15:  ;
    %r50 = add i32 0,0
    store i32 %r50, ptr %r24
    br label %L17
L16:  ;
    %r99 = load i32, ptr %r20
    %r100 = add i32 1,0
    %r101 = add i32 %r99,%r100
    store i32 %r101, ptr %r20
    %r102 = load i32, ptr %r20
    %r103 = load i32, ptr %r10
    %r104 = icmp sge i32 %r102,%r103
    br i1 %r104, label %L32, label %L33
L17:  ;
    %r51 = load i32, ptr %r24
    %r52 = add i32 1000000,0
    %r53 = icmp slt i32 %r51,%r52
    br i1 %r53, label %L18, label %L19
L18:  ;
    %r54 = add i32 0,0
    store i32 %r54, ptr %r26
    br label %L20
L19:  ;
    %r93 = load i32, ptr %r22
    %r94 = add i32 1,0
    %r95 = add i32 %r93,%r94
    store i32 %r95, ptr %r22
    %r96 = load i32, ptr %r22
    %r97 = load i32, ptr %r11
    %r98 = icmp sge i32 %r96,%r97
    br i1 %r98, label %L29, label %L30
L20:  ;
    %r55 = load i32, ptr %r26
    %r56 = add i32 10000000,0
    %r57 = icmp slt i32 %r55,%r56
    br i1 %r57, label %L21, label %L22
L21:  ;
    %r58 = load i32, ptr %r28
    %r59 = add i32 817,0
    %r60 = srem i32 %r58,%r59
    %r61 = load i32, ptr %r14
    %r62 = load i32, ptr %r16
    %r63 = load i32, ptr %r18
    %r64 = load i32, ptr %r20
    %r65 = load i32, ptr %r22
    %r66 = load i32, ptr %r24
    %r67 = load i32, ptr %r26
    %r68 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], ptr @arr1, i32 0, i32 %r61, i32 %r62, i32 %r63, i32 %r64, i32 %r65, i32 %r66, i32 %r67
    %r69 = load i32, ptr %r68
    %r70 = add i32 %r60,%r69
    %r71 = load i32, ptr %r14
    %r72 = load i32, ptr %r16
    %r73 = load i32, ptr %r18
    %r74 = load i32, ptr %r20
    %r75 = load i32, ptr %r22
    %r76 = load i32, ptr %r24
    %r77 = load i32, ptr %r26
    %r78 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], ptr @arr2, i32 0, i32 %r71, i32 %r72, i32 %r73, i32 %r74, i32 %r75, i32 %r76, i32 %r77
    %r79 = load i32, ptr %r78
    %r80 = add i32 %r70,%r79
    store i32 %r80, ptr %r28
    %r81 = load i32, ptr %r26
    %r82 = add i32 1,0
    %r83 = add i32 %r81,%r82
    store i32 %r83, ptr %r26
    %r84 = load i32, ptr %r26
    %r85 = load i32, ptr %r13
    %r86 = icmp sge i32 %r84,%r85
    br i1 %r86, label %L23, label %L24
L22:  ;
    %r87 = load i32, ptr %r24
    %r88 = add i32 1,0
    %r89 = add i32 %r87,%r88
    store i32 %r89, ptr %r24
    %r90 = load i32, ptr %r24
    %r91 = load i32, ptr %r12
    %r92 = icmp sge i32 %r90,%r91
    br i1 %r92, label %L26, label %L27
L23:  ;
    br label %L22
L24:  ;
    br label %L20
L26:  ;
    br label %L19
L27:  ;
    br label %L17
L29:  ;
    br label %L16
L30:  ;
    br label %L14
L32:  ;
    br label %L13
L33:  ;
    br label %L11
L35:  ;
    br label %L10
L36:  ;
    br label %L8
L38:  ;
    br label %L7
L39:  ;
    br label %L5
L41:  ;
    br label %L4
L42:  ;
    br label %L2
}
define i32 @main()
{
L0:  ;
    %r16 = alloca i32
    %r14 = alloca i32
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
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
