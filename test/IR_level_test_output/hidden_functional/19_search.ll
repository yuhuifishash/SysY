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
    %r125 = alloca i32
    %r25 = alloca i32
    %r23 = alloca i32
    %r21 = alloca i32
    %r14 = alloca i32
    %r12 = alloca i32
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    %r4 = alloca i32
    store i32 %r1, ptr %r4
    %r5 = alloca i32
    store i32 %r2, ptr %r5
    %r6 = load i32, ptr %r5
    %r7 = add i32 0,10
    %r8 = icmp sgt i32 %r6,%r7
    br i1 %r8, label %L1, label %L2
L1:
    %r11 = load i32, ptr @INF
    ret i32 %r11
L2:
    %r13 = load i32, ptr @INF
    store i32 %r13, ptr %r12
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    br label %L3
L3:
    %r16 = load i32, ptr %r14
    %r17 = add i32 0,4
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L4, label %L5
L4:
    %r22 = add i32 0,0
    store i32 %r22, ptr %r21
    %r24 = load i32, ptr %r3
    store i32 %r24, ptr %r23
    %r26 = load i32, ptr %r4
    store i32 %r26, ptr %r25
    br label %L6
L5:
    %r157 = load i32, ptr %r12
    %r158 = add i32 0,10
    %r159 = icmp sgt i32 %r157,%r158
    br i1 %r159, label %L32, label %L33
L6:
    %r27 = load i32, ptr %r23
    %r28 = load i32, ptr %r25
    %r29 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r27, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = add i32 0,1
    %r32 = icmp ne i32 %r30,%r31
    br i1 %r32, label %L7, label %L8
L7:
    %r35 = load i32, ptr %r23
    %r36 = load i32, ptr @x_1
    %r37 = icmp eq i32 %r35,%r36
    br i1 %r37, label %L11, label %L10
L8:
    %r63 = load i32, ptr %r23
    %r64 = load i32, ptr @x_1
    %r65 = icmp eq i32 %r63,%r64
    br i1 %r65, label %L16, label %L15
L9:
    br label %L8
L10:
    %r48 = load i32, ptr %r23
    %r49 = load i32, ptr %r14
    %r50 = add i32 0,0
    %r51 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r49, i32 %r50
    %r52 = load i32, ptr %r51
    %r53 = add i32 %r48,%r52
    store i32 %r53, ptr %r23
    %r54 = load i32, ptr %r25
    %r55 = load i32, ptr %r14
    %r56 = add i32 0,1
    %r57 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r55, i32 %r56
    %r58 = load i32, ptr %r57
    %r59 = add i32 %r54,%r58
    store i32 %r59, ptr %r25
    %r60 = load i32, ptr %r21
    %r61 = add i32 0,1
    %r62 = add i32 %r60,%r61
    store i32 %r62, ptr %r21
    br label %L6
L11:
    %r40 = load i32, ptr %r25
    %r41 = load i32, ptr @y_1
    %r42 = icmp eq i32 %r40,%r41
    br i1 %r42, label %L9, label %L10
L14:
    %r76 = add i32 0,1
    ret i32 %r76
L15:
    %r77 = load i32, ptr %r21
    %r78 = add i32 0,1
    %r79 = icmp sle i32 %r77,%r78
    br i1 %r79, label %L18, label %L19
L16:
    %r68 = load i32, ptr %r25
    %r69 = load i32, ptr @y_1
    %r70 = icmp eq i32 %r68,%r69
    br i1 %r70, label %L14, label %L15
L18:
    %r82 = load i32, ptr %r14
    %r83 = add i32 0,1
    %r84 = add i32 %r82,%r83
    store i32 %r84, ptr %r14
    br label %L3
L19:
    %r85 = load i32, ptr %r23
    %r86 = add i32 0,0
    %r87 = icmp eq i32 %r85,%r86
    br i1 %r87, label %L21, label %L27
L21:
    %r118 = load i32, ptr %r14
    %r119 = add i32 0,1
    %r120 = add i32 %r118,%r119
    store i32 %r120, ptr %r14
    br label %L3
L22:
    %r121 = add i32 0,0
    %r122 = load i32, ptr %r23
    %r123 = load i32, ptr %r25
    %r124 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r122, i32 %r123
    store i32 %r121, ptr %r124
    %r126 = load i32, ptr %r23
    %r127 = load i32, ptr %r14
    %r128 = add i32 0,0
    %r129 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r127, i32 %r128
    %r130 = load i32, ptr %r129
    %r131 = sub i32 %r126,%r130
    %r132 = load i32, ptr %r25
    %r133 = load i32, ptr %r14
    %r134 = add i32 0,1
    %r135 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r133, i32 %r134
    %r136 = load i32, ptr %r135
    %r137 = sub i32 %r132,%r136
    %r138 = load i32, ptr %r5
    %r139 = add i32 0,1
    %r140 = add i32 %r138,%r139
    %r141 = call i32 @search(i32 %r131,i32 %r137,i32 %r140)
    %r142 = add i32 0,1
    %r143 = add i32 %r141,%r142
    store i32 %r143, ptr %r125
    %r144 = load i32, ptr %r125
    %r145 = load i32, ptr %r12
    %r146 = icmp slt i32 %r144,%r145
    br i1 %r146, label %L30, label %L31
L23:
    %r108 = load i32, ptr %r25
    %r109 = load i32, ptr @w
    %r110 = add i32 0,1
    %r111 = add i32 %r109,%r110
    %r112 = icmp eq i32 %r108,%r111
    br i1 %r112, label %L21, label %L22
