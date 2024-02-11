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
define i32 @main()
{
L0:
    %r57 = alloca i32
    %r55 = alloca i32
    %r53 = alloca i32
    %r51 = alloca i32
    %r0 = alloca [5 x [5 x i32]]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 100,i1 0)
    %r1 = add i32 1,0
    %r2 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 0, i32 0
    store i32 %r1, ptr %r2
    %r3 = add i32 1,0
    %r4 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 0, i32 1
    store i32 %r3, ptr %r4
    %r5 = add i32 1,0
    %r6 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 0, i32 2
    store i32 %r5, ptr %r6
    %r7 = add i32 1,0
    %r8 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 0, i32 3
    store i32 %r7, ptr %r8
    %r9 = add i32 1,0
    %r10 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 0, i32 4
    store i32 %r9, ptr %r10
    %r11 = add i32 2,0
    %r12 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 1, i32 0
    store i32 %r11, ptr %r12
    %r13 = add i32 2,0
    %r14 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 1, i32 1
    store i32 %r13, ptr %r14
    %r15 = add i32 2,0
    %r16 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 1, i32 2
    store i32 %r15, ptr %r16
    %r17 = add i32 2,0
    %r18 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 1, i32 3
    store i32 %r17, ptr %r18
    %r19 = add i32 2,0
    %r20 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 1, i32 4
    store i32 %r19, ptr %r20
    %r21 = add i32 3,0
    %r22 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 2, i32 0
    store i32 %r21, ptr %r22
    %r23 = add i32 3,0
    %r24 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 2, i32 1
    store i32 %r23, ptr %r24
    %r25 = add i32 3,0
    %r26 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 2, i32 2
    store i32 %r25, ptr %r26
    %r27 = add i32 3,0
    %r28 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 2, i32 3
    store i32 %r27, ptr %r28
    %r29 = add i32 3,0
    %r30 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 2, i32 4
    store i32 %r29, ptr %r30
    %r31 = add i32 4,0
    %r32 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 3, i32 0
    store i32 %r31, ptr %r32
    %r33 = add i32 4,0
    %r34 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 3, i32 1
    store i32 %r33, ptr %r34
    %r35 = add i32 4,0
    %r36 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 3, i32 2
    store i32 %r35, ptr %r36
    %r37 = add i32 4,0
    %r38 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 3, i32 3
    store i32 %r37, ptr %r38
    %r39 = add i32 4,0
    %r40 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 3, i32 4
    store i32 %r39, ptr %r40
    %r41 = add i32 5,0
    %r42 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 4, i32 0
    store i32 %r41, ptr %r42
    %r43 = add i32 5,0
    %r44 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 4, i32 1
    store i32 %r43, ptr %r44
    %r45 = add i32 5,0
    %r46 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 4, i32 2
    store i32 %r45, ptr %r46
    %r47 = add i32 5,0
    %r48 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 4, i32 3
    store i32 %r47, ptr %r48
    %r49 = add i32 5,0
    %r50 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 4, i32 4
    store i32 %r49, ptr %r50
    %r52 = add i32 0,0
    store i32 %r52, ptr %r51
    %r54 = add i32 0,0
    store i32 %r54, ptr %r53
    %r56 = add i32 0,0
    store i32 %r56, ptr %r55
    %r58 = add i32 0,0
    store i32 %r58, ptr %r57
    %r59 = add i32 2,0
    store i32 %r59, ptr %r51
    %r60 = add i32 3,0
    store i32 %r60, ptr %r53
    %r61 = add i32 0,0
    store i32 %r61, ptr %r57
    br label %L2
L2:
    %r62 = load i32, ptr %r57
    %r63 = add i32 5,0
    %r64 = icmp slt i32 %r62,%r63
    br i1 %r64, label %L3, label %L4
L3:
    %r65 = load i32, ptr %r51
    %r66 = add i32 1,0
    %r67 = sub i32 %r65,%r66
    %r68 = load i32, ptr %r57
    %r69 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 %r67, i32 %r68
    %r70 = load i32, ptr %r69
    store i32 %r70, ptr %r55
    %r71 = load i32, ptr %r51
    %r72 = add i32 1,0
    %r73 = sub i32 %r71,%r72
    %r74 = load i32, ptr %r57
    %r75 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 %r73, i32 %r74
    %r76 = load i32, ptr %r53
    %r77 = add i32 1,0
    %r78 = sub i32 %r76,%r77
    %r79 = load i32, ptr %r57
    %r80 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 %r78, i32 %r79
    %r81 = load i32, ptr %r80
    store i32 %r81, ptr %r75
    %r82 = load i32, ptr %r53
    %r83 = add i32 1,0
    %r84 = sub i32 %r82,%r83
    %r85 = load i32, ptr %r57
    %r86 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 %r84, i32 %r85
    %r87 = load i32, ptr %r55
    store i32 %r87, ptr %r86
    %r88 = load i32, ptr %r57
    %r89 = add i32 1,0
    %r90 = add i32 %r88,%r89
    store i32 %r90, ptr %r57
    br label %L2
L4:
    %r91 = add i32 2,0
    %r92 = add i32 0,0
    %r93 = getelementptr [5 x [5 x i32]], ptr %r0, i32 0, i32 %r91, i32 %r92
    %r94 = load i32, ptr %r93
    ret i32 %r94
}
