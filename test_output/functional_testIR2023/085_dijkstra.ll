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
@INF = global i32 65535
@e = global [16x [16x i32]] zeroinitializer
@book = global [16x i32] zeroinitializer
@dis = global [16x i32] zeroinitializer
@n = global i32 zeroinitializer
@m = global i32 zeroinitializer
@v1 = global i32 zeroinitializer
@v2 = global i32 zeroinitializer
@w = global i32 zeroinitializer
define void @Dijkstra()
{
L0:
    %r81 = alloca i32
    %r42 = alloca i32
    %r40 = alloca i32
    %r38 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 0,1
    store i32 %r4, ptr %r0
    %r5 = load i32, ptr %r0
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r5,%r6
    br i1 %r7, label %L3, label %L5
L3:
    %r10 = add i32 0,1
    %r11 = load i32, ptr %r0
    %r12 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r10, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = load i32, ptr %r0
    %r15 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r14
    store i32 %r13, ptr %r15
    %r16 = add i32 0,0
    %r17 = load i32, ptr %r0
    %r18 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r17
    store i32 %r16, ptr %r18
    %r19 = load i32, ptr %r0
    %r20 = add i32 0,1
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r0
    br label %L4
L4:
    %r22 = load i32, ptr %r0
    %r23 = load i32, ptr @n
    %r24 = icmp sle i32 %r22,%r23
    br i1 %r24, label %L3, label %L5
L5:
    %r27 = add i32 0,1
    %r28 = add i32 0,1
    %r29 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r28
    store i32 %r27, ptr %r29
    %r30 = add i32 0,1
    store i32 %r30, ptr %r0
    %r31 = load i32, ptr %r0
    %r32 = load i32, ptr @n
    %r33 = add i32 0,1
    %r34 = sub i32 %r32,%r33
    %r35 = icmp sle i32 %r31,%r34
    br i1 %r35, label %L7, label %L9
L7:
    %r39 = load i32, ptr @INF
    store i32 %r39, ptr %r38
    %r41 = add i32 0,0
    store i32 %r41, ptr %r40
    %r43 = add i32 0,1
    store i32 %r43, ptr %r42
    %r44 = load i32, ptr %r42
    %r45 = load i32, ptr @n
    %r46 = icmp sle i32 %r44,%r45
    br i1 %r46, label %L11, label %L13
L8:
    %r131 = load i32, ptr %r0
    %r132 = load i32, ptr @n
    %r133 = add i32 0,1
    %r134 = sub i32 %r132,%r133
    %r135 = icmp sle i32 %r131,%r134
    br i1 %r135, label %L7, label %L9
L9:
    ret void
L11:
    %r49 = load i32, ptr %r38
    %r50 = load i32, ptr %r42
    %r51 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r50
    %r52 = load i32, ptr %r51
    %r53 = icmp sgt i32 %r49,%r52
    br i1 %r53, label %L16, label %L15
L12:
    %r73 = load i32, ptr %r42
    %r74 = load i32, ptr @n
    %r75 = icmp sle i32 %r73,%r74
    br i1 %r75, label %L11, label %L13
L13:
    %r78 = add i32 0,1
    %r79 = load i32, ptr %r40
    %r80 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r79
    store i32 %r78, ptr %r80
    %r82 = add i32 0,1
    store i32 %r82, ptr %r81
    %r83 = load i32, ptr %r81
    %r84 = load i32, ptr @n
    %r85 = icmp sle i32 %r83,%r84
    br i1 %r85, label %L19, label %L21
L14:
    %r66 = load i32, ptr %r42
    %r67 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r66
    %r68 = load i32, ptr %r67
    store i32 %r68, ptr %r38
    %r69 = load i32, ptr %r42
    store i32 %r69, ptr %r40
    br label %L15
L15:
    %r70 = load i32, ptr %r42
    %r71 = add i32 0,1
    %r72 = add i32 %r70,%r71
    store i32 %r72, ptr %r42
    br label %L12
L16:
    %r56 = load i32, ptr %r42
    %r57 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r56
    %r58 = load i32, ptr %r57
    %r59 = add i32 0,0
    %r60 = icmp eq i32 %r58,%r59
    br i1 %r60, label %L14, label %L15
L19:
    %r88 = load i32, ptr %r40
    %r89 = load i32, ptr %r81
    %r90 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r88, i32 %r89
    %r91 = load i32, ptr %r90
    %r92 = load i32, ptr @INF
    %r93 = icmp slt i32 %r91,%r92
    br i1 %r93, label %L22, label %L23
L20:
    %r123 = load i32, ptr %r81
    %r124 = load i32, ptr @n
    %r125 = icmp sle i32 %r123,%r124
    br i1 %r125, label %L19, label %L21
L21:
    %r128 = load i32, ptr %r0
    %r129 = add i32 0,1
    %r130 = add i32 %r128,%r129
    store i32 %r130, ptr %r0
    br label %L8
L22:
    %r96 = load i32, ptr %r81
    %r97 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r96
    %r98 = load i32, ptr %r97
    %r99 = load i32, ptr %r40
    %r100 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r99
    %r101 = load i32, ptr %r100
    %r102 = load i32, ptr %r40
    %r103 = load i32, ptr %r81
    %r104 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r102, i32 %r103
    %r105 = load i32, ptr %r104
    %r106 = add i32 %r101,%r105
    %r107 = icmp sgt i32 %r98,%r106
    br i1 %r107, label %L24, label %L25
L23:
    %r120 = load i32, ptr %r81
    %r121 = add i32 0,1
    %r122 = add i32 %r120,%r121
    store i32 %r122, ptr %r81
    br label %L20
L24:
    %r110 = load i32, ptr %r40
    %r111 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r110
    %r112 = load i32, ptr %r111
    %r113 = load i32, ptr %r40
    %r114 = load i32, ptr %r81
    %r115 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r113, i32 %r114
    %r116 = load i32, ptr %r115
    %r117 = add i32 %r112,%r116
    %r118 = load i32, ptr %r81
    %r119 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r118
    store i32 %r117, ptr %r119
    br label %L25
L25:
    br label %L23
}
define i32 @main()
{
L0:
    %r54 = alloca i32
    %r52 = alloca i32
    %r10 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = call i32 @getint()
    store i32 %r2, ptr @n
    %r3 = call i32 @getint()
    store i32 %r3, ptr @m
    %r4 = add i32 0,1
    store i32 %r4, ptr %r0
    %r5 = load i32, ptr %r0
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r5,%r6
    br i1 %r7, label %L3, label %L5
L3:
    %r11 = add i32 0,1
    store i32 %r11, ptr %r10
    %r12 = load i32, ptr %r10
    %r13 = load i32, ptr @n
    %r14 = icmp sle i32 %r12,%r13
    br i1 %r14, label %L7, label %L9
L4:
    %r41 = load i32, ptr %r0
    %r42 = load i32, ptr @n
    %r43 = icmp sle i32 %r41,%r42
    br i1 %r43, label %L3, label %L5
L5:
    %r46 = add i32 0,1
    store i32 %r46, ptr %r0
    %r47 = load i32, ptr %r0
    %r48 = load i32, ptr @m
    %r49 = icmp sle i32 %r47,%r48
    br i1 %r49, label %L14, label %L16
L7:
    %r17 = load i32, ptr %r0
    %r18 = load i32, ptr %r10
    %r19 = icmp eq i32 %r17,%r18
    br i1 %r19, label %L10, label %L11
L8:
    %r33 = load i32, ptr %r10
    %r34 = load i32, ptr @n
    %r35 = icmp sle i32 %r33,%r34
    br i1 %r35, label %L7, label %L9
L9:
    %r38 = load i32, ptr %r0
    %r39 = add i32 0,1
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r0
    br label %L4
L10:
    %r22 = add i32 0,0
    %r23 = load i32, ptr %r0
    %r24 = load i32, ptr %r10
    %r25 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r23, i32 %r24
    store i32 %r22, ptr %r25
    br label %L12
L11:
    %r26 = load i32, ptr @INF
    %r27 = load i32, ptr %r0
    %r28 = load i32, ptr %r10
    %r29 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r27, i32 %r28
    store i32 %r26, ptr %r29
    br label %L12
L12:
    %r30 = load i32, ptr %r10
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r10
    br label %L8
L14:
    %r53 = call i32 @getint()
    store i32 %r53, ptr %r52
    %r55 = call i32 @getint()
    store i32 %r55, ptr %r54
    %r56 = call i32 @getint()
    %r57 = load i32, ptr %r52
    %r58 = load i32, ptr %r54
    %r59 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r57, i32 %r58
    store i32 %r56, ptr %r59
    %r60 = load i32, ptr %r0
    %r61 = add i32 0,1
    %r62 = add i32 %r60,%r61
    store i32 %r62, ptr %r0
    br label %L15
L15:
    %r63 = load i32, ptr %r0
    %r64 = load i32, ptr @m
    %r65 = icmp sle i32 %r63,%r64
    br i1 %r65, label %L14, label %L16
L16:
    call void @Dijkstra()
    %r68 = add i32 0,1
    store i32 %r68, ptr %r0
    %r69 = load i32, ptr %r0
    %r70 = load i32, ptr @n
    %r71 = icmp sle i32 %r69,%r70
    br i1 %r71, label %L18, label %L20
L18:
    %r74 = load i32, ptr %r0
    %r75 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r74
    %r76 = load i32, ptr %r75
    call void @putint(i32 %r76)
    %r77 = add i32 0,32
    call void @putch(i32 %r77)
    %r78 = load i32, ptr %r0
    %r79 = add i32 0,1
    %r80 = add i32 %r78,%r79
    store i32 %r80, ptr %r0
    br label %L19
L19:
    %r81 = load i32, ptr %r0
    %r82 = load i32, ptr @n
    %r83 = icmp sle i32 %r81,%r82
    br i1 %r83, label %L18, label %L20
L20:
    %r86 = add i32 0,10
    call void @putch(i32 %r86)
    %r87 = add i32 0,0
    ret i32 %r87
}
