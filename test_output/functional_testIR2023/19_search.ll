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
    br label %L3
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
L13:
    br label %L11
L14:
    %r56 = add i32 1,0
    ret i32 %r56
    br label %L15
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
L19:
    br label %L18
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
L25:
    br label %L21
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
    br label %L29
L29:
    %r120 = load i32, ptr %r10
    ret i32 %r120
}
define i32 @main()
{
L0:
    %r59 = alloca i32
    %r6 = alloca i32
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
    store i32 0, ptr %r5
    store i32 0, ptr %r6
    %r7 = add i32 0,0
    store i32 %r7, ptr %r5
    br label %L5
L4:
    %r74 = add i32 0,0
    ret i32 %r74
L5:
    %r8 = load i32, ptr %r5
    %r9 = add i32 30,0
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L6, label %L7
L6:
    %r11 = add i32 0,0
    store i32 %r11, ptr %r6
    br label %L8
L7:
    %r25 = add i32 1,0
    store i32 %r25, ptr %r5
    br label %L11
L8:
    %r12 = load i32, ptr %r6
    %r13 = add i32 30,0
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L9, label %L10
L9:
    %r15 = load i32, ptr %r5
    %r16 = load i32, ptr %r6
    %r17 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r15, i32 %r16
    %r18 = add i32 1,0
    store i32 %r18, ptr %r17
    %r19 = load i32, ptr %r6
    %r20 = add i32 1,0
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r6
    br label %L8
L10:
    %r22 = load i32, ptr %r5
    %r23 = add i32 1,0
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r5
    br label %L5
L11:
    %r26 = load i32, ptr %r5
    %r27 = load i32, ptr @h
    %r28 = icmp sle i32 %r26,%r27
    br i1 %r28, label %L12, label %L13
L12:
    %r29 = add i32 1,0
    store i32 %r29, ptr %r6
    br label %L14
L13:
    %r60 = load i32, ptr @x_0
    %r61 = load i32, ptr @y_0
    %r62 = add i32 1,0
    %r63 = call i32 @search(i32 %r60,i32 %r61,i32 %r62)
    store i32 %r63, ptr %r59
    %r64 = load i32, ptr %r59
    %r65 = add i32 10,0
    %r66 = icmp sle i32 %r64,%r65
    br i1 %r66, label %L22, label %L23
L14:
    %r30 = load i32, ptr %r6
    %r31 = load i32, ptr @w
    %r32 = icmp sle i32 %r30,%r31
    br i1 %r32, label %L15, label %L16
L15:
    %r33 = load i32, ptr %r5
    %r34 = load i32, ptr %r6
    %r35 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r33, i32 %r34
    %r36 = call i32 @getint()
    store i32 %r36, ptr %r35
    %r37 = load i32, ptr %r5
    %r38 = load i32, ptr %r6
    %r39 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r37, i32 %r38
    %r40 = load i32, ptr %r39
    %r41 = add i32 2,0
    %r42 = icmp eq i32 %r40,%r41
    br i1 %r42, label %L17, label %L18
L16:
    %r56 = load i32, ptr %r5
    %r57 = add i32 1,0
    %r58 = add i32 %r56,%r57
    store i32 %r58, ptr %r5
    br label %L11
L17:
    %r43 = load i32, ptr %r5
    store i32 %r43, ptr @x_0
    %r44 = load i32, ptr %r6
    store i32 %r44, ptr @y_0
    br label %L19
L18:
    %r45 = load i32, ptr %r5
    %r46 = load i32, ptr %r6
    %r47 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r45, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = add i32 3,0
    %r50 = icmp eq i32 %r48,%r49
    br i1 %r50, label %L20, label %L21
L19:
    %r53 = load i32, ptr %r6
    %r54 = add i32 1,0
    %r55 = add i32 %r53,%r54
    store i32 %r55, ptr %r6
    br label %L14
L20:
    %r51 = load i32, ptr %r5
    store i32 %r51, ptr @x_1
    %r52 = load i32, ptr %r6
    store i32 %r52, ptr @y_1
    br label %L21
L21:
    br label %L19
L22:
    %r67 = load i32, ptr %r59
    call void @putint(i32 %r67)
    %r68 = add i32 10,0
    call void @putch(i32 %r68)
    br label %L24
L23:
    %r69 = add i32 1,0
    %r70 = sub i32 0,%r69
    call void @putint(i32 %r70)
    %r71 = add i32 10,0
    call void @putch(i32 %r71)
    br label %L24
L24:
    %r72 = call i32 @getint()
    store i32 %r72, ptr @w
    %r73 = call i32 @getint()
    store i32 %r73, ptr @h
    br label %L2
}
