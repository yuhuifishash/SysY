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
    %r9 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r0
    %r5 = load i32, ptr @M
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L5
L3:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r9
    %r12 = load i32, ptr @N
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L7, label %L9
L4:
    %r31 = load i32, ptr %r0
    %r32 = load i32, ptr @M
    %r33 = icmp slt i32 %r31,%r32
    br i1 %r33, label %L3, label %L5
L5:
    %r36 = add i32 0,0
    %r37 = add i32 0,1
    %r38 = add i32 0,2
    %r39 = add i32 0,3
    %r40 = add i32 0,4
    %r41 = add i32 0,5
    %r42 = add i32 0,6
    %r43 = add i32 0,7
    %r44 = add i32 0,8
    %r45 = add i32 0,9
    %r46 = add i32 0,10
    %r47 = add i32 0,11
    %r48 = add i32 0,12
    %r49 = add i32 0,13
    %r50 = add i32 0,14
    %r51 = add i32 0,15
    %r52 = add i32 0,16
    %r53 = add i32 0,17
    %r54 = add i32 0,18
    %r55 = add i32 0,19
    %r56 = add i32 0,23
    %r57 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r55, i32 %r56
    %r58 = load i32, ptr %r57
    %r59 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r54, i32 %r58
    %r60 = load i32, ptr %r59
    %r61 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r53, i32 %r60
    %r62 = load i32, ptr %r61
    %r63 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r52, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r51, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r50, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r49, i32 %r68
    %r70 = load i32, ptr %r69
    %r71 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r48, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r47, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r46, i32 %r74
    %r76 = load i32, ptr %r75
    %r77 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r45, i32 %r76
    %r78 = load i32, ptr %r77
    %r79 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r44, i32 %r78
    %r80 = load i32, ptr %r79
    %r81 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r43, i32 %r80
    %r82 = load i32, ptr %r81
    %r83 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r42, i32 %r82
    %r84 = load i32, ptr %r83
    %r85 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r41, i32 %r84
    %r86 = load i32, ptr %r85
    %r87 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r40, i32 %r86
    %r88 = load i32, ptr %r87
    %r89 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r39, i32 %r88
    %r90 = load i32, ptr %r89
    %r91 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r38, i32 %r90
    %r92 = load i32, ptr %r91
    %r93 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r37, i32 %r92
    %r94 = load i32, ptr %r93
    %r95 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r36, i32 %r94
    %r96 = load i32, ptr %r95
    %r97 = add i32 0,19
    %r98 = add i32 0,18
    %r99 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r97, i32 %r98
    %r100 = load i32, ptr %r99
    %r101 = add i32 0,17
    %r102 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r100, i32 %r101
    %r103 = load i32, ptr %r102
    %r104 = add i32 0,16
    %r105 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r103, i32 %r104
    %r106 = load i32, ptr %r105
    %r107 = add i32 0,15
    %r108 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r106, i32 %r107
    %r109 = load i32, ptr %r108
    %r110 = add i32 0,14
    %r111 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r109, i32 %r110
    %r112 = load i32, ptr %r111
    %r113 = add i32 0,13
    %r114 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r112, i32 %r113
    %r115 = load i32, ptr %r114
    %r116 = add i32 0,12
    %r117 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r115, i32 %r116
    %r118 = load i32, ptr %r117
    %r119 = add i32 0,11
    %r120 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r118, i32 %r119
    %r121 = load i32, ptr %r120
    %r122 = add i32 0,10
    %r123 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r121, i32 %r122
    %r124 = load i32, ptr %r123
    %r125 = add i32 0,9
    %r126 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r124, i32 %r125
    %r127 = load i32, ptr %r126
    %r128 = add i32 0,8
    %r129 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r127, i32 %r128
    %r130 = load i32, ptr %r129
    %r131 = add i32 0,7
    %r132 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r130, i32 %r131
    %r133 = load i32, ptr %r132
    %r134 = add i32 0,6
    %r135 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r133, i32 %r134
    %r136 = load i32, ptr %r135
    %r137 = add i32 0,5
    %r138 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r136, i32 %r137
    %r139 = load i32, ptr %r138
    %r140 = add i32 0,4
    %r141 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r139, i32 %r140
    %r142 = load i32, ptr %r141
    %r143 = add i32 0,3
    %r144 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r142, i32 %r143
    %r145 = load i32, ptr %r144
    %r146 = add i32 0,2
    %r147 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r145, i32 %r146
    %r148 = load i32, ptr %r147
    %r149 = add i32 0,1
    %r150 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r148, i32 %r149
    %r151 = load i32, ptr %r150
    %r152 = add i32 0,0
    %r153 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r151, i32 %r152
    %r154 = load i32, ptr %r153
    %r155 = add i32 0,56
    %r156 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r154, i32 %r155
    %r157 = load i32, ptr %r156
    %r158 = add i32 %r96,%r157
    store i32 %r158, ptr %r2
    %r159 = load i32, ptr %r2
    call void @putint(i32 %r159)
    %r160 = add i32 0,0
    ret i32 %r160
L7:
    %r16 = load i32, ptr %r9
    %r17 = load i32, ptr %r0
    %r18 = load i32, ptr %r9
    %r19 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r17, i32 %r18
    store i32 %r16, ptr %r19
    %r20 = load i32, ptr %r9
    %r21 = add i32 0,1
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r9
    br label %L8
L8:
    %r23 = load i32, ptr %r9
    %r24 = load i32, ptr @N
    %r25 = icmp slt i32 %r23,%r24
    br i1 %r25, label %L7, label %L9
L9:
    %r28 = load i32, ptr %r0
    %r29 = add i32 0,1
    %r30 = add i32 %r28,%r29
    store i32 %r30, ptr %r0
    br label %L4
}
