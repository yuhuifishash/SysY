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
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 0,3
    store i32 %r4, ptr %r2
    %r5 = load i32, ptr %r2
    %r6 = load i32, ptr %r2
    %r7 = call i32 @uniquePaths(i32 %r5,i32 %r6)
    store i32 %r7, ptr %r0
    %r8 = load i32, ptr %r0
    ret i32 %r8
}
define i32 @uniquePaths(i32 %r0,i32 %r1)
{
L0:
    %r21 = alloca i32
    %r19 = alloca i32
    %r18 = alloca [9 x i32]
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,1
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L1, label %L3
L1:
    %r17 = add i32 0,1
    ret i32 %r17
L2:
    %r20 = add i32 0,0
    store i32 %r20, ptr %r19
    %r22 = add i32 0,0
    store i32 %r22, ptr %r21
    %r23 = add i32 0,0
    store i32 %r23, ptr %r19
    br label %L5
L3:
    %r9 = load i32, ptr %r3
    %r10 = add i32 0,1
    %r11 = icmp eq i32 %r9,%r10
    br i1 %r11, label %L1, label %L2
L5:
    %r24 = load i32, ptr %r19
    %r25 = load i32, ptr %r2
    %r26 = icmp slt i32 %r24,%r25
    br i1 %r26, label %L6, label %L7
L6:
    %r29 = add i32 0,1
    %r30 = load i32, ptr %r19
    %r31 = add i32 0,3
    %r32 = mul i32 %r30,%r31
    %r33 = load i32, ptr %r3
    %r34 = add i32 %r32,%r33
    %r35 = add i32 0,1
    %r36 = sub i32 %r34,%r35
    %r37 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r36
    store i32 %r29, ptr %r37
    %r38 = load i32, ptr %r19
    %r39 = add i32 0,1
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r19
    br label %L5
L7:
    %r41 = add i32 0,0
    store i32 %r41, ptr %r19
    br label %L8
L8:
    %r42 = load i32, ptr %r19
    %r43 = load i32, ptr %r3
    %r44 = icmp slt i32 %r42,%r43
    br i1 %r44, label %L9, label %L10
L9:
    %r47 = add i32 0,1
    %r48 = load i32, ptr %r2
    %r49 = add i32 0,1
    %r50 = sub i32 %r48,%r49
    %r51 = add i32 0,3
    %r52 = mul i32 %r50,%r51
    %r53 = load i32, ptr %r19
    %r54 = add i32 %r52,%r53
    %r55 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r54
    store i32 %r47, ptr %r55
    %r56 = load i32, ptr %r19
    %r57 = add i32 0,1
    %r58 = add i32 %r56,%r57
    store i32 %r58, ptr %r19
    br label %L8
L10:
    %r59 = load i32, ptr %r2
    %r60 = add i32 0,2
    %r61 = sub i32 %r59,%r60
    store i32 %r61, ptr %r19
    br label %L11
L11:
    %r62 = load i32, ptr %r19
    %r63 = add i32 0,1
    %r64 = sub i32 0,%r63
    %r65 = icmp sgt i32 %r62,%r64
    br i1 %r65, label %L12, label %L13
L12:
    %r68 = load i32, ptr %r3
    %r69 = add i32 0,2
    %r70 = sub i32 %r68,%r69
    store i32 %r70, ptr %r21
    br label %L14
L13:
    %r108 = add i32 0,0
    %r109 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r108
    %r110 = load i32, ptr %r109
    ret i32 %r110
L14:
    %r71 = load i32, ptr %r21
    %r72 = add i32 0,1
    %r73 = sub i32 0,%r72
    %r74 = icmp sgt i32 %r71,%r73
    br i1 %r74, label %L15, label %L16
L15:
    %r77 = load i32, ptr %r19
    %r78 = add i32 0,1
    %r79 = add i32 %r77,%r78
    %r80 = add i32 0,3
    %r81 = mul i32 %r79,%r80
    %r82 = load i32, ptr %r21
    %r83 = add i32 %r81,%r82
    %r84 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r83
    %r85 = load i32, ptr %r84
    %r86 = load i32, ptr %r19
    %r87 = add i32 0,3
    %r88 = mul i32 %r86,%r87
    %r89 = load i32, ptr %r21
    %r90 = add i32 %r88,%r89
    %r91 = add i32 0,1
    %r92 = add i32 %r90,%r91
    %r93 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r92
    %r94 = load i32, ptr %r93
    %r95 = add i32 %r85,%r94
    %r96 = load i32, ptr %r19
    %r97 = add i32 0,3
    %r98 = mul i32 %r96,%r97
    %r99 = load i32, ptr %r21
    %r100 = add i32 %r98,%r99
    %r101 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r100
    store i32 %r95, ptr %r101
    %r102 = load i32, ptr %r21
    %r103 = add i32 0,1
    %r104 = sub i32 %r102,%r103
    store i32 %r104, ptr %r21
    br label %L14
L16:
    %r105 = load i32, ptr %r19
    %r106 = add i32 0,1
    %r107 = sub i32 %r105,%r106
    store i32 %r107, ptr %r19
    br label %L11
}
