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
    %r56 = alloca i32
    %r31 = alloca i32
    %r29 = alloca i32
    %r27 = alloca i32
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    store i32 0, ptr %r1
    %r2 = add i32 1,0
    store i32 %r2, ptr %r0
    br label %L2
L2:
    %r3 = load i32, ptr %r0
    %r4 = load i32, ptr @n
    %r5 = icmp sle i32 %r3,%r4
    br i1 %r5, label %L3, label %L4
L3:
    %r6 = load i32, ptr %r0
    %r7 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r6
    %r8 = add i32 1,0
    %r9 = load i32, ptr %r0
    %r10 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r8, i32 %r9
    %r11 = load i32, ptr %r10
    store i32 %r11, ptr %r7
    %r12 = load i32, ptr %r0
    %r13 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    %r15 = load i32, ptr %r0
    %r16 = add i32 1,0
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r0
    br label %L2
L4:
    %r18 = add i32 1,0
    %r19 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r18
    %r20 = add i32 1,0
    store i32 %r20, ptr %r19
    %r21 = add i32 1,0
    store i32 %r21, ptr %r0
    br label %L5
L5:
    %r22 = load i32, ptr %r0
    %r23 = load i32, ptr @n
    %r24 = add i32 1,0
    %r25 = sub i32 %r23,%r24
    %r26 = icmp sle i32 %r22,%r25
    br i1 %r26, label %L6, label %L7
L6:
    %r28 = load i32, ptr @INF
    store i32 %r28, ptr %r27
    %r30 = add i32 0,0
    store i32 %r30, ptr %r29
    %r32 = add i32 1,0
    store i32 %r32, ptr %r31
    br label %L8
L7:
    ret void
L8:
    %r33 = load i32, ptr %r31
    %r34 = load i32, ptr @n
    %r35 = icmp sle i32 %r33,%r34
    br i1 %r35, label %L9, label %L10
L9:
    %r36 = load i32, ptr %r27
    %r37 = load i32, ptr %r31
    %r38 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r37
    %r39 = load i32, ptr %r38
    %r40 = icmp sgt i32 %r36,%r39
    br i1 %r40, label %L13, label %L12
L10:
    %r53 = load i32, ptr %r29
    %r54 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r53
    %r55 = add i32 1,0
    store i32 %r55, ptr %r54
    %r57 = add i32 1,0
    store i32 %r57, ptr %r56
    br label %L14
L11:
    %r46 = load i32, ptr %r31
    %r47 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r46
    %r48 = load i32, ptr %r47
    store i32 %r48, ptr %r27
    %r49 = load i32, ptr %r31
    store i32 %r49, ptr %r29
    br label %L12
L12:
    %r50 = load i32, ptr %r31
    %r51 = add i32 1,0
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r31
    br label %L8
L13:
    %r41 = load i32, ptr %r31
    %r42 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = add i32 0,0
    %r45 = icmp eq i32 %r43,%r44
    br i1 %r45, label %L11, label %L12
L14:
    %r58 = load i32, ptr %r56
    %r59 = load i32, ptr @n
    %r60 = icmp sle i32 %r58,%r59
    br i1 %r60, label %L15, label %L16
L15:
    %r61 = load i32, ptr %r29
    %r62 = load i32, ptr %r56
    %r63 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r61, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = load i32, ptr @INF
    %r66 = icmp slt i32 %r64,%r65
    br i1 %r66, label %L17, label %L18
L16:
    %r92 = load i32, ptr %r0
    %r93 = add i32 1,0
    %r94 = add i32 %r92,%r93
    store i32 %r94, ptr %r0
    br label %L5
L17:
    %r67 = load i32, ptr %r56
    %r68 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r67
    %r69 = load i32, ptr %r68
    %r70 = load i32, ptr %r29
    %r71 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = load i32, ptr %r29
    %r74 = load i32, ptr %r56
    %r75 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r73, i32 %r74
    %r76 = load i32, ptr %r75
    %r77 = add i32 %r72,%r76
    %r78 = icmp sgt i32 %r69,%r77
    br i1 %r78, label %L19, label %L20
