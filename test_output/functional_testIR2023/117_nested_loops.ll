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
define void @loop2()
{
L0:
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
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
    store i32 0, ptr %r4
    store i32 0, ptr %r5
    store i32 0, ptr %r6
    %r7 = add i32 0,0
    store i32 %r7, ptr %r0
    br label %L2
L2:
    %r8 = load i32, ptr %r0
    %r9 = add i32 10,0
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L4
L3:
    %r11 = add i32 0,0
    store i32 %r11, ptr %r1
    br label %L5
L4:
    ret void
L5:
    %r12 = load i32, ptr %r1
    %r13 = add i32 2,0
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L6, label %L7
L6:
    %r15 = add i32 0,0
    store i32 %r15, ptr %r2
    br label %L8
L7:
    %r68 = load i32, ptr %r0
    %r69 = add i32 1,0
    %r70 = add i32 %r68,%r69
    store i32 %r70, ptr %r0
    br label %L2
L8:
    %r16 = load i32, ptr %r2
    %r17 = add i32 3,0
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L9, label %L10
L9:
    %r19 = add i32 0,0
    store i32 %r19, ptr %r3
    br label %L11
L10:
    %r65 = load i32, ptr %r1
    %r66 = add i32 1,0
    %r67 = add i32 %r65,%r66
    store i32 %r67, ptr %r1
    br label %L5
L11:
    %r20 = load i32, ptr %r3
    %r21 = add i32 2,0
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L12, label %L13
L12:
    %r23 = add i32 0,0
    store i32 %r23, ptr %r4
    br label %L14
L13:
    %r62 = load i32, ptr %r2
    %r63 = add i32 1,0
    %r64 = add i32 %r62,%r63
    store i32 %r64, ptr %r2
    br label %L8
L14:
    %r24 = load i32, ptr %r4
    %r25 = add i32 4,0
    %r26 = icmp slt i32 %r24,%r25
    br i1 %r26, label %L15, label %L16
L15:
    %r27 = add i32 0,0
    store i32 %r27, ptr %r5
    br label %L17
L16:
    %r59 = load i32, ptr %r3
    %r60 = add i32 1,0
    %r61 = add i32 %r59,%r60
    store i32 %r61, ptr %r3
    br label %L11
L17:
    %r28 = load i32, ptr %r5
    %r29 = add i32 8,0
    %r30 = icmp slt i32 %r28,%r29
    br i1 %r30, label %L18, label %L19
L18:
    %r31 = add i32 0,0
    store i32 %r31, ptr %r6
    br label %L20
L19:
    %r56 = load i32, ptr %r4
    %r57 = add i32 1,0
    %r58 = add i32 %r56,%r57
    store i32 %r58, ptr %r4
    br label %L14
L20:
    %r32 = load i32, ptr %r6
    %r33 = add i32 7,0
    %r34 = icmp slt i32 %r32,%r33
    br i1 %r34, label %L21, label %L22
L21:
    %r35 = load i32, ptr %r0
    %r36 = load i32, ptr %r1
    %r37 = load i32, ptr %r2
    %r38 = load i32, ptr %r3
    %r39 = load i32, ptr %r4
    %r40 = load i32, ptr %r5
    %r41 = load i32, ptr %r6
    %r42 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], ptr @arr2, i32 0, i32 %r35, i32 %r36, i32 %r37, i32 %r38, i32 %r39, i32 %r40, i32 %r41
    %r43 = load i32, ptr %r0
    %r44 = load i32, ptr %r1
    %r45 = add i32 %r43,%r44
    %r46 = load i32, ptr %r3
    %r47 = add i32 %r45,%r46
    %r48 = load i32, ptr %r6
    %r49 = add i32 %r47,%r48
    store i32 %r49, ptr %r42
    %r50 = load i32, ptr %r6
    %r51 = add i32 1,0
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r6
    br label %L20
