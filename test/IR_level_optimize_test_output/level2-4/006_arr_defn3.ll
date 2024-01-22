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
    %r48 = alloca [4 x [2 x i32]]
    %r35 = alloca [4 x [2 x i32]]
    %r18 = alloca [4 x [2 x i32]]
    %r1 = alloca [4 x [2 x i32]]
    %r0 = alloca [4 x [2 x i32]]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 32,i1 0)
    call void @llvm.memset.p0.i32(ptr %r1,i8 0,i32 32,i1 0)
    %r3 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 0, i32 0
    store i32 1, ptr %r3
    %r5 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 0, i32 1
    store i32 2, ptr %r5
    %r7 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 1, i32 0
    store i32 3, ptr %r7
    %r9 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 1, i32 1
    store i32 4, ptr %r9
    %r11 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 2, i32 0
    store i32 5, ptr %r11
    %r13 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 2, i32 1
    store i32 6, ptr %r13
    %r15 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 3, i32 0
    store i32 7, ptr %r15
    %r17 = getelementptr [4 x [2 x i32]], ptr %r1, i32 0, i32 3, i32 1
    store i32 8, ptr %r17
    call void @llvm.memset.p0.i32(ptr %r18,i8 0,i32 32,i1 0)
    %r20 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 0, i32 0
    store i32 1, ptr %r20
    %r22 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 0, i32 1
    store i32 2, ptr %r22
    %r24 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 1, i32 0
    store i32 3, ptr %r24
    %r26 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 1, i32 1
    store i32 4, ptr %r26
    %r28 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 2, i32 0
    store i32 5, ptr %r28
    %r30 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 2, i32 1
    store i32 6, ptr %r30
    %r32 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 3, i32 0
    store i32 7, ptr %r32
    %r34 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 3, i32 1
    store i32 8, ptr %r34
    call void @llvm.memset.p0.i32(ptr %r35,i8 0,i32 32,i1 0)
    %r37 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 0, i32 0
    store i32 1, ptr %r37
    %r39 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 0, i32 1
    store i32 2, ptr %r39
    %r41 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 1, i32 0
    store i32 3, ptr %r41
    %r43 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 2, i32 0
    store i32 5, ptr %r43
    %r45 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 3, i32 0
    store i32 7, ptr %r45
    %r47 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 3, i32 1
    store i32 8, ptr %r47
    call void @llvm.memset.p0.i32(ptr %r48,i8 0,i32 32,i1 0)
    %r51 = getelementptr [4 x [2 x i32]], ptr %r35, i32 0, i32 2, i32 1
    %r52 = load i32, ptr %r51
    %r53 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 0, i32 0
    store i32 %r52, ptr %r53
    %r56 = getelementptr [4 x [2 x i32]], ptr %r18, i32 0, i32 2, i32 1
    %r57 = load i32, ptr %r56
    %r58 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 0, i32 1
    store i32 %r57, ptr %r58
    %r60 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 1, i32 0
    store i32 3, ptr %r60
    %r62 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 1, i32 1
    store i32 4, ptr %r62
    %r64 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 2, i32 0
    store i32 5, ptr %r64
    %r66 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 2, i32 1
    store i32 6, ptr %r66
    %r68 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 3, i32 0
    store i32 7, ptr %r68
    %r70 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 3, i32 1
    store i32 8, ptr %r70
    %r74 = load i32, ptr %r70
    %r77 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 0, i32 0
    %r78 = load i32, ptr %r77
    %r79 = add i32 %r74,%r78
    %r82 = getelementptr [4 x [2 x i32]], ptr %r48, i32 0, i32 0, i32 1
    %r83 = load i32, ptr %r82
    %r84 = add i32 %r79,%r83
    %r87 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 2, i32 0
    %r88 = load i32, ptr %r87
    %r89 = add i32 %r84,%r88
    ret i32 %r89
}