L18:
    %r89 = load i32, ptr %r56
    %r90 = add i32 1,0
    %r91 = add i32 %r89,%r90
    store i32 %r91, ptr %r56
    br label %L14
L19:
    %r79 = load i32, ptr %r56
    %r80 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r79
    %r81 = load i32, ptr %r29
    %r82 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = load i32, ptr %r29
    %r85 = load i32, ptr %r56
    %r86 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r84, i32 %r85
    %r87 = load i32, ptr %r86
    %r88 = add i32 %r83,%r87
    store i32 %r88, ptr %r80
    br label %L20
L20:
    br label %L18
}
define i32 @main()
{
L0:
    %r35 = alloca i32
    %r33 = alloca i32
    %r7 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r1 = call i32 @getint()
    store i32 %r1, ptr @n
    %r2 = call i32 @getint()
    store i32 %r2, ptr @m
    %r3 = add i32 1,0
    store i32 %r3, ptr %r0
    br label %L2
L2:
    %r4 = load i32, ptr %r0
    %r5 = load i32, ptr @n
    %r6 = icmp sle i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:
    %r8 = add i32 1,0
    store i32 %r8, ptr %r7
    br label %L5
L4:
    %r29 = add i32 1,0
    store i32 %r29, ptr %r0
    br label %L11
L5:
    %r9 = load i32, ptr %r7
    %r10 = load i32, ptr @n
    %r11 = icmp sle i32 %r9,%r10
    br i1 %r11, label %L6, label %L7
L6:
    %r12 = load i32, ptr %r0
    %r13 = load i32, ptr %r7
    %r14 = icmp eq i32 %r12,%r13
    br i1 %r14, label %L8, label %L9
L7:
    %r26 = load i32, ptr %r0
    %r27 = add i32 1,0
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r0
    br label %L2
L8:
    %r15 = load i32, ptr %r0
    %r16 = load i32, ptr %r7
    %r17 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r15, i32 %r16
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    br label %L10
L9:
    %r19 = load i32, ptr %r0
    %r20 = load i32, ptr %r7
    %r21 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r19, i32 %r20
    %r22 = load i32, ptr @INF
    store i32 %r22, ptr %r21
    br label %L10
L10:
    %r23 = load i32, ptr %r7
    %r24 = add i32 1,0
    %r25 = add i32 %r23,%r24
    store i32 %r25, ptr %r7
    br label %L5
L11:
    %r30 = load i32, ptr %r0
    %r31 = load i32, ptr @m
    %r32 = icmp sle i32 %r30,%r31
    br i1 %r32, label %L12, label %L13
L12:
    %r34 = call i32 @getint()
    store i32 %r34, ptr %r33
    %r36 = call i32 @getint()
    store i32 %r36, ptr %r35
    %r37 = load i32, ptr %r33
    %r38 = load i32, ptr %r35
    %r39 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r37, i32 %r38
    %r40 = call i32 @getint()
    store i32 %r40, ptr %r39
    %r41 = load i32, ptr %r0
    %r42 = add i32 1,0
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r0
    br label %L11
L13:
    call void @Dijkstra()
    %r44 = add i32 1,0
    store i32 %r44, ptr %r0
    br label %L14
L14:
    %r45 = load i32, ptr %r0
    %r46 = load i32, ptr @n
    %r47 = icmp sle i32 %r45,%r46
    br i1 %r47, label %L15, label %L16
L15:
    %r48 = load i32, ptr %r0
    %r49 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    call void @putint(i32 %r50)
    %r51 = add i32 32,0
    call void @putch(i32 %r51)
    %r52 = load i32, ptr %r0
    %r53 = add i32 1,0
    %r54 = add i32 %r52,%r53
    store i32 %r54, ptr %r0
    br label %L14
L16:
    %r55 = add i32 10,0
    call void @putch(i32 %r55)
    %r56 = add i32 0,0
    ret i32 %r56
}