L25:
    %r100 = load i32, ptr %r25
    %r101 = add i32 0,0
    %r102 = icmp eq i32 %r100,%r101
    br i1 %r102, label %L21, label %L23
L27:
    %r90 = load i32, ptr %r23
    %r91 = load i32, ptr @h
    %r92 = add i32 0,1
    %r93 = add i32 %r91,%r92
    %r94 = icmp eq i32 %r90,%r93
    br i1 %r94, label %L21, label %L25
L30:
    %r149 = load i32, ptr %r125
    store i32 %r149, ptr %r12
    br label %L31
L31:
    %r150 = add i32 0,1
    %r151 = load i32, ptr %r23
    %r152 = load i32, ptr %r25
    %r153 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r151, i32 %r152
    store i32 %r150, ptr %r153
    %r154 = load i32, ptr %r14
    %r155 = add i32 0,1
    %r156 = add i32 %r154,%r155
    store i32 %r156, ptr %r14
    br label %L3
L32:
    %r162 = load i32, ptr @INF
    ret i32 %r162
L33:
    %r163 = load i32, ptr %r12
    ret i32 %r163
}
define i32 @main()
{
L0:
    %r75 = alloca i32
    %r9 = alloca i32
    %r7 = alloca i32
    %r0 = call i32 @getint()
    store i32 %r0, ptr @w
    %r1 = call i32 @getint()
    store i32 %r1, ptr @h
    br label %L1
L1:
    %r2 = load i32, ptr @w
    %r3 = add i32 0,0
    %r4 = icmp ne i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r7
    br label %L4
L3:
    %r92 = add i32 0,0
    ret i32 %r92
L4:
    %r12 = load i32, ptr %r7
    %r13 = add i32 0,30
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L5, label %L6
L5:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r9
    br label %L7
L6:
    %r33 = add i32 0,1
    store i32 %r33, ptr %r7
    br label %L10
L7:
    %r18 = load i32, ptr %r9
    %r19 = add i32 0,30
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L8, label %L9
L8:
    %r23 = add i32 0,1
    %r24 = load i32, ptr %r7
    %r25 = load i32, ptr %r9
    %r26 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r24, i32 %r25
    store i32 %r23, ptr %r26
    %r27 = load i32, ptr %r9
    %r28 = add i32 0,1
    %r29 = add i32 %r27,%r28
    store i32 %r29, ptr %r9
    br label %L7
L9:
    %r30 = load i32, ptr %r7
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r7
    br label %L4
L10:
    %r34 = load i32, ptr %r7
    %r35 = load i32, ptr @h
    %r36 = icmp sle i32 %r34,%r35
    br i1 %r36, label %L11, label %L12
L11:
    %r39 = add i32 0,1
    store i32 %r39, ptr %r9
    br label %L13
L12:
    %r76 = load i32, ptr @x_0
    %r77 = load i32, ptr @y_0
    %r78 = add i32 0,1
    %r79 = call i32 @search(i32 %r76,i32 %r77,i32 %r78)
    store i32 %r79, ptr %r75
    %r80 = load i32, ptr %r75
    %r81 = add i32 0,10
    %r82 = icmp sle i32 %r80,%r81
    br i1 %r82, label %L21, label %L22
L13:
    %r40 = load i32, ptr %r9
    %r41 = load i32, ptr @w
    %r42 = icmp sle i32 %r40,%r41
    br i1 %r42, label %L14, label %L15
L14:
    %r45 = call i32 @getint()
    %r46 = load i32, ptr %r7
    %r47 = load i32, ptr %r9
    %r48 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r46, i32 %r47
    store i32 %r45, ptr %r48
    %r49 = load i32, ptr %r7
    %r50 = load i32, ptr %r9
    %r51 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r49, i32 %r50
    %r52 = load i32, ptr %r51
    %r53 = add i32 0,2
    %r54 = icmp eq i32 %r52,%r53
    br i1 %r54, label %L16, label %L17
L15:
    %r72 = load i32, ptr %r7
    %r73 = add i32 0,1
    %r74 = add i32 %r72,%r73
    store i32 %r74, ptr %r7
    br label %L10
L16:
    %r57 = load i32, ptr %r7
    store i32 %r57, ptr @x_0
    %r58 = load i32, ptr %r9
    store i32 %r58, ptr @y_0
    br label %L18
L17:
    %r59 = load i32, ptr %r7
    %r60 = load i32, ptr %r9
    %r61 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r59, i32 %r60
    %r62 = load i32, ptr %r61
    %r63 = add i32 0,3
    %r64 = icmp eq i32 %r62,%r63
    br i1 %r64, label %L19, label %L20
L18:
    %r69 = load i32, ptr %r9
    %r70 = add i32 0,1
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r9
    br label %L13
L19:
    %r67 = load i32, ptr %r7
    store i32 %r67, ptr @x_1
    %r68 = load i32, ptr %r9
    store i32 %r68, ptr @y_1
    br label %L20
L20:
    br label %L18
L21:
    %r85 = load i32, ptr %r75
    call void @putint(i32 %r85)
    %r86 = add i32 0,10
    call void @putch(i32 %r86)
    br label %L23
L22:
    %r87 = add i32 0,1
    %r88 = sub i32 0,%r87
    call void @putint(i32 %r88)
    %r89 = add i32 0,10
    call void @putch(i32 %r89)
    br label %L23
L23:
    %r90 = call i32 @getint()
    store i32 %r90, ptr @w
    %r91 = call i32 @getint()
    store i32 %r91, ptr @h
    br label %L1
}
