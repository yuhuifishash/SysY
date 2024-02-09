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
@t = global [1005x [2x i32]] zeroinitializer
@dp = global [1005x [35x i32]] zeroinitializer
define i32 @main()
{
L0:
    %r120 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    store i32 0, ptr %r1
    store i32 0, ptr %r2
    store i32 0, ptr %r3
    store i32 0, ptr %r4
    %r5 = call i32 @getint()
    store i32 %r5, ptr %r0
    %r6 = call i32 @getint()
    store i32 %r6, ptr %r1
    %r7 = add i32 1,0
    store i32 %r7, ptr %r3
    br label %L2
L2:
    %r8 = load i32, ptr %r3
    %r9 = load i32, ptr %r0
    %r10 = icmp sle i32 %r8,%r9
    br i1 %r10, label %L3, label %L4
L3:
    %r11 = call i32 @getint()
    store i32 %r11, ptr %r2
    %r12 = load i32, ptr %r3
    %r13 = load i32, ptr %r2
    %r14 = add i32 2,0
    %r15 = srem i32 %r13,%r14
    %r16 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r12, i32 %r15
    %r17 = add i32 1,0
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r3
    %r19 = add i32 0,0
    %r20 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r18, i32 %r19
    %r21 = load i32, ptr %r3
    %r22 = add i32 1,0
    %r23 = sub i32 %r21,%r22
    %r24 = add i32 0,0
    %r25 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r23, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = load i32, ptr %r3
    %r28 = add i32 1,0
    %r29 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r27, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = add i32 %r26,%r30
    store i32 %r31, ptr %r20
    %r32 = load i32, ptr %r3
    %r33 = add i32 1,0
    %r34 = add i32 %r32,%r33
    store i32 %r34, ptr %r3
    br label %L2
L4:
    %r35 = add i32 1,0
    store i32 %r35, ptr %r3
    br label %L5
L5:
    %r36 = load i32, ptr %r3
    %r37 = load i32, ptr %r0
    %r38 = icmp sle i32 %r36,%r37
    br i1 %r38, label %L6, label %L7
L6:
    %r39 = add i32 1,0
    store i32 %r39, ptr %r4
    br label %L8
L7:
    %r121 = add i32 0,0
    store i32 %r121, ptr %r120
    %r122 = add i32 0,0
    store i32 %r122, ptr %r4
    br label %L14
L8:
    %r40 = load i32, ptr %r4
    %r41 = load i32, ptr %r1
    %r42 = icmp sle i32 %r40,%r41
    br i1 %r42, label %L9, label %L10
L9:
    %r43 = load i32, ptr %r3
    %r44 = add i32 1,0
    %r45 = sub i32 %r43,%r44
    %r46 = load i32, ptr %r4
    %r47 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r45, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = load i32, ptr %r3
    %r50 = load i32, ptr %r4
    %r51 = add i32 1,0
    %r52 = add i32 %r50,%r51
    %r53 = add i32 2,0
    %r54 = srem i32 %r52,%r53
    %r55 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r49, i32 %r54
    %r56 = load i32, ptr %r55
    %r57 = add i32 %r48,%r56
    %r58 = load i32, ptr %r3
    %r59 = add i32 1,0
    %r60 = sub i32 %r58,%r59
    %r61 = load i32, ptr %r4
    %r62 = add i32 1,0
    %r63 = sub i32 %r61,%r62
    %r64 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r60, i32 %r63
    %r65 = load i32, ptr %r64
    %r66 = load i32, ptr %r3
    %r67 = load i32, ptr %r4
    %r68 = add i32 1,0
    %r69 = add i32 %r67,%r68
    %r70 = add i32 2,0
    %r71 = srem i32 %r69,%r70
    %r72 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r66, i32 %r71
    %r73 = load i32, ptr %r72
    %r74 = add i32 %r65,%r73
    %r75 = icmp sgt i32 %r57,%r74
    br i1 %r75, label %L11, label %L12
L10:
    %r117 = load i32, ptr %r3
    %r118 = add i32 1,0
    %r119 = add i32 %r117,%r118
    store i32 %r119, ptr %r3
    br label %L5
L11:
    %r76 = load i32, ptr %r3
    %r77 = load i32, ptr %r4
    %r78 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r76, i32 %r77
    %r79 = load i32, ptr %r3
    %r80 = add i32 1,0
    %r81 = sub i32 %r79,%r80
    %r82 = load i32, ptr %r4
    %r83 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r81, i32 %r82
    %r84 = load i32, ptr %r83
    %r85 = load i32, ptr %r3
    %r86 = load i32, ptr %r4
    %r87 = add i32 1,0
    %r88 = add i32 %r86,%r87
    %r89 = add i32 2,0
    %r90 = srem i32 %r88,%r89
    %r91 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r85, i32 %r90
    %r92 = load i32, ptr %r91
    %r93 = add i32 %r84,%r92
    store i32 %r93, ptr %r78
    br label %L13
L12:
    %r94 = load i32, ptr %r3
    %r95 = load i32, ptr %r4
    %r96 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r94, i32 %r95
    %r97 = load i32, ptr %r3
    %r98 = add i32 1,0
    %r99 = sub i32 %r97,%r98
    %r100 = load i32, ptr %r4
    %r101 = add i32 1,0
    %r102 = sub i32 %r100,%r101
    %r103 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r99, i32 %r102
    %r104 = load i32, ptr %r103
    %r105 = load i32, ptr %r3
    %r106 = load i32, ptr %r4
    %r107 = add i32 1,0
    %r108 = add i32 %r106,%r107
    %r109 = add i32 2,0
    %r110 = srem i32 %r108,%r109
    %r111 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r105, i32 %r110
    %r112 = load i32, ptr %r111
    %r113 = add i32 %r104,%r112
    store i32 %r113, ptr %r96
    br label %L13
L13:
    %r114 = load i32, ptr %r4
    %r115 = add i32 1,0
    %r116 = add i32 %r114,%r115
    store i32 %r116, ptr %r4
    br label %L8
L14:
    %r123 = load i32, ptr %r4
    %r124 = load i32, ptr %r1
    %r125 = icmp sle i32 %r123,%r124
    br i1 %r125, label %L15, label %L16
L15:
    %r126 = load i32, ptr %r120
    %r127 = load i32, ptr %r0
    %r128 = load i32, ptr %r4
    %r129 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r127, i32 %r128
    %r130 = load i32, ptr %r129
    %r131 = icmp slt i32 %r126,%r130
    br i1 %r131, label %L17, label %L18
L16:
    %r139 = load i32, ptr %r120
    ret i32 %r139
L17:
    %r132 = load i32, ptr %r0
    %r133 = load i32, ptr %r4
    %r134 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r132, i32 %r133
    %r135 = load i32, ptr %r134
    store i32 %r135, ptr %r120
    br label %L18
L18:
    %r136 = load i32, ptr %r4
    %r137 = add i32 1,0
    %r138 = add i32 %r136,%r137
    store i32 %r138, ptr %r4
    br label %L14
}