L22:
    %r53 = load i32, ptr %r5
    %r54 = add i32 1,0
    %r55 = add i32 %r53,%r54
    store i32 %r55, ptr %r5
    br label %L17
}
define void @loop1(i32 %r0,i32 %r1)
{
L0:
    %r10 = alloca i32
    %r9 = alloca i32
    %r8 = alloca i32
    %r7 = alloca i32
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    store i32 0, ptr %r4
    store i32 0, ptr %r5
    store i32 0, ptr %r6
    store i32 0, ptr %r7
    store i32 0, ptr %r8
    store i32 0, ptr %r9
    store i32 0, ptr %r10
    %r11 = add i32 0,0
    store i32 %r11, ptr %r4
    br label %L2
L2:
    %r12 = load i32, ptr %r4
    %r13 = load i32, ptr %r2
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L5, label %L4
L3:
    %r18 = add i32 0,0
    store i32 %r18, ptr %r5
    br label %L6
L4:
    ret void
L5:
    %r15 = load i32, ptr %r4
    %r16 = load i32, ptr %r3
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L4
L6:
    %r19 = load i32, ptr %r5
    %r20 = add i32 2,0
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L7, label %L8
L7:
    %r22 = add i32 0,0
    store i32 %r22, ptr %r6
    br label %L9
L8:
    %r85 = load i32, ptr %r4
    %r86 = add i32 1,0
    %r87 = add i32 %r85,%r86
    store i32 %r87, ptr %r4
    br label %L2
L9:
    %r23 = load i32, ptr %r6
    %r24 = add i32 3,0
    %r25 = icmp slt i32 %r23,%r24
    br i1 %r25, label %L10, label %L11
L10:
    %r26 = add i32 0,0
    store i32 %r26, ptr %r7
    br label %L12
L11:
    %r82 = load i32, ptr %r5
    %r83 = add i32 1,0
    %r84 = add i32 %r82,%r83
    store i32 %r84, ptr %r5
    br label %L6
L12:
    %r27 = load i32, ptr %r7
    %r28 = add i32 4,0
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L13, label %L14
L13:
    %r30 = add i32 0,0
    store i32 %r30, ptr %r8
    br label %L15
L14:
    %r79 = load i32, ptr %r6
    %r80 = add i32 1,0
    %r81 = add i32 %r79,%r80
    store i32 %r81, ptr %r6
    br label %L9
L15:
    %r31 = load i32, ptr %r8
    %r32 = add i32 5,0
    %r33 = icmp slt i32 %r31,%r32
    br i1 %r33, label %L16, label %L17
L16:
    %r34 = add i32 0,0
    store i32 %r34, ptr %r9
    br label %L18
L17:
    %r76 = load i32, ptr %r7
    %r77 = add i32 1,0
    %r78 = add i32 %r76,%r77
    store i32 %r78, ptr %r7
    br label %L12
L18:
    %r35 = load i32, ptr %r9
    %r36 = add i32 6,0
    %r37 = icmp slt i32 %r35,%r36
    br i1 %r37, label %L19, label %L20
L19:
    %r38 = add i32 0,0
    store i32 %r38, ptr %r10
    br label %L21
L20:
    %r73 = load i32, ptr %r8
    %r74 = add i32 1,0
    %r75 = add i32 %r73,%r74
    store i32 %r75, ptr %r8
    br label %L15
L21:
    %r39 = load i32, ptr %r10
    %r40 = add i32 2,0
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L22, label %L23
L22:
    %r42 = load i32, ptr %r4
    %r43 = load i32, ptr %r5
    %r44 = load i32, ptr %r6
    %r45 = load i32, ptr %r7
    %r46 = load i32, ptr %r8
    %r47 = load i32, ptr %r9
    %r48 = load i32, ptr %r10
    %r49 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], ptr @arr1, i32 0, i32 %r42, i32 %r43, i32 %r44, i32 %r45, i32 %r46, i32 %r47, i32 %r48
    %r50 = load i32, ptr %r4
    %r51 = load i32, ptr %r5
    %r52 = add i32 %r50,%r51
    %r53 = load i32, ptr %r6
    %r54 = add i32 %r52,%r53
    %r55 = load i32, ptr %r7
    %r56 = add i32 %r54,%r55
    %r57 = load i32, ptr %r8
    %r58 = add i32 %r56,%r57
    %r59 = load i32, ptr %r9
    %r60 = add i32 %r58,%r59
    %r61 = load i32, ptr %r10
    %r62 = add i32 %r60,%r61
    %r63 = load i32, ptr %r2
    %r64 = add i32 %r62,%r63
    %r65 = load i32, ptr %r3
    %r66 = add i32 %r64,%r65
    store i32 %r66, ptr %r49
    %r67 = load i32, ptr %r10
    %r68 = add i32 1,0
    %r69 = add i32 %r67,%r68
    store i32 %r69, ptr %r10
    br label %L21
