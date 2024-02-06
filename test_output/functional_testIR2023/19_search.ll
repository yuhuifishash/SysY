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
    %r133 = alloca i32
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
    br label %L1
L1:
    %r6 = load i32, ptr %r5
    %r7 = add i32 0,10
    %r8 = icmp sgt i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r11 = load i32, ptr @INF
    ret i32 %r11
L3:
    %r13 = load i32, ptr @INF
    store i32 %r13, ptr %r12
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r14
    %r17 = add i32 0,4
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L5, label %L7
L5:
    %r22 = add i32 0,0
    store i32 %r22, ptr %r21
    %r24 = load i32, ptr %r3
    store i32 %r24, ptr %r23
    %r26 = load i32, ptr %r4
    store i32 %r26, ptr %r25
    %r27 = load i32, ptr %r23
    %r28 = load i32, ptr %r25
    %r29 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r27, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = add i32 0,1
    %r32 = icmp ne i32 %r30,%r31
    br i1 %r32, label %L9, label %L11
L6:
    %r165 = load i32, ptr %r14
    %r166 = add i32 0,4
    %r167 = icmp slt i32 %r165,%r166
    br i1 %r167, label %L5, label %L7
L7:
    %r170 = load i32, ptr %r12
    %r171 = add i32 0,10
    %r172 = icmp sgt i32 %r170,%r171
    br i1 %r172, label %L35, label %L36
L9:
    %r35 = load i32, ptr %r23
    %r36 = load i32, ptr @x_1
    %r37 = icmp eq i32 %r35,%r36
    br i1 %r37, label %L14, label %L13
L10:
    %r63 = load i32, ptr %r23
    %r64 = load i32, ptr %r25
    %r65 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r63, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = add i32 0,1
    %r68 = icmp ne i32 %r66,%r67
    br i1 %r68, label %L9, label %L11
L11:
    %r71 = load i32, ptr %r23
    %r72 = load i32, ptr @x_1
    %r73 = icmp eq i32 %r71,%r72
    br i1 %r73, label %L19, label %L18
L12:
    br label %L11
L13:
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
    br label %L10
L14:
    %r40 = load i32, ptr %r25
    %r41 = load i32, ptr @y_1
    %r42 = icmp eq i32 %r40,%r41
    br i1 %r42, label %L12, label %L13
L17:
    %r84 = add i32 0,1
    ret i32 %r84
L18:
    %r85 = load i32, ptr %r21
    %r86 = add i32 0,1
    %r87 = icmp sle i32 %r85,%r86
    br i1 %r87, label %L21, label %L22
L19:
    %r76 = load i32, ptr %r25
    %r77 = load i32, ptr @y_1
    %r78 = icmp eq i32 %r76,%r77
    br i1 %r78, label %L17, label %L18
L21:
    %r90 = load i32, ptr %r14
    %r91 = add i32 0,1
    %r92 = add i32 %r90,%r91
    store i32 %r92, ptr %r14
    br label %L6
L22:
    %r93 = load i32, ptr %r23
    %r94 = add i32 0,0
    %r95 = icmp eq i32 %r93,%r94
    br i1 %r95, label %L24, label %L30
L24:
    %r126 = load i32, ptr %r14
    %r127 = add i32 0,1
    %r128 = add i32 %r126,%r127
    store i32 %r128, ptr %r14
    br label %L6
L25:
    %r129 = add i32 0,0
    %r130 = load i32, ptr %r23
    %r131 = load i32, ptr %r25
    %r132 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r130, i32 %r131
    store i32 %r129, ptr %r132
    %r134 = load i32, ptr %r23
    %r135 = load i32, ptr %r14
    %r136 = add i32 0,0
    %r137 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r135, i32 %r136
    %r138 = load i32, ptr %r137
    %r139 = sub i32 %r134,%r138
    %r140 = load i32, ptr %r25
    %r141 = load i32, ptr %r14
    %r142 = add i32 0,1
    %r143 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r141, i32 %r142
    %r144 = load i32, ptr %r143
    %r145 = sub i32 %r140,%r144
    %r146 = load i32, ptr %r5
    %r147 = add i32 0,1
    %r148 = add i32 %r146,%r147
    %r149 = call i32 @search(i32 %r139,i32 %r145,i32 %r148)
    %r150 = add i32 0,1
    %r151 = add i32 %r149,%r150
    store i32 %r151, ptr %r133
    %r152 = load i32, ptr %r133
    %r153 = load i32, ptr %r12
    %r154 = icmp slt i32 %r152,%r153
    br i1 %r154, label %L33, label %L34
L26:
    %r116 = load i32, ptr %r25
    %r117 = load i32, ptr @w
    %r118 = add i32 0,1
    %r119 = add i32 %r117,%r118
    %r120 = icmp eq i32 %r116,%r119
    br i1 %r120, label %L24, label %L25
L28:
    %r108 = load i32, ptr %r25
    %r109 = add i32 0,0
    %r110 = icmp eq i32 %r108,%r109
    br i1 %r110, label %L24, label %L26
L30:
    %r98 = load i32, ptr %r23
    %r99 = load i32, ptr @h
    %r100 = add i32 0,1
    %r101 = add i32 %r99,%r100
    %r102 = icmp eq i32 %r98,%r101
    br i1 %r102, label %L24, label %L28
L33:
    %r157 = load i32, ptr %r133
    store i32 %r157, ptr %r12
    br label %L34
L34:
    %r158 = add i32 0,1
    %r159 = load i32, ptr %r23
    %r160 = load i32, ptr %r25
    %r161 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r159, i32 %r160
    store i32 %r158, ptr %r161
    %r162 = load i32, ptr %r14
    %r163 = add i32 0,1
    %r164 = add i32 %r162,%r163
    store i32 %r164, ptr %r14
    br label %L6
