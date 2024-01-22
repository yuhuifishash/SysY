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
    br label %L1
L1:
    %r100 = load i32, ptr %r0
    %r101 = load i32, ptr %r92
    %r102 = icmp slt i32 %r100,%r101
    br i1 %r102, label %L2, label %L3
L2:
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
    br label %L1
L3:
    %r113 = add i32 0,0
    store i32 %r113, ptr %r0
    br label %L4
L4:
    %r114 = load i32, ptr %r0
    %r115 = load i32, ptr %r94
    %r116 = icmp slt i32 %r114,%r115
    br i1 %r116, label %L5, label %L6
L5:
    %r119 = load i32, ptr %r0
    %r120 = getelementptr [20 x i32], ptr %r51, i32 0, i32 %r119
    %r121 = load i32, ptr %r120
    %r122 = load i32, ptr %r0
    %r123 = getelementptr [25 x i32], ptr %r97, i32 0, i32 %r122
    store i32 %r121, ptr %r123
    %r124 = load i32, ptr %r0
    %r125 = add i32 0,1
    %r126 = add i32 %r124,%r125
    store i32 %r126, ptr %r0
    br label %L4
L6:
    %r127 = load i32, ptr %r92
    %r128 = load i32, ptr %r94
    %r129 = add i32 %r127,%r128
    %r130 = add i32 0,1
    %r131 = sub i32 %r129,%r130
    store i32 %r131, ptr %r6
    %r132 = add i32 0,0
    store i32 %r132, ptr %r0
    br label %L7
L7:
    %r133 = load i32, ptr %r0
    %r134 = load i32, ptr %r6
    %r135 = icmp sle i32 %r133,%r134
    br i1 %r135, label %L8, label %L9
L8:
    %r138 = add i32 0,0
    %r139 = load i32, ptr %r0
    %r140 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r139
    store i32 %r138, ptr %r140
    %r141 = load i32, ptr %r0
    %r142 = add i32 0,1
    %r143 = add i32 %r141,%r142
    store i32 %r143, ptr %r0
    br label %L7
L9:
    %r144 = add i32 0,0
    store i32 %r144, ptr %r8
    %r145 = load i32, ptr %r94
    %r146 = add i32 0,1
    %r147 = sub i32 %r145,%r146
    store i32 %r147, ptr %r0
    br label %L10
L10:
    %r148 = load i32, ptr %r0
    %r149 = add i32 0,1
    %r150 = sub i32 0,%r149
    %r151 = icmp sgt i32 %r148,%r150
    br i1 %r151, label %L11, label %L12
L11:
    %r154 = load i32, ptr %r0
    %r155 = getelementptr [25 x i32], ptr %r97, i32 0, i32 %r154
    %r156 = load i32, ptr %r155
    store i32 %r156, ptr %r4
    %r157 = load i32, ptr %r92
    %r158 = add i32 0,1
    %r159 = sub i32 %r157,%r158
    store i32 %r159, ptr %r2
    br label %L13
L12:
    %r213 = add i32 0,0
    %r214 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r213
    %r215 = load i32, ptr %r214
    %r216 = add i32 0,0
    %r217 = icmp ne i32 %r215,%r216
    br i1 %r217, label %L19, label %L20
L13:
    %r160 = load i32, ptr %r2
    %r161 = add i32 0,1
    %r162 = sub i32 0,%r161
    %r163 = icmp sgt i32 %r160,%r162
    br i1 %r163, label %L14, label %L15
L14:
    %r166 = load i32, ptr %r6
    %r167 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r166
    %r168 = load i32, ptr %r167
    %r169 = load i32, ptr %r4
    %r170 = load i32, ptr %r2
    %r171 = getelementptr [25 x i32], ptr %r96, i32 0, i32 %r170
    %r172 = load i32, ptr %r171
    %r173 = mul i32 %r169,%r172
    %r174 = add i32 %r168,%r173
    store i32 %r174, ptr %r8
    %r175 = load i32, ptr %r8
    %r176 = add i32 0,10
    %r177 = icmp sge i32 %r175,%r176
    br i1 %r177, label %L16, label %L17
L15:
    %r205 = load i32, ptr %r6
    %r206 = load i32, ptr %r92
    %r207 = add i32 %r205,%r206
    %r208 = add i32 0,1
    %r209 = sub i32 %r207,%r208
    store i32 %r209, ptr %r6
    %r210 = load i32, ptr %r0
    %r211 = add i32 0,1
    %r212 = sub i32 %r210,%r211
    store i32 %r212, ptr %r0
    br label %L10
L16:
    %r180 = load i32, ptr %r8
    %r181 = load i32, ptr %r6
    %r182 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r181
    store i32 %r180, ptr %r182
    %r183 = load i32, ptr %r6
    %r184 = add i32 0,1
    %r185 = sub i32 %r183,%r184
    %r186 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r185
    %r187 = load i32, ptr %r186
    %r188 = load i32, ptr %r8
    %r189 = add i32 0,10
    %r190 = sdiv i32 %r188,%r189
    %r191 = add i32 %r187,%r190
    %r192 = load i32, ptr %r6
    %r193 = add i32 0,1
    %r194 = sub i32 %r192,%r193
    %r195 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r194
    store i32 %r191, ptr %r195
    br label %L18
L17:
    %r196 = load i32, ptr %r8
    %r197 = load i32, ptr %r6
    %r198 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r197
    store i32 %r196, ptr %r198
    br label %L18
L18:
    %r199 = load i32, ptr %r2
    %r200 = add i32 0,1
    %r201 = sub i32 %r199,%r200
    store i32 %r201, ptr %r2
    %r202 = load i32, ptr %r6
    %r203 = add i32 0,1
    %r204 = sub i32 %r202,%r203
    store i32 %r204, ptr %r6
    br label %L13
L19:
    %r220 = add i32 0,0
    %r221 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r220
    %r222 = load i32, ptr %r221
    call void @putint(i32 %r222)
    br label %L20
L20:
    %r223 = add i32 0,1
    store i32 %r223, ptr %r0
    br label %L21
L21:
    %r224 = load i32, ptr %r0
    %r225 = load i32, ptr %r92
    %r226 = load i32, ptr %r94
    %r227 = add i32 %r225,%r226
    %r228 = add i32 0,1
    %r229 = sub i32 %r227,%r228
    %r230 = icmp sle i32 %r224,%r229
    br i1 %r230, label %L22, label %L23
L22:
    %r233 = load i32, ptr %r0
    %r234 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r233
    %r235 = load i32, ptr %r234
    call void @putint(i32 %r235)
    %r236 = load i32, ptr %r0
    %r237 = add i32 0,1
    %r238 = add i32 %r236,%r237
    store i32 %r238, ptr %r0
    br label %L21
L23:
    %r239 = add i32 0,0
    ret i32 %r239
}
