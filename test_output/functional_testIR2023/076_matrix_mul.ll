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
    %r13 = getelementptr i32, ptr %r6, i32 %r12
    %r14 = add i32 0,0
    %r15 = getelementptr i32, ptr %r0, i32 %r14
    %r16 = load i32, ptr %r15
    %r17 = add i32 0,0
    %r18 = getelementptr i32, ptr %r3, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = mul i32 %r16,%r19
    %r21 = add i32 1,0
    %r22 = getelementptr i32, ptr %r0, i32 %r21
    %r23 = load i32, ptr %r22
    %r24 = add i32 0,0
    %r25 = getelementptr i32, ptr %r4, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = mul i32 %r23,%r26
    %r28 = add i32 %r20,%r27
    %r29 = add i32 2,0
    %r30 = getelementptr i32, ptr %r0, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = add i32 0,0
    %r33 = getelementptr i32, ptr %r5, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = mul i32 %r31,%r34
    %r36 = add i32 %r28,%r35
    store i32 %r36, ptr %r13
    %r37 = add i32 1,0
    %r38 = getelementptr i32, ptr %r6, i32 %r37
    %r39 = add i32 0,0
    %r40 = getelementptr i32, ptr %r0, i32 %r39
    %r41 = load i32, ptr %r40
    %r42 = add i32 1,0
    %r43 = getelementptr i32, ptr %r3, i32 %r42
    %r44 = load i32, ptr %r43
    %r45 = mul i32 %r41,%r44
    %r46 = add i32 1,0
    %r47 = getelementptr i32, ptr %r0, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = add i32 1,0
    %r50 = getelementptr i32, ptr %r4, i32 %r49
    %r51 = load i32, ptr %r50
    %r52 = mul i32 %r48,%r51
    %r53 = add i32 %r45,%r52
    %r54 = add i32 2,0
    %r55 = getelementptr i32, ptr %r0, i32 %r54
    %r56 = load i32, ptr %r55
    %r57 = add i32 1,0
    %r58 = getelementptr i32, ptr %r5, i32 %r57
    %r59 = load i32, ptr %r58
    %r60 = mul i32 %r56,%r59
    %r61 = add i32 %r53,%r60
    store i32 %r61, ptr %r38
    %r62 = add i32 2,0
    %r63 = getelementptr i32, ptr %r6, i32 %r62
    %r64 = add i32 0,0
    %r65 = getelementptr i32, ptr %r0, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = add i32 2,0
    %r68 = getelementptr i32, ptr %r3, i32 %r67
    %r69 = load i32, ptr %r68
    %r70 = mul i32 %r66,%r69
    %r71 = add i32 1,0
    %r72 = getelementptr i32, ptr %r0, i32 %r71
    %r73 = load i32, ptr %r72
    %r74 = add i32 2,0
    %r75 = getelementptr i32, ptr %r4, i32 %r74
    %r76 = load i32, ptr %r75
    %r77 = mul i32 %r73,%r76
    %r78 = add i32 %r70,%r77
    %r79 = add i32 2,0
    %r80 = getelementptr i32, ptr %r0, i32 %r79
    %r81 = load i32, ptr %r80
    %r82 = add i32 2,0
    %r83 = getelementptr i32, ptr %r5, i32 %r82
    %r84 = load i32, ptr %r83
    %r85 = mul i32 %r81,%r84
    %r86 = add i32 %r78,%r85
    store i32 %r86, ptr %r63
    %r87 = add i32 0,0
    %r88 = getelementptr i32, ptr %r7, i32 %r87
    %r89 = add i32 0,0
    %r90 = getelementptr i32, ptr %r1, i32 %r89
    %r91 = load i32, ptr %r90
    %r92 = add i32 0,0
    %r93 = getelementptr i32, ptr %r3, i32 %r92
    %r94 = load i32, ptr %r93
    %r95 = mul i32 %r91,%r94
    %r96 = add i32 1,0
    %r97 = getelementptr i32, ptr %r1, i32 %r96
    %r98 = load i32, ptr %r97
    %r99 = add i32 0,0
    %r100 = getelementptr i32, ptr %r4, i32 %r99
    %r101 = load i32, ptr %r100
    %r102 = mul i32 %r98,%r101
    %r103 = add i32 %r95,%r102
    %r104 = add i32 2,0
    %r105 = getelementptr i32, ptr %r1, i32 %r104
    %r106 = load i32, ptr %r105
    %r107 = add i32 0,0
    %r108 = getelementptr i32, ptr %r5, i32 %r107
    %r109 = load i32, ptr %r108
    %r110 = mul i32 %r106,%r109
    %r111 = add i32 %r103,%r110
    store i32 %r111, ptr %r88
    %r112 = add i32 1,0
    %r113 = getelementptr i32, ptr %r7, i32 %r112
    %r114 = add i32 0,0
    %r115 = getelementptr i32, ptr %r1, i32 %r114
    %r116 = load i32, ptr %r115
    %r117 = add i32 1,0
    %r118 = getelementptr i32, ptr %r3, i32 %r117
    %r119 = load i32, ptr %r118
    %r120 = mul i32 %r116,%r119
    %r121 = add i32 1,0
    %r122 = getelementptr i32, ptr %r1, i32 %r121
    %r123 = load i32, ptr %r122
    %r124 = add i32 1,0
    %r125 = getelementptr i32, ptr %r4, i32 %r124
    %r126 = load i32, ptr %r125
    %r127 = mul i32 %r123,%r126
    %r128 = add i32 %r120,%r127
    %r129 = add i32 2,0
    %r130 = getelementptr i32, ptr %r1, i32 %r129
    %r131 = load i32, ptr %r130
    %r132 = add i32 1,0
    %r133 = getelementptr i32, ptr %r5, i32 %r132
    %r134 = load i32, ptr %r133
    %r135 = mul i32 %r131,%r134
    %r136 = add i32 %r128,%r135
    store i32 %r136, ptr %r113
    %r137 = add i32 2,0
    %r138 = getelementptr i32, ptr %r7, i32 %r137
    %r139 = add i32 0,0
    %r140 = getelementptr i32, ptr %r1, i32 %r139
    %r141 = load i32, ptr %r140
    %r142 = add i32 2,0
    %r143 = getelementptr i32, ptr %r3, i32 %r142
    %r144 = load i32, ptr %r143
    %r145 = mul i32 %r141,%r144
    %r146 = add i32 1,0
    %r147 = getelementptr i32, ptr %r1, i32 %r146
    %r148 = load i32, ptr %r147
    %r149 = add i32 2,0
    %r150 = getelementptr i32, ptr %r4, i32 %r149
    %r151 = load i32, ptr %r150
    %r152 = mul i32 %r148,%r151
    %r153 = add i32 %r145,%r152
    %r154 = add i32 2,0
    %r155 = getelementptr i32, ptr %r1, i32 %r154
    %r156 = load i32, ptr %r155
    %r157 = add i32 2,0
    %r158 = getelementptr i32, ptr %r5, i32 %r157
    %r159 = load i32, ptr %r158
    %r160 = mul i32 %r156,%r159
    %r161 = add i32 %r153,%r160
    store i32 %r161, ptr %r138
    %r162 = add i32 0,0
    %r163 = getelementptr i32, ptr %r8, i32 %r162
    %r164 = add i32 0,0
    %r165 = getelementptr i32, ptr %r2, i32 %r164
    %r166 = load i32, ptr %r165
    %r167 = add i32 0,0
    %r168 = getelementptr i32, ptr %r3, i32 %r167
    %r169 = load i32, ptr %r168
    %r170 = mul i32 %r166,%r169
    %r171 = add i32 1,0
    %r172 = getelementptr i32, ptr %r2, i32 %r171
    %r173 = load i32, ptr %r172
    %r174 = add i32 0,0
    %r175 = getelementptr i32, ptr %r4, i32 %r174
    %r176 = load i32, ptr %r175
    %r177 = mul i32 %r173,%r176
    %r178 = add i32 %r170,%r177
    %r179 = add i32 2,0
    %r180 = getelementptr i32, ptr %r2, i32 %r179
    %r181 = load i32, ptr %r180
    %r182 = add i32 0,0
    %r183 = getelementptr i32, ptr %r5, i32 %r182
    %r184 = load i32, ptr %r183
    %r185 = mul i32 %r181,%r184
    %r186 = add i32 %r178,%r185
    store i32 %r186, ptr %r163
    %r187 = add i32 1,0
    %r188 = getelementptr i32, ptr %r8, i32 %r187
    %r189 = add i32 0,0
    %r190 = getelementptr i32, ptr %r2, i32 %r189
    %r191 = load i32, ptr %r190
    %r192 = add i32 1,0
    %r193 = getelementptr i32, ptr %r3, i32 %r192
    %r194 = load i32, ptr %r193
    %r195 = mul i32 %r191,%r194
    %r196 = add i32 1,0
    %r197 = getelementptr i32, ptr %r2, i32 %r196
    %r198 = load i32, ptr %r197
    %r199 = add i32 1,0
    %r200 = getelementptr i32, ptr %r4, i32 %r199
    %r201 = load i32, ptr %r200
    %r202 = mul i32 %r198,%r201
    %r203 = add i32 %r195,%r202
    %r204 = add i32 2,0
    %r205 = getelementptr i32, ptr %r2, i32 %r204
    %r206 = load i32, ptr %r205
    %r207 = add i32 1,0
    %r208 = getelementptr i32, ptr %r5, i32 %r207
    %r209 = load i32, ptr %r208
    %r210 = mul i32 %r206,%r209
    %r211 = add i32 %r203,%r210
    store i32 %r211, ptr %r188
    %r212 = add i32 2,0
    %r213 = getelementptr i32, ptr %r8, i32 %r212
    %r214 = add i32 0,0
    %r215 = getelementptr i32, ptr %r2, i32 %r214
    %r216 = load i32, ptr %r215
    %r217 = add i32 2,0
    %r218 = getelementptr i32, ptr %r3, i32 %r217
    %r219 = load i32, ptr %r218
    %r220 = mul i32 %r216,%r219
    %r221 = add i32 1,0
    %r222 = getelementptr i32, ptr %r2, i32 %r221
    %r223 = load i32, ptr %r222
    %r224 = add i32 2,0
    %r225 = getelementptr i32, ptr %r4, i32 %r224
    %r226 = load i32, ptr %r225
    %r227 = mul i32 %r223,%r226
    %r228 = add i32 %r220,%r227
    %r229 = add i32 2,0
    %r230 = getelementptr i32, ptr %r2, i32 %r229
    %r231 = load i32, ptr %r230
    %r232 = add i32 2,0
    %r233 = getelementptr i32, ptr %r5, i32 %r232
    %r234 = load i32, ptr %r233
    %r235 = mul i32 %r231,%r234
    %r236 = add i32 %r228,%r235
    store i32 %r236, ptr %r213
    %r237 = add i32 0,0
    ret i32 %r237
}
define i32 @main()
{
L0:
    %r49 = alloca i32
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
    %r0 = add i32 3,0
    store i32 %r0, ptr @N
    %r1 = add i32 3,0
    store i32 %r1, ptr @M
    %r2 = add i32 3,0
    store i32 %r2, ptr @L
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r12
    br label %L2
L2:
    %r15 = load i32, ptr %r12
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L4
L3:
    %r18 = load i32, ptr %r12
    %r19 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r18
    %r20 = load i32, ptr %r12
    store i32 %r20, ptr %r19
    %r21 = load i32, ptr %r12
    %r22 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r21
    %r23 = load i32, ptr %r12
    store i32 %r23, ptr %r22
    %r24 = load i32, ptr %r12
    %r25 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r24
    %r26 = load i32, ptr %r12
    store i32 %r26, ptr %r25
    %r27 = load i32, ptr %r12
    %r28 = getelementptr [3 x i32], ptr %r6, i32 0, i32 %r27
    %r29 = load i32, ptr %r12
    store i32 %r29, ptr %r28
    %r30 = load i32, ptr %r12
    %r31 = getelementptr [3 x i32], ptr %r7, i32 0, i32 %r30
    %r32 = load i32, ptr %r12
    store i32 %r32, ptr %r31
    %r33 = load i32, ptr %r12
    %r34 = getelementptr [3 x i32], ptr %r8, i32 0, i32 %r33
    %r35 = load i32, ptr %r12
    store i32 %r35, ptr %r34
    %r36 = load i32, ptr %r12
    %r37 = add i32 1,0
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r12
    br label %L2
L4:
    %r39 = getelementptr [3 x i32], ptr %r3, i32 0
    %r40 = getelementptr [3 x i32], ptr %r4, i32 0
    %r41 = getelementptr [3 x i32], ptr %r5, i32 0
    %r42 = getelementptr [3 x i32], ptr %r6, i32 0
    %r43 = getelementptr [3 x i32], ptr %r7, i32 0
    %r44 = getelementptr [3 x i32], ptr %r8, i32 0
    %r45 = getelementptr [6 x i32], ptr %r9, i32 0
    %r46 = getelementptr [3 x i32], ptr %r10, i32 0
    %r47 = getelementptr [3 x i32], ptr %r11, i32 0
    %r48 = call i32 @mul(ptr %r39,ptr %r40,ptr %r41,ptr %r42,ptr %r43,ptr %r44,ptr %r45,ptr %r46,ptr %r47)
    store i32 %r48, ptr %r12
    %r50 = add i32 0,0
    store i32 %r50, ptr %r49
    br label %L5
L5:
    %r51 = load i32, ptr %r12
    %r52 = load i32, ptr @N
    %r53 = icmp slt i32 %r51,%r52
    br i1 %r53, label %L6, label %L7
L6:
    %r54 = load i32, ptr %r12
    %r55 = getelementptr [6 x i32], ptr %r9, i32 0, i32 %r54
    %r56 = load i32, ptr %r55
    store i32 %r56, ptr %r49
    %r57 = load i32, ptr %r49
    call void @putint(i32 %r57)
    %r58 = load i32, ptr %r12
    %r59 = add i32 1,0
    %r60 = add i32 %r58,%r59
    store i32 %r60, ptr %r12
    br label %L5
L7:
    %r61 = add i32 10,0
    store i32 %r61, ptr %r49
    %r62 = add i32 0,0
    store i32 %r62, ptr %r12
    %r63 = load i32, ptr %r49
    call void @putch(i32 %r63)
    br label %L8
L8:
    %r64 = load i32, ptr %r12
    %r65 = load i32, ptr @N
    %r66 = icmp slt i32 %r64,%r65
    br i1 %r66, label %L9, label %L10
L9:
    %r67 = load i32, ptr %r12
    %r68 = getelementptr [3 x i32], ptr %r10, i32 0, i32 %r67
    %r69 = load i32, ptr %r68
    store i32 %r69, ptr %r49
    %r70 = load i32, ptr %r49
    call void @putint(i32 %r70)
    %r71 = load i32, ptr %r12
    %r72 = add i32 1,0
    %r73 = add i32 %r71,%r72
    store i32 %r73, ptr %r12
    br label %L8
L10:
    %r74 = add i32 10,0
    store i32 %r74, ptr %r49
    %r75 = add i32 0,0
    store i32 %r75, ptr %r12
    %r76 = load i32, ptr %r49
    call void @putch(i32 %r76)
    br label %L11
L11:
    %r77 = load i32, ptr %r12
    %r78 = load i32, ptr @N
    %r79 = icmp slt i32 %r77,%r78
    br i1 %r79, label %L12, label %L13
L12:
    %r80 = load i32, ptr %r12
    %r81 = getelementptr [3 x i32], ptr %r11, i32 0, i32 %r80
    %r82 = load i32, ptr %r81
    store i32 %r82, ptr %r49
    %r83 = load i32, ptr %r49
    call void @putint(i32 %r83)
    %r84 = load i32, ptr %r12
    %r85 = add i32 1,0
    %r86 = add i32 %r84,%r85
    store i32 %r86, ptr %r12
    br label %L11
L13:
    %r87 = add i32 10,0
    store i32 %r87, ptr %r49
    %r88 = load i32, ptr %r49
    call void @putch(i32 %r88)
    %r89 = add i32 0,0
    ret i32 %r89
}
