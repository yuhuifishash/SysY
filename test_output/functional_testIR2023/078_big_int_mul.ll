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
@len = global i32 20
define i32 @main()
{
L0:
    %r98 = alloca [40 x i32]
    %r97 = alloca [25 x i32]
    %r96 = alloca [25 x i32]
    %r94 = alloca i32
    %r92 = alloca i32
    %r51 = alloca [20 x i32]
    %r10 = alloca [20 x i32]
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    call void @llvm.memset.p0.i32(ptr %r10,i8 0,i32 80,i1 0)
    %r11 = add i32 0,1
    %r12 = getelementptr [20 x i32], ptr %r10, i32 0, i32 0
    store i32 %r11, ptr %r12
    %r13 = add i32 0,2
    %r14 = getelementptr [20 x i32], ptr %r10, i32 0, i32 1
    store i32 %r13, ptr %r14
    %r15 = add i32 0,3
    %r16 = getelementptr [20 x i32], ptr %r10, i32 0, i32 2
    store i32 %r15, ptr %r16
    %r17 = add i32 0,4
    %r18 = getelementptr [20 x i32], ptr %r10, i32 0, i32 3
    store i32 %r17, ptr %r18
    %r19 = add i32 0,5
    %r20 = getelementptr [20 x i32], ptr %r10, i32 0, i32 4
    store i32 %r19, ptr %r20
    %r21 = add i32 0,6
    %r22 = getelementptr [20 x i32], ptr %r10, i32 0, i32 5
    store i32 %r21, ptr %r22
    %r23 = add i32 0,7
    %r24 = getelementptr [20 x i32], ptr %r10, i32 0, i32 6
    store i32 %r23, ptr %r24
    %r25 = add i32 0,8
    %r26 = getelementptr [20 x i32], ptr %r10, i32 0, i32 7
    store i32 %r25, ptr %r26
    %r27 = add i32 0,9
    %r28 = getelementptr [20 x i32], ptr %r10, i32 0, i32 8
    store i32 %r27, ptr %r28
    %r29 = add i32 0,0
    %r30 = getelementptr [20 x i32], ptr %r10, i32 0, i32 9
    store i32 %r29, ptr %r30
    %r31 = add i32 0,1
    %r32 = getelementptr [20 x i32], ptr %r10, i32 0, i32 10
    store i32 %r31, ptr %r32
    %r33 = add i32 0,2
    %r34 = getelementptr [20 x i32], ptr %r10, i32 0, i32 11
    store i32 %r33, ptr %r34
    %r35 = add i32 0,3
    %r36 = getelementptr [20 x i32], ptr %r10, i32 0, i32 12
    store i32 %r35, ptr %r36
    %r37 = add i32 0,4
    %r38 = getelementptr [20 x i32], ptr %r10, i32 0, i32 13
    store i32 %r37, ptr %r38
    %r39 = add i32 0,5
    %r40 = getelementptr [20 x i32], ptr %r10, i32 0, i32 14
    store i32 %r39, ptr %r40
    %r41 = add i32 0,6
    %r42 = getelementptr [20 x i32], ptr %r10, i32 0, i32 15
    store i32 %r41, ptr %r42
    %r43 = add i32 0,7
    %r44 = getelementptr [20 x i32], ptr %r10, i32 0, i32 16
    store i32 %r43, ptr %r44
    %r45 = add i32 0,8
    %r46 = getelementptr [20 x i32], ptr %r10, i32 0, i32 17
    store i32 %r45, ptr %r46
    %r47 = add i32 0,9
    %r48 = getelementptr [20 x i32], ptr %r10, i32 0, i32 18
    store i32 %r47, ptr %r48
    %r49 = add i32 0,0
    %r50 = getelementptr [20 x i32], ptr %r10, i32 0, i32 19
    store i32 %r49, ptr %r50
    call void @llvm.memset.p0.i32(ptr %r51,i8 0,i32 80,i1 0)
    %r52 = add i32 0,2
    %r53 = getelementptr [20 x i32], ptr %r51, i32 0, i32 0
    store i32 %r52, ptr %r53
    %r54 = add i32 0,3
    %r55 = getelementptr [20 x i32], ptr %r51, i32 0, i32 1
    store i32 %r54, ptr %r55
    %r56 = add i32 0,4
    %r57 = getelementptr [20 x i32], ptr %r51, i32 0, i32 2
    store i32 %r56, ptr %r57
    %r58 = add i32 0,2
    %r59 = getelementptr [20 x i32], ptr %r51, i32 0, i32 3
    store i32 %r58, ptr %r59
    %r60 = add i32 0,5
    %r61 = getelementptr [20 x i32], ptr %r51, i32 0, i32 4
    store i32 %r60, ptr %r61
    %r62 = add i32 0,7
    %r63 = getelementptr [20 x i32], ptr %r51, i32 0, i32 5
    store i32 %r62, ptr %r63
    %r64 = add i32 0,9
    %r65 = getelementptr [20 x i32], ptr %r51, i32 0, i32 6
    store i32 %r64, ptr %r65
    %r66 = add i32 0,9
    %r67 = getelementptr [20 x i32], ptr %r51, i32 0, i32 7
    store i32 %r66, ptr %r67
    %r68 = add i32 0,0
    %r69 = getelementptr [20 x i32], ptr %r51, i32 0, i32 8
    store i32 %r68, ptr %r69
    %r70 = add i32 0,1
    %r71 = getelementptr [20 x i32], ptr %r51, i32 0, i32 9
    store i32 %r70, ptr %r71
    %r72 = add i32 0,9
    %r73 = getelementptr [20 x i32], ptr %r51, i32 0, i32 10
    store i32 %r72, ptr %r73
    %r74 = add i32 0,8
    %r75 = getelementptr [20 x i32], ptr %r51, i32 0, i32 11
    store i32 %r74, ptr %r75
    %r76 = add i32 0,7
    %r77 = getelementptr [20 x i32], ptr %r51, i32 0, i32 12
    store i32 %r76, ptr %r77
    %r78 = add i32 0,6
    %r79 = getelementptr [20 x i32], ptr %r51, i32 0, i32 13
    store i32 %r78, ptr %r79
    %r80 = add i32 0,4
    %r81 = getelementptr [20 x i32], ptr %r51, i32 0, i32 14
    store i32 %r80, ptr %r81
    %r82 = add i32 0,3
    %r83 = getelementptr [20 x i32], ptr %r51, i32 0, i32 15
    store i32 %r82, ptr %r83
    %r84 = add i32 0,2
    %r85 = getelementptr [20 x i32], ptr %r51, i32 0, i32 16
    store i32 %r84, ptr %r85
    %r86 = add i32 0,1
    %r87 = getelementptr [20 x i32], ptr %r51, i32 0, i32 17
    store i32 %r86, ptr %r87
    %r88 = add i32 0,2
    %r89 = getelementptr [20 x i32], ptr %r51, i32 0, i32 18
    store i32 %r88, ptr %r89
    %r90 = add i32 0,2
    %r91 = getelementptr [20 x i32], ptr %r51, i32 0, i32 19
    store i32 %r90, ptr %r91
    %r93 = load i32, ptr @len
    store i32 %r93, ptr %r92
    %r95 = load i32, ptr @len
    store i32 %r95, ptr %r94
    call void @llvm.memset.p0.i32(ptr %r98,i8 0,i32 160,i1 0)
    %r99 = add i32 0,0
    store i32 %r99, ptr %r0
    %r100 = load i32, ptr %r0
    %r101 = load i32, ptr %r92
    %r102 = icmp slt i32 %r100,%r101
    br i1 %r102, label %L3, label %L5
L3:
    %r105 = load i32, ptr %r0
    %r106 = getelementptr [20 x i32], ptr %r10, i32 0, i32 %r105
    %r107 = load i32, ptr %r106
    %r108 = load i32, ptr %r0
    %r109 = getelementptr [25 x i32], ptr %r96, i32 0, i32 %r108
    store i32 %r107, ptr %r109
    %r110 = load i32, ptr %r0
    %r111 = add i32 0,1
    %r112 = add i32 %r110,%r111
    store i32 %r112, ptr %r0
    br label %L4
L4:
    %r113 = load i32, ptr %r0
    %r114 = load i32, ptr %r92
    %r115 = icmp slt i32 %r113,%r114
    br i1 %r115, label %L3, label %L5
L5:
    %r118 = add i32 0,0
    store i32 %r118, ptr %r0
    %r119 = load i32, ptr %r0
    %r120 = load i32, ptr %r94
    %r121 = icmp slt i32 %r119,%r120
    br i1 %r121, label %L7, label %L9
L7:
    %r124 = load i32, ptr %r0
    %r125 = getelementptr [20 x i32], ptr %r51, i32 0, i32 %r124
    %r126 = load i32, ptr %r125
    %r127 = load i32, ptr %r0
    %r128 = getelementptr [25 x i32], ptr %r97, i32 0, i32 %r127
    store i32 %r126, ptr %r128
    %r129 = load i32, ptr %r0
    %r130 = add i32 0,1
    %r131 = add i32 %r129,%r130
    store i32 %r131, ptr %r0
    br label %L8
L8:
    %r132 = load i32, ptr %r0
    %r133 = load i32, ptr %r94
    %r134 = icmp slt i32 %r132,%r133
    br i1 %r134, label %L7, label %L9
L9:
    %r137 = load i32, ptr %r92
    %r138 = load i32, ptr %r94
    %r139 = add i32 %r137,%r138
    %r140 = add i32 0,1
    %r141 = sub i32 %r139,%r140
    store i32 %r141, ptr %r6
    %r142 = add i32 0,0
    store i32 %r142, ptr %r0
    %r143 = load i32, ptr %r0
    %r144 = load i32, ptr %r6
    %r145 = icmp sle i32 %r143,%r144
    br i1 %r145, label %L11, label %L13
L11:
    %r148 = add i32 0,0
    %r149 = load i32, ptr %r0
    %r150 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r149
    store i32 %r148, ptr %r150
    %r151 = load i32, ptr %r0
    %r152 = add i32 0,1
    %r153 = add i32 %r151,%r152
    store i32 %r153, ptr %r0
    br label %L12
L12:
    %r154 = load i32, ptr %r0
    %r155 = load i32, ptr %r6
    %r156 = icmp sle i32 %r154,%r155
    br i1 %r156, label %L11, label %L13
L13:
    %r159 = add i32 0,0
    store i32 %r159, ptr %r8
    %r160 = load i32, ptr %r94
    %r161 = add i32 0,1
    %r162 = sub i32 %r160,%r161
    store i32 %r162, ptr %r0
    %r163 = load i32, ptr %r0
    %r164 = add i32 0,1
    %r165 = sub i32 0,%r164
    %r166 = icmp sgt i32 %r163,%r165
    br i1 %r166, label %L15, label %L17
L15:
    %r169 = load i32, ptr %r0
    %r170 = getelementptr [25 x i32], ptr %r97, i32 0, i32 %r169
    %r171 = load i32, ptr %r170
    store i32 %r171, ptr %r4
    %r172 = load i32, ptr %r92
    %r173 = add i32 0,1
    %r174 = sub i32 %r172,%r173
    store i32 %r174, ptr %r2
    %r175 = load i32, ptr %r2
    %r176 = add i32 0,1
    %r177 = sub i32 0,%r176
    %r178 = icmp sgt i32 %r175,%r177
    br i1 %r178, label %L19, label %L21
L16:
    %r234 = load i32, ptr %r0
    %r235 = add i32 0,1
    %r236 = sub i32 0,%r235
    %r237 = icmp sgt i32 %r234,%r236
    br i1 %r237, label %L15, label %L17
L17:
    %r240 = add i32 0,0
    %r241 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r240
    %r242 = load i32, ptr %r241
    %r243 = add i32 0,0
    %r244 = icmp ne i32 %r242,%r243
    br i1 %r244, label %L25, label %L26
L19:
    %r181 = load i32, ptr %r6
    %r182 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r181
    %r183 = load i32, ptr %r182
    %r184 = load i32, ptr %r4
    %r185 = load i32, ptr %r2
    %r186 = getelementptr [25 x i32], ptr %r96, i32 0, i32 %r185
    %r187 = load i32, ptr %r186
    %r188 = mul i32 %r184,%r187
    %r189 = add i32 %r183,%r188
    store i32 %r189, ptr %r8
    %r190 = load i32, ptr %r8
    %r191 = add i32 0,10
    %r192 = icmp sge i32 %r190,%r191
    br i1 %r192, label %L22, label %L23
L20:
    %r220 = load i32, ptr %r2
    %r221 = add i32 0,1
    %r222 = sub i32 0,%r221
    %r223 = icmp sgt i32 %r220,%r222
    br i1 %r223, label %L19, label %L21
L21:
    %r226 = load i32, ptr %r6
    %r227 = load i32, ptr %r92
    %r228 = add i32 %r226,%r227
    %r229 = add i32 0,1
    %r230 = sub i32 %r228,%r229
    store i32 %r230, ptr %r6
    %r231 = load i32, ptr %r0
    %r232 = add i32 0,1
    %r233 = sub i32 %r231,%r232
    store i32 %r233, ptr %r0
    br label %L16
L22:
    %r195 = load i32, ptr %r8
    %r196 = load i32, ptr %r6
    %r197 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r196
    store i32 %r195, ptr %r197
    %r198 = load i32, ptr %r6
    %r199 = add i32 0,1
    %r200 = sub i32 %r198,%r199
    %r201 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r200
    %r202 = load i32, ptr %r201
    %r203 = load i32, ptr %r8
    %r204 = add i32 0,10
    %r205 = sdiv i32 %r203,%r204
    %r206 = add i32 %r202,%r205
    %r207 = load i32, ptr %r6
    %r208 = add i32 0,1
    %r209 = sub i32 %r207,%r208
    %r210 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r209
    store i32 %r206, ptr %r210
    br label %L24
L23:
    %r211 = load i32, ptr %r8
    %r212 = load i32, ptr %r6
    %r213 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r212
    store i32 %r211, ptr %r213
    br label %L24
L24:
    %r214 = load i32, ptr %r2
    %r215 = add i32 0,1
    %r216 = sub i32 %r214,%r215
    store i32 %r216, ptr %r2
    %r217 = load i32, ptr %r6
    %r218 = add i32 0,1
    %r219 = sub i32 %r217,%r218
    store i32 %r219, ptr %r6
    br label %L20
L25:
    %r247 = add i32 0,0
    %r248 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r247
    %r249 = load i32, ptr %r248
    call void @putint(i32 %r249)
    br label %L26
L26:
    %r250 = add i32 0,1
    store i32 %r250, ptr %r0
    %r251 = load i32, ptr %r0
    %r252 = load i32, ptr %r92
    %r253 = load i32, ptr %r94
    %r254 = add i32 %r252,%r253
    %r255 = add i32 0,1
    %r256 = sub i32 %r254,%r255
    %r257 = icmp sle i32 %r251,%r256
    br i1 %r257, label %L28, label %L30
L28:
    %r260 = load i32, ptr %r0
    %r261 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r260
    %r262 = load i32, ptr %r261
    call void @putint(i32 %r262)
    %r263 = load i32, ptr %r0
    %r264 = add i32 0,1
    %r265 = add i32 %r263,%r264
    store i32 %r265, ptr %r0
    br label %L29
L29:
    %r266 = load i32, ptr %r0
    %r267 = load i32, ptr %r92
    %r268 = load i32, ptr %r94
    %r269 = add i32 %r267,%r268
    %r270 = add i32 0,1
    %r271 = sub i32 %r269,%r270
    %r272 = icmp sle i32 %r266,%r271
    br i1 %r272, label %L28, label %L30
L30:
    %r275 = add i32 0,0
    ret i32 %r275
}
