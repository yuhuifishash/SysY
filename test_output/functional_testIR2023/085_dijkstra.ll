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
L0:  ;
    %r58 = alloca i32
    %r33 = alloca i32
    %r31 = alloca i32
    %r29 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 1,0
    store i32 %r4, ptr %r0
    br label %L2
L2:  ;
    %r5 = load i32, ptr %r0
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;
    %r8 = load i32, ptr %r0
    %r9 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r8
    %r10 = add i32 1,0
    %r11 = load i32, ptr %r0
    %r12 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r10, i32 %r11
    %r13 = load i32, ptr %r12
    store i32 %r13, ptr %r9
    %r14 = load i32, ptr %r0
    %r15 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r14
    %r16 = add i32 0,0
    store i32 %r16, ptr %r15
    %r17 = load i32, ptr %r0
    %r18 = add i32 1,0
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r0
    br label %L2
L4:  ;
    %r20 = add i32 1,0
    %r21 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r20
    %r22 = add i32 1,0
    store i32 %r22, ptr %r21
    %r23 = add i32 1,0
    store i32 %r23, ptr %r0
    br label %L5
L5:  ;
    %r24 = load i32, ptr %r0
    %r25 = load i32, ptr @n
    %r26 = add i32 1,0
    %r27 = sub i32 %r25,%r26
    %r28 = icmp sle i32 %r24,%r27
    br i1 %r28, label %L6, label %L7
L6:  ;
    %r30 = load i32, ptr @INF
    store i32 %r30, ptr %r29
    %r32 = add i32 0,0
    store i32 %r32, ptr %r31
    %r34 = add i32 1,0
    store i32 %r34, ptr %r33
    br label %L8
L7:  ;
    ret void
L8:  ;
    %r35 = load i32, ptr %r33
    %r36 = load i32, ptr @n
    %r37 = icmp sle i32 %r35,%r36
    br i1 %r37, label %L9, label %L10
L9:  ;
    %r38 = load i32, ptr %r29
    %r39 = load i32, ptr %r33
    %r40 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r39
    %r41 = load i32, ptr %r40
    %r42 = icmp sgt i32 %r38,%r41
    br i1 %r42, label %L13, label %L12
L10:  ;
    %r55 = load i32, ptr %r31
    %r56 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r55
    %r57 = add i32 1,0
    store i32 %r57, ptr %r56
    %r59 = add i32 1,0
    store i32 %r59, ptr %r58
    br label %L14
L11:  ;
<<<<<<< HEAD
    %r48 = load i32, ptr %r33
    %r49 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    store i32 %r50, ptr %r29
    %r51 = load i32, ptr %r33
    store i32 %r51, ptr %r31
=======
    %r50 = load i32, ptr %r40
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br label %L12
L12:  ;
    %r52 = load i32, ptr %r33
    %r53 = add i32 1,0
    %r54 = add i32 %r52,%r53
    store i32 %r54, ptr %r33
    br label %L8
L13:  ;
    %r43 = load i32, ptr %r33
    %r44 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    %r46 = add i32 0,0
    %r47 = icmp eq i32 %r45,%r46
    br i1 %r47, label %L11, label %L12
L14:  ;
    %r60 = load i32, ptr %r58
    %r61 = load i32, ptr @n
    %r62 = icmp sle i32 %r60,%r61
    br i1 %r62, label %L15, label %L16
L15:  ;
    %r63 = load i32, ptr %r31
    %r64 = load i32, ptr %r58
    %r65 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r63, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = load i32, ptr @INF
    %r68 = icmp slt i32 %r66,%r67
    br i1 %r68, label %L17, label %L18
L16:  ;
    %r94 = load i32, ptr %r0
    %r95 = add i32 1,0
    %r96 = add i32 %r94,%r95
    store i32 %r96, ptr %r0
    br label %L5
L17:  ;
    %r69 = load i32, ptr %r58
    %r70 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r69
    %r71 = load i32, ptr %r70
    %r72 = load i32, ptr %r31
    %r73 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r72
    %r74 = load i32, ptr %r73
<<<<<<< HEAD
    %r75 = load i32, ptr %r31
    %r76 = load i32, ptr %r58
    %r77 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r75, i32 %r76
    %r78 = load i32, ptr %r77
=======
    %r78 = load i32, ptr %r65
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r79 = add i32 %r74,%r78
    %r80 = icmp sgt i32 %r71,%r79
    br i1 %r80, label %L19, label %L20
