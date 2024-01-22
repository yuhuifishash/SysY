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
define i32 @func1(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    %r4 = alloca i32
    store i32 %r1, ptr %r4
    %r5 = alloca i32
    store i32 %r2, ptr %r5
    %r6 = load i32, ptr %r5
    %r7 = add i32 0,0
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L1, label %L2
L1:
    %r11 = load i32, ptr %r3
    %r12 = load i32, ptr %r4
    %r13 = mul i32 %r11,%r12
    ret i32 %r13
L2:
    %r14 = load i32, ptr %r3
    %r15 = load i32, ptr %r4
    %r16 = load i32, ptr %r5
    %r17 = sub i32 %r15,%r16
    %r18 = add i32 0,0
    %r19 = call i32 @func1(i32 %r14,i32 %r17,i32 %r18)
    ret i32 %r19
}
define i32 @func2(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r3
    %r5 = icmp ne i32 %r4,0
    br i1 %r5, label %L1, label %L2
L1:
    %r6 = load i32, ptr %r2
    %r7 = load i32, ptr %r3
    %r8 = srem i32 %r6,%r7
    %r9 = add i32 0,0
    %r10 = call i32 @func2(i32 %r8,i32 %r9)
    ret i32 %r10
L2:
    %r11 = load i32, ptr %r2
    ret i32 %r11
}
define i32 @func3(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r3
    %r5 = add i32 0,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L1, label %L2
L1:
    %r9 = load i32, ptr %r2
    %r10 = add i32 0,1
    %r11 = add i32 %r9,%r10
    ret i32 %r11
L2:
    %r12 = load i32, ptr %r2
    %r13 = load i32, ptr %r3
    %r14 = add i32 %r12,%r13
    %r15 = add i32 0,0
    %r16 = call i32 @func3(i32 %r14,i32 %r15)
    ret i32 %r16
}
define i32 @func4(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    %r4 = alloca i32
    store i32 %r1, ptr %r4
    %r5 = alloca i32
    store i32 %r2, ptr %r5
    %r6 = load i32, ptr %r3
    %r7 = icmp ne i32 %r6,0
    br i1 %r7, label %L1, label %L2
L1:
    %r8 = load i32, ptr %r4
    ret i32 %r8
L2:
    %r9 = load i32, ptr %r5
    ret i32 %r9
}
define i32 @func5(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = sub i32 0,%r2
    ret i32 %r3
}
define i32 @func6(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r2
    %r5 = icmp ne i32 %r4,0
    br i1 %r5, label %L4, label %L2
L1:
    %r11 = add i32 0,1
    ret i32 %r11
L2:
    %r12 = add i32 0,0
    ret i32 %r12
L4:
    %r6 = load i32, ptr %r3
    %r7 = icmp ne i32 %r6,0
    br i1 %r7, label %L1, label %L2
}
define i32 @func7(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = icmp eq i32 %r2,0
    br i1 %r3, label %L1, label %L2
L1:
    %r6 = add i32 0,1
    ret i32 %r6
L2:
    %r7 = add i32 0,0
    ret i32 %r7
}
define i32 @main()
{
L0:
    %r22 = alloca i32
    %r9 = alloca i32
    %r8 = alloca [10 x i32]
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
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
    br label %L1
L1:
    %r11 = load i32, ptr %r9
    %r12 = add i32 0,10
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L2, label %L3
L2:
    %r16 = call i32 @getint()
    %r17 = load i32, ptr %r9
    %r18 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r17
    store i32 %r16, ptr %r18
    %r19 = load i32, ptr %r9
    %r20 = add i32 0,1
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r9
    br label %L1
L3:
    %r23 = load i32, ptr %r0
    %r24 = call i32 @func7(i32 %r23)
    %r25 = load i32, ptr %r2
    %r26 = call i32 @func5(i32 %r25)
    %r27 = call i32 @func6(i32 %r24,i32 %r26)
    %r28 = load i32, ptr %r4
    %r29 = call i32 @func2(i32 %r27,i32 %r28)
    %r30 = load i32, ptr %r6
    %r31 = call i32 @func3(i32 %r29,i32 %r30)
    %r32 = call i32 @func5(i32 %r31)
    %r33 = add i32 0,0
    %r34 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r33
    %r35 = load i32, ptr %r34
    %r36 = add i32 0,1
    %r37 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = call i32 @func5(i32 %r38)
    %r40 = add i32 0,2
    %r41 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r40
    %r42 = load i32, ptr %r41
    %r43 = add i32 0,3
    %r44 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    %r46 = call i32 @func7(i32 %r45)
    %r47 = call i32 @func6(i32 %r42,i32 %r46)
    %r48 = add i32 0,4
    %r49 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = add i32 0,5
    %r52 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = call i32 @func7(i32 %r53)
    %r55 = call i32 @func2(i32 %r50,i32 %r54)
    %r56 = call i32 @func4(i32 %r39,i32 %r47,i32 %r55)
    %r57 = add i32 0,6
    %r58 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r57
    %r59 = load i32, ptr %r58
    %r60 = call i32 @func3(i32 %r56,i32 %r59)
    %r61 = add i32 0,7
    %r62 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r61
    %r63 = load i32, ptr %r62
    %r64 = call i32 @func2(i32 %r60,i32 %r63)
    %r65 = add i32 0,8
    %r66 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r65
    %r67 = load i32, ptr %r66
    %r68 = add i32 0,9
    %r69 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r68
    %r70 = load i32, ptr %r69
    %r71 = call i32 @func7(i32 %r70)
    %r72 = call i32 @func3(i32 %r67,i32 %r71)
    %r73 = load i32, ptr %r0
    %r74 = call i32 @func1(i32 %r64,i32 %r72,i32 %r73)
    %r75 = call i32 @func4(i32 %r32,i32 %r35,i32 %r74)
    %r76 = load i32, ptr %r2
    %r77 = load i32, ptr %r4
    %r78 = call i32 @func7(i32 %r77)
    %r79 = load i32, ptr %r6
    %r80 = call i32 @func3(i32 %r78,i32 %r79)
    %r81 = call i32 @func2(i32 %r76,i32 %r80)
    %r82 = call i32 @func3(i32 %r75,i32 %r81)
    %r83 = add i32 0,0
    %r84 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r83
    %r85 = load i32, ptr %r84
    %r86 = add i32 0,1
    %r87 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r86
    %r88 = load i32, ptr %r87
    %r89 = call i32 @func1(i32 %r82,i32 %r85,i32 %r88)
    %r90 = add i32 0,2
    %r91 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r90
    %r92 = load i32, ptr %r91
    %r93 = call i32 @func2(i32 %r89,i32 %r92)
    %r94 = add i32 0,3
    %r95 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r94
    %r96 = load i32, ptr %r95
    %r97 = add i32 0,4
    %r98 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r97
    %r99 = load i32, ptr %r98
    %r100 = add i32 0,5
    %r101 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r100
    %r102 = load i32, ptr %r101
    %r103 = call i32 @func5(i32 %r102)
    %r104 = call i32 @func3(i32 %r99,i32 %r103)
    %r105 = add i32 0,6
    %r106 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r105
    %r107 = load i32, ptr %r106
    %r108 = call i32 @func5(i32 %r107)
    %r109 = call i32 @func2(i32 %r104,i32 %r108)
    %r110 = add i32 0,7
    %r111 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r110
    %r112 = load i32, ptr %r111
    %r113 = add i32 0,8
    %r114 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r113
    %r115 = load i32, ptr %r114
    %r116 = call i32 @func7(i32 %r115)
    %r117 = call i32 @func1(i32 %r109,i32 %r112,i32 %r116)
    %r118 = add i32 0,9
    %r119 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r118
    %r120 = load i32, ptr %r119
    %r121 = call i32 @func5(i32 %r120)
    %r122 = call i32 @func2(i32 %r117,i32 %r121)
    %r123 = load i32, ptr %r0
    %r124 = call i32 @func3(i32 %r122,i32 %r123)
    %r125 = call i32 @func1(i32 %r93,i32 %r96,i32 %r124)
    store i32 %r125, ptr %r22
    %r126 = load i32, ptr %r22
    ret i32 %r126
}
