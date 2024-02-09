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
    %r47 = alloca [4 x [2 x [1 x i32]]]
    %r31 = alloca [4 x [2 x i32]]
    %r14 = alloca [4 x [2 x i32]]
    %r13 = alloca [4 x [2 x i32]]
    %r11 = alloca i32
    %r0 = alloca [4 x [2 x i32]]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 32,i1 0)
    %r1 = add i32 1,0
    %r2 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 0, i32 0
    store i32 %r1, ptr %r2
    %r3 = add i32 2,0
    %r4 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 0, i32 1
    store i32 %r3, ptr %r4
    %r5 = add i32 3,0
    %r6 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 1, i32 0
    store i32 %r5, ptr %r6
    %r7 = add i32 4,0
    %r8 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 1, i32 1
    store i32 %r7, ptr %r8
    %r9 = add i32 7,0
    %r10 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 3, i32 0
    store i32 %r9, ptr %r10
    %r12 = add i32 3,0
    store i32 %r12, ptr %r11
    call void @llvm.memset.p0.i32(ptr %r13,i8 0,i32 32,i1 0)
    call void @llvm.memset.p0.i32(ptr %r14,i8 0,i32 32,i1 0)
    %r15 = add i32 1,0
    %r16 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 0, i32 0
    store i32 %r15, ptr %r16
    %r17 = add i32 2,0
    %r18 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 0, i32 1
    store i32 %r17, ptr %r18
    %r19 = add i32 3,0
    %r20 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 1, i32 0
    store i32 %r19, ptr %r20
    %r21 = add i32 4,0
    %r22 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 1, i32 1
    store i32 %r21, ptr %r22
    %r23 = add i32 5,0
    %r24 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 2, i32 0
    store i32 %r23, ptr %r24
    %r25 = add i32 6,0
    %r26 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 2, i32 1
    store i32 %r25, ptr %r26
    %r27 = add i32 7,0
    %r28 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 3, i32 0
    store i32 %r27, ptr %r28
    %r29 = add i32 8,0
    %r30 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 3, i32 1
    store i32 %r29, ptr %r30
    call void @llvm.memset.p0.i32(ptr %r31,i8 0,i32 32,i1 0)
    %r32 = add i32 1,0
    %r33 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 0, i32 0
    store i32 %r32, ptr %r33
    %r34 = add i32 2,0
    %r35 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 0, i32 1
    store i32 %r34, ptr %r35
    %r36 = add i32 3,0
    %r37 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 1, i32 0
    store i32 %r36, ptr %r37
    %r38 = add i32 5,0
    %r39 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 2, i32 0
    store i32 %r38, ptr %r39
    %r40 = add i32 3,0
    %r41 = add i32 0,0
    %r42 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 %r40, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 3, i32 0
    store i32 %r43, ptr %r44
    %r45 = add i32 8,0
    %r46 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 3, i32 1
    store i32 %r45, ptr %r46
    call void @llvm.memset.p0.i32(ptr %r47,i8 0,i32 32,i1 0)
    %r48 = add i32 2,0
    %r49 = add i32 1,0
    %r50 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 %r48, i32 %r49
    %r51 = load i32, ptr %r50
    %r52 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 0, i32 0, i32 0
    store i32 %r51, ptr %r52
    %r53 = add i32 2,0
    %r54 = add i32 1,0
    %r55 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 %r53, i32 %r54
    %r56 = load i32, ptr %r55
    %r57 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 0, i32 1, i32 0
    store i32 %r56, ptr %r57
    %r58 = add i32 3,0
    %r59 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 1, i32 0, i32 0
    store i32 %r58, ptr %r59
    %r60 = add i32 4,0
    %r61 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 1, i32 1, i32 0
    store i32 %r60, ptr %r61
    %r62 = add i32 5,0
    %r63 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 2, i32 0, i32 0
    store i32 %r62, ptr %r63
    %r64 = add i32 6,0
    %r65 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 2, i32 1, i32 0
    store i32 %r64, ptr %r65
    %r66 = add i32 7,0
    %r67 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 3, i32 0, i32 0
    store i32 %r66, ptr %r67
    %r68 = add i32 8,0
    %r69 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 3, i32 1, i32 0
    store i32 %r68, ptr %r69
    %r70 = add i32 3,0
    %r71 = add i32 1,0
    %r72 = add i32 0,0
    %r73 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 %r70, i32 %r71, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = add i32 0,0
    %r76 = add i32 0,0
    %r77 = add i32 0,0
    %r78 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 %r75, i32 %r76, i32 %r77
    %r79 = load i32, ptr %r78
    %r80 = add i32 %r74,%r79
    %r81 = add i32 0,0
    %r82 = add i32 1,0
    %r83 = add i32 0,0
    %r84 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 %r81, i32 %r82, i32 %r83
    %r85 = load i32, ptr %r84
    %r86 = add i32 %r80,%r85
    %r87 = add i32 3,0
    %r88 = add i32 0,0
    %r89 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 %r87, i32 %r88
    %r90 = load i32, ptr %r89
    %r91 = add i32 %r86,%r90
    ret i32 %r91
}
