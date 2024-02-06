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
    %r9 = alloca i32
    br label %L1
L1:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    %r12 = add i32 0,0
    %r13 = getelementptr i32, ptr %r0, i32 %r12
    %r14 = load i32, ptr %r13
    %r15 = add i32 0,0
    %r16 = getelementptr i32, ptr %r3, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = mul i32 %r14,%r17
    %r19 = add i32 0,1
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = add i32 0,0
    %r23 = getelementptr i32, ptr %r4, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = mul i32 %r21,%r24
    %r26 = add i32 %r18,%r25
    %r27 = add i32 0,2
    %r28 = getelementptr i32, ptr %r0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = add i32 0,0
    %r31 = getelementptr i32, ptr %r5, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = mul i32 %r29,%r32
    %r34 = add i32 %r26,%r33
    %r35 = add i32 0,0
    %r36 = getelementptr i32, ptr %r6, i32 %r35
    store i32 %r34, ptr %r36
    %r37 = add i32 0,0
    %r38 = getelementptr i32, ptr %r0, i32 %r37
    %r39 = load i32, ptr %r38
    %r40 = add i32 0,1
    %r41 = getelementptr i32, ptr %r3, i32 %r40
    %r42 = load i32, ptr %r41
    %r43 = mul i32 %r39,%r42
    %r44 = add i32 0,1
    %r45 = getelementptr i32, ptr %r0, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = add i32 0,1
    %r48 = getelementptr i32, ptr %r4, i32 %r47
    %r49 = load i32, ptr %r48
    %r50 = mul i32 %r46,%r49
    %r51 = add i32 %r43,%r50
    %r52 = add i32 0,2
    %r53 = getelementptr i32, ptr %r0, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = add i32 0,1
    %r56 = getelementptr i32, ptr %r5, i32 %r55
    %r57 = load i32, ptr %r56
    %r58 = mul i32 %r54,%r57
    %r59 = add i32 %r51,%r58
    %r60 = add i32 0,1
    %r61 = getelementptr i32, ptr %r6, i32 %r60
    store i32 %r59, ptr %r61
    %r62 = add i32 0,0
    %r63 = getelementptr i32, ptr %r0, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = add i32 0,2
    %r66 = getelementptr i32, ptr %r3, i32 %r65
    %r67 = load i32, ptr %r66
    %r68 = mul i32 %r64,%r67
    %r69 = add i32 0,1
    %r70 = getelementptr i32, ptr %r0, i32 %r69
    %r71 = load i32, ptr %r70
    %r72 = add i32 0,2
    %r73 = getelementptr i32, ptr %r4, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = mul i32 %r71,%r74
    %r76 = add i32 %r68,%r75
    %r77 = add i32 0,2
    %r78 = getelementptr i32, ptr %r0, i32 %r77
    %r79 = load i32, ptr %r78
    %r80 = add i32 0,2
    %r81 = getelementptr i32, ptr %r5, i32 %r80
    %r82 = load i32, ptr %r81
    %r83 = mul i32 %r79,%r82
    %r84 = add i32 %r76,%r83
    %r85 = add i32 0,2
    %r86 = getelementptr i32, ptr %r6, i32 %r85
    store i32 %r84, ptr %r86
    %r87 = add i32 0,0
    %r88 = getelementptr i32, ptr %r1, i32 %r87
    %r89 = load i32, ptr %r88
    %r90 = add i32 0,0
    %r91 = getelementptr i32, ptr %r3, i32 %r90
    %r92 = load i32, ptr %r91
    %r93 = mul i32 %r89,%r92
    %r94 = add i32 0,1
    %r95 = getelementptr i32, ptr %r1, i32 %r94
    %r96 = load i32, ptr %r95
    %r97 = add i32 0,0
    %r98 = getelementptr i32, ptr %r4, i32 %r97
    %r99 = load i32, ptr %r98
    %r100 = mul i32 %r96,%r99
    %r101 = add i32 %r93,%r100
    %r102 = add i32 0,2
    %r103 = getelementptr i32, ptr %r1, i32 %r102
    %r104 = load i32, ptr %r103
    %r105 = add i32 0,0
    %r106 = getelementptr i32, ptr %r5, i32 %r105
    %r107 = load i32, ptr %r106
    %r108 = mul i32 %r104,%r107
    %r109 = add i32 %r101,%r108
    %r110 = add i32 0,0
    %r111 = getelementptr i32, ptr %r7, i32 %r110
    store i32 %r109, ptr %r111
    %r112 = add i32 0,0
    %r113 = getelementptr i32, ptr %r1, i32 %r112
    %r114 = load i32, ptr %r113
    %r115 = add i32 0,1
    %r116 = getelementptr i32, ptr %r3, i32 %r115
    %r117 = load i32, ptr %r116
    %r118 = mul i32 %r114,%r117
    %r119 = add i32 0,1
    %r120 = getelementptr i32, ptr %r1, i32 %r119
    %r121 = load i32, ptr %r120
    %r122 = add i32 0,1
    %r123 = getelementptr i32, ptr %r4, i32 %r122
    %r124 = load i32, ptr %r123
    %r125 = mul i32 %r121,%r124
    %r126 = add i32 %r118,%r125
    %r127 = add i32 0,2
    %r128 = getelementptr i32, ptr %r1, i32 %r127
    %r129 = load i32, ptr %r128
    %r130 = add i32 0,1
    %r131 = getelementptr i32, ptr %r5, i32 %r130
    %r132 = load i32, ptr %r131
    %r133 = mul i32 %r129,%r132
    %r134 = add i32 %r126,%r133
    %r135 = add i32 0,1
    %r136 = getelementptr i32, ptr %r7, i32 %r135
    store i32 %r134, ptr %r136
    %r137 = add i32 0,0
    %r138 = getelementptr i32, ptr %r1, i32 %r137
    %r139 = load i32, ptr %r138
    %r140 = add i32 0,2
    %r141 = getelementptr i32, ptr %r3, i32 %r140
    %r142 = load i32, ptr %r141
    %r143 = mul i32 %r139,%r142
    %r144 = add i32 0,1
    %r145 = getelementptr i32, ptr %r1, i32 %r144
    %r146 = load i32, ptr %r145
    %r147 = add i32 0,2
    %r148 = getelementptr i32, ptr %r4, i32 %r147
    %r149 = load i32, ptr %r148
    %r150 = mul i32 %r146,%r149
    %r151 = add i32 %r143,%r150
    %r152 = add i32 0,2
    %r153 = getelementptr i32, ptr %r1, i32 %r152
    %r154 = load i32, ptr %r153
    %r155 = add i32 0,2
    %r156 = getelementptr i32, ptr %r5, i32 %r155
    %r157 = load i32, ptr %r156
    %r158 = mul i32 %r154,%r157
    %r159 = add i32 %r151,%r158
    %r160 = add i32 0,2
    %r161 = getelementptr i32, ptr %r7, i32 %r160
    store i32 %r159, ptr %r161
    %r162 = add i32 0,0
    %r163 = getelementptr i32, ptr %r2, i32 %r162
    %r164 = load i32, ptr %r163
    %r165 = add i32 0,0
    %r166 = getelementptr i32, ptr %r3, i32 %r165
    %r167 = load i32, ptr %r166
    %r168 = mul i32 %r164,%r167
    %r169 = add i32 0,1
    %r170 = getelementptr i32, ptr %r2, i32 %r169
    %r171 = load i32, ptr %r170
    %r172 = add i32 0,0
    %r173 = getelementptr i32, ptr %r4, i32 %r172
    %r174 = load i32, ptr %r173
    %r175 = mul i32 %r171,%r174
    %r176 = add i32 %r168,%r175
    %r177 = add i32 0,2
    %r178 = getelementptr i32, ptr %r2, i32 %r177
    %r179 = load i32, ptr %r178
    %r180 = add i32 0,0
    %r181 = getelementptr i32, ptr %r5, i32 %r180
    %r182 = load i32, ptr %r181
    %r183 = mul i32 %r179,%r182
    %r184 = add i32 %r176,%r183
    %r185 = add i32 0,0
    %r186 = getelementptr i32, ptr %r8, i32 %r185
    store i32 %r184, ptr %r186
    %r187 = add i32 0,0
    %r188 = getelementptr i32, ptr %r2, i32 %r187
    %r189 = load i32, ptr %r188
    %r190 = add i32 0,1
    %r191 = getelementptr i32, ptr %r3, i32 %r190
    %r192 = load i32, ptr %r191
    %r193 = mul i32 %r189,%r192
    %r194 = add i32 0,1
    %r195 = getelementptr i32, ptr %r2, i32 %r194
    %r196 = load i32, ptr %r195
    %r197 = add i32 0,1
    %r198 = getelementptr i32, ptr %r4, i32 %r197
    %r199 = load i32, ptr %r198
    %r200 = mul i32 %r196,%r199
    %r201 = add i32 %r193,%r200
    %r202 = add i32 0,2
    %r203 = getelementptr i32, ptr %r2, i32 %r202
    %r204 = load i32, ptr %r203
    %r205 = add i32 0,1
    %r206 = getelementptr i32, ptr %r5, i32 %r205
    %r207 = load i32, ptr %r206
    %r208 = mul i32 %r204,%r207
    %r209 = add i32 %r201,%r208
    %r210 = add i32 0,1
    %r211 = getelementptr i32, ptr %r8, i32 %r210
    store i32 %r209, ptr %r211
    %r212 = add i32 0,0
    %r213 = getelementptr i32, ptr %r2, i32 %r212
    %r214 = load i32, ptr %r213
    %r215 = add i32 0,2
    %r216 = getelementptr i32, ptr %r3, i32 %r215
    %r217 = load i32, ptr %r216
    %r218 = mul i32 %r214,%r217
    %r219 = add i32 0,1
    %r220 = getelementptr i32, ptr %r2, i32 %r219
    %r221 = load i32, ptr %r220
    %r222 = add i32 0,2
    %r223 = getelementptr i32, ptr %r4, i32 %r222
    %r224 = load i32, ptr %r223
    %r225 = mul i32 %r221,%r224
    %r226 = add i32 %r218,%r225
    %r227 = add i32 0,2
    %r228 = getelementptr i32, ptr %r2, i32 %r227
    %r229 = load i32, ptr %r228
    %r230 = add i32 0,2
    %r231 = getelementptr i32, ptr %r5, i32 %r230
    %r232 = load i32, ptr %r231
    %r233 = mul i32 %r229,%r232
    %r234 = add i32 %r226,%r233
    %r235 = add i32 0,2
    %r236 = getelementptr i32, ptr %r8, i32 %r235
    store i32 %r234, ptr %r236
    %r237 = add i32 0,0
    ret i32 %r237
}
define i32 @main()
{
L0:
    %r56 = alloca i32
    %r12 = alloca i32
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
    %r0 = add i32 0,3
    store i32 %r0, ptr @N
    %r1 = add i32 0,3
    store i32 %r1, ptr @M
    %r2 = add i32 0,3
    store i32 %r2, ptr @L
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r12
    %r15 = load i32, ptr %r12
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L5
L3:
    %r20 = load i32, ptr %r12
    %r21 = load i32, ptr %r12
    %r22 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r21
    store i32 %r20, ptr %r22
    %r23 = load i32, ptr %r12
    %r24 = load i32, ptr %r12
    %r25 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    %r26 = load i32, ptr %r12
    %r27 = load i32, ptr %r12
    %r28 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r27
    store i32 %r26, ptr %r28
    %r29 = load i32, ptr %r12
    %r30 = load i32, ptr %r12
    %r31 = getelementptr [3 x i32], ptr %r6, i32 0, i32 %r30
    store i32 %r29, ptr %r31
    %r32 = load i32, ptr %r12
    %r33 = load i32, ptr %r12
    %r34 = getelementptr [3 x i32], ptr %r7, i32 0, i32 %r33
    store i32 %r32, ptr %r34
    %r35 = load i32, ptr %r12
    %r36 = load i32, ptr %r12
    %r37 = getelementptr [3 x i32], ptr %r8, i32 0, i32 %r36
    store i32 %r35, ptr %r37
    %r38 = load i32, ptr %r12
    %r39 = add i32 0,1
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r12
    br label %L4
L4:
    %r41 = load i32, ptr %r12
    %r42 = load i32, ptr @M
    %r43 = icmp slt i32 %r41,%r42
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
    store i32 %r55, ptr %r12
    %r57 = add i32 0,0
    store i32 %r57, ptr %r56
    %r58 = load i32, ptr %r12
    %r59 = load i32, ptr @N
    %r60 = icmp slt i32 %r58,%r59
    br i1 %r60, label %L7, label %L9
L7:
    %r63 = load i32, ptr %r12
    %r64 = getelementptr [6 x i32], ptr %r9, i32 0, i32 %r63
    %r65 = load i32, ptr %r64
    store i32 %r65, ptr %r56
    %r66 = load i32, ptr %r56
    call void @putint(i32 %r66)
    %r67 = load i32, ptr %r12
    %r68 = add i32 0,1
    %r69 = add i32 %r67,%r68
    store i32 %r69, ptr %r12
    br label %L8
L8:
    %r70 = load i32, ptr %r12
    %r71 = load i32, ptr @N
    %r72 = icmp slt i32 %r70,%r71
    br i1 %r72, label %L7, label %L9
L9:
    %r75 = add i32 0,10
    store i32 %r75, ptr %r56
    %r76 = add i32 0,0
    store i32 %r76, ptr %r12
    %r77 = load i32, ptr %r56
    call void @putch(i32 %r77)
    %r78 = load i32, ptr %r12
    %r79 = load i32, ptr @N
    %r80 = icmp slt i32 %r78,%r79
    br i1 %r80, label %L11, label %L13
L11:
    %r83 = load i32, ptr %r12
    %r84 = getelementptr [3 x i32], ptr %r10, i32 0, i32 %r83
    %r85 = load i32, ptr %r84
    store i32 %r85, ptr %r56
    %r86 = load i32, ptr %r56
    call void @putint(i32 %r86)
    %r87 = load i32, ptr %r12
    %r88 = add i32 0,1
    %r89 = add i32 %r87,%r88
    store i32 %r89, ptr %r12
    br label %L12
L12:
    %r90 = load i32, ptr %r12
    %r91 = load i32, ptr @N
    %r92 = icmp slt i32 %r90,%r91
    br i1 %r92, label %L11, label %L13
L13:
    %r95 = add i32 0,10
    store i32 %r95, ptr %r56
    %r96 = add i32 0,0
    store i32 %r96, ptr %r12
    %r97 = load i32, ptr %r56
    call void @putch(i32 %r97)
    %r98 = load i32, ptr %r12
    %r99 = load i32, ptr @N
    %r100 = icmp slt i32 %r98,%r99
    br i1 %r100, label %L15, label %L17
L15:
    %r103 = load i32, ptr %r12
    %r104 = getelementptr [3 x i32], ptr %r11, i32 0, i32 %r103
    %r105 = load i32, ptr %r104
    store i32 %r105, ptr %r56
    %r106 = load i32, ptr %r56
    call void @putint(i32 %r106)
    %r107 = load i32, ptr %r12
    %r108 = add i32 0,1
    %r109 = add i32 %r107,%r108
    store i32 %r109, ptr %r12
    br label %L16
L16:
    %r110 = load i32, ptr %r12
    %r111 = load i32, ptr @N
    %r112 = icmp slt i32 %r110,%r111
    br i1 %r112, label %L15, label %L17
L17:
    %r115 = add i32 0,10
    store i32 %r115, ptr %r56
    %r116 = load i32, ptr %r56
    call void @putch(i32 %r116)
    %r117 = add i32 0,0
    ret i32 %r117
}
