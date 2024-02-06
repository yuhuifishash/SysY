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
    %r80 = alloca i32
    %r65 = alloca i32
    %r58 = alloca i32
    %r41 = alloca i32
    %r24 = alloca i32
    %r9 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    br label %L1
L1:
    %r0 = add i32 0,97
    call void @putch(i32 %r0)
    %r1 = add i32 0,10
    call void @putch(i32 %r1)
    %r3 = add i32 0,1
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = load i32, ptr %r2
    %r7 = add i32 0,2
    %r8 = add i32 %r6,%r7
    store i32 %r8, ptr %r2
    %r10 = load i32, ptr %r2
    %r11 = add i32 0,3
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r9
    %r13 = load i32, ptr %r9
    %r14 = add i32 0,4
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr %r9
    %r16 = load i32, ptr %r4
    %r17 = load i32, ptr %r2
    %r18 = add i32 %r16,%r17
    %r19 = load i32, ptr %r9
    %r20 = add i32 %r18,%r19
    store i32 %r20, ptr %r4
    %r21 = load i32, ptr %r9
    %r22 = add i32 0,5
    %r23 = add i32 %r21,%r22
    store i32 %r23, ptr %r9
    %r25 = load i32, ptr %r9
    %r26 = add i32 0,6
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r24
    %r28 = load i32, ptr %r2
    %r29 = load i32, ptr %r24
    %r30 = add i32 %r28,%r29
    store i32 %r30, ptr %r2
    %r31 = load i32, ptr %r4
    %r32 = load i32, ptr %r2
    %r33 = add i32 %r31,%r32
    %r34 = load i32, ptr %r9
    %r35 = add i32 %r33,%r34
    %r36 = load i32, ptr %r24
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r4
    %r38 = load i32, ptr %r9
    %r39 = load i32, ptr %r2
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r9
    %r42 = load i32, ptr %r24
    %r43 = add i32 0,7
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r41
    %r45 = load i32, ptr %r41
    %r46 = add i32 0,8
    %r47 = add i32 %r45,%r46
    store i32 %r47, ptr %r41
    %r48 = load i32, ptr %r4
    %r49 = load i32, ptr %r41
    %r50 = add i32 %r48,%r49
    %r51 = load i32, ptr %r9
    %r52 = add i32 %r50,%r51
    %r53 = load i32, ptr %r24
    %r54 = add i32 %r52,%r53
    store i32 %r54, ptr %r4
    %r55 = load i32, ptr %r9
    %r56 = load i32, ptr %r41
    %r57 = add i32 %r55,%r56
    store i32 %r57, ptr %r9
    %r59 = load i32, ptr %r24
    %r60 = add i32 0,9
    %r61 = add i32 %r59,%r60
    store i32 %r61, ptr %r58
    %r62 = load i32, ptr %r41
    %r63 = add i32 0,10
    %r64 = add i32 %r62,%r63
    store i32 %r64, ptr %r41
    %r66 = add i32 0,11
    store i32 %r66, ptr %r65
    %r67 = load i32, ptr %r58
    %r68 = add i32 0,12
    %r69 = add i32 %r67,%r68
    store i32 %r69, ptr %r58
    %r70 = load i32, ptr %r4
    %r71 = load i32, ptr %r65
    %r72 = add i32 %r70,%r71
    %r73 = load i32, ptr %r58
    %r74 = add i32 %r72,%r73
    %r75 = load i32, ptr %r24
    %r76 = add i32 %r74,%r75
    store i32 %r76, ptr %r4
    %r77 = load i32, ptr %r24
    %r78 = load i32, ptr %r58
    %r79 = add i32 %r77,%r78
    store i32 %r79, ptr %r24
    %r81 = load i32, ptr %r58
    %r82 = add i32 0,13
    %r83 = add i32 %r81,%r82
    store i32 %r83, ptr %r80
    %r84 = load i32, ptr %r80
    %r85 = load i32, ptr %r65
    %r86 = add i32 %r84,%r85
    store i32 %r86, ptr %r80
    %r87 = load i32, ptr %r4
    %r88 = load i32, ptr %r65
    %r89 = add i32 %r87,%r88
    %r90 = load i32, ptr %r58
    %r91 = add i32 %r89,%r90
    %r92 = load i32, ptr %r80
    %r93 = add i32 %r91,%r92
    store i32 %r93, ptr %r4
    %r94 = load i32, ptr %r4
    %r95 = load i32, ptr %r24
    %r96 = sub i32 %r94,%r95
    store i32 %r96, ptr %r4
    %r97 = load i32, ptr %r4
    %r98 = load i32, ptr %r9
    %r99 = sub i32 %r97,%r98
    store i32 %r99, ptr %r4
    %r100 = load i32, ptr %r4
    %r101 = load i32, ptr %r2
    %r102 = sub i32 %r100,%r101
    store i32 %r102, ptr %r4
    %r103 = load i32, ptr %r4
    %r104 = add i32 0,77
    %r105 = srem i32 %r103,%r104
    ret i32 %r105
}
