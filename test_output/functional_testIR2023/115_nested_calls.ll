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
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    %r4 = alloca i32
    store i32 %r1, ptr %r4
    %r5 = alloca i32
    store i32 %r2, ptr %r5
    br label %L1
L1:
    %r6 = load i32, ptr %r5
    %r7 = add i32 0,0
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r11 = load i32, ptr %r3
    %r12 = load i32, ptr %r4
    %r13 = mul i32 %r11,%r12
    ret i32 %r13
L3:
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
define i32 @func3(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r3
    %r5 = add i32 0,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r9 = load i32, ptr %r2
    %r10 = add i32 0,1
    %r11 = add i32 %r9,%r10
    ret i32 %r11
L3:
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
define i32 @func6(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = icmp ne i32 %r4,0
    br i1 %r5, label %L5, label %L3
L2:
    %r11 = add i32 0,1
    ret i32 %r11
L3:
    %r12 = add i32 0,0
    ret i32 %r12
L5:
    %r6 = load i32, ptr %r3
    %r7 = icmp ne i32 %r6,0
    br i1 %r7, label %L2, label %L3
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
    %r6 = add i32 0,1
    ret i32 %r6
L3:
    %r7 = add i32 0,0
    ret i32 %r7
}
define i32 @main()
{
L0:
    %r27 = alloca i32
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
    %r11 = load i32, ptr %r9
    %r12 = add i32 0,10
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L5
L3:
    %r16 = call i32 @getint()
    %r17 = load i32, ptr %r9
    %r18 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r17
    store i32 %r16, ptr %r18
    %r19 = load i32, ptr %r9
    %r20 = add i32 0,1
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r9
    br label %L4
L4:
    %r22 = load i32, ptr %r9
    %r23 = add i32 0,10
    %r24 = icmp slt i32 %r22,%r23
    br i1 %r24, label %L3, label %L5
L5:
    %r28 = load i32, ptr %r0
    %r29 = call i32 @func7(i32 %r28)
    %r30 = load i32, ptr %r2
    %r31 = call i32 @func5(i32 %r30)
    %r32 = call i32 @func6(i32 %r29,i32 %r31)
    %r33 = load i32, ptr %r4
    %r34 = call i32 @func2(i32 %r32,i32 %r33)
    %r35 = load i32, ptr %r6
    %r36 = call i32 @func3(i32 %r34,i32 %r35)
    %r37 = call i32 @func5(i32 %r36)
    %r38 = add i32 0,0
    %r39 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r38
    %r40 = load i32, ptr %r39
    %r41 = add i32 0,1
    %r42 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = call i32 @func5(i32 %r43)
    %r45 = add i32 0,2
    %r46 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r45
    %r47 = load i32, ptr %r46
    %r48 = add i32 0,3
    %r49 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = call i32 @func7(i32 %r50)
    %r52 = call i32 @func6(i32 %r47,i32 %r51)
    %r53 = add i32 0,4
    %r54 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = add i32 0,5
    %r57 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r56
    %r58 = load i32, ptr %r57
    %r59 = call i32 @func7(i32 %r58)
    %r60 = call i32 @func2(i32 %r55,i32 %r59)
    %r61 = call i32 @func4(i32 %r44,i32 %r52,i32 %r60)
    %r62 = add i32 0,6
    %r63 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = call i32 @func3(i32 %r61,i32 %r64)
    %r66 = add i32 0,7
    %r67 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = call i32 @func2(i32 %r65,i32 %r68)
    %r70 = add i32 0,8
    %r71 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = add i32 0,9
    %r74 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r73
    %r75 = load i32, ptr %r74
    %r76 = call i32 @func7(i32 %r75)
    %r77 = call i32 @func3(i32 %r72,i32 %r76)
    %r78 = load i32, ptr %r0
    %r79 = call i32 @func1(i32 %r69,i32 %r77,i32 %r78)
    %r80 = call i32 @func4(i32 %r37,i32 %r40,i32 %r79)
    %r81 = load i32, ptr %r2
    %r82 = load i32, ptr %r4
    %r83 = call i32 @func7(i32 %r82)
    %r84 = load i32, ptr %r6
    %r85 = call i32 @func3(i32 %r83,i32 %r84)
    %r86 = call i32 @func2(i32 %r81,i32 %r85)
    %r87 = call i32 @func3(i32 %r80,i32 %r86)
    %r88 = add i32 0,0
    %r89 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r88
    %r90 = load i32, ptr %r89
    %r91 = add i32 0,1
    %r92 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r91
    %r93 = load i32, ptr %r92
    %r94 = call i32 @func1(i32 %r87,i32 %r90,i32 %r93)
    %r95 = add i32 0,2
    %r96 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r95
    %r97 = load i32, ptr %r96
    %r98 = call i32 @func2(i32 %r94,i32 %r97)
    %r99 = add i32 0,3
    %r100 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r99
    %r101 = load i32, ptr %r100
    %r102 = add i32 0,4
    %r103 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r102
    %r104 = load i32, ptr %r103
    %r105 = add i32 0,5
    %r106 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r105
    %r107 = load i32, ptr %r106
    %r108 = call i32 @func5(i32 %r107)
    %r109 = call i32 @func3(i32 %r104,i32 %r108)
    %r110 = add i32 0,6
    %r111 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r110
    %r112 = load i32, ptr %r111
    %r113 = call i32 @func5(i32 %r112)
    %r114 = call i32 @func2(i32 %r109,i32 %r113)
    %r115 = add i32 0,7
    %r116 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r115
    %r117 = load i32, ptr %r116
    %r118 = add i32 0,8
    %r119 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r118
    %r120 = load i32, ptr %r119
    %r121 = call i32 @func7(i32 %r120)
    %r122 = call i32 @func1(i32 %r114,i32 %r117,i32 %r121)
    %r123 = add i32 0,9
    %r124 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r123
    %r125 = load i32, ptr %r124
    %r126 = call i32 @func5(i32 %r125)
    %r127 = call i32 @func2(i32 %r122,i32 %r126)
    %r128 = load i32, ptr %r0
    %r129 = call i32 @func3(i32 %r127,i32 %r128)
    %r130 = call i32 @func1(i32 %r98,i32 %r101,i32 %r129)
    store i32 %r130, ptr %r27
    %r131 = load i32, ptr %r27
    ret i32 %r131
}
