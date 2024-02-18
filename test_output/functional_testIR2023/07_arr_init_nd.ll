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
    %r114 = alloca [2 x [3 x [4 x i32]]]
    %r96 = alloca [5 x [3 x i32]]
    %r64 = alloca [5 x [3 x i32]]
    %r33 = alloca [5 x [3 x i32]]
    %r2 = alloca [5 x [3 x i32]]
    %r1 = alloca [5 x [3 x i32]]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r1,i8 0,i32 60,i1 0)
    call void @llvm.memset.p0.i32(ptr %r2,i8 0,i32 60,i1 0)
    %r4 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 0, i32 0
    store i32 1, ptr %r4
    %r6 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 0, i32 1
    store i32 2, ptr %r6
    %r8 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 0, i32 2
    store i32 3, ptr %r8
    %r10 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 1, i32 0
    store i32 4, ptr %r10
    %r12 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 1, i32 1
    store i32 5, ptr %r12
    %r14 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 1, i32 2
    store i32 6, ptr %r14
    %r16 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 2, i32 0
    store i32 7, ptr %r16
    %r18 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 2, i32 1
    store i32 8, ptr %r18
    %r20 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 2, i32 2
    store i32 9, ptr %r20
    %r22 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 3, i32 0
    store i32 10, ptr %r22
    %r24 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 3, i32 1
    store i32 11, ptr %r24
    %r26 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 3, i32 2
    store i32 12, ptr %r26
    %r28 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 4, i32 0
    store i32 13, ptr %r28
    %r30 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 4, i32 1
    store i32 14, ptr %r30
    %r32 = getelementptr [5 x [3 x i32]], ptr %r2, i32 0, i32 4, i32 2
    store i32 15, ptr %r32
    call void @llvm.memset.p0.i32(ptr %r33,i8 0,i32 60,i1 0)
    %r35 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 0, i32 0
    store i32 1, ptr %r35
    %r37 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 0, i32 1
    store i32 2, ptr %r37
    %r39 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 0, i32 2
    store i32 3, ptr %r39
    %r41 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 1, i32 0
    store i32 4, ptr %r41
    %r43 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 1, i32 1
    store i32 5, ptr %r43
    %r45 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 1, i32 2
    store i32 6, ptr %r45
    %r47 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 2, i32 0
    store i32 7, ptr %r47
    %r49 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 2, i32 1
    store i32 8, ptr %r49
    %r51 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 2, i32 2
    store i32 9, ptr %r51
    %r53 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 3, i32 0
    store i32 10, ptr %r53
    %r55 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 3, i32 1
    store i32 11, ptr %r55
    %r57 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 3, i32 2
    store i32 12, ptr %r57
    %r59 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 4, i32 0
    store i32 13, ptr %r59
    %r61 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 4, i32 1
    store i32 14, ptr %r61
    %r63 = getelementptr [5 x [3 x i32]], ptr %r33, i32 0, i32 4, i32 2
    store i32 15, ptr %r63
    call void @llvm.memset.p0.i32(ptr %r64,i8 0,i32 60,i1 0)
    %r66 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 0, i32 0
    store i32 1, ptr %r66
    %r68 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 0, i32 1
    store i32 2, ptr %r68
    %r70 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 0, i32 2
    store i32 3, ptr %r70
    %r72 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 1, i32 0
    store i32 4, ptr %r72
    %r74 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 1, i32 1
    store i32 5, ptr %r74
    %r76 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 1, i32 2
    store i32 6, ptr %r76
    %r78 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 2, i32 0
    store i32 7, ptr %r78
    %r80 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 2, i32 1
    store i32 8, ptr %r80
    %r82 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 2, i32 2
    store i32 9, ptr %r82
    %r84 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 3, i32 0
    store i32 10, ptr %r84
    %r86 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 3, i32 1
    store i32 11, ptr %r86
    %r88 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 3, i32 2
    store i32 12, ptr %r88
    %r90 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 4, i32 0
    store i32 13, ptr %r90
    %r92 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 4, i32 1
    store i32 14, ptr %r92
    %r94 = getelementptr [5 x [3 x i32]], ptr %r64, i32 0, i32 4, i32 2
    store i32 15, ptr %r94
    call void @llvm.memset.p0.i32(ptr %r96,i8 0,i32 60,i1 0)
    %r98 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 0, i32 0
    store i32 1, ptr %r98
    %r100 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 0, i32 1
    store i32 2, ptr %r100
    %r102 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 0, i32 2
    store i32 3, ptr %r102
    %r104 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 1, i32 0
    store i32 4, ptr %r104
    %r106 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 2, i32 0
    store i32 7, ptr %r106
    %r108 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 3, i32 0
    store i32 10, ptr %r108
    %r110 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 3, i32 1
    store i32 11, ptr %r110
    %r112 = getelementptr [5 x [3 x i32]], ptr %r96, i32 0, i32 3, i32 2
    store i32 12, ptr %r112
    call void @llvm.memset.p0.i32(ptr %r114,i8 0,i32 96,i1 0)
    %r116 = getelementptr [2 x [3 x [4 x i32]]], ptr %r114, i32 0, i32 0, i32 0, i32 0
    store i32 1, ptr %r116
    %r118 = getelementptr [2 x [3 x [4 x i32]]], ptr %r114, i32 0, i32 0, i32 0, i32 1
    store i32 2, ptr %r118
    %r120 = getelementptr [2 x [3 x [4 x i32]]], ptr %r114, i32 0, i32 0, i32 0, i32 2
    store i32 3, ptr %r120
    %r122 = getelementptr [2 x [3 x [4 x i32]]], ptr %r114, i32 0, i32 0, i32 0, i32 3
    store i32 4, ptr %r122
    %r124 = getelementptr [2 x [3 x [4 x i32]]], ptr %r114, i32 0, i32 0, i32 1, i32 0
    store i32 5, ptr %r124
    ret i32 4
}
