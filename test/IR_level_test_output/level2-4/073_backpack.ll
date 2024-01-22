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
@V = global [200x [200x i32]] zeroinitializer
define i32 @main()
{
L0:
    %r31 = alloca i32
    %r29 = alloca i32
    %r28 = alloca [6 x i32]
    %r15 = alloca [6 x i32]
    %r2 = alloca [6 x i32]
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    call void @llvm.memset.p0.i32(ptr %r2,i8 0,i32 24,i1 0)
    %r3 = add i32 0,0
    %r4 = getelementptr [6 x i32], ptr %r2, i32 0, i32 0
    store i32 %r3, ptr %r4
    %r5 = add i32 0,2
    %r6 = getelementptr [6 x i32], ptr %r2, i32 0, i32 1
    store i32 %r5, ptr %r6
    %r7 = add i32 0,2
    %r8 = getelementptr [6 x i32], ptr %r2, i32 0, i32 2
    store i32 %r7, ptr %r8
    %r9 = add i32 0,6
    %r10 = getelementptr [6 x i32], ptr %r2, i32 0, i32 3
    store i32 %r9, ptr %r10
    %r11 = add i32 0,5
    %r12 = getelementptr [6 x i32], ptr %r2, i32 0, i32 4
    store i32 %r11, ptr %r12
    %r13 = add i32 0,4
    %r14 = getelementptr [6 x i32], ptr %r2, i32 0, i32 5
    store i32 %r13, ptr %r14
    call void @llvm.memset.p0.i32(ptr %r15,i8 0,i32 24,i1 0)
    %r16 = add i32 0,0
    %r17 = getelementptr [6 x i32], ptr %r15, i32 0, i32 0
    store i32 %r16, ptr %r17
    %r18 = add i32 0,6
    %r19 = getelementptr [6 x i32], ptr %r15, i32 0, i32 1
    store i32 %r18, ptr %r19
    %r20 = add i32 0,3
    %r21 = getelementptr [6 x i32], ptr %r15, i32 0, i32 2
    store i32 %r20, ptr %r21
    %r22 = add i32 0,5
    %r23 = getelementptr [6 x i32], ptr %r15, i32 0, i32 3
    store i32 %r22, ptr %r23
    %r24 = add i32 0,4
    %r25 = getelementptr [6 x i32], ptr %r15, i32 0, i32 4
    store i32 %r24, ptr %r25
    %r26 = add i32 0,6
    %r27 = getelementptr [6 x i32], ptr %r15, i32 0, i32 5
    store i32 %r26, ptr %r27
    %r30 = add i32 0,5
    store i32 %r30, ptr %r29
    %r32 = add i32 0,10
    store i32 %r32, ptr %r31
    %r33 = load i32, ptr %r29
    %r34 = getelementptr i32, ptr %r2, i32 0
    %r35 = getelementptr i32, ptr %r15, i32 0
    %r36 = getelementptr i32, ptr %r28, i32 0
    %r37 = load i32, ptr %r31
    %r38 = call i32 @KnapSack(i32 %r33,ptr %r34,ptr %r35,ptr %r36,i32 %r37)
    store i32 %r38, ptr %r0
    %r39 = load i32, ptr %r0
    call void @putint(i32 %r39)
    %r40 = add i32 0,0
    ret i32 %r40
}
define i32 @KnapSack(i32 %r0,ptr %r1,ptr %r2,ptr %r3,i32 %r4)
{
L0:
    %r48 = alloca i32
    %r41 = alloca i32
    %r9 = alloca i32
    %r7 = alloca i32
    %r5 = alloca i32
    store i32 %r0, ptr %r5
    %r6 = alloca i32
    store i32 %r4, ptr %r6
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,1
    store i32 %r11, ptr %r7
    br label %L1
L1:
    %r12 = load i32, ptr %r7
    %r13 = load i32, ptr %r5
    %r14 = icmp sle i32 %r12,%r13
    br i1 %r14, label %L2, label %L3
L2:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r9
    br label %L4
L3:
    %r82 = load i32, ptr %r6
    store i32 %r82, ptr %r9
    %r83 = load i32, ptr %r5
    store i32 %r83, ptr %r7
    br label %L13
L4:
    %r18 = load i32, ptr %r9
    %r19 = load i32, ptr %r6
    %r20 = add i32 0,1
    %r21 = add i32 %r19,%r20
    %r22 = icmp slt i32 %r18,%r21
    br i1 %r22, label %L5, label %L6
L5:
    %r25 = load i32, ptr %r9
    %r26 = load i32, ptr %r7
    %r27 = getelementptr i32, ptr %r1, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = icmp slt i32 %r25,%r28
    br i1 %r29, label %L7, label %L8
L6:
    %r79 = load i32, ptr %r7
    %r80 = add i32 0,1
    %r81 = add i32 %r79,%r80
    store i32 %r81, ptr %r7
    br label %L1
L7:
    %r32 = load i32, ptr %r7
    %r33 = add i32 0,1
    %r34 = sub i32 %r32,%r33
    %r35 = load i32, ptr %r9
    %r36 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r34, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = load i32, ptr %r7
    %r39 = load i32, ptr %r9
    %r40 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r38, i32 %r39
    store i32 %r37, ptr %r40
    br label %L9
L8:
    %r42 = load i32, ptr %r7
    %r43 = add i32 0,1
    %r44 = sub i32 %r42,%r43
    %r45 = load i32, ptr %r9
    %r46 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r44, i32 %r45
    %r47 = load i32, ptr %r46
    store i32 %r47, ptr %r41
    %r49 = load i32, ptr %r7
    %r50 = add i32 0,1
    %r51 = sub i32 %r49,%r50
    %r52 = load i32, ptr %r9
    %r53 = load i32, ptr %r7
    %r54 = getelementptr i32, ptr %r1, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = sub i32 %r52,%r55
    %r57 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r51, i32 %r56
    %r58 = load i32, ptr %r57
    %r59 = load i32, ptr %r7
    %r60 = getelementptr i32, ptr %r2, i32 %r59
    %r61 = load i32, ptr %r60
    %r62 = add i32 %r58,%r61
    store i32 %r62, ptr %r48
    %r63 = load i32, ptr %r41
    %r64 = load i32, ptr %r48
    %r65 = icmp sgt i32 %r63,%r64
    br i1 %r65, label %L10, label %L11
L9:
    %r76 = load i32, ptr %r9
    %r77 = add i32 0,1
    %r78 = add i32 %r76,%r77
    store i32 %r78, ptr %r9
    br label %L4
L10:
    %r68 = load i32, ptr %r41
    %r69 = load i32, ptr %r7
    %r70 = load i32, ptr %r9
    %r71 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r69, i32 %r70
    store i32 %r68, ptr %r71
    br label %L12
L11:
    %r72 = load i32, ptr %r48
    %r73 = load i32, ptr %r7
    %r74 = load i32, ptr %r9
    %r75 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r73, i32 %r74
    store i32 %r72, ptr %r75
    br label %L12
L12:
    br label %L9
L13:
    %r84 = load i32, ptr %r7
    %r85 = add i32 0,1
    %r86 = icmp sge i32 %r84,%r85
    br i1 %r86, label %L14, label %L15
L14:
    %r89 = load i32, ptr %r7
    %r90 = load i32, ptr %r9
    %r91 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r89, i32 %r90
    %r92 = load i32, ptr %r91
    %r93 = load i32, ptr %r7
    %r94 = add i32 0,1
    %r95 = sub i32 %r93,%r94
    %r96 = load i32, ptr %r9
    %r97 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r95, i32 %r96
    %r98 = load i32, ptr %r97
    %r99 = icmp sgt i32 %r92,%r98
    br i1 %r99, label %L16, label %L17
L15:
    %r116 = load i32, ptr %r5
    %r117 = load i32, ptr %r6
    %r118 = getelementptr [200 x [200 x i32]], ptr @V, i32 0, i32 %r116, i32 %r117
    %r119 = load i32, ptr %r118
    ret i32 %r119
L16:
    %r102 = add i32 0,1
    %r103 = load i32, ptr %r7
    %r104 = getelementptr i32, ptr %r3, i32 %r103
    store i32 %r102, ptr %r104
    %r105 = load i32, ptr %r9
    %r106 = load i32, ptr %r7
    %r107 = getelementptr i32, ptr %r1, i32 %r106
    %r108 = load i32, ptr %r107
    %r109 = sub i32 %r105,%r108
    store i32 %r109, ptr %r9
    br label %L18
L17:
    %r110 = add i32 0,0
    %r111 = load i32, ptr %r7
    %r112 = getelementptr i32, ptr %r3, i32 %r111
    store i32 %r110, ptr %r112
    br label %L18
L18:
    %r113 = load i32, ptr %r7
    %r114 = add i32 0,1
    %r115 = sub i32 %r113,%r114
    store i32 %r115, ptr %r7
    br label %L13
}
