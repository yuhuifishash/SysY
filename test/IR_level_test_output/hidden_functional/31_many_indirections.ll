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
@N = global i32 100
@M = global i32 20
@array = global [20x [100x i32]] zeroinitializer
define i32 @main()
{
L0:
    %r9 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L1
L1:
    %r4 = load i32, ptr %r0
    %r5 = load i32, ptr @M
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    br label %L4
L3:
    %r26 = add i32 0,0
    %r27 = add i32 0,1
    %r28 = add i32 0,2
    %r29 = add i32 0,3
    %r30 = add i32 0,4
    %r31 = add i32 0,5
    %r32 = add i32 0,6
    %r33 = add i32 0,7
    %r34 = add i32 0,8
    %r35 = add i32 0,9
    %r36 = add i32 0,10
    %r37 = add i32 0,11
    %r38 = add i32 0,12
    %r39 = add i32 0,13
    %r40 = add i32 0,14
    %r41 = add i32 0,15
    %r42 = add i32 0,16
    %r43 = add i32 0,17
    %r44 = add i32 0,18
    %r45 = add i32 0,19
    %r46 = add i32 0,23
    %r47 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r45, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r44, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r43, i32 %r50
    %r52 = load i32, ptr %r51
    %r53 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r42, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r41, i32 %r54
    %r56 = load i32, ptr %r55
    %r57 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r40, i32 %r56
    %r58 = load i32, ptr %r57
    %r59 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r39, i32 %r58
    %r60 = load i32, ptr %r59
    %r61 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r38, i32 %r60
    %r62 = load i32, ptr %r61
    %r63 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r37, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r36, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r35, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r34, i32 %r68
    %r70 = load i32, ptr %r69
    %r71 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r33, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r32, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r31, i32 %r74
    %r76 = load i32, ptr %r75
    %r77 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r30, i32 %r76
    %r78 = load i32, ptr %r77
    %r79 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r29, i32 %r78
    %r80 = load i32, ptr %r79
    %r81 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r28, i32 %r80
    %r82 = load i32, ptr %r81
    %r83 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r27, i32 %r82
    %r84 = load i32, ptr %r83
    %r85 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r26, i32 %r84
    %r86 = load i32, ptr %r85
    %r87 = add i32 0,19
    %r88 = add i32 0,18
    %r89 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r87, i32 %r88
    %r90 = load i32, ptr %r89
    %r91 = add i32 0,17
    %r92 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r90, i32 %r91
    %r93 = load i32, ptr %r92
    %r94 = add i32 0,16
    %r95 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r93, i32 %r94
    %r96 = load i32, ptr %r95
    %r97 = add i32 0,15
    %r98 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r96, i32 %r97
    %r99 = load i32, ptr %r98
    %r100 = add i32 0,14
    %r101 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r99, i32 %r100
    %r102 = load i32, ptr %r101
    %r103 = add i32 0,13
    %r104 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r102, i32 %r103
    %r105 = load i32, ptr %r104
    %r106 = add i32 0,12
    %r107 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r105, i32 %r106
    %r108 = load i32, ptr %r107
    %r109 = add i32 0,11
    %r110 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r108, i32 %r109
    %r111 = load i32, ptr %r110
    %r112 = add i32 0,10
    %r113 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r111, i32 %r112
    %r114 = load i32, ptr %r113
    %r115 = add i32 0,9
    %r116 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r114, i32 %r115
    %r117 = load i32, ptr %r116
    %r118 = add i32 0,8
    %r119 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r117, i32 %r118
    %r120 = load i32, ptr %r119
    %r121 = add i32 0,7
    %r122 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r120, i32 %r121
    %r123 = load i32, ptr %r122
    %r124 = add i32 0,6
    %r125 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r123, i32 %r124
    %r126 = load i32, ptr %r125
    %r127 = add i32 0,5
    %r128 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r126, i32 %r127
    %r129 = load i32, ptr %r128
    %r130 = add i32 0,4
    %r131 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r129, i32 %r130
    %r132 = load i32, ptr %r131
    %r133 = add i32 0,3
    %r134 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r132, i32 %r133
    %r135 = load i32, ptr %r134
    %r136 = add i32 0,2
    %r137 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r135, i32 %r136
    %r138 = load i32, ptr %r137
    %r139 = add i32 0,1
    %r140 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r138, i32 %r139
    %r141 = load i32, ptr %r140
    %r142 = add i32 0,0
    %r143 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r141, i32 %r142
    %r144 = load i32, ptr %r143
    %r145 = add i32 0,56
    %r146 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r144, i32 %r145
    %r147 = load i32, ptr %r146
    %r148 = add i32 %r86,%r147
    store i32 %r148, ptr %r2
    %r149 = load i32, ptr %r2
    call void @putint(i32 %r149)
    %r150 = add i32 0,0
    ret i32 %r150
L4:
    %r11 = load i32, ptr %r9
    %r12 = load i32, ptr @N
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L5, label %L6
L5:
    %r16 = load i32, ptr %r9
    %r17 = load i32, ptr %r0
    %r18 = load i32, ptr %r9
    %r19 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r17, i32 %r18
    store i32 %r16, ptr %r19
    %r20 = load i32, ptr %r9
    %r21 = add i32 0,1
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r9
    br label %L4
L6:
    %r23 = load i32, ptr %r0
    %r24 = add i32 0,1
    %r25 = add i32 %r23,%r24
    store i32 %r25, ptr %r0
    br label %L1
}
