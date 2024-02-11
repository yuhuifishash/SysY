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
@INF = global i32 1073741824
@a = global [30x [30x i32]] zeroinitializer
@step = global [4 x [2 x i32]] [[2 x i32] [i32 1,i32 0],[2 x i32] [i32 -1,i32 0],[2 x i32] [i32 0,i32 1],[2 x i32] [i32 0,i32 -1]]
@w = global i32 zeroinitializer
@h = global i32 zeroinitializer
@x_0 = global i32 zeroinitializer
@y_0 = global i32 zeroinitializer
@x_1 = global i32 zeroinitializer
@y_1 = global i32 zeroinitializer
define i32 @search(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r86 = alloca i32
    %r21 = alloca i32
    %r19 = alloca i32
    %r17 = alloca i32
    %r12 = alloca i32
    %r10 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    store i32 %r1, ptr %r4
    store i32 %r2, ptr %r5
    br label %L1
L1:
    %r6 = load i32, ptr %r5
    %r7 = add i32 10,0
    %r8 = icmp sgt i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r9 = load i32, ptr @INF
    ret i32 %r9
L3:
    %r11 = load i32, ptr @INF
    store i32 %r11, ptr %r10
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    br label %L4
L4:
    %r14 = load i32, ptr %r12
    %r15 = add i32 4,0
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L5, label %L6
L5:
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    %r20 = load i32, ptr %r3
    store i32 %r20, ptr %r19
    %r22 = load i32, ptr %r4
    store i32 %r22, ptr %r21
    br label %L7
L6:
    %r116 = load i32, ptr %r10
    %r117 = add i32 10,0
    %r118 = icmp sgt i32 %r116,%r117
    br i1 %r118, label %L28, label %L29
L7:
    %r23 = load i32, ptr %r19
    %r24 = load i32, ptr %r21
    %r25 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r23, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = add i32 1,0
    %r28 = icmp ne i32 %r26,%r27
    br i1 %r28, label %L8, label %L9
L8:
    %r29 = load i32, ptr %r19
    %r30 = load i32, ptr @x_1
    %r31 = icmp eq i32 %r29,%r30
    br i1 %r31, label %L12, label %L11
L9:
    %r50 = load i32, ptr %r19
    %r51 = load i32, ptr @x_1
    %r52 = icmp eq i32 %r50,%r51
    br i1 %r52, label %L16, label %L15
L10:
    br label %L9
L11:
    %r35 = load i32, ptr %r19
    %r36 = load i32, ptr %r12
    %r37 = add i32 0,0
    %r38 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r36, i32 %r37
    %r39 = load i32, ptr %r38
    %r40 = add i32 %r35,%r39
    store i32 %r40, ptr %r19
    %r41 = load i32, ptr %r21
    %r42 = load i32, ptr %r12
    %r43 = add i32 1,0
    %r44 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r42, i32 %r43
    %r45 = load i32, ptr %r44
    %r46 = add i32 %r41,%r45
    store i32 %r46, ptr %r21
    %r47 = load i32, ptr %r17
    %r48 = add i32 1,0
    %r49 = add i32 %r47,%r48
    store i32 %r49, ptr %r17
    br label %L7
L12:
    %r32 = load i32, ptr %r21
    %r33 = load i32, ptr @y_1
    %r34 = icmp eq i32 %r32,%r33
    br i1 %r34, label %L10, label %L11
L14:
    %r56 = add i32 1,0
    ret i32 %r56
L15:
    %r57 = load i32, ptr %r17
    %r58 = add i32 1,0
    %r59 = icmp sle i32 %r57,%r58
    br i1 %r59, label %L17, label %L18
L16:
    %r53 = load i32, ptr %r21
    %r54 = load i32, ptr @y_1
    %r55 = icmp eq i32 %r53,%r54
    br i1 %r55, label %L14, label %L15
L17:
    %r60 = load i32, ptr %r12
    %r61 = add i32 1,0
    %r62 = add i32 %r60,%r61
    store i32 %r62, ptr %r12
    br label %L4
L18:
    %r63 = load i32, ptr %r19
    %r64 = add i32 0,0
    %r65 = icmp eq i32 %r63,%r64
    br i1 %r65, label %L20, label %L24
L20:
    %r79 = load i32, ptr %r12
    %r80 = add i32 1,0
    %r81 = add i32 %r79,%r80
    store i32 %r81, ptr %r12
    br label %L4
L21:
    %r82 = load i32, ptr %r19
    %r83 = load i32, ptr %r21
    %r84 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r82, i32 %r83
    %r85 = add i32 0,0
    store i32 %r85, ptr %r84
    %r87 = load i32, ptr %r19
    %r88 = load i32, ptr %r12
    %r89 = add i32 0,0
    %r90 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r88, i32 %r89
    %r91 = load i32, ptr %r90
    %r92 = sub i32 %r87,%r91
    %r93 = load i32, ptr %r21
    %r94 = load i32, ptr %r12
    %r95 = add i32 1,0
    %r96 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r94, i32 %r95
    %r97 = load i32, ptr %r96
    %r98 = sub i32 %r93,%r97
    %r99 = load i32, ptr %r5
    %r100 = add i32 1,0
    %r101 = add i32 %r99,%r100
    %r102 = call i32 @search(i32 %r92,i32 %r98,i32 %r101)
    %r103 = add i32 1,0
    %r104 = add i32 %r102,%r103
    store i32 %r104, ptr %r86
    %r105 = load i32, ptr %r86
    %r106 = load i32, ptr %r10
    %r107 = icmp slt i32 %r105,%r106
    br i1 %r107, label %L26, label %L27
L22:
    %r74 = load i32, ptr %r21
    %r75 = load i32, ptr @w
    %r76 = add i32 1,0
    %r77 = add i32 %r75,%r76
    %r78 = icmp eq i32 %r74,%r77
    br i1 %r78, label %L20, label %L21
L23:
    %r71 = load i32, ptr %r21
    %r72 = add i32 0,0
    %r73 = icmp eq i32 %r71,%r72
    br i1 %r73, label %L20, label %L22
L24:
    %r66 = load i32, ptr %r19
    %r67 = load i32, ptr @h
    %r68 = add i32 1,0
    %r69 = add i32 %r67,%r68
    %r70 = icmp eq i32 %r66,%r69
    br i1 %r70, label %L20, label %L23
L26:
    %r108 = load i32, ptr %r86
    store i32 %r108, ptr %r10
    br label %L27
L27:
    %r109 = load i32, ptr %r19
    %r110 = load i32, ptr %r21
    %r111 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r109, i32 %r110
    %r112 = add i32 1,0
    store i32 %r112, ptr %r111
    %r113 = load i32, ptr %r12
    %r114 = add i32 1,0
    %r115 = add i32 %r113,%r114
    store i32 %r115, ptr %r12
    br label %L4
L28:
    %r119 = load i32, ptr @INF
    ret i32 %r119
L29:
    %r120 = load i32, ptr %r10
    ret i32 %r120
}
define i32 @main()
{
L0:
    %r61 = alloca i32
    %r7 = alloca i32
    %r5 = alloca i32
    br label %L1
L1:
    %r0 = call i32 @getint()
    store i32 %r0, ptr @w
    %r1 = call i32 @getint()
    store i32 %r1, ptr @h
    br label %L2
L2:
    %r2 = load i32, ptr @w
    %r3 = add i32 0,0
    %r4 = icmp ne i32 %r2,%r3
    br i1 %r4, label %L3, label %L4
L3:
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r9 = add i32 0,0
    store i32 %r9, ptr %r5
    br label %L5
L4:
    %r76 = add i32 0,0
    ret i32 %r76
L5:
    %r10 = load i32, ptr %r5
    %r11 = add i32 30,0
    %r12 = icmp slt i32 %r10,%r11
    br i1 %r12, label %L6, label %L7
L6:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r7
    br label %L8
L7:
    %r27 = add i32 1,0
    store i32 %r27, ptr %r5
    br label %L11
L8:
    %r14 = load i32, ptr %r7
    %r15 = add i32 30,0
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L9, label %L10
L9:
    %r17 = load i32, ptr %r5
    %r18 = load i32, ptr %r7
    %r19 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r17, i32 %r18
    %r20 = add i32 1,0
    store i32 %r20, ptr %r19
    %r21 = load i32, ptr %r7
    %r22 = add i32 1,0
    %r23 = add i32 %r21,%r22
    store i32 %r23, ptr %r7
    br label %L8
L10:
    %r24 = load i32, ptr %r5
    %r25 = add i32 1,0
    %r26 = add i32 %r24,%r25
    store i32 %r26, ptr %r5
    br label %L5
L11:
    %r28 = load i32, ptr %r5
    %r29 = load i32, ptr @h
    %r30 = icmp sle i32 %r28,%r29
    br i1 %r30, label %L12, label %L13
L12:
    %r31 = add i32 1,0
    store i32 %r31, ptr %r7
    br label %L14
L13:
    %r62 = load i32, ptr @x_0
    %r63 = load i32, ptr @y_0
    %r64 = add i32 1,0
    %r65 = call i32 @search(i32 %r62,i32 %r63,i32 %r64)
    store i32 %r65, ptr %r61
    %r66 = load i32, ptr %r61
    %r67 = add i32 10,0
    %r68 = icmp sle i32 %r66,%r67
    br i1 %r68, label %L22, label %L23
L14:
    %r32 = load i32, ptr %r7
    %r33 = load i32, ptr @w
    %r34 = icmp sle i32 %r32,%r33
    br i1 %r34, label %L15, label %L16
L15:
    %r35 = load i32, ptr %r5
    %r36 = load i32, ptr %r7
    %r37 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r35, i32 %r36
    %r38 = call i32 @getint()
    store i32 %r38, ptr %r37
    %r39 = load i32, ptr %r5
    %r40 = load i32, ptr %r7
    %r41 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r39, i32 %r40
    %r42 = load i32, ptr %r41
    %r43 = add i32 2,0
    %r44 = icmp eq i32 %r42,%r43
    br i1 %r44, label %L17, label %L18
L16:
    %r58 = load i32, ptr %r5
    %r59 = add i32 1,0
    %r60 = add i32 %r58,%r59
    store i32 %r60, ptr %r5
    br label %L11
L17:
    %r45 = load i32, ptr %r5
    store i32 %r45, ptr @x_0
    %r46 = load i32, ptr %r7
    store i32 %r46, ptr @y_0
    br label %L19
L18:
    %r47 = load i32, ptr %r5
    %r48 = load i32, ptr %r7
    %r49 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r47, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = add i32 3,0
    %r52 = icmp eq i32 %r50,%r51
    br i1 %r52, label %L20, label %L21
L19:
    %r55 = load i32, ptr %r7
    %r56 = add i32 1,0
    %r57 = add i32 %r55,%r56
    store i32 %r57, ptr %r7
    br label %L14
L20:
    %r53 = load i32, ptr %r5
    store i32 %r53, ptr @x_1
    %r54 = load i32, ptr %r7
    store i32 %r54, ptr @y_1
    br label %L21
L21:
    br label %L19
L22:
    %r69 = load i32, ptr %r61
    call void @putint(i32 %r69)
    %r70 = add i32 10,0
    call void @putch(i32 %r70)
    br label %L24
L23:
    %r71 = add i32 1,0
    %r72 = sub i32 0,%r71
    call void @putint(i32 %r72)
    %r73 = add i32 10,0
    call void @putch(i32 %r73)
    br label %L24
L24:
    %r74 = call i32 @getint()
    store i32 %r74, ptr @w
    %r75 = call i32 @getint()
    store i32 %r75, ptr @h
    br label %L2
}
