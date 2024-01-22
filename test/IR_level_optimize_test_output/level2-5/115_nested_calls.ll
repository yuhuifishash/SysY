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
    br label %L5
L1:
    %r22 = phi i32 [0,%L3],[%r2,%L5]
    %r21 = phi i32 [%r17,%L3],[%r1,%L5]
    %r20 = phi i32 [%r20,%L3],[%r0,%L5]
    %r8 = icmp eq i32 %r22,0
    br i1 %r8, label %L2, label %L3
L2:
    %r13 = mul i32 %r20,%r21
    ret i32 %r13
L3:
    %r17 = sub i32 %r21,%r22
    br label %L1
L5:
    br label %L1
}
define i32 @func2(i32 %r0,i32 %r1)
{
L0:
    br label %L5
L1:
    %r13 = phi i32 [0,%L2],[%r1,%L5]
    %r12 = phi i32 [%r8,%L2],[%r0,%L5]
    %r5 = icmp ne i32 %r13,0
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = srem i32 %r12,%r13
    br label %L1
L3:
    ret i32 %r12
L5:
    br label %L1
}
define i32 @func3(i32 %r0,i32 %r1)
{
L0:
    br label %L5
L1:
    %r18 = phi i32 [0,%L3],[%r1,%L5]
    %r17 = phi i32 [%r14,%L3],[%r0,%L5]
    %r6 = icmp eq i32 %r18,0
    br i1 %r6, label %L2, label %L3
L2:
    %r11 = add i32 %r17,1
    ret i32 %r11
L3:
    %r14 = add i32 %r17,%r18
    br label %L1
L5:
    br label %L1
}
define i32 @func4(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r7 = icmp ne i32 %r0,0
    br i1 %r7, label %L2, label %L3
L2:
    ret i32 %r1
L3:
    ret i32 %r2
}
define i32 @func5(i32 %r0)
{
L0:
    br label %L1
L1:
    %r3 = sub i32 0,%r0
    ret i32 %r3
}
define i32 @func6(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r5 = icmp ne i32 %r0,0
    br i1 %r5, label %L5, label %L3
L2:
    ret i32 1
L3:
    ret i32 0
L5:
    %r7 = icmp ne i32 %r1,0
    br i1 %r7, label %L2, label %L3
}
define i32 @func7(i32 %r0)
{
L0:
    br label %L1
L1:
    %r3 = icmp eq i32 %r0,0
    br i1 %r3, label %L2, label %L3
L2:
    ret i32 1
L3:
    ret i32 0
}
define i32 @main()
{
L0:
    %r8 = alloca [10 x i32]
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    %r5 = call i32 @getint()
    %r7 = call i32 @getint()
    br label %L76
L3:
    %r132 = phi i32 [%r21,%L4],[0,%L76]
    %r16 = call i32 @getint()
    %r18 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r132
    store i32 %r16, ptr %r18
    %r21 = add i32 %r132,1
    br label %L4
L4:
    %r24 = icmp slt i32 %r21,10
    br i1 %r24, label %L3, label %L5
L5:
    br label %L6
L6:
    br label %L8
L7:
    %r29 = phi i32 [0,%L10],[1,%L9]
    br label %L11
L8:
    %r134 = icmp eq i32 %r1,0
    br i1 %r134, label %L9, label %L10
L9:
    br label %L7
L10:
    br label %L7
L11:
    br label %L13
L12:
    br label %L14
L13:
    %r135 = sub i32 0,%r3
    br label %L12
L14:
    br label %L16
L15:
    %r32 = phi i32 [1,%L17],[0,%L18]
    %r34 = call i32 @func2(i32 %r32,i32 %r5)
    %r36 = call i32 @func3(i32 %r34,i32 %r7)
    br label %L20
L16:
    %r136 = icmp ne i32 %r29,0
    br i1 %r136, label %L19, label %L18
L17:
    br label %L15
L18:
    br label %L15
L19:
    %r137 = icmp ne i32 %r135,0
    br i1 %r137, label %L17, label %L18
L20:
    br label %L22
L21:
    %r39 = getelementptr [10 x i32], ptr %r8, i32 0, i32 0
    %r40 = load i32, ptr %r39
    %r42 = getelementptr [10 x i32], ptr %r8, i32 0, i32 1
    %r43 = load i32, ptr %r42
    br label %L23
L22:
    %r138 = sub i32 0,%r36
    br label %L21
L23:
    br label %L25
L24:
    %r46 = getelementptr [10 x i32], ptr %r8, i32 0, i32 2
    %r47 = load i32, ptr %r46
    %r49 = getelementptr [10 x i32], ptr %r8, i32 0, i32 3
    %r50 = load i32, ptr %r49
    br label %L26
L25:
    %r139 = sub i32 0,%r43
    br label %L24
L26:
    br label %L28
L27:
    %r51 = phi i32 [1,%L29],[0,%L30]
    br label %L31
L28:
    %r140 = icmp eq i32 %r50,0
    br i1 %r140, label %L29, label %L30
L29:
    br label %L27
L30:
    br label %L27
L31:
    br label %L33
L32:
    %r52 = phi i32 [1,%L34],[0,%L35]
    %r54 = getelementptr [10 x i32], ptr %r8, i32 0, i32 4
    %r55 = load i32, ptr %r54
    %r57 = getelementptr [10 x i32], ptr %r8, i32 0, i32 5
    %r58 = load i32, ptr %r57
    br label %L37
L33:
    %r141 = icmp ne i32 %r47,0
    br i1 %r141, label %L36, label %L35
L34:
    br label %L32
L35:
    br label %L32
L36:
    %r142 = icmp ne i32 %r51,0
    br i1 %r142, label %L34, label %L35
L37:
    br label %L39
L38:
    %r59 = phi i32 [1,%L40],[0,%L41]
    %r60 = call i32 @func2(i32 %r55,i32 %r59)
    br label %L42
L39:
    %r143 = icmp eq i32 %r58,0
    br i1 %r143, label %L40, label %L41
L40:
    br label %L38
L41:
    br label %L38
L42:
    br label %L44
L43:
    %r61 = phi i32 [%r52,%L45],[%r60,%L46]
    %r63 = getelementptr [10 x i32], ptr %r8, i32 0, i32 6
    %r64 = load i32, ptr %r63
    %r65 = call i32 @func3(i32 %r61,i32 %r64)
    %r67 = getelementptr [10 x i32], ptr %r8, i32 0, i32 7
    %r68 = load i32, ptr %r67
    %r69 = call i32 @func2(i32 %r65,i32 %r68)
    %r71 = getelementptr [10 x i32], ptr %r8, i32 0, i32 8
    %r72 = load i32, ptr %r71
    %r74 = getelementptr [10 x i32], ptr %r8, i32 0, i32 9
    %r75 = load i32, ptr %r74
    br label %L47
L44:
    %r144 = icmp ne i32 %r139,0
    br i1 %r144, label %L45, label %L46
L45:
    br label %L43
L46:
    br label %L43
L47:
    br label %L49
L48:
    %r76 = phi i32 [1,%L50],[0,%L51]
    %r77 = call i32 @func3(i32 %r72,i32 %r76)
    %r79 = call i32 @func1(i32 %r69,i32 %r77,i32 %r1)
    br label %L52
L49:
    %r145 = icmp eq i32 %r75,0
    br i1 %r145, label %L50, label %L51
L50:
    br label %L48
L51:
    br label %L48
L52:
    br label %L54
L53:
    %r80 = phi i32 [%r40,%L55],[%r79,%L56]
    br label %L57
L54:
    %r146 = icmp ne i32 %r138,0
    br i1 %r146, label %L55, label %L56
L55:
    br label %L53
L56:
    br label %L53
L57:
    br label %L59
L58:
    %r83 = phi i32 [1,%L60],[0,%L61]
    %r85 = call i32 @func3(i32 %r83,i32 %r7)
    %r86 = call i32 @func2(i32 %r3,i32 %r85)
    %r87 = call i32 @func3(i32 %r80,i32 %r86)
    %r94 = call i32 @func1(i32 %r87,i32 %r40,i32 %r43)
    %r98 = call i32 @func2(i32 %r94,i32 %r47)
    br label %L62
L59:
    %r147 = icmp eq i32 %r5,0
    br i1 %r147, label %L60, label %L61
L60:
    br label %L58
L61:
    br label %L58
L62:
    br label %L64
L63:
    %r109 = call i32 @func3(i32 %r55,i32 %r148)
    br label %L65
L64:
    %r148 = sub i32 0,%r58
    br label %L63
L65:
    br label %L67
L66:
    %r114 = call i32 @func2(i32 %r109,i32 %r149)
    br label %L68
L67:
    %r149 = sub i32 0,%r64
    br label %L66
L68:
    br label %L70
L69:
    %r121 = phi i32 [1,%L71],[0,%L72]
    %r122 = call i32 @func1(i32 %r114,i32 %r68,i32 %r121)
    br label %L73
L70:
    %r150 = icmp eq i32 %r72,0
    br i1 %r150, label %L71, label %L72
L71:
    br label %L69
L72:
    br label %L69
L73:
    br label %L75
L74:
    %r127 = call i32 @func2(i32 %r122,i32 %r151)
    %r129 = call i32 @func3(i32 %r127,i32 %r1)
    %r130 = call i32 @func1(i32 %r98,i32 %r50,i32 %r129)
    ret i32 %r130
L75:
    %r151 = sub i32 0,%r75
    br label %L74
L76:
    br label %L3
}
