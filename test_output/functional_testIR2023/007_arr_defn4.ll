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
    %r0 = alloca [4 x [2 x i32]]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 32,i1 0)
    %r2 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 0, i32 0
    store i32 1, ptr %r2
    %r4 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 0, i32 1
    store i32 2, ptr %r4
    %r6 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 1, i32 0
    store i32 3, ptr %r6
    %r8 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 1, i32 1
    store i32 4, ptr %r8
    %r10 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 3, i32 0
    store i32 7, ptr %r10
    call void @llvm.memset.p0.i32(ptr %r13,i8 0,i32 32,i1 0)
    call void @llvm.memset.p0.i32(ptr %r14,i8 0,i32 32,i1 0)
    %r16 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 0, i32 0
    store i32 1, ptr %r16
    %r18 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 0, i32 1
    store i32 2, ptr %r18
    %r20 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 1, i32 0
    store i32 3, ptr %r20
    %r22 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 1, i32 1
    store i32 4, ptr %r22
    %r24 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 2, i32 0
    store i32 5, ptr %r24
    %r26 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 2, i32 1
    store i32 6, ptr %r26
    %r28 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 3, i32 0
    store i32 7, ptr %r28
    %r30 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 3, i32 1
    store i32 8, ptr %r30
    call void @llvm.memset.p0.i32(ptr %r31,i8 0,i32 32,i1 0)
    %r33 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 0, i32 0
    store i32 1, ptr %r33
    %r35 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 0, i32 1
    store i32 2, ptr %r35
    %r37 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 1, i32 0
    store i32 3, ptr %r37
    %r39 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 2, i32 0
    store i32 5, ptr %r39
    %r42 = getelementptr [4 x [2 x i32]], ptr %r0, i32 0, i32 3, i32 0
    %r43 = load i32, ptr %r42
    %r44 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 3, i32 0
    store i32 %r43, ptr %r44
    %r46 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 3, i32 1
    store i32 8, ptr %r46
    call void @llvm.memset.p0.i32(ptr %r47,i8 0,i32 32,i1 0)
    %r50 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 2, i32 1
    %r51 = load i32, ptr %r50
    %r52 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 0, i32 0, i32 0
    store i32 %r51, ptr %r52
    %r55 = getelementptr [4 x [2 x i32]], ptr %r14, i32 0, i32 2, i32 1
    %r56 = load i32, ptr %r55
    %r57 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 0, i32 1, i32 0
    store i32 %r56, ptr %r57
    %r59 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 1, i32 0, i32 0
    store i32 3, ptr %r59
    %r61 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 1, i32 1, i32 0
    store i32 4, ptr %r61
    %r63 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 2, i32 0, i32 0
    store i32 5, ptr %r63
    %r65 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 2, i32 1, i32 0
    store i32 6, ptr %r65
    %r67 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 3, i32 0, i32 0
    store i32 7, ptr %r67
    %r69 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 3, i32 1, i32 0
    store i32 8, ptr %r69
    %r73 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 3, i32 1, i32 0
    %r74 = load i32, ptr %r73
    %r78 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 0, i32 0, i32 0
    %r79 = load i32, ptr %r78
    %r80 = add i32 %r74,%r79
    %r84 = getelementptr [4 x [2 x [1 x i32]]], ptr %r47, i32 0, i32 0, i32 1, i32 0
    %r85 = load i32, ptr %r84
    %r86 = add i32 %r80,%r85
    %r89 = getelementptr [4 x [2 x i32]], ptr %r31, i32 0, i32 3, i32 0
    %r90 = load i32, ptr %r89
    %r91 = add i32 %r86,%r90
    ret i32 %r91
}
