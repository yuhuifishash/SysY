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
define i32 @main()
{
L0:
    %r114 = alloca [2 x [3 x [4 x i32]]]
    %r113 = alloca [3 x i32]
    %r96 = alloca [5 x [3 x i32]]
    %r95 = alloca [5 x i32]
    %r64 = alloca [5 x [3 x i32]]
    %r33 = alloca [5 x [3 x i32]]
    %r2 = alloca [5 x [3 x i32]]
    %r1 = alloca [5 x [3 x i32]]
    %r0 = alloca [5 x [3 x i32]]
    call void @llvm.memset.p0.i32(ptr %r1,i8 0,i32 60,i1 0)
    call void @llvm.memset.p0.i32(ptr %r2,i8 0,i32 60,i1 0)
    %r3 = add i32 0,1
    %r4 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 0, i32 0
    store i32 %r3, ptr %r4
    %r5 = add i32 0,2
    %r6 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 0, i32 1
    store i32 %r5, ptr %r6
    %r7 = add i32 0,3
    %r8 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 0, i32 2
    store i32 %r7, ptr %r8
    %r9 = add i32 0,4
    %r10 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 1, i32 0
    store i32 %r9, ptr %r10
    %r11 = add i32 0,5
    %r12 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 1, i32 1
    store i32 %r11, ptr %r12
    %r13 = add i32 0,6
    %r14 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 1, i32 2
    store i32 %r13, ptr %r14
    %r15 = add i32 0,7
    %r16 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 2, i32 0
    store i32 %r15, ptr %r16
    %r17 = add i32 0,8
    %r18 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 2, i32 1
    store i32 %r17, ptr %r18
    %r19 = add i32 0,9
    %r20 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 2, i32 2
    store i32 %r19, ptr %r20
    %r21 = add i32 0,10
    %r22 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 3, i32 0
    store i32 %r21, ptr %r22
    %r23 = add i32 0,11
    %r24 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 3, i32 1
    store i32 %r23, ptr %r24
    %r25 = add i32 0,12
    %r26 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 3, i32 2
    store i32 %r25, ptr %r26
    %r27 = add i32 0,13
    %r28 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 4, i32 0
    store i32 %r27, ptr %r28
    %r29 = add i32 0,14
    %r30 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 4, i32 1
    store i32 %r29, ptr %r30
    %r31 = add i32 0,15
    %r32 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 4, i32 2
    store i32 %r31, ptr %r32
    call void @llvm.memset.p0.i32(ptr %r33,i8 0,i32 60,i1 0)
    %r34 = add i32 0,1
    %r35 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 0, i32 0
    store i32 %r34, ptr %r35
    %r36 = add i32 0,2
    %r37 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 0, i32 1
    store i32 %r36, ptr %r37
    %r38 = add i32 0,3
    %r39 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 0, i32 2
    store i32 %r38, ptr %r39
    %r40 = add i32 0,4
    %r41 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 1, i32 0
    store i32 %r40, ptr %r41
    %r42 = add i32 0,5
    %r43 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 1, i32 1
    store i32 %r42, ptr %r43
    %r44 = add i32 0,6
    %r45 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 1, i32 2
    store i32 %r44, ptr %r45
    %r46 = add i32 0,7
    %r47 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 2, i32 0
    store i32 %r46, ptr %r47
    %r48 = add i32 0,8
    %r49 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 2, i32 1
    store i32 %r48, ptr %r49
    %r50 = add i32 0,9
    %r51 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 2, i32 2
    store i32 %r50, ptr %r51
    %r52 = add i32 0,10
    %r53 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 3, i32 0
    store i32 %r52, ptr %r53
    %r54 = add i32 0,11
    %r55 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 3, i32 1
    store i32 %r54, ptr %r55
    %r56 = add i32 0,12
    %r57 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 3, i32 2
    store i32 %r56, ptr %r57
    %r58 = add i32 0,13
    %r59 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 4, i32 0
    store i32 %r58, ptr %r59
    %r60 = add i32 0,14
    %r61 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 4, i32 1
    store i32 %r60, ptr %r61
    %r62 = add i32 0,15
    %r63 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 4, i32 2
    store i32 %r62, ptr %r63
    call void @llvm.memset.p0.i32(ptr %r64,i8 0,i32 60,i1 0)
    %r65 = add i32 0,1
    %r66 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 0, i32 0
    store i32 %r65, ptr %r66
    %r67 = add i32 0,2
    %r68 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 0, i32 1
    store i32 %r67, ptr %r68
    %r69 = add i32 0,3
    %r70 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 0, i32 2
    store i32 %r69, ptr %r70
    %r71 = add i32 0,4
    %r72 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 1, i32 0
    store i32 %r71, ptr %r72
    %r73 = add i32 0,5
    %r74 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 1, i32 1
    store i32 %r73, ptr %r74
    %r75 = add i32 0,6
    %r76 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 1, i32 2
    store i32 %r75, ptr %r76
    %r77 = add i32 0,7
    %r78 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 2, i32 0
    store i32 %r77, ptr %r78
    %r79 = add i32 0,8
    %r80 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 2, i32 1
    store i32 %r79, ptr %r80
    %r81 = add i32 0,9
    %r82 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 2, i32 2
    store i32 %r81, ptr %r82
    %r83 = add i32 0,10
    %r84 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 3, i32 0
    store i32 %r83, ptr %r84
    %r85 = add i32 0,11
    %r86 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 3, i32 1
    store i32 %r85, ptr %r86
    %r87 = add i32 0,12
    %r88 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 3, i32 2
    store i32 %r87, ptr %r88
    %r89 = add i32 0,13
    %r90 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 4, i32 0
    store i32 %r89, ptr %r90
    %r91 = add i32 0,14
    %r92 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 4, i32 1
    store i32 %r91, ptr %r92
    %r93 = add i32 0,15
    %r94 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 4, i32 2
    store i32 %r93, ptr %r94
    call void @llvm.memset.p0.i32(ptr %r96,i8 0,i32 60,i1 0)
    %r97 = add i32 0,1
    %r98 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 0, i32 0
    store i32 %r97, ptr %r98
    %r99 = add i32 0,2
    %r100 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 0, i32 1
    store i32 %r99, ptr %r100
    %r101 = add i32 0,3
    %r102 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 0, i32 2
    store i32 %r101, ptr %r102
    %r103 = add i32 0,4
    %r104 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 1, i32 0
    store i32 %r103, ptr %r104
    %r105 = add i32 0,7
    %r106 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 2, i32 0
    store i32 %r105, ptr %r106
    %r107 = add i32 0,10
    %r108 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 3, i32 0
    store i32 %r107, ptr %r108
    %r109 = add i32 0,11
    %r110 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 3, i32 1
    store i32 %r109, ptr %r110
    %r111 = add i32 0,12
    %r112 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 3, i32 2
    store i32 %r111, ptr %r112
    call void @llvm.memset.p0.i32(ptr %r114,i8 0,i32 96,i1 0)
    %r115 = add i32 0,1
    %r116 = getelementptr [2 x [3 x [4 x i32]]], ptr %r114, i32 0, i32 0, i32 0, i32 0
    store i32 %r115, ptr %r116
    %r117 = add i32 0,2
    %r118 = getelementptr [2 x [3 x [4 x i32]]], ptr %r114, i32 0, i32 0, i32 0, i32 1
    store i32 %r117, ptr %r118
    %r119 = add i32 0,3
    %r120 = getelementptr [2 x [3 x [4 x i32]]], ptr %r114, i32 0, i32 0, i32 0, i32 2
    store i32 %r119, ptr %r120
    %r121 = add i32 0,4
    %r122 = getelementptr [2 x [3 x [4 x i32]]], ptr %r114, i32 0, i32 0, i32 0, i32 3
    store i32 %r121, ptr %r122
    %r123 = add i32 0,5
    %r124 = getelementptr [2 x [3 x [4 x i32]]], ptr %r114, i32 0, i32 0, i32 1, i32 0
    store i32 %r123, ptr %r124
    %r125 = add i32 0,4
    ret i32 %r125
}
