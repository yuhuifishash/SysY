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
L0:  ;
    %r48 = alloca [4 x [2 x i32]]
    %r35 = alloca [4 x [2 x i32]]
    %r18 = alloca [4 x [2 x i32]]
    %r1 = alloca [4 x [2 x i32]]
    %r0 = alloca [4 x [2 x i32]]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 32,i1 0)
    call void @llvm.memset.p0.i32(ptr %r1,i8 0,i32 32,i1 0)
    %r2 = add i32 1,0
    %r3 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 0, i32 0
    store i32 %r2, ptr %r3
    %r4 = add i32 2,0
    %r5 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 0, i32 1
    store i32 %r4, ptr %r5
    %r6 = add i32 3,0
    %r7 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 1, i32 0
    store i32 %r6, ptr %r7
    %r8 = add i32 4,0
    %r9 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 1, i32 1
    store i32 %r8, ptr %r9
    %r10 = add i32 5,0
    %r11 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 2, i32 0
    store i32 %r10, ptr %r11
    %r12 = add i32 6,0
    %r13 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 2, i32 1
    store i32 %r12, ptr %r13
    %r14 = add i32 7,0
    %r15 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 3, i32 0
    store i32 %r14, ptr %r15
    %r16 = add i32 8,0
    %r17 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 3, i32 1
    store i32 %r16, ptr %r17
    call void @llvm.memset.p0.i32(ptr %r18,i8 0,i32 32,i1 0)
    %r19 = add i32 1,0
    %r20 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 0, i32 0
    store i32 %r19, ptr %r20
    %r21 = add i32 2,0
    %r22 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 0, i32 1
    store i32 %r21, ptr %r22
    %r23 = add i32 3,0
    %r24 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 1, i32 0
    store i32 %r23, ptr %r24
    %r25 = add i32 4,0
    %r26 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 1, i32 1
    store i32 %r25, ptr %r26
    %r27 = add i32 5,0
    %r28 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 2, i32 0
    store i32 %r27, ptr %r28
    %r29 = add i32 6,0
    %r30 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 2, i32 1
    store i32 %r29, ptr %r30
    %r31 = add i32 7,0
    %r32 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 3, i32 0
    store i32 %r31, ptr %r32
    %r33 = add i32 8,0
    %r34 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 3, i32 1
    store i32 %r33, ptr %r34
    call void @llvm.memset.p0.i32(ptr %r35,i8 0,i32 32,i1 0)
    %r36 = add i32 1,0
    %r37 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 0, i32 0
    store i32 %r36, ptr %r37
    %r38 = add i32 2,0
    %r39 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 0, i32 1
    store i32 %r38, ptr %r39
    %r40 = add i32 3,0
    %r41 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 1, i32 0
    store i32 %r40, ptr %r41
    %r42 = add i32 5,0
    %r43 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 2, i32 0
    store i32 %r42, ptr %r43
    %r44 = add i32 7,0
    %r45 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 3, i32 0
    store i32 %r44, ptr %r45
    %r46 = add i32 8,0
    %r47 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 3, i32 1
    store i32 %r46, ptr %r47
    call void @llvm.memset.p0.i32(ptr %r48,i8 0,i32 32,i1 0)
    %r49 = add i32 2,0
    %r50 = add i32 1,0
    %r51 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 %r49, i32 %r50
    %r52 = load i32, ptr %r51
    %r53 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 0, i32 0
    store i32 %r52, ptr %r53
<<<<<<< HEAD
    %r54 = add i32 2,0
    %r55 = add i32 1,0
    %r56 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 %r54, i32 %r55
    %r57 = load i32, ptr %r56
=======
    %r57 = load i32, ptr %r30
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r58 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 0, i32 1
    store i32 %r57, ptr %r58
    %r59 = add i32 3,0
    %r60 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 1, i32 0
    store i32 %r59, ptr %r60
    %r61 = add i32 4,0
    %r62 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 1, i32 1
    store i32 %r61, ptr %r62
    %r63 = add i32 5,0
    %r64 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 2, i32 0
    store i32 %r63, ptr %r64
    %r65 = add i32 6,0
    %r66 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 2, i32 1
    store i32 %r65, ptr %r66
    %r67 = add i32 7,0
    %r68 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 3, i32 0
    store i32 %r67, ptr %r68
    %r69 = add i32 8,0
    %r70 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 3, i32 1
<<<<<<< HEAD
    store i32 %r69, ptr %r70
    %r71 = add i32 3,0
    %r72 = add i32 1,0
    %r73 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 %r71, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = add i32 0,0
    %r76 = add i32 0,0
    %r77 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 %r75, i32 %r76
    %r78 = load i32, ptr %r77
    %r79 = add i32 %r74,%r78
    %r80 = add i32 0,0
    %r81 = add i32 1,0
    %r82 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 %r80, i32 %r81
    %r83 = load i32, ptr %r82
=======
    store i32 8, ptr %r70
    %r74 = load i32, ptr %r70
    %r78 = load i32, ptr %r53
    %r79 = add i32 %r74,%r78
    %r83 = load i32, ptr %r58
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r84 = add i32 %r79,%r83
    %r85 = add i32 2,0
    %r86 = add i32 0,0
    %r87 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 %r85, i32 %r86
    %r88 = load i32, ptr %r87
    %r89 = add i32 %r84,%r88
    ret i32 %r89
}
