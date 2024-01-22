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
@N = global i32 10000
define i32 @long_array(i32 %r0)
{
L0:
    %r119 = alloca i32
    %r92 = alloca i32
    %r66 = alloca i32
    %r5 = alloca i32
    %r4 = alloca [10000 x i32]
    %r3 = alloca [10000 x i32]
    %r2 = alloca [10000 x i32]
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    br label %L1
L1:
    %r7 = load i32, ptr %r5
    %r8 = load i32, ptr @N
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
L2:
    %r12 = load i32, ptr %r5
    %r13 = load i32, ptr %r5
    %r14 = mul i32 %r12,%r13
    %r15 = add i32 0,10
    %r16 = srem i32 %r14,%r15
    %r17 = load i32, ptr %r5
    %r18 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r17
    store i32 %r16, ptr %r18
    %r19 = load i32, ptr %r5
    %r20 = add i32 0,1
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r5
    br label %L1
L3:
    %r22 = add i32 0,0
    store i32 %r22, ptr %r5
    br label %L4
L4:
    %r23 = load i32, ptr %r5
    %r24 = load i32, ptr @N
    %r25 = icmp slt i32 %r23,%r24
    br i1 %r25, label %L5, label %L6
L5:
    %r28 = load i32, ptr %r5
    %r29 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = load i32, ptr %r5
    %r32 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r31
    %r33 = load i32, ptr %r32
    %r34 = mul i32 %r30,%r33
    %r35 = add i32 0,10
    %r36 = srem i32 %r34,%r35
    %r37 = load i32, ptr %r5
    %r38 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r37
    store i32 %r36, ptr %r38
    %r39 = load i32, ptr %r5
    %r40 = add i32 0,1
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r5
    br label %L4
L6:
    %r42 = add i32 0,0
    store i32 %r42, ptr %r5
    br label %L7
L7:
    %r43 = load i32, ptr %r5
    %r44 = load i32, ptr @N
    %r45 = icmp slt i32 %r43,%r44
    br i1 %r45, label %L8, label %L9
L8:
    %r48 = load i32, ptr %r5
    %r49 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = load i32, ptr %r5
    %r52 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = mul i32 %r50,%r53
    %r55 = add i32 0,100
    %r56 = srem i32 %r54,%r55
    %r57 = load i32, ptr %r5
    %r58 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r57
    %r59 = load i32, ptr %r58
    %r60 = add i32 %r56,%r59
    %r61 = load i32, ptr %r5
    %r62 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r61
    store i32 %r60, ptr %r62
    %r63 = load i32, ptr %r5
    %r64 = add i32 0,1
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r5
    br label %L7
L9:
    %r67 = add i32 0,0
    store i32 %r67, ptr %r66
    %r68 = add i32 0,0
    store i32 %r68, ptr %r5
    br label %L10
L10:
    %r69 = load i32, ptr %r5
    %r70 = load i32, ptr @N
    %r71 = icmp slt i32 %r69,%r70
    br i1 %r71, label %L11, label %L12
L11:
    %r74 = load i32, ptr %r5
    %r75 = add i32 0,10
    %r76 = icmp slt i32 %r74,%r75
    br i1 %r76, label %L13, label %L14
L12:
    %r172 = load i32, ptr %r66
    ret i32 %r172
L13:
    %r79 = load i32, ptr %r66
    %r80 = load i32, ptr %r5
    %r81 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r80
    %r82 = load i32, ptr %r81
    %r83 = add i32 %r79,%r82
    %r84 = add i32 0,1333
    %r85 = srem i32 %r83,%r84
    store i32 %r85, ptr %r66
    %r86 = load i32, ptr %r66
    call void @putint(i32 %r86)
    br label %L15
L14:
    %r87 = load i32, ptr %r5
    %r88 = add i32 0,20
    %r89 = icmp slt i32 %r87,%r88
    br i1 %r89, label %L16, label %L17
L15:
    %r169 = load i32, ptr %r5
    %r170 = add i32 0,1
    %r171 = add i32 %r169,%r170
    store i32 %r171, ptr %r5
    br label %L10
L16:
    %r93 = load i32, ptr @N
    %r94 = add i32 0,2
    %r95 = sdiv i32 %r93,%r94
    store i32 %r95, ptr %r92
    br label %L19
L17:
    %r114 = load i32, ptr %r5
    %r115 = add i32 0,30
    %r116 = icmp slt i32 %r114,%r115
    br i1 %r116, label %L22, label %L23
L18:
    br label %L15
L19:
    %r96 = load i32, ptr %r92
    %r97 = load i32, ptr @N
    %r98 = icmp slt i32 %r96,%r97
    br i1 %r98, label %L20, label %L21
L20:
    %r101 = load i32, ptr %r66
    %r102 = load i32, ptr %r5
    %r103 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r102
    %r104 = load i32, ptr %r103
    %r105 = add i32 %r101,%r104
    %r106 = load i32, ptr %r92
    %r107 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r106
    %r108 = load i32, ptr %r107
    %r109 = sub i32 %r105,%r108
    store i32 %r109, ptr %r66
    %r110 = load i32, ptr %r92
    %r111 = add i32 0,1
    %r112 = add i32 %r110,%r111
    store i32 %r112, ptr %r92
    br label %L19
L21:
    %r113 = load i32, ptr %r66
    call void @putint(i32 %r113)
    br label %L18
L22:
    %r120 = load i32, ptr @N
    %r121 = add i32 0,2
    %r122 = sdiv i32 %r120,%r121
    store i32 %r122, ptr %r119
    br label %L25
L23:
    %r160 = load i32, ptr %r66
    %r161 = load i32, ptr %r5
    %r162 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r161
    %r163 = load i32, ptr %r162
    %r164 = load i32, ptr %r1
    %r165 = mul i32 %r163,%r164
    %r166 = add i32 %r160,%r165
    %r167 = add i32 0,99988
    %r168 = srem i32 %r166,%r167
    store i32 %r168, ptr %r66
    br label %L24
L24:
    br label %L18
L25:
    %r123 = load i32, ptr %r119
    %r124 = load i32, ptr @N
    %r125 = icmp slt i32 %r123,%r124
    br i1 %r125, label %L26, label %L27
L26:
    %r128 = load i32, ptr %r119
    %r129 = add i32 0,2233
    %r130 = icmp sgt i32 %r128,%r129
    br i1 %r130, label %L28, label %L29
L27:
    %r159 = load i32, ptr %r66
    call void @putint(i32 %r159)
    br label %L24
L28:
    %r133 = load i32, ptr %r66
    %r134 = load i32, ptr %r5
    %r135 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r134
    %r136 = load i32, ptr %r135
    %r137 = add i32 %r133,%r136
    %r138 = load i32, ptr %r119
    %r139 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r138
    %r140 = load i32, ptr %r139
    %r141 = sub i32 %r137,%r140
    store i32 %r141, ptr %r66
    %r142 = load i32, ptr %r119
    %r143 = add i32 0,1
    %r144 = add i32 %r142,%r143
    store i32 %r144, ptr %r119
    br label %L30
L29:
    %r145 = load i32, ptr %r66
    %r146 = load i32, ptr %r5
    %r147 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r146
    %r148 = load i32, ptr %r147
    %r149 = add i32 %r145,%r148
    %r150 = load i32, ptr %r119
    %r151 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r150
    %r152 = load i32, ptr %r151
    %r153 = add i32 %r149,%r152
    %r154 = add i32 0,13333
    %r155 = srem i32 %r153,%r154
    store i32 %r155, ptr %r66
    %r156 = load i32, ptr %r119
    %r157 = add i32 0,2
    %r158 = add i32 %r156,%r157
    store i32 %r158, ptr %r119
    br label %L30
L30:
    br label %L25
}
define i32 @main()
{
L0:
    %r0 = add i32 0,9
    %r1 = call i32 @long_array(i32 %r0)
    ret i32 %r1
}