L35:
    %r175 = load i32, ptr @INF
    ret i32 %r175
L36:
    %r176 = load i32, ptr %r12
    ret i32 %r176
}
define i32 @main()
{
L0:
    %r95 = alloca i32
    %r9 = alloca i32
    %r7 = alloca i32
    br label %L1
L1:
    %r0 = call i32 @getint()
    store i32 %r0, ptr @w
    %r1 = call i32 @getint()
    store i32 %r1, ptr @h
    %r2 = load i32, ptr @w
    %r3 = add i32 0,0
    %r4 = icmp ne i32 %r2,%r3
    br i1 %r4, label %L3, label %L5
L3:
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r7
    %r12 = load i32, ptr %r7
    %r13 = add i32 0,30
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L7, label %L9
L4:
    %r112 = load i32, ptr @w
    %r113 = add i32 0,0
    %r114 = icmp ne i32 %r112,%r113
    br i1 %r114, label %L3, label %L5
L5:
    %r117 = add i32 0,0
    ret i32 %r117
L7:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r9
    %r18 = load i32, ptr %r9
    %r19 = add i32 0,30
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L11, label %L13
L8:
    %r38 = load i32, ptr %r7
    %r39 = add i32 0,30
    %r40 = icmp slt i32 %r38,%r39
    br i1 %r40, label %L7, label %L9
L9:
    %r43 = add i32 0,1
    store i32 %r43, ptr %r7
    %r44 = load i32, ptr %r7
    %r45 = load i32, ptr @h
    %r46 = icmp sle i32 %r44,%r45
    br i1 %r46, label %L15, label %L17
L11:
    %r23 = add i32 0,1
    %r24 = load i32, ptr %r7
    %r25 = load i32, ptr %r9
    %r26 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r24, i32 %r25
    store i32 %r23, ptr %r26
    %r27 = load i32, ptr %r9
    %r28 = add i32 0,1
    %r29 = add i32 %r27,%r28
    store i32 %r29, ptr %r9
    br label %L12
L12:
    %r30 = load i32, ptr %r9
    %r31 = add i32 0,30
    %r32 = icmp slt i32 %r30,%r31
    br i1 %r32, label %L11, label %L13
L13:
    %r35 = load i32, ptr %r7
    %r36 = add i32 0,1
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r7
    br label %L8
L15:
    %r49 = add i32 0,1
    store i32 %r49, ptr %r9
    %r50 = load i32, ptr %r9
    %r51 = load i32, ptr @w
    %r52 = icmp sle i32 %r50,%r51
    br i1 %r52, label %L19, label %L21
L16:
    %r90 = load i32, ptr %r7
    %r91 = load i32, ptr @h
    %r92 = icmp sle i32 %r90,%r91
    br i1 %r92, label %L15, label %L17
L17:
    %r96 = load i32, ptr @x_0
    %r97 = load i32, ptr @y_0
    %r98 = add i32 0,1
    %r99 = call i32 @search(i32 %r96,i32 %r97,i32 %r98)
    store i32 %r99, ptr %r95
    %r100 = load i32, ptr %r95
    %r101 = add i32 0,10
    %r102 = icmp sle i32 %r100,%r101
    br i1 %r102, label %L27, label %L28
L19:
    %r55 = call i32 @getint()
    %r56 = load i32, ptr %r7
    %r57 = load i32, ptr %r9
    %r58 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r56, i32 %r57
    store i32 %r55, ptr %r58
    %r59 = load i32, ptr %r7
    %r60 = load i32, ptr %r9
    %r61 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r59, i32 %r60
    %r62 = load i32, ptr %r61
    %r63 = add i32 0,2
    %r64 = icmp eq i32 %r62,%r63
    br i1 %r64, label %L22, label %L23
L20:
    %r82 = load i32, ptr %r9
    %r83 = load i32, ptr @w
    %r84 = icmp sle i32 %r82,%r83
    br i1 %r84, label %L19, label %L21
L21:
    %r87 = load i32, ptr %r7
    %r88 = add i32 0,1
    %r89 = add i32 %r87,%r88
    store i32 %r89, ptr %r7
    br label %L16
L22:
    %r67 = load i32, ptr %r7
    store i32 %r67, ptr @x_0
    %r68 = load i32, ptr %r9
    store i32 %r68, ptr @y_0
    br label %L24
L23:
    %r69 = load i32, ptr %r7
    %r70 = load i32, ptr %r9
    %r71 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r69, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = add i32 0,3
    %r74 = icmp eq i32 %r72,%r73
    br i1 %r74, label %L25, label %L26
L24:
    %r79 = load i32, ptr %r9
    %r80 = add i32 0,1
    %r81 = add i32 %r79,%r80
    store i32 %r81, ptr %r9
    br label %L20
L25:
    %r77 = load i32, ptr %r7
    store i32 %r77, ptr @x_1
    %r78 = load i32, ptr %r9
    store i32 %r78, ptr @y_1
    br label %L26
L26:
    br label %L24
L27:
    %r105 = load i32, ptr %r95
    call void @putint(i32 %r105)
    %r106 = add i32 0,10
    call void @putch(i32 %r106)
    br label %L29
L28:
    %r107 = add i32 0,1
    %r108 = sub i32 0,%r107
    call void @putint(i32 %r108)
    %r109 = add i32 0,10
    call void @putch(i32 %r109)
    br label %L29
L29:
    %r110 = call i32 @getint()
    store i32 %r110, ptr @w
    %r111 = call i32 @getint()
    store i32 %r111, ptr @h
    br label %L4
}
