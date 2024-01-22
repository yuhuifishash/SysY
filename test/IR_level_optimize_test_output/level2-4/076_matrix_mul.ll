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
@M = global i32 zeroinitializer
@L = global i32 zeroinitializer
@N = global i32 zeroinitializer
define i32 @mul(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:
    br label %L1
L1:
    %r13 = getelementptr i32, ptr %r0, i32 0
    %r14 = load i32, ptr %r13
    %r16 = getelementptr i32, ptr %r3, i32 0
    %r17 = load i32, ptr %r16
    %r18 = mul i32 %r14,%r17
    %r20 = getelementptr i32, ptr %r0, i32 1
    %r21 = load i32, ptr %r20
    %r23 = getelementptr i32, ptr %r4, i32 0
    %r24 = load i32, ptr %r23
    %r25 = mul i32 %r21,%r24
    %r26 = add i32 %r18,%r25
    %r28 = getelementptr i32, ptr %r0, i32 2
    %r29 = load i32, ptr %r28
    %r31 = getelementptr i32, ptr %r5, i32 0
    %r32 = load i32, ptr %r31
    %r33 = mul i32 %r29,%r32
    %r34 = add i32 %r26,%r33
    %r36 = getelementptr i32, ptr %r6, i32 0
    store i32 %r34, ptr %r36
    %r39 = load i32, ptr %r13
    %r41 = getelementptr i32, ptr %r3, i32 1
    %r42 = load i32, ptr %r41
    %r43 = mul i32 %r39,%r42
    %r45 = getelementptr i32, ptr %r0, i32 1
    %r46 = load i32, ptr %r45
    %r48 = getelementptr i32, ptr %r4, i32 1
    %r49 = load i32, ptr %r48
    %r50 = mul i32 %r46,%r49
    %r51 = add i32 %r43,%r50
    %r53 = getelementptr i32, ptr %r0, i32 2
    %r54 = load i32, ptr %r53
    %r56 = getelementptr i32, ptr %r5, i32 1
    %r57 = load i32, ptr %r56
    %r58 = mul i32 %r54,%r57
    %r59 = add i32 %r51,%r58
    %r61 = getelementptr i32, ptr %r6, i32 1
    store i32 %r59, ptr %r61
    %r64 = load i32, ptr %r13
    %r66 = getelementptr i32, ptr %r3, i32 2
    %r67 = load i32, ptr %r66
    %r68 = mul i32 %r64,%r67
    %r70 = getelementptr i32, ptr %r0, i32 1
    %r71 = load i32, ptr %r70
    %r73 = getelementptr i32, ptr %r4, i32 2
    %r74 = load i32, ptr %r73
    %r75 = mul i32 %r71,%r74
    %r76 = add i32 %r68,%r75
    %r78 = getelementptr i32, ptr %r0, i32 2
    %r79 = load i32, ptr %r78
    %r81 = getelementptr i32, ptr %r5, i32 2
    %r82 = load i32, ptr %r81
    %r83 = mul i32 %r79,%r82
    %r84 = add i32 %r76,%r83
    %r86 = getelementptr i32, ptr %r6, i32 2
    store i32 %r84, ptr %r86
    %r88 = getelementptr i32, ptr %r1, i32 0
    %r89 = load i32, ptr %r88
    %r92 = load i32, ptr %r16
    %r93 = mul i32 %r89,%r92
    %r95 = getelementptr i32, ptr %r1, i32 1
    %r96 = load i32, ptr %r95
    %r99 = load i32, ptr %r23
    %r100 = mul i32 %r96,%r99
    %r101 = add i32 %r93,%r100
    %r103 = getelementptr i32, ptr %r1, i32 2
    %r104 = load i32, ptr %r103
    %r107 = load i32, ptr %r31
    %r108 = mul i32 %r104,%r107
    %r109 = add i32 %r101,%r108
    %r111 = getelementptr i32, ptr %r7, i32 0
    store i32 %r109, ptr %r111
    %r113 = getelementptr i32, ptr %r1, i32 0
    %r114 = load i32, ptr %r113
    %r116 = getelementptr i32, ptr %r3, i32 1
    %r117 = load i32, ptr %r116
    %r118 = mul i32 %r114,%r117
    %r120 = getelementptr i32, ptr %r1, i32 1
    %r121 = load i32, ptr %r120
    %r123 = getelementptr i32, ptr %r4, i32 1
    %r124 = load i32, ptr %r123
    %r125 = mul i32 %r121,%r124
    %r126 = add i32 %r118,%r125
    %r128 = getelementptr i32, ptr %r1, i32 2
    %r129 = load i32, ptr %r128
    %r131 = getelementptr i32, ptr %r5, i32 1
    %r132 = load i32, ptr %r131
    %r133 = mul i32 %r129,%r132
    %r134 = add i32 %r126,%r133
    %r136 = getelementptr i32, ptr %r7, i32 1
    store i32 %r134, ptr %r136
    %r138 = getelementptr i32, ptr %r1, i32 0
    %r139 = load i32, ptr %r138
    %r141 = getelementptr i32, ptr %r3, i32 2
    %r142 = load i32, ptr %r141
    %r143 = mul i32 %r139,%r142
    %r145 = getelementptr i32, ptr %r1, i32 1
    %r146 = load i32, ptr %r145
    %r148 = getelementptr i32, ptr %r4, i32 2
    %r149 = load i32, ptr %r148
    %r150 = mul i32 %r146,%r149
    %r151 = add i32 %r143,%r150
    %r153 = getelementptr i32, ptr %r1, i32 2
    %r154 = load i32, ptr %r153
    %r156 = getelementptr i32, ptr %r5, i32 2
    %r157 = load i32, ptr %r156
    %r158 = mul i32 %r154,%r157
    %r159 = add i32 %r151,%r158
    %r161 = getelementptr i32, ptr %r7, i32 2
    store i32 %r159, ptr %r161
    %r163 = getelementptr i32, ptr %r2, i32 0
    %r164 = load i32, ptr %r163
    %r167 = load i32, ptr %r16
    %r168 = mul i32 %r164,%r167
    %r170 = getelementptr i32, ptr %r2, i32 1
    %r171 = load i32, ptr %r170
    %r174 = load i32, ptr %r23
    %r175 = mul i32 %r171,%r174
    %r176 = add i32 %r168,%r175
    %r178 = getelementptr i32, ptr %r2, i32 2
    %r179 = load i32, ptr %r178
    %r182 = load i32, ptr %r31
    %r183 = mul i32 %r179,%r182
    %r184 = add i32 %r176,%r183
    %r186 = getelementptr i32, ptr %r8, i32 0
    store i32 %r184, ptr %r186
    %r188 = getelementptr i32, ptr %r2, i32 0
    %r189 = load i32, ptr %r188
    %r191 = getelementptr i32, ptr %r3, i32 1
    %r192 = load i32, ptr %r191
    %r193 = mul i32 %r189,%r192
    %r195 = getelementptr i32, ptr %r2, i32 1
    %r196 = load i32, ptr %r195
    %r198 = getelementptr i32, ptr %r4, i32 1
    %r199 = load i32, ptr %r198
    %r200 = mul i32 %r196,%r199
    %r201 = add i32 %r193,%r200
    %r203 = getelementptr i32, ptr %r2, i32 2
    %r204 = load i32, ptr %r203
    %r206 = getelementptr i32, ptr %r5, i32 1
    %r207 = load i32, ptr %r206
    %r208 = mul i32 %r204,%r207
    %r209 = add i32 %r201,%r208
    %r211 = getelementptr i32, ptr %r8, i32 1
    store i32 %r209, ptr %r211
    %r213 = getelementptr i32, ptr %r2, i32 0
    %r214 = load i32, ptr %r213
    %r216 = getelementptr i32, ptr %r3, i32 2
    %r217 = load i32, ptr %r216
    %r218 = mul i32 %r214,%r217
    %r220 = getelementptr i32, ptr %r2, i32 1
    %r221 = load i32, ptr %r220
    %r223 = getelementptr i32, ptr %r4, i32 2
    %r224 = load i32, ptr %r223
    %r225 = mul i32 %r221,%r224
    %r226 = add i32 %r218,%r225
    %r228 = getelementptr i32, ptr %r2, i32 2
    %r229 = load i32, ptr %r228
    %r231 = getelementptr i32, ptr %r5, i32 2
    %r232 = load i32, ptr %r231
    %r233 = mul i32 %r229,%r232
    %r234 = add i32 %r226,%r233
    %r236 = getelementptr i32, ptr %r8, i32 2
    store i32 %r234, ptr %r236
    ret i32 0
}
define i32 @main()
{
L0:
    %r11 = alloca [3 x i32]
    %r10 = alloca [3 x i32]
    %r9 = alloca [6 x i32]
    %r8 = alloca [3 x i32]
    %r7 = alloca [3 x i32]
    %r6 = alloca [3 x i32]
    %r5 = alloca [3 x i32]
    %r4 = alloca [3 x i32]
    %r3 = alloca [3 x i32]
    br label %L1
L1:
    store i32 3, ptr @N
    store i32 3, ptr @M
    store i32 3, ptr @L
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 0,%r16
    br i1 %r17, label %L18, label %L5
L3:
    %r124 = phi i32 [0,%L18],[%r40,%L4]
    %r22 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r124
    store i32 %r124, ptr %r22
    %r25 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r124
    store i32 %r124, ptr %r25
    %r28 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r124
    store i32 %r124, ptr %r28
    %r31 = getelementptr [3 x i32], ptr %r6, i32 0, i32 %r124
    store i32 %r124, ptr %r31
    %r34 = getelementptr [3 x i32], ptr %r7, i32 0, i32 %r124
    store i32 %r124, ptr %r34
    %r37 = getelementptr [3 x i32], ptr %r8, i32 0, i32 %r124
    store i32 %r124, ptr %r37
    %r40 = add i32 %r124,1
    br label %L4
L4:
    %r43 = icmp slt i32 %r40,%r42
    br i1 %r43, label %L3, label %L5
L5:
    %r46 = getelementptr i32, ptr %r3, i32 0
    %r47 = getelementptr i32, ptr %r4, i32 0
    %r48 = getelementptr i32, ptr %r5, i32 0
    %r49 = getelementptr i32, ptr %r6, i32 0
    %r50 = getelementptr i32, ptr %r7, i32 0
    %r51 = getelementptr i32, ptr %r8, i32 0
    %r52 = getelementptr i32, ptr %r9, i32 0
    %r53 = getelementptr i32, ptr %r10, i32 0
    %r54 = getelementptr i32, ptr %r11, i32 0
    %r55 = call i32 @mul(ptr %r46,ptr %r47,ptr %r48,ptr %r49,ptr %r50,ptr %r51,ptr %r52,ptr %r53,ptr %r54)
    %r59 = load i32, ptr @N
    %r60 = icmp slt i32 %r55,%r59
    br i1 %r60, label %L19, label %L9
L7:
    %r126 = phi i32 [%r69,%L8],[%r55,%L19]
    %r64 = getelementptr [6 x i32], ptr %r9, i32 0, i32 %r126
    %r65 = load i32, ptr %r64
    call void @putint(i32 %r65)
    %r69 = add i32 %r126,1
    br label %L8
L8:
    %r71 = load i32, ptr @N
    %r72 = icmp slt i32 %r69,%r71
    br i1 %r72, label %L7, label %L9
L9:
    call void @putch(i32 10)
    %r79 = load i32, ptr @N
    %r80 = icmp slt i32 0,%r79
    br i1 %r80, label %L20, label %L13
L11:
    %r128 = phi i32 [%r89,%L12],[0,%L20]
    %r84 = getelementptr [3 x i32], ptr %r10, i32 0, i32 %r128
    %r85 = load i32, ptr %r84
    call void @putint(i32 %r85)
    %r89 = add i32 %r128,1
    br label %L12
L12:
    %r91 = load i32, ptr @N
    %r92 = icmp slt i32 %r89,%r91
    br i1 %r92, label %L11, label %L13
L13:
    call void @putch(i32 10)
    %r99 = load i32, ptr @N
    %r100 = icmp slt i32 0,%r99
    br i1 %r100, label %L21, label %L17
L15:
    %r130 = phi i32 [%r109,%L16],[0,%L21]
    %r104 = getelementptr [3 x i32], ptr %r11, i32 0, i32 %r130
    %r105 = load i32, ptr %r104
    call void @putint(i32 %r105)
    %r109 = add i32 %r130,1
    br label %L16
L16:
    %r111 = load i32, ptr @N
    %r112 = icmp slt i32 %r109,%r111
    br i1 %r112, label %L15, label %L17
L17:
    call void @putch(i32 10)
    ret i32 0
L18:
    %r42 = load i32, ptr @M
    br label %L3
L19:
    br label %L7
L20:
    br label %L11
L21:
    br label %L15
}
