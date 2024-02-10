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
define i32 @func1(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    store i32 %r1, ptr %r4
    store i32 %r2, ptr %r5
    br label %L1
L1:
    %r6 = load i32, ptr %r5
    %r7 = add i32 0,0
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r9 = load i32, ptr %r3
    %r10 = load i32, ptr %r4
    %r11 = mul i32 %r9,%r10
    ret i32 %r11
L3:
    %r12 = load i32, ptr %r3
    %r13 = load i32, ptr %r4
    %r14 = load i32, ptr %r5
    %r15 = sub i32 %r13,%r14
    %r16 = add i32 0,0
    %r17 = call i32 @func1(i32 %r12,i32 %r15,i32 %r16)
    ret i32 %r17
}
define i32 @func6(i32 %r0,i32 %r1)
{
L0:
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = icmp ne i32 %r4,0
    br i1 %r5, label %L5, label %L3
L2:
    %r8 = add i32 1,0
    ret i32 %r8
L3:
    %r9 = add i32 0,0
    ret i32 %r9
L5:
    %r6 = load i32, ptr %r3
    %r7 = icmp ne i32 %r6,0
    br i1 %r7, label %L2, label %L3
}
define i32 @func3(i32 %r0,i32 %r1)
{
L0:
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r3
    %r5 = add i32 0,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r7 = load i32, ptr %r2
    %r8 = add i32 1,0
    %r9 = add i32 %r7,%r8
    ret i32 %r9
L3:
    %r10 = load i32, ptr %r2
    %r11 = load i32, ptr %r3
    %r12 = add i32 %r10,%r11
    %r13 = add i32 0,0
    %r14 = call i32 @func3(i32 %r12,i32 %r13)
    ret i32 %r14
}
define i32 @func2(i32 %r0,i32 %r1)
{
L0:
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r3
    %r5 = icmp ne i32 %r4,0
    br i1 %r5, label %L2, label %L3
L2:
    %r6 = load i32, ptr %r2
    %r7 = load i32, ptr %r3
    %r8 = srem i32 %r6,%r7
    %r9 = add i32 0,0
    %r10 = call i32 @func2(i32 %r8,i32 %r9)
    ret i32 %r10
L3:
    %r11 = load i32, ptr %r2
    ret i32 %r11
}
define i32 @func4(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    store i32 %r1, ptr %r4
    store i32 %r2, ptr %r5
    br label %L1
L1:
    %r6 = load i32, ptr %r3
    %r7 = icmp ne i32 %r6,0
    br i1 %r7, label %L2, label %L3
L2:
    %r8 = load i32, ptr %r4
    ret i32 %r8
L3:
    %r9 = load i32, ptr %r5
    ret i32 %r9
}
define i32 @main()
{
L0:
    %r20 = alloca i32
    %r9 = alloca i32
    %r8 = alloca [10 x i32]
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r2
    %r5 = call i32 @getint()
    store i32 %r5, ptr %r4
    %r7 = call i32 @getint()
    store i32 %r7, ptr %r6
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    br label %L2
L2:
    %r11 = load i32, ptr %r9
    %r12 = add i32 10,0
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L4
L3:
    %r14 = load i32, ptr %r9
    %r15 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r14
    %r16 = call i32 @getint()
    store i32 %r16, ptr %r15
    %r17 = load i32, ptr %r9
    %r18 = add i32 1,0
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r9
    br label %L2
L4:
    %r21 = load i32, ptr %r0
    %r22 = call i32 @func7(i32 %r21)
    %r23 = load i32, ptr %r2
    %r24 = call i32 @func5(i32 %r23)
    %r25 = call i32 @func6(i32 %r22,i32 %r24)
    %r26 = load i32, ptr %r4
    %r27 = call i32 @func2(i32 %r25,i32 %r26)
    %r28 = load i32, ptr %r6
    %r29 = call i32 @func3(i32 %r27,i32 %r28)
    %r30 = call i32 @func5(i32 %r29)
    %r31 = add i32 0,0
    %r32 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r31
    %r33 = load i32, ptr %r32
    %r34 = add i32 1,0
    %r35 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = call i32 @func5(i32 %r36)
    %r38 = add i32 2,0
    %r39 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r38
    %r40 = load i32, ptr %r39
    %r41 = add i32 3,0
    %r42 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = call i32 @func7(i32 %r43)
    %r45 = call i32 @func6(i32 %r40,i32 %r44)
    %r46 = add i32 4,0
    %r47 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = add i32 5,0
    %r50 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r49
    %r51 = load i32, ptr %r50
    %r52 = call i32 @func7(i32 %r51)
    %r53 = call i32 @func2(i32 %r48,i32 %r52)
    %r54 = call i32 @func4(i32 %r37,i32 %r45,i32 %r53)
    %r55 = add i32 6,0
    %r56 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r55
    %r57 = load i32, ptr %r56
    %r58 = call i32 @func3(i32 %r54,i32 %r57)
    %r59 = add i32 7,0
    %r60 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r59
    %r61 = load i32, ptr %r60
    %r62 = call i32 @func2(i32 %r58,i32 %r61)
    %r63 = add i32 8,0
    %r64 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r63
    %r65 = load i32, ptr %r64
    %r66 = add i32 9,0
    %r67 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = call i32 @func7(i32 %r68)
    %r70 = call i32 @func3(i32 %r65,i32 %r69)
    %r71 = load i32, ptr %r0
    %r72 = call i32 @func1(i32 %r62,i32 %r70,i32 %r71)
    %r73 = call i32 @func4(i32 %r30,i32 %r33,i32 %r72)
    %r74 = load i32, ptr %r2
    %r75 = load i32, ptr %r4
    %r76 = call i32 @func7(i32 %r75)
    %r77 = load i32, ptr %r6
    %r78 = call i32 @func3(i32 %r76,i32 %r77)
    %r79 = call i32 @func2(i32 %r74,i32 %r78)
    %r80 = call i32 @func3(i32 %r73,i32 %r79)
    %r81 = add i32 0,0
    %r82 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = add i32 1,0
    %r85 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r84
    %r86 = load i32, ptr %r85
    %r87 = call i32 @func1(i32 %r80,i32 %r83,i32 %r86)
    %r88 = add i32 2,0
    %r89 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r88
    %r90 = load i32, ptr %r89
    %r91 = call i32 @func2(i32 %r87,i32 %r90)
    %r92 = add i32 3,0
    %r93 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r92
    %r94 = load i32, ptr %r93
    %r95 = add i32 4,0
    %r96 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r95
    %r97 = load i32, ptr %r96
    %r98 = add i32 5,0
    %r99 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r98
    %r100 = load i32, ptr %r99
    %r101 = call i32 @func5(i32 %r100)
    %r102 = call i32 @func3(i32 %r97,i32 %r101)
    %r103 = add i32 6,0
    %r104 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r103
    %r105 = load i32, ptr %r104
    %r106 = call i32 @func5(i32 %r105)
    %r107 = call i32 @func2(i32 %r102,i32 %r106)
    %r108 = add i32 7,0
    %r109 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r108
    %r110 = load i32, ptr %r109
    %r111 = add i32 8,0
    %r112 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r111
    %r113 = load i32, ptr %r112
    %r114 = call i32 @func7(i32 %r113)
    %r115 = call i32 @func1(i32 %r107,i32 %r110,i32 %r114)
    %r116 = add i32 9,0
    %r117 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r116
    %r118 = load i32, ptr %r117
    %r119 = call i32 @func5(i32 %r118)
    %r120 = call i32 @func2(i32 %r115,i32 %r119)
    %r121 = load i32, ptr %r0
    %r122 = call i32 @func3(i32 %r120,i32 %r121)
    %r123 = call i32 @func1(i32 %r91,i32 %r94,i32 %r122)
    store i32 %r123, ptr %r20
    %r124 = load i32, ptr %r20
    ret i32 %r124
}
define i32 @func5(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = sub i32 0,%r2
    ret i32 %r3
}
define i32 @func7(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = icmp eq i32 %r2,0
    br i1 %r3, label %L2, label %L3
L2:
    %r4 = add i32 1,0
    ret i32 %r4
L3:
    %r5 = add i32 0,0
    ret i32 %r5
}