L23:
    %r70 = load i32, ptr %r9
    %r71 = add i32 1,0
    %r72 = add i32 %r70,%r71
    store i32 %r72, ptr %r9
    br label %L18
}
define i32 @loop3(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6)
{
L0:
    %r21 = alloca i32
    %r20 = alloca i32
    %r19 = alloca i32
    %r18 = alloca i32
    %r17 = alloca i32
    %r16 = alloca i32
    %r15 = alloca i32
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
L1:
    store i32 0, ptr %r14
    store i32 0, ptr %r15
    store i32 0, ptr %r16
    store i32 0, ptr %r17
    store i32 0, ptr %r18
    store i32 0, ptr %r19
    store i32 0, ptr %r20
    %r22 = add i32 0,0
    store i32 %r22, ptr %r21
    %r23 = add i32 0,0
    store i32 %r23, ptr %r14
    br label %L2
L2:
    %r24 = load i32, ptr %r14
    %r25 = add i32 10,0
    %r26 = icmp slt i32 %r24,%r25
    br i1 %r26, label %L3, label %L4
L3:
    %r27 = add i32 0,0
    store i32 %r27, ptr %r15
    br label %L5
L4:
    %r116 = load i32, ptr %r21
    ret i32 %r116
L5:
    %r28 = load i32, ptr %r15
    %r29 = add i32 100,0
    %r30 = icmp slt i32 %r28,%r29
    br i1 %r30, label %L6, label %L7
L6:
    %r31 = add i32 0,0
    store i32 %r31, ptr %r16
    br label %L8
L7:
    %r110 = load i32, ptr %r14
    %r111 = add i32 1,0
    %r112 = add i32 %r110,%r111
    store i32 %r112, ptr %r14
    %r113 = load i32, ptr %r14
    %r114 = load i32, ptr %r7
    %r115 = icmp sge i32 %r113,%r114
    br i1 %r115, label %L41, label %L42
L8:
    %r32 = load i32, ptr %r16
    %r33 = add i32 1000,0
    %r34 = icmp slt i32 %r32,%r33
    br i1 %r34, label %L9, label %L10
L9:
    %r35 = add i32 0,0
    store i32 %r35, ptr %r17
    br label %L11
L10:
    %r104 = load i32, ptr %r15
    %r105 = add i32 1,0
    %r106 = add i32 %r104,%r105
    store i32 %r106, ptr %r15
    %r107 = load i32, ptr %r15
    %r108 = load i32, ptr %r8
    %r109 = icmp sge i32 %r107,%r108
    br i1 %r109, label %L38, label %L39
L11:
    %r36 = load i32, ptr %r17
    %r37 = add i32 10000,0
    %r38 = icmp slt i32 %r36,%r37
    br i1 %r38, label %L12, label %L13
L12:
    %r39 = add i32 0,0
    store i32 %r39, ptr %r18
    br label %L14
L13:
    %r98 = load i32, ptr %r16
    %r99 = add i32 1,0
    %r100 = add i32 %r98,%r99
    store i32 %r100, ptr %r16
    %r101 = load i32, ptr %r16
    %r102 = load i32, ptr %r9
    %r103 = icmp sge i32 %r101,%r102
    br i1 %r103, label %L35, label %L36
L14:
    %r40 = load i32, ptr %r18
    %r41 = add i32 100000,0
    %r42 = icmp slt i32 %r40,%r41
    br i1 %r42, label %L15, label %L16
L15:
    %r43 = add i32 0,0
    store i32 %r43, ptr %r19
    br label %L17
L16:
    %r92 = load i32, ptr %r17
    %r93 = add i32 1,0
    %r94 = add i32 %r92,%r93
    store i32 %r94, ptr %r17
    %r95 = load i32, ptr %r17
    %r96 = load i32, ptr %r10
    %r97 = icmp sge i32 %r95,%r96
    br i1 %r97, label %L32, label %L33
L17:
    %r44 = load i32, ptr %r19
    %r45 = add i32 1000000,0
    %r46 = icmp slt i32 %r44,%r45
    br i1 %r46, label %L18, label %L19
L18:
    %r47 = add i32 0,0
    store i32 %r47, ptr %r20
    br label %L20
L19:
    %r86 = load i32, ptr %r18
    %r87 = add i32 1,0
    %r88 = add i32 %r86,%r87
    store i32 %r88, ptr %r18
    %r89 = load i32, ptr %r18
    %r90 = load i32, ptr %r11
    %r91 = icmp sge i32 %r89,%r90
    br i1 %r91, label %L29, label %L30
L20:
    %r48 = load i32, ptr %r20
    %r49 = add i32 10000000,0
    %r50 = icmp slt i32 %r48,%r49
    br i1 %r50, label %L21, label %L22
L21:
    %r51 = load i32, ptr %r21
    %r52 = add i32 817,0
    %r53 = srem i32 %r51,%r52
    %r54 = load i32, ptr %r14
    %r55 = load i32, ptr %r15
    %r56 = load i32, ptr %r16
    %r57 = load i32, ptr %r17
    %r58 = load i32, ptr %r18
    %r59 = load i32, ptr %r19
    %r60 = load i32, ptr %r20
    %r61 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], ptr @arr1, i32 0, i32 %r54, i32 %r55, i32 %r56, i32 %r57, i32 %r58, i32 %r59, i32 %r60
    %r62 = load i32, ptr %r61
    %r63 = add i32 %r53,%r62
    %r64 = load i32, ptr %r14
    %r65 = load i32, ptr %r15
    %r66 = load i32, ptr %r16
    %r67 = load i32, ptr %r17
    %r68 = load i32, ptr %r18
    %r69 = load i32, ptr %r19
    %r70 = load i32, ptr %r20
    %r71 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], ptr @arr2, i32 0, i32 %r64, i32 %r65, i32 %r66, i32 %r67, i32 %r68, i32 %r69, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = add i32 %r63,%r72
    store i32 %r73, ptr %r21
    %r74 = load i32, ptr %r20
    %r75 = add i32 1,0
    %r76 = add i32 %r74,%r75
    store i32 %r76, ptr %r20
    %r77 = load i32, ptr %r20
    %r78 = load i32, ptr %r13
    %r79 = icmp sge i32 %r77,%r78
    br i1 %r79, label %L23, label %L24
L22:
    %r80 = load i32, ptr %r19
    %r81 = add i32 1,0
    %r82 = add i32 %r80,%r81
    store i32 %r82, ptr %r19
    %r83 = load i32, ptr %r19
    %r84 = load i32, ptr %r12
    %r85 = icmp sge i32 %r83,%r84
    br i1 %r85, label %L26, label %L27
L23:
    br label %L22
L24:
    br label %L20
L26:
    br label %L19
L27:
    br label %L17
L29:
    br label %L16
L30:
    br label %L14
L32:
    br label %L13
L33:
    br label %L11
L35:
    br label %L10
L36:
    br label %L8
L38:
    br label %L7
L39:
    br label %L5
L41:
    br label %L4
L42:
    br label %L2
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
    br label %L1
L1:
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
