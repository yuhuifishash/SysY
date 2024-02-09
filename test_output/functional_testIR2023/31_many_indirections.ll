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
@N = global i32 100
@M = global i32 20
@array = global [20x [100x i32]] zeroinitializer
define i32 @main()
{
L0:
    %r7 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L2
L2:
    %r4 = load i32, ptr %r0
    %r5 = load i32, ptr @M
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    br label %L5
L4:
    %r22 = add i32 0,0
    %r23 = add i32 1,0
    %r24 = add i32 2,0
    %r25 = add i32 3,0
    %r26 = add i32 4,0
    %r27 = add i32 5,0
    %r28 = add i32 6,0
    %r29 = add i32 7,0
    %r30 = add i32 8,0
    %r31 = add i32 9,0
    %r32 = add i32 10,0
    %r33 = add i32 11,0
    %r34 = add i32 12,0
    %r35 = add i32 13,0
    %r36 = add i32 14,0
    %r37 = add i32 15,0
    %r38 = add i32 16,0
    %r39 = add i32 17,0
    %r40 = add i32 18,0
    %r41 = add i32 19,0
    %r42 = add i32 23,0
    %r43 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r41, i32 %r42
    %r44 = load i32, ptr %r43
    %r45 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r40, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r39, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r38, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r37, i32 %r50
    %r52 = load i32, ptr %r51
    %r53 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r36, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r35, i32 %r54
    %r56 = load i32, ptr %r55
    %r57 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r34, i32 %r56
    %r58 = load i32, ptr %r57
    %r59 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r33, i32 %r58
    %r60 = load i32, ptr %r59
    %r61 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r32, i32 %r60
    %r62 = load i32, ptr %r61
    %r63 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r31, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r30, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r29, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r28, i32 %r68
    %r70 = load i32, ptr %r69
    %r71 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r27, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r26, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r25, i32 %r74
    %r76 = load i32, ptr %r75
    %r77 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r24, i32 %r76
    %r78 = load i32, ptr %r77
    %r79 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r23, i32 %r78
    %r80 = load i32, ptr %r79
    %r81 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r22, i32 %r80
    %r82 = load i32, ptr %r81
    %r83 = add i32 19,0
    %r84 = add i32 18,0
    %r85 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r83, i32 %r84
    %r86 = load i32, ptr %r85
    %r87 = add i32 17,0
    %r88 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r86, i32 %r87
    %r89 = load i32, ptr %r88
    %r90 = add i32 16,0
    %r91 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r89, i32 %r90
    %r92 = load i32, ptr %r91
    %r93 = add i32 15,0
    %r94 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r92, i32 %r93
    %r95 = load i32, ptr %r94
    %r96 = add i32 14,0
    %r97 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r95, i32 %r96
    %r98 = load i32, ptr %r97
    %r99 = add i32 13,0
    %r100 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r98, i32 %r99
    %r101 = load i32, ptr %r100
    %r102 = add i32 12,0
    %r103 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r101, i32 %r102
    %r104 = load i32, ptr %r103
    %r105 = add i32 11,0
    %r106 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r104, i32 %r105
    %r107 = load i32, ptr %r106
    %r108 = add i32 10,0
    %r109 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r107, i32 %r108
    %r110 = load i32, ptr %r109
    %r111 = add i32 9,0
    %r112 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r110, i32 %r111
    %r113 = load i32, ptr %r112
    %r114 = add i32 8,0
    %r115 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r113, i32 %r114
    %r116 = load i32, ptr %r115
    %r117 = add i32 7,0
    %r118 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r116, i32 %r117
    %r119 = load i32, ptr %r118
    %r120 = add i32 6,0
    %r121 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r119, i32 %r120
    %r122 = load i32, ptr %r121
    %r123 = add i32 5,0
    %r124 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r122, i32 %r123
    %r125 = load i32, ptr %r124
    %r126 = add i32 4,0
    %r127 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r125, i32 %r126
    %r128 = load i32, ptr %r127
    %r129 = add i32 3,0
    %r130 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r128, i32 %r129
    %r131 = load i32, ptr %r130
    %r132 = add i32 2,0
    %r133 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r131, i32 %r132
    %r134 = load i32, ptr %r133
    %r135 = add i32 1,0
    %r136 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r134, i32 %r135
    %r137 = load i32, ptr %r136
    %r138 = add i32 0,0
    %r139 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r137, i32 %r138
    %r140 = load i32, ptr %r139
    %r141 = add i32 56,0
    %r142 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r140, i32 %r141
    %r143 = load i32, ptr %r142
    %r144 = add i32 %r82,%r143
    store i32 %r144, ptr %r2
    %r145 = load i32, ptr %r2
    call void @putint(i32 %r145)
    %r146 = add i32 0,0
    ret i32 %r146
L5:
    %r9 = load i32, ptr %r7
    %r10 = load i32, ptr @N
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L6, label %L7
L6:
    %r12 = load i32, ptr %r0
    %r13 = load i32, ptr %r7
    %r14 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r12, i32 %r13
    %r15 = load i32, ptr %r7
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r7
    %r17 = add i32 1,0
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r7
    br label %L5
L7:
    %r19 = load i32, ptr %r0
    %r20 = add i32 1,0
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r0
    br label %L2
}
