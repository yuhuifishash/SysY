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
L0:  ;
    br label %L1
L1:  ;
    %r8 = icmp eq i32 %r2,0
    br i1 %r8, label %L2, label %L3
L2:  ;
    %r11 = mul i32 %r0,%r1
    ret i32 %r11
L3:  ;
    %r15 = sub i32 %r1,%r2
    %r17 = call i32 @func1(i32 %r0,i32 %r15,i32 0)
    ret i32 %r17
}
define i32 @func2(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r5 = icmp ne i32 %r1,0
    br i1 %r5, label %L2, label %L3
L2:  ;
    %r8 = srem i32 %r0,%r1
    %r10 = call i32 @func2(i32 %r8,i32 0)
    ret i32 %r10
L3:  ;
    ret i32 %r0
}
define i32 @func3(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = icmp eq i32 %r1,0
    br i1 %r6, label %L2, label %L3
L2:  ;
    %r9 = add i32 %r0,1
    ret i32 %r9
L3:  ;
    %r12 = add i32 %r0,%r1
    %r14 = call i32 @func3(i32 %r12,i32 0)
    ret i32 %r14
}
define i32 @func4(i32 %r0,i32 %r1,i32 %r2)
{
L0:  ;
    br label %L1
L1:  ;
    %r7 = icmp ne i32 %r0,0
    br i1 %r7, label %L2, label %L3
L2:  ;
    ret i32 %r1
L3:  ;
    ret i32 %r2
}
define i32 @func5(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = sub i32 0,%r0
    ret i32 %r3
}
define i32 @func6(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r5 = icmp ne i32 %r0,0
    br i1 %r5, label %L5, label %L3
L2:  ;
    ret i32 1
L3:  ;
    ret i32 0
L5:  ;
    %r7 = icmp ne i32 %r1,0
    br i1 %r7, label %L2, label %L3
}
define i32 @func7(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = icmp eq i32 %r0,0
    br i1 %r3, label %L2, label %L3
L2:  ;
    ret i32 1
L3:  ;
    ret i32 0
}
define i32 @main()
{
L0:  ;
    %r8 = alloca [10 x i32]
    br label %L1
L1:  ;
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    %r5 = call i32 @getint()
    %r7 = call i32 @getint()
    br label %L2
L2:  ;
    %r125 = phi i32 [0,%L1],[%r19,%L3]
    %r13 = icmp slt i32 %r125,10
    br i1 %r13, label %L3, label %L4
L3:  ;
    %r15 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r125
    %r16 = call i32 @getint()
    store i32 %r16, ptr %r15
    %r19 = add i32 %r125,1
    br label %L2
L4:  ;
    %r22 = call i32 @func7(i32 %r1)
    %r24 = call i32 @func5(i32 %r3)
    %r25 = call i32 @func6(i32 %r22,i32 %r24)
    %r27 = call i32 @func2(i32 %r25,i32 %r5)
    %r29 = call i32 @func3(i32 %r27,i32 %r7)
    %r30 = call i32 @func5(i32 %r29)
    %r32 = getelementptr [10 x i32], ptr %r8, i32 0, i32 0
    %r33 = load i32, ptr %r32
    %r35 = getelementptr [10 x i32], ptr %r8, i32 0, i32 1
    %r36 = load i32, ptr %r35
    %r37 = call i32 @func5(i32 %r36)
    %r39 = getelementptr [10 x i32], ptr %r8, i32 0, i32 2
    %r40 = load i32, ptr %r39
    %r42 = getelementptr [10 x i32], ptr %r8, i32 0, i32 3
    %r43 = load i32, ptr %r42
    %r44 = call i32 @func7(i32 %r43)
    %r45 = call i32 @func6(i32 %r40,i32 %r44)
    %r47 = getelementptr [10 x i32], ptr %r8, i32 0, i32 4
    %r48 = load i32, ptr %r47
    %r50 = getelementptr [10 x i32], ptr %r8, i32 0, i32 5
    %r51 = load i32, ptr %r50
    %r52 = call i32 @func7(i32 %r51)
    %r53 = call i32 @func2(i32 %r48,i32 %r52)
    %r54 = call i32 @func4(i32 %r37,i32 %r45,i32 %r53)
    %r56 = getelementptr [10 x i32], ptr %r8, i32 0, i32 6
    %r57 = load i32, ptr %r56
    %r58 = call i32 @func3(i32 %r54,i32 %r57)
    %r60 = getelementptr [10 x i32], ptr %r8, i32 0, i32 7
    %r61 = load i32, ptr %r60
    %r62 = call i32 @func2(i32 %r58,i32 %r61)
    %r64 = getelementptr [10 x i32], ptr %r8, i32 0, i32 8
    %r65 = load i32, ptr %r64
    %r67 = getelementptr [10 x i32], ptr %r8, i32 0, i32 9
    %r68 = load i32, ptr %r67
    %r69 = call i32 @func7(i32 %r68)
    %r70 = call i32 @func3(i32 %r65,i32 %r69)
    %r72 = call i32 @func1(i32 %r62,i32 %r70,i32 %r1)
    %r73 = call i32 @func4(i32 %r30,i32 %r33,i32 %r72)
    %r76 = call i32 @func7(i32 %r5)
    %r78 = call i32 @func3(i32 %r76,i32 %r7)
    %r79 = call i32 @func2(i32 %r3,i32 %r78)
    %r80 = call i32 @func3(i32 %r73,i32 %r79)
    %r82 = getelementptr [10 x i32], ptr %r8, i32 0, i32 0
    %r83 = load i32, ptr %r82
    %r85 = getelementptr [10 x i32], ptr %r8, i32 0, i32 1
    %r86 = load i32, ptr %r85
    %r87 = call i32 @func1(i32 %r80,i32 %r83,i32 %r86)
    %r89 = getelementptr [10 x i32], ptr %r8, i32 0, i32 2
    %r90 = load i32, ptr %r89
    %r91 = call i32 @func2(i32 %r87,i32 %r90)
    %r93 = getelementptr [10 x i32], ptr %r8, i32 0, i32 3
    %r94 = load i32, ptr %r93
    %r96 = getelementptr [10 x i32], ptr %r8, i32 0, i32 4
    %r97 = load i32, ptr %r96
    %r99 = getelementptr [10 x i32], ptr %r8, i32 0, i32 5
    %r100 = load i32, ptr %r99
    %r101 = call i32 @func5(i32 %r100)
    %r102 = call i32 @func3(i32 %r97,i32 %r101)
    %r104 = getelementptr [10 x i32], ptr %r8, i32 0, i32 6
    %r105 = load i32, ptr %r104
    %r106 = call i32 @func5(i32 %r105)
    %r107 = call i32 @func2(i32 %r102,i32 %r106)
    %r109 = getelementptr [10 x i32], ptr %r8, i32 0, i32 7
    %r110 = load i32, ptr %r109
    %r112 = getelementptr [10 x i32], ptr %r8, i32 0, i32 8
    %r113 = load i32, ptr %r112
    %r114 = call i32 @func7(i32 %r113)
    %r115 = call i32 @func1(i32 %r107,i32 %r110,i32 %r114)
    %r117 = getelementptr [10 x i32], ptr %r8, i32 0, i32 9
    %r118 = load i32, ptr %r117
    %r119 = call i32 @func5(i32 %r118)
    %r120 = call i32 @func2(i32 %r115,i32 %r119)
    %r122 = call i32 @func3(i32 %r120,i32 %r1)
    %r123 = call i32 @func1(i32 %r91,i32 %r94,i32 %r122)
    ret i32 %r123
}