L18:  ;
    %r91 = load i32, ptr %r58
    %r92 = add i32 1,0
    %r93 = add i32 %r91,%r92
    store i32 %r93, ptr %r58
    br label %L14
L19:  ;
<<<<<<< HEAD
    %r81 = load i32, ptr %r58
    %r82 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r81
    %r83 = load i32, ptr %r31
    %r84 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r83
    %r85 = load i32, ptr %r84
    %r86 = load i32, ptr %r31
    %r87 = load i32, ptr %r58
    %r88 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r86, i32 %r87
    %r89 = load i32, ptr %r88
=======
    %r85 = load i32, ptr %r73
    %r89 = load i32, ptr %r65
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r90 = add i32 %r85,%r89
    store i32 %r90, ptr %r70
    br label %L20
L20:  ;
    br label %L18
}
define i32 @main()
{
L0:  ;
    %r36 = alloca i32
    %r34 = alloca i32
    %r8 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = call i32 @getint()
    store i32 %r2, ptr @n
    %r3 = call i32 @getint()
    store i32 %r3, ptr @m
    %r4 = add i32 1,0
    store i32 %r4, ptr %r0
    br label %L2
L2:  ;
    %r5 = load i32, ptr %r0
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;
    %r9 = add i32 1,0
    store i32 %r9, ptr %r8
    br label %L5
L4:  ;
    %r30 = add i32 1,0
    store i32 %r30, ptr %r0
    br label %L11
L5:  ;
    %r10 = load i32, ptr %r8
    %r11 = load i32, ptr @n
    %r12 = icmp sle i32 %r10,%r11
    br i1 %r12, label %L6, label %L7
L6:  ;
    %r13 = load i32, ptr %r0
    %r14 = load i32, ptr %r8
    %r15 = icmp eq i32 %r13,%r14
    br i1 %r15, label %L8, label %L9
L7:  ;
    %r27 = load i32, ptr %r0
    %r28 = add i32 1,0
    %r29 = add i32 %r27,%r28
    store i32 %r29, ptr %r0
    br label %L2
L8:  ;
    %r16 = load i32, ptr %r0
    %r17 = load i32, ptr %r8
    %r18 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r16, i32 %r17
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    br label %L10
L9:  ;
    %r20 = load i32, ptr %r0
    %r21 = load i32, ptr %r8
    %r22 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r20, i32 %r21
    %r23 = load i32, ptr @INF
    store i32 %r23, ptr %r22
    br label %L10
L10:  ;
    %r24 = load i32, ptr %r8
    %r25 = add i32 1,0
    %r26 = add i32 %r24,%r25
    store i32 %r26, ptr %r8
    br label %L5
L11:  ;
    %r31 = load i32, ptr %r0
    %r32 = load i32, ptr @m
    %r33 = icmp sle i32 %r31,%r32
    br i1 %r33, label %L12, label %L13
L12:  ;
    %r35 = call i32 @getint()
    store i32 %r35, ptr %r34
    %r37 = call i32 @getint()
    store i32 %r37, ptr %r36
    %r38 = load i32, ptr %r34
    %r39 = load i32, ptr %r36
    %r40 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r38, i32 %r39
    %r41 = call i32 @getint()
    store i32 %r41, ptr %r40
    %r42 = load i32, ptr %r0
    %r43 = add i32 1,0
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r0
    br label %L11
L13:  ;
    call void @Dijkstra()
    %r45 = add i32 1,0
    store i32 %r45, ptr %r0
    br label %L14
L14:  ;
    %r46 = load i32, ptr %r0
    %r47 = load i32, ptr @n
    %r48 = icmp sle i32 %r46,%r47
    br i1 %r48, label %L15, label %L16
L15:  ;
    %r49 = load i32, ptr %r0
    %r50 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r49
    %r51 = load i32, ptr %r50
    call void @putint(i32 %r51)
    %r52 = add i32 32,0
    call void @putch(i32 %r52)
    %r53 = load i32, ptr %r0
    %r54 = add i32 1,0
    %r55 = add i32 %r53,%r54
    store i32 %r55, ptr %r0
    br label %L14
L16:  ;
    %r56 = add i32 10,0
    call void @putch(i32 %r56)
    %r57 = add i32 0,0
    ret i32 %r57
}
