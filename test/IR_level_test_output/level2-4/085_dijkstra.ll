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
    %r71 = alloca i32
    %r37 = alloca i32
    %r35 = alloca i32
    %r33 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 0,1
    store i32 %r4, ptr %r0
    br label %L1
L1:
    %r5 = load i32, ptr %r0
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
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
    br label %L1
L3:
    %r22 = add i32 0,1
    %r23 = add i32 0,1
    %r24 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r23
    store i32 %r22, ptr %r24
    %r25 = add i32 0,1
    store i32 %r25, ptr %r0
    br label %L4
L4:
    %r26 = load i32, ptr %r0
    %r27 = load i32, ptr @n
    %r28 = add i32 0,1
    %r29 = sub i32 %r27,%r28
    %r30 = icmp sle i32 %r26,%r29
    br i1 %r30, label %L5, label %L6
L5:
    %r34 = load i32, ptr @INF
    store i32 %r34, ptr %r33
    %r36 = add i32 0,0
    store i32 %r36, ptr %r35
    %r38 = add i32 0,1
    store i32 %r38, ptr %r37
    br label %L7
L6:
    ret void
L7:
    %r39 = load i32, ptr %r37
    %r40 = load i32, ptr @n
    %r41 = icmp sle i32 %r39,%r40
    br i1 %r41, label %L8, label %L9
L8:
    %r44 = load i32, ptr %r33
    %r45 = load i32, ptr %r37
    %r46 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r45
    %r47 = load i32, ptr %r46
    %r48 = icmp sgt i32 %r44,%r47
    br i1 %r48, label %L12, label %L11
L9:
    %r68 = add i32 0,1
    %r69 = load i32, ptr %r35
    %r70 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r69
    store i32 %r68, ptr %r70
    %r72 = add i32 0,1
    store i32 %r72, ptr %r71
    br label %L14
L10:
    %r61 = load i32, ptr %r37
    %r62 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r61
    %r63 = load i32, ptr %r62
    store i32 %r63, ptr %r33
    %r64 = load i32, ptr %r37
    store i32 %r64, ptr %r35
    br label %L11
L11:
    %r65 = load i32, ptr %r37
    %r66 = add i32 0,1
    %r67 = add i32 %r65,%r66
    store i32 %r67, ptr %r37
    br label %L7
L12:
    %r51 = load i32, ptr %r37
    %r52 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = add i32 0,0
    %r55 = icmp eq i32 %r53,%r54
    br i1 %r55, label %L10, label %L11
L14:
    %r73 = load i32, ptr %r71
    %r74 = load i32, ptr @n
    %r75 = icmp sle i32 %r73,%r74
    br i1 %r75, label %L15, label %L16
L15:
    %r78 = load i32, ptr %r35
    %r79 = load i32, ptr %r71
    %r80 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r78, i32 %r79
    %r81 = load i32, ptr %r80
    %r82 = load i32, ptr @INF
    %r83 = icmp slt i32 %r81,%r82
    br i1 %r83, label %L17, label %L18
L16:
    %r113 = load i32, ptr %r0
    %r114 = add i32 0,1
    %r115 = add i32 %r113,%r114
    store i32 %r115, ptr %r0
    br label %L4
L17:
    %r86 = load i32, ptr %r71
    %r87 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r86
    %r88 = load i32, ptr %r87
    %r89 = load i32, ptr %r35
    %r90 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r89
    %r91 = load i32, ptr %r90
    %r92 = load i32, ptr %r35
    %r93 = load i32, ptr %r71
    %r94 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r92, i32 %r93
    %r95 = load i32, ptr %r94
    %r96 = add i32 %r91,%r95
    %r97 = icmp sgt i32 %r88,%r96
    br i1 %r97, label %L19, label %L20
L18:
    %r110 = load i32, ptr %r71
    %r111 = add i32 0,1
    %r112 = add i32 %r110,%r111
    store i32 %r112, ptr %r71
    br label %L14
L19:
    %r100 = load i32, ptr %r35
    %r101 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r100
    %r102 = load i32, ptr %r101
    %r103 = load i32, ptr %r35
    %r104 = load i32, ptr %r71
    %r105 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r103, i32 %r104
    %r106 = load i32, ptr %r105
    %r107 = add i32 %r102,%r106
    %r108 = load i32, ptr %r71
    %r109 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r108
    store i32 %r107, ptr %r109
    br label %L20
L20:
    br label %L18
}
define i32 @main()
{
L0:
    %r44 = alloca i32
    %r42 = alloca i32
    %r10 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = call i32 @getint()
    store i32 %r2, ptr @n
    %r3 = call i32 @getint()
    store i32 %r3, ptr @m
    %r4 = add i32 0,1
    store i32 %r4, ptr %r0
    br label %L1
L1:
    %r5 = load i32, ptr %r0
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r11 = add i32 0,1
    store i32 %r11, ptr %r10
    br label %L4
L3:
    %r36 = add i32 0,1
    store i32 %r36, ptr %r0
    br label %L10
L4:
    %r12 = load i32, ptr %r10
    %r13 = load i32, ptr @n
    %r14 = icmp sle i32 %r12,%r13
    br i1 %r14, label %L5, label %L6
L5:
    %r17 = load i32, ptr %r0
    %r18 = load i32, ptr %r10
    %r19 = icmp eq i32 %r17,%r18
    br i1 %r19, label %L7, label %L8
L6:
    %r33 = load i32, ptr %r0
    %r34 = add i32 0,1
    %r35 = add i32 %r33,%r34
    store i32 %r35, ptr %r0
    br label %L1
L7:
    %r22 = add i32 0,0
    %r23 = load i32, ptr %r0
    %r24 = load i32, ptr %r10
    %r25 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r23, i32 %r24
    store i32 %r22, ptr %r25
    br label %L9
L8:
    %r26 = load i32, ptr @INF
    %r27 = load i32, ptr %r0
    %r28 = load i32, ptr %r10
    %r29 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r27, i32 %r28
    store i32 %r26, ptr %r29
    br label %L9
L9:
    %r30 = load i32, ptr %r10
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r10
    br label %L4
L10:
    %r37 = load i32, ptr %r0
    %r38 = load i32, ptr @m
    %r39 = icmp sle i32 %r37,%r38
    br i1 %r39, label %L11, label %L12
L11:
    %r43 = call i32 @getint()
    store i32 %r43, ptr %r42
    %r45 = call i32 @getint()
    store i32 %r45, ptr %r44
    %r46 = call i32 @getint()
    %r47 = load i32, ptr %r42
    %r48 = load i32, ptr %r44
    %r49 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r47, i32 %r48
    store i32 %r46, ptr %r49
    %r50 = load i32, ptr %r0
    %r51 = add i32 0,1
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r0
    br label %L10
L12:
    call void @Dijkstra()
    %r53 = add i32 0,1
    store i32 %r53, ptr %r0
    br label %L13
L13:
    %r54 = load i32, ptr %r0
    %r55 = load i32, ptr @n
    %r56 = icmp sle i32 %r54,%r55
    br i1 %r56, label %L14, label %L15
L14:
    %r59 = load i32, ptr %r0
    %r60 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r59
    %r61 = load i32, ptr %r60
    call void @putint(i32 %r61)
    %r62 = add i32 0,32
    call void @putch(i32 %r62)
    %r63 = load i32, ptr %r0
    %r64 = add i32 0,1
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r0
    br label %L13
L15:
    %r66 = add i32 0,10
    call void @putch(i32 %r66)
    %r67 = add i32 0,0
    ret i32 %r67
}
