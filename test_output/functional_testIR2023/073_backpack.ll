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
@V = global [200x [200x i32]] zeroinitializer
define i32 @KnapSack(i32 %r0,ptr %r1,ptr %r2,ptr %r3,i32 %r4)
{
L0:
    %r40 = alloca i32
    %r33 = alloca i32
    %r8 = alloca i32
    %r7 = alloca i32
    %r6 = alloca i32
    %r5 = alloca i32
    store i32 %r0, ptr %r5
    store i32 %r4, ptr %r6
    br label %L1
L1:
    store i32 0, ptr %r7
    store i32 0, ptr %r8
    %r9 = add i32 1,0
    store i32 %r9, ptr %r7
    br label %L2
L2:
    %r10 = load i32, ptr %r7
    %r11 = load i32, ptr %r5
    %r12 = icmp sle i32 %r10,%r11
    br i1 %r12, label %L3, label %L4
L3:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r8
    br label %L5
L4:
    %r72 = load i32, ptr %r6
    store i32 %r72, ptr %r8
    %r73 = load i32, ptr %r5
    store i32 %r73, ptr %r7
    br label %L14
L5:
    %r14 = load i32, ptr %r8
    %r15 = load i32, ptr %r6
    %r16 = add i32 1,0
    %r17 = add i32 %r15,%r16
    %r18 = icmp slt i32 %r14,%r17
    br i1 %r18, label %L6, label %L7
L6:
    %r19 = load i32, ptr %r8
    %r20 = load i32, ptr %r7
    %r21 = getelementptr i32, ptr %r1, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = icmp slt i32 %r19,%r22
    br i1 %r23, label %L8, label %L9
L7:
    %r69 = load i32, ptr %r7
    %r70 = add i32 1,0
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r7
    br label %L2
L8:
    %r24 = load i32, ptr %r7
    %r25 = load i32, ptr %r8
    %r26 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r24, i32 %r25
    %r27 = load i32, ptr %r7
    %r28 = add i32 1,0
    %r29 = sub i32 %r27,%r28
    %r30 = load i32, ptr %r8
    %r31 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r29, i32 %r30
    %r32 = load i32, ptr %r31
    store i32 %r32, ptr %r26
    br label %L10
L9:
    %r34 = load i32, ptr %r7
    %r35 = add i32 1,0
    %r36 = sub i32 %r34,%r35
    %r37 = load i32, ptr %r8
    %r38 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r36, i32 %r37
    %r39 = load i32, ptr %r38
    store i32 %r39, ptr %r33
    %r41 = load i32, ptr %r7
    %r42 = add i32 1,0
    %r43 = sub i32 %r41,%r42
    %r44 = load i32, ptr %r8
    %r45 = load i32, ptr %r7
    %r46 = getelementptr i32, ptr %r1, i32 %r45
    %r47 = load i32, ptr %r46
    %r48 = sub i32 %r44,%r47
    %r49 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r43, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = load i32, ptr %r7
    %r52 = getelementptr i32, ptr %r2, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = add i32 %r50,%r53
    store i32 %r54, ptr %r40
    %r55 = load i32, ptr %r33
    %r56 = load i32, ptr %r40
    %r57 = icmp sgt i32 %r55,%r56
    br i1 %r57, label %L11, label %L12
L10:
    %r66 = load i32, ptr %r8
    %r67 = add i32 1,0
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr %r8
    br label %L5
L11:
    %r58 = load i32, ptr %r7
    %r59 = load i32, ptr %r8
    %r60 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r58, i32 %r59
    %r61 = load i32, ptr %r33
    store i32 %r61, ptr %r60
    br label %L13
L12:
    %r62 = load i32, ptr %r7
    %r63 = load i32, ptr %r8
    %r64 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r62, i32 %r63
    %r65 = load i32, ptr %r40
    store i32 %r65, ptr %r64
    br label %L13
L13:
    br label %L10
L14:
    %r74 = load i32, ptr %r7
    %r75 = add i32 1,0
    %r76 = icmp sge i32 %r74,%r75
    br i1 %r76, label %L15, label %L16
L15:
    %r77 = load i32, ptr %r7
    %r78 = load i32, ptr %r8
    %r79 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r77, i32 %r78
    %r80 = load i32, ptr %r79
    %r81 = load i32, ptr %r7
    %r82 = add i32 1,0
    %r83 = sub i32 %r81,%r82
    %r84 = load i32, ptr %r8
    %r85 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r83, i32 %r84
    %r86 = load i32, ptr %r85
    %r87 = icmp sgt i32 %r80,%r86
    br i1 %r87, label %L17, label %L18
L16:
    %r102 = load i32, ptr %r5
    %r103 = load i32, ptr %r6
    %r104 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r102, i32 %r103
    %r105 = load i32, ptr %r104
    ret i32 %r105
L17:
    %r88 = load i32, ptr %r7
    %r89 = getelementptr i32, ptr %r3, i32 %r88
    %r90 = add i32 1,0
    store i32 %r90, ptr %r89
    %r91 = load i32, ptr %r8
    %r92 = load i32, ptr %r7
    %r93 = getelementptr i32, ptr %r1, i32 %r92
    %r94 = load i32, ptr %r93
    %r95 = sub i32 %r91,%r94
    store i32 %r95, ptr %r8
    br label %L19
L18:
    %r96 = load i32, ptr %r7
    %r97 = getelementptr i32, ptr %r3, i32 %r96
    %r98 = add i32 0,0
    store i32 %r98, ptr %r97
    br label %L19
L19:
    %r99 = load i32, ptr %r7
    %r100 = add i32 1,0
    %r101 = sub i32 %r99,%r100
    store i32 %r101, ptr %r7
    br label %L14
}
define i32 @main()
{
L0:
    %r30 = alloca i32
    %r28 = alloca i32
    %r27 = alloca [6 x i32]
    %r14 = alloca [6 x i32]
    %r1 = alloca [6 x i32]
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    call void @llvm.memset.p0.i32(ptr %r1,i8 0,i32 24,i1 0)
    %r2 = add i32 0,0
    %r3 = getelementptr [6 x i32], ptr %r1, i32 0, i32 0
    store i32 %r2, ptr %r3
    %r4 = add i32 2,0
    %r5 = getelementptr [6 x i32], ptr %r1, i32 0, i32 1
    store i32 %r4, ptr %r5
    %r6 = add i32 2,0
    %r7 = getelementptr [6 x i32], ptr %r1, i32 0, i32 2
    store i32 %r6, ptr %r7
    %r8 = add i32 6,0
    %r9 = getelementptr [6 x i32], ptr %r1, i32 0, i32 3
    store i32 %r8, ptr %r9
    %r10 = add i32 5,0
    %r11 = getelementptr [6 x i32], ptr %r1, i32 0, i32 4
    store i32 %r10, ptr %r11
    %r12 = add i32 4,0
    %r13 = getelementptr [6 x i32], ptr %r1, i32 0, i32 5
    store i32 %r12, ptr %r13
    call void @llvm.memset.p0.i32(ptr %r14,i8 0,i32 24,i1 0)
    %r15 = add i32 0,0
    %r16 = getelementptr [6 x i32], ptr %r14, i32 0, i32 0
    store i32 %r15, ptr %r16
    %r17 = add i32 6,0
    %r18 = getelementptr [6 x i32], ptr %r14, i32 0, i32 1
    store i32 %r17, ptr %r18
    %r19 = add i32 3,0
    %r20 = getelementptr [6 x i32], ptr %r14, i32 0, i32 2
    store i32 %r19, ptr %r20
    %r21 = add i32 5,0
    %r22 = getelementptr [6 x i32], ptr %r14, i32 0, i32 3
    store i32 %r21, ptr %r22
    %r23 = add i32 4,0
    %r24 = getelementptr [6 x i32], ptr %r14, i32 0, i32 4
    store i32 %r23, ptr %r24
    %r25 = add i32 6,0
    %r26 = getelementptr [6 x i32], ptr %r14, i32 0, i32 5
    store i32 %r25, ptr %r26
    %r29 = add i32 5,0
    store i32 %r29, ptr %r28
    %r31 = add i32 10,0
    store i32 %r31, ptr %r30
    %r32 = load i32, ptr %r28
    %r33 = getelementptr [6 x i32], ptr %r1, i32 0
    %r34 = getelementptr [6 x i32], ptr %r14, i32 0
    %r35 = getelementptr [6 x i32], ptr %r27, i32 0
    %r36 = load i32, ptr %r30
    %r37 = call i32 @KnapSack(i32 %r32,ptr %r33,ptr %r34,ptr %r35,i32 %r36)
    store i32 %r37, ptr %r0
    %r38 = load i32, ptr %r0
    call void @putint(i32 %r38)
    %r39 = add i32 0,0
    ret i32 %r39
}
