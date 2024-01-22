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
define i32 @sum(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8,ptr %r9,ptr %r10,ptr %r11,ptr %r12,ptr %r13,ptr %r14,ptr %r15,ptr %r16,ptr %r17,ptr %r18)
{
L0:
    %r19 = add i32 0,0
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = add i32 0,1
    %r23 = add i32 0,0
    %r24 = getelementptr [2 x i32], ptr %r1, i32 %r22, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = add i32 %r21,%r25
    %r27 = add i32 0,0
    %r28 = add i32 0,0
    %r29 = add i32 0,1
    %r30 = getelementptr [2 x [2 x i32]], ptr %r2, i32 %r27, i32 %r28, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = add i32 %r26,%r31
    %r33 = add i32 0,1
    %r34 = add i32 0,0
    %r35 = add i32 0,1
    %r36 = add i32 0,0
    %r37 = getelementptr [2 x [2 x [2 x i32]]], ptr %r3, i32 %r33, i32 %r34, i32 %r35, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = add i32 %r32,%r38
    %r40 = add i32 0,0
    %r41 = add i32 0,0
    %r42 = add i32 0,1
    %r43 = add i32 0,1
    %r44 = add i32 0,0
    %r45 = getelementptr [2 x [2 x [2 x [2 x i32]]]], ptr %r4, i32 %r40, i32 %r41, i32 %r42, i32 %r43, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = add i32 %r39,%r46
    %r48 = add i32 0,1
    %r49 = add i32 0,1
    %r50 = add i32 0,1
    %r51 = add i32 0,0
    %r52 = add i32 0,0
    %r53 = add i32 0,1
    %r54 = getelementptr [2 x [2 x [2 x [2 x [2 x i32]]]]], ptr %r5, i32 %r48, i32 %r49, i32 %r50, i32 %r51, i32 %r52, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = add i32 %r47,%r55
    %r57 = add i32 0,0
    %r58 = add i32 0,0
    %r59 = add i32 0,0
    %r60 = add i32 0,1
    %r61 = add i32 0,1
    %r62 = add i32 0,1
    %r63 = add i32 0,0
    %r64 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]], ptr %r6, i32 %r57, i32 %r58, i32 %r59, i32 %r60, i32 %r61, i32 %r62, i32 %r63
    %r65 = load i32, ptr %r64
    %r66 = add i32 %r56,%r65
    %r67 = add i32 0,1
    %r68 = add i32 0,1
    %r69 = add i32 0,1
    %r70 = add i32 0,1
    %r71 = add i32 0,0
    %r72 = add i32 0,0
    %r73 = add i32 0,0
    %r74 = add i32 0,1
    %r75 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]], ptr %r7, i32 %r67, i32 %r68, i32 %r69, i32 %r70, i32 %r71, i32 %r72, i32 %r73, i32 %r74
    %r76 = load i32, ptr %r75
    %r77 = add i32 %r66,%r76
    %r78 = add i32 0,0
    %r79 = add i32 0,0
    %r80 = add i32 0,0
    %r81 = add i32 0,1
    %r82 = add i32 0,1
    %r83 = add i32 0,1
    %r84 = add i32 0,0
    %r85 = add i32 0,0
    %r86 = add i32 0,0
    %r87 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]], ptr %r8, i32 %r78, i32 %r79, i32 %r80, i32 %r81, i32 %r82, i32 %r83, i32 %r84, i32 %r85, i32 %r86
    %r88 = load i32, ptr %r87
    %r89 = add i32 %r77,%r88
    %r90 = add i32 0,0
    %r91 = add i32 0,0
    %r92 = add i32 0,1
    %r93 = add i32 0,1
    %r94 = add i32 0,0
    %r95 = add i32 0,0
    %r96 = add i32 0,1
    %r97 = add i32 0,0
    %r98 = add i32 0,0
    %r99 = add i32 0,1
    %r100 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]], ptr %r9, i32 %r90, i32 %r91, i32 %r92, i32 %r93, i32 %r94, i32 %r95, i32 %r96, i32 %r97, i32 %r98, i32 %r99
    %r101 = load i32, ptr %r100
    %r102 = add i32 %r89,%r101
    %r103 = add i32 0,0
    %r104 = add i32 0,0
    %r105 = add i32 0,1
    %r106 = add i32 0,1
    %r107 = add i32 0,1
    %r108 = add i32 0,1
    %r109 = add i32 0,1
    %r110 = add i32 0,0
    %r111 = add i32 0,0
    %r112 = add i32 0,1
    %r113 = add i32 0,1
    %r114 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]], ptr %r10, i32 %r103, i32 %r104, i32 %r105, i32 %r106, i32 %r107, i32 %r108, i32 %r109, i32 %r110, i32 %r111, i32 %r112, i32 %r113
    %r115 = load i32, ptr %r114
    %r116 = add i32 %r102,%r115
    %r117 = add i32 0,0
    %r118 = add i32 0,0
    %r119 = add i32 0,1
    %r120 = add i32 0,1
    %r121 = add i32 0,0
    %r122 = add i32 0,0
    %r123 = add i32 0,1
    %r124 = add i32 0,0
    %r125 = add i32 0,0
    %r126 = add i32 0,1
    %r127 = add i32 0,1
    %r128 = add i32 0,0
    %r129 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]], ptr %r11, i32 %r117, i32 %r118, i32 %r119, i32 %r120, i32 %r121, i32 %r122, i32 %r123, i32 %r124, i32 %r125, i32 %r126, i32 %r127, i32 %r128
    %r130 = load i32, ptr %r129
    %r131 = add i32 %r116,%r130
    %r132 = add i32 0,1
    %r133 = add i32 0,1
    %r134 = add i32 0,0
    %r135 = add i32 0,0
    %r136 = add i32 0,1
    %r137 = add i32 0,1
    %r138 = add i32 0,1
    %r139 = add i32 0,0
    %r140 = add i32 0,0
    %r141 = add i32 0,1
    %r142 = add i32 0,0
    %r143 = add i32 0,0
    %r144 = add i32 0,0
    %r145 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]], ptr %r12, i32 %r132, i32 %r133, i32 %r134, i32 %r135, i32 %r136, i32 %r137, i32 %r138, i32 %r139, i32 %r140, i32 %r141, i32 %r142, i32 %r143, i32 %r144
    %r146 = load i32, ptr %r145
    %r147 = add i32 %r131,%r146
    %r148 = add i32 0,0
    %r149 = add i32 0,0
    %r150 = add i32 0,0
    %r151 = add i32 0,0
    %r152 = add i32 0,0
    %r153 = add i32 0,0
    %r154 = add i32 0,0
    %r155 = add i32 0,1
    %r156 = add i32 0,1
    %r157 = add i32 0,1
    %r158 = add i32 0,1
    %r159 = add i32 0,1
    %r160 = add i32 0,1
    %r161 = add i32 0,1
    %r162 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]], ptr %r13, i32 %r148, i32 %r149, i32 %r150, i32 %r151, i32 %r152, i32 %r153, i32 %r154, i32 %r155, i32 %r156, i32 %r157, i32 %r158, i32 %r159, i32 %r160, i32 %r161
    %r163 = load i32, ptr %r162
    %r164 = add i32 %r147,%r163
    %r165 = add i32 0,0
    %r166 = add i32 0,0
    %r167 = add i32 0,0
    %r168 = add i32 0,0
    %r169 = add i32 0,0
    %r170 = add i32 0,0
    %r171 = add i32 0,0
    %r172 = add i32 0,0
    %r173 = add i32 0,0
    %r174 = add i32 0,0
    %r175 = add i32 0,1
    %r176 = add i32 0,1
    %r177 = add i32 0,1
    %r178 = add i32 0,1
    %r179 = add i32 0,1
    %r180 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]], ptr %r14, i32 %r165, i32 %r166, i32 %r167, i32 %r168, i32 %r169, i32 %r170, i32 %r171, i32 %r172, i32 %r173, i32 %r174, i32 %r175, i32 %r176, i32 %r177, i32 %r178, i32 %r179
    %r181 = load i32, ptr %r180
    %r182 = add i32 %r164,%r181
    %r183 = add i32 0,1
    %r184 = add i32 0,1
    %r185 = add i32 0,1
    %r186 = add i32 0,1
    %r187 = add i32 0,0
    %r188 = add i32 0,0
    %r189 = add i32 0,0
    %r190 = add i32 0,0
    %r191 = add i32 0,1
    %r192 = add i32 0,1
    %r193 = add i32 0,1
    %r194 = add i32 0,0
    %r195 = add i32 0,0
    %r196 = add i32 0,1
    %r197 = add i32 0,0
    %r198 = add i32 0,0
    %r199 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]], ptr %r15, i32 %r183, i32 %r184, i32 %r185, i32 %r186, i32 %r187, i32 %r188, i32 %r189, i32 %r190, i32 %r191, i32 %r192, i32 %r193, i32 %r194, i32 %r195, i32 %r196, i32 %r197, i32 %r198
    %r200 = load i32, ptr %r199
    %r201 = add i32 %r182,%r200
    %r202 = add i32 0,0
    %r203 = add i32 0,0
    %r204 = add i32 0,0
    %r205 = add i32 0,0
    %r206 = add i32 0,0
    %r207 = add i32 0,1
    %r208 = add i32 0,1
    %r209 = add i32 0,1
    %r210 = add i32 0,1
    %r211 = add i32 0,1
    %r212 = add i32 0,0
    %r213 = add i32 0,0
    %r214 = add i32 0,1
    %r215 = add i32 0,0
    %r216 = add i32 0,1
    %r217 = add i32 0,0
    %r218 = add i32 0,1
    %r219 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]], ptr %r16, i32 %r202, i32 %r203, i32 %r204, i32 %r205, i32 %r206, i32 %r207, i32 %r208, i32 %r209, i32 %r210, i32 %r211, i32 %r212, i32 %r213, i32 %r214, i32 %r215, i32 %r216, i32 %r217, i32 %r218
    %r220 = load i32, ptr %r219
    %r221 = add i32 %r201,%r220
    %r222 = add i32 0,1
    %r223 = add i32 0,1
    %r224 = add i32 0,0
    %r225 = add i32 0,0
    %r226 = add i32 0,1
    %r227 = add i32 0,0
    %r228 = add i32 0,1
    %r229 = add i32 0,0
    %r230 = add i32 0,0
    %r231 = add i32 0,0
    %r232 = add i32 0,1
    %r233 = add i32 0,1
    %r234 = add i32 0,1
    %r235 = add i32 0,1
    %r236 = add i32 0,0
    %r237 = add i32 0,0
    %r238 = add i32 0,1
    %r239 = add i32 0,1
    %r240 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]], ptr %r17, i32 %r222, i32 %r223, i32 %r224, i32 %r225, i32 %r226, i32 %r227, i32 %r228, i32 %r229, i32 %r230, i32 %r231, i32 %r232, i32 %r233, i32 %r234, i32 %r235, i32 %r236, i32 %r237, i32 %r238, i32 %r239
    %r241 = load i32, ptr %r240
    %r242 = add i32 %r221,%r241
    %r243 = add i32 0,0
    %r244 = add i32 0,0
    %r245 = add i32 0,1
    %r246 = add i32 0,0
    %r247 = add i32 0,0
    %r248 = add i32 0,0
    %r249 = add i32 0,1
    %r250 = add i32 0,0
    %r251 = add i32 0,0
    %r252 = add i32 0,1
    %r253 = add i32 0,1
    %r254 = add i32 0,0
    %r255 = add i32 0,0
    %r256 = add i32 0,0
    %r257 = add i32 0,0
    %r258 = add i32 0,0
    %r259 = add i32 0,0
    %r260 = add i32 0,0
    %r261 = add i32 0,0
    %r262 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]], ptr %r18, i32 %r243, i32 %r244, i32 %r245, i32 %r246, i32 %r247, i32 %r248, i32 %r249, i32 %r250, i32 %r251, i32 %r252, i32 %r253, i32 %r254, i32 %r255, i32 %r256, i32 %r257, i32 %r258, i32 %r259, i32 %r260, i32 %r261
    %r263 = load i32, ptr %r262
    %r264 = add i32 %r242,%r263
    ret i32 %r264
}
define i32 @main()
{
L0:
    %r131 = alloca i32
    %r124 = alloca i32
    %r117 = alloca i32
    %r110 = alloca i32
    %r103 = alloca i32
    %r96 = alloca i32
    %r89 = alloca i32
    %r82 = alloca i32
    %r75 = alloca i32
    %r68 = alloca i32
    %r61 = alloca i32
    %r54 = alloca i32
    %r47 = alloca i32
    %r40 = alloca i32
    %r33 = alloca i32
    %r26 = alloca i32
    %r19 = alloca i32
    %r12 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r0 = alloca [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]]
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 2097152,i1 0)
    %r1 = add i32 0,0
    %r2 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    store i32 %r1, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    br label %L1
L1:
    %r7 = load i32, ptr %r5
    %r8 = add i32 0,2
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
L2:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    br label %L4
L3:
    %r219 = add i32 0,0
    %r220 = add i32 0,0
    %r221 = add i32 0,0
    %r222 = add i32 0,0
    %r223 = add i32 0,0
    %r224 = add i32 0,0
    %r225 = add i32 0,0
    %r226 = add i32 0,0
    %r227 = add i32 0,0
    %r228 = add i32 0,0
    %r229 = add i32 0,0
    %r230 = add i32 0,0
    %r231 = add i32 0,0
    %r232 = add i32 0,0
    %r233 = add i32 0,0
    %r234 = add i32 0,0
    %r235 = add i32 0,0
    %r236 = add i32 0,0
    %r237 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r219, i32 %r220, i32 %r221, i32 %r222, i32 %r223, i32 %r224, i32 %r225, i32 %r226, i32 %r227, i32 %r228, i32 %r229, i32 %r230, i32 %r231, i32 %r232, i32 %r233, i32 %r234, i32 %r235, i32 %r236
    %r238 = add i32 0,0
    %r239 = add i32 0,0
    %r240 = add i32 0,0
    %r241 = add i32 0,0
    %r242 = add i32 0,0
    %r243 = add i32 0,0
    %r244 = add i32 0,0
    %r245 = add i32 0,0
    %r246 = add i32 0,0
    %r247 = add i32 0,0
    %r248 = add i32 0,0
    %r249 = add i32 0,0
    %r250 = add i32 0,0
    %r251 = add i32 0,0
    %r252 = add i32 0,0
    %r253 = add i32 0,0
    %r254 = add i32 0,0
    %r255 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r238, i32 %r239, i32 %r240, i32 %r241, i32 %r242, i32 %r243, i32 %r244, i32 %r245, i32 %r246, i32 %r247, i32 %r248, i32 %r249, i32 %r250, i32 %r251, i32 %r252, i32 %r253, i32 %r254
    %r256 = add i32 0,0
    %r257 = add i32 0,0
    %r258 = add i32 0,0
    %r259 = add i32 0,0
    %r260 = add i32 0,0
    %r261 = add i32 0,0
    %r262 = add i32 0,0
    %r263 = add i32 0,0
    %r264 = add i32 0,0
    %r265 = add i32 0,0
    %r266 = add i32 0,0
    %r267 = add i32 0,0
    %r268 = add i32 0,0
    %r269 = add i32 0,0
    %r270 = add i32 0,0
    %r271 = add i32 0,0
    %r272 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r256, i32 %r257, i32 %r258, i32 %r259, i32 %r260, i32 %r261, i32 %r262, i32 %r263, i32 %r264, i32 %r265, i32 %r266, i32 %r267, i32 %r268, i32 %r269, i32 %r270, i32 %r271
    %r273 = add i32 0,0
    %r274 = add i32 0,0
    %r275 = add i32 0,0
    %r276 = add i32 0,0
    %r277 = add i32 0,0
    %r278 = add i32 0,0
    %r279 = add i32 0,0
    %r280 = add i32 0,0
    %r281 = add i32 0,0
    %r282 = add i32 0,0
    %r283 = add i32 0,0
    %r284 = add i32 0,0
    %r285 = add i32 0,0
    %r286 = add i32 0,0
    %r287 = add i32 0,0
    %r288 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r273, i32 %r274, i32 %r275, i32 %r276, i32 %r277, i32 %r278, i32 %r279, i32 %r280, i32 %r281, i32 %r282, i32 %r283, i32 %r284, i32 %r285, i32 %r286, i32 %r287
    %r289 = add i32 0,0
    %r290 = add i32 0,0
    %r291 = add i32 0,0
    %r292 = add i32 0,0
    %r293 = add i32 0,0
    %r294 = add i32 0,0
    %r295 = add i32 0,0
    %r296 = add i32 0,0
    %r297 = add i32 0,0
    %r298 = add i32 0,0
    %r299 = add i32 0,0
    %r300 = add i32 0,0
    %r301 = add i32 0,0
    %r302 = add i32 0,0
    %r303 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r289, i32 %r290, i32 %r291, i32 %r292, i32 %r293, i32 %r294, i32 %r295, i32 %r296, i32 %r297, i32 %r298, i32 %r299, i32 %r300, i32 %r301, i32 %r302
    %r304 = add i32 0,0
    %r305 = add i32 0,0
    %r306 = add i32 0,0
    %r307 = add i32 0,0
    %r308 = add i32 0,0
    %r309 = add i32 0,0
    %r310 = add i32 0,0
    %r311 = add i32 0,0
    %r312 = add i32 0,0
    %r313 = add i32 0,0
    %r314 = add i32 0,0
    %r315 = add i32 0,0
    %r316 = add i32 0,0
    %r317 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r304, i32 %r305, i32 %r306, i32 %r307, i32 %r308, i32 %r309, i32 %r310, i32 %r311, i32 %r312, i32 %r313, i32 %r314, i32 %r315, i32 %r316
    %r318 = add i32 0,0
    %r319 = add i32 0,0
    %r320 = add i32 0,0
    %r321 = add i32 0,0
    %r322 = add i32 0,0
    %r323 = add i32 0,0
    %r324 = add i32 0,0
    %r325 = add i32 0,0
    %r326 = add i32 0,0
    %r327 = add i32 0,0
    %r328 = add i32 0,0
    %r329 = add i32 0,0
    %r330 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r318, i32 %r319, i32 %r320, i32 %r321, i32 %r322, i32 %r323, i32 %r324, i32 %r325, i32 %r326, i32 %r327, i32 %r328, i32 %r329
    %r331 = add i32 0,0
    %r332 = add i32 0,0
    %r333 = add i32 0,0
    %r334 = add i32 0,0
    %r335 = add i32 0,0
    %r336 = add i32 0,0
    %r337 = add i32 0,0
    %r338 = add i32 0,0
    %r339 = add i32 0,0
    %r340 = add i32 0,0
    %r341 = add i32 0,0
    %r342 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r331, i32 %r332, i32 %r333, i32 %r334, i32 %r335, i32 %r336, i32 %r337, i32 %r338, i32 %r339, i32 %r340, i32 %r341
    %r343 = add i32 0,0
    %r344 = add i32 0,0
    %r345 = add i32 0,0
    %r346 = add i32 0,0
    %r347 = add i32 0,0
    %r348 = add i32 0,0
    %r349 = add i32 0,0
    %r350 = add i32 0,0
    %r351 = add i32 0,0
    %r352 = add i32 0,0
    %r353 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r343, i32 %r344, i32 %r345, i32 %r346, i32 %r347, i32 %r348, i32 %r349, i32 %r350, i32 %r351, i32 %r352
    %r354 = add i32 0,0
    %r355 = add i32 0,0
    %r356 = add i32 0,0
    %r357 = add i32 0,0
    %r358 = add i32 0,0
    %r359 = add i32 0,0
    %r360 = add i32 0,0
    %r361 = add i32 0,0
    %r362 = add i32 0,0
    %r363 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r354, i32 %r355, i32 %r356, i32 %r357, i32 %r358, i32 %r359, i32 %r360, i32 %r361, i32 %r362
    %r364 = add i32 0,0
    %r365 = add i32 0,0
    %r366 = add i32 0,0
    %r367 = add i32 0,0
    %r368 = add i32 0,0
    %r369 = add i32 0,0
    %r370 = add i32 0,0
    %r371 = add i32 0,0
    %r372 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r364, i32 %r365, i32 %r366, i32 %r367, i32 %r368, i32 %r369, i32 %r370, i32 %r371
    %r373 = add i32 0,0
    %r374 = add i32 0,0
    %r375 = add i32 0,0
    %r376 = add i32 0,0
    %r377 = add i32 0,0
    %r378 = add i32 0,0
    %r379 = add i32 0,0
    %r380 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r373, i32 %r374, i32 %r375, i32 %r376, i32 %r377, i32 %r378, i32 %r379
    %r381 = add i32 0,0
    %r382 = add i32 0,0
    %r383 = add i32 0,0
    %r384 = add i32 0,0
    %r385 = add i32 0,0
    %r386 = add i32 0,0
    %r387 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r381, i32 %r382, i32 %r383, i32 %r384, i32 %r385, i32 %r386
    %r388 = add i32 0,0
    %r389 = add i32 0,0
    %r390 = add i32 0,0
    %r391 = add i32 0,0
    %r392 = add i32 0,0
    %r393 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r388, i32 %r389, i32 %r390, i32 %r391, i32 %r392
    %r394 = add i32 0,0
    %r395 = add i32 0,0
    %r396 = add i32 0,0
    %r397 = add i32 0,0
    %r398 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r394, i32 %r395, i32 %r396, i32 %r397
    %r399 = add i32 0,0
    %r400 = add i32 0,0
    %r401 = add i32 0,0
    %r402 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r399, i32 %r400, i32 %r401
    %r403 = add i32 0,0
    %r404 = add i32 0,0
    %r405 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r403, i32 %r404
    %r406 = add i32 0,0
    %r407 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r406
    %r408 = getelementptr i32, ptr %r0, i32 0
    %r409 = call i32 @sum(ptr %r237,ptr %r255,ptr %r272,ptr %r288,ptr %r303,ptr %r317,ptr %r330,ptr %r342,ptr %r353,ptr %r363,ptr %r372,ptr %r380,ptr %r387,ptr %r393,ptr %r398,ptr %r402,ptr %r405,ptr %r407,ptr %r408)
    call void @putint(i32 %r409)
    %r410 = add i32 0,0
    ret i32 %r410
L4:
    %r14 = load i32, ptr %r12
    %r15 = add i32 0,2
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L5, label %L6
L5:
    %r20 = add i32 0,0
    store i32 %r20, ptr %r19
    br label %L7
L6:
    %r216 = load i32, ptr %r5
    %r217 = add i32 0,1
    %r218 = add i32 %r216,%r217
    store i32 %r218, ptr %r5
    br label %L1
L7:
    %r21 = load i32, ptr %r19
    %r22 = add i32 0,2
    %r23 = icmp slt i32 %r21,%r22
    br i1 %r23, label %L8, label %L9
L8:
    %r27 = add i32 0,0
    store i32 %r27, ptr %r26
    br label %L10
L9:
    %r213 = load i32, ptr %r12
    %r214 = add i32 0,1
    %r215 = add i32 %r213,%r214
    store i32 %r215, ptr %r12
    br label %L4
L10:
    %r28 = load i32, ptr %r26
    %r29 = add i32 0,2
    %r30 = icmp slt i32 %r28,%r29
    br i1 %r30, label %L11, label %L12
L11:
    %r34 = add i32 0,0
    store i32 %r34, ptr %r33
    br label %L13
L12:
    %r210 = load i32, ptr %r19
    %r211 = add i32 0,1
    %r212 = add i32 %r210,%r211
    store i32 %r212, ptr %r19
    br label %L7
L13:
    %r35 = load i32, ptr %r33
    %r36 = add i32 0,2
    %r37 = icmp slt i32 %r35,%r36
    br i1 %r37, label %L14, label %L15
L14:
    %r41 = add i32 0,0
    store i32 %r41, ptr %r40
    br label %L16
L15:
    %r207 = load i32, ptr %r26
    %r208 = add i32 0,1
    %r209 = add i32 %r207,%r208
    store i32 %r209, ptr %r26
    br label %L10
L16:
    %r42 = load i32, ptr %r40
    %r43 = add i32 0,2
    %r44 = icmp slt i32 %r42,%r43
    br i1 %r44, label %L17, label %L18
L17:
    %r48 = add i32 0,0
    store i32 %r48, ptr %r47
    br label %L19
L18:
    %r204 = load i32, ptr %r33
    %r205 = add i32 0,1
    %r206 = add i32 %r204,%r205
    store i32 %r206, ptr %r33
    br label %L13
L19:
    %r49 = load i32, ptr %r47
    %r50 = add i32 0,2
    %r51 = icmp slt i32 %r49,%r50
    br i1 %r51, label %L20, label %L21
L20:
    %r55 = add i32 0,0
    store i32 %r55, ptr %r54
    br label %L22
L21:
    %r201 = load i32, ptr %r40
    %r202 = add i32 0,1
    %r203 = add i32 %r201,%r202
    store i32 %r203, ptr %r40
    br label %L16
L22:
    %r56 = load i32, ptr %r54
    %r57 = add i32 0,2
    %r58 = icmp slt i32 %r56,%r57
    br i1 %r58, label %L23, label %L24
L23:
    %r62 = add i32 0,0
    store i32 %r62, ptr %r61
    br label %L25
L24:
    %r198 = load i32, ptr %r47
    %r199 = add i32 0,1
    %r200 = add i32 %r198,%r199
    store i32 %r200, ptr %r47
    br label %L19
L25:
    %r63 = load i32, ptr %r61
    %r64 = add i32 0,2
    %r65 = icmp slt i32 %r63,%r64
    br i1 %r65, label %L26, label %L27
L26:
    %r69 = add i32 0,0
    store i32 %r69, ptr %r68
    br label %L28
L27:
    %r195 = load i32, ptr %r54
    %r196 = add i32 0,1
    %r197 = add i32 %r195,%r196
    store i32 %r197, ptr %r54
    br label %L22
L28:
    %r70 = load i32, ptr %r68
    %r71 = add i32 0,2
    %r72 = icmp slt i32 %r70,%r71
    br i1 %r72, label %L29, label %L30
L29:
    %r76 = add i32 0,0
    store i32 %r76, ptr %r75
    br label %L31
L30:
    %r192 = load i32, ptr %r61
    %r193 = add i32 0,1
    %r194 = add i32 %r192,%r193
    store i32 %r194, ptr %r61
    br label %L25
L31:
    %r77 = load i32, ptr %r75
    %r78 = add i32 0,2
    %r79 = icmp slt i32 %r77,%r78
    br i1 %r79, label %L32, label %L33
L32:
    %r83 = add i32 0,0
    store i32 %r83, ptr %r82
    br label %L34
L33:
    %r189 = load i32, ptr %r68
    %r190 = add i32 0,1
    %r191 = add i32 %r189,%r190
    store i32 %r191, ptr %r68
    br label %L28
L34:
    %r84 = load i32, ptr %r82
    %r85 = add i32 0,2
    %r86 = icmp slt i32 %r84,%r85
    br i1 %r86, label %L35, label %L36
L35:
    %r90 = add i32 0,0
    store i32 %r90, ptr %r89
    br label %L37
L36:
    %r186 = load i32, ptr %r75
    %r187 = add i32 0,1
    %r188 = add i32 %r186,%r187
    store i32 %r188, ptr %r75
    br label %L31
L37:
    %r91 = load i32, ptr %r89
    %r92 = add i32 0,2
    %r93 = icmp slt i32 %r91,%r92
    br i1 %r93, label %L38, label %L39
L38:
    %r97 = add i32 0,0
    store i32 %r97, ptr %r96
    br label %L40
L39:
    %r183 = load i32, ptr %r82
    %r184 = add i32 0,1
    %r185 = add i32 %r183,%r184
    store i32 %r185, ptr %r82
    br label %L34
L40:
    %r98 = load i32, ptr %r96
    %r99 = add i32 0,2
    %r100 = icmp slt i32 %r98,%r99
    br i1 %r100, label %L41, label %L42
L41:
    %r104 = add i32 0,0
    store i32 %r104, ptr %r103
    br label %L43
L42:
    %r180 = load i32, ptr %r89
    %r181 = add i32 0,1
    %r182 = add i32 %r180,%r181
    store i32 %r182, ptr %r89
    br label %L37
L43:
    %r105 = load i32, ptr %r103
    %r106 = add i32 0,2
    %r107 = icmp slt i32 %r105,%r106
    br i1 %r107, label %L44, label %L45
L44:
    %r111 = add i32 0,0
    store i32 %r111, ptr %r110
    br label %L46
L45:
    %r177 = load i32, ptr %r96
    %r178 = add i32 0,1
    %r179 = add i32 %r177,%r178
    store i32 %r179, ptr %r96
    br label %L40
L46:
    %r112 = load i32, ptr %r110
    %r113 = add i32 0,2
    %r114 = icmp slt i32 %r112,%r113
    br i1 %r114, label %L47, label %L48
L47:
    %r118 = add i32 0,0
    store i32 %r118, ptr %r117
    br label %L49
L48:
    %r174 = load i32, ptr %r103
    %r175 = add i32 0,1
    %r176 = add i32 %r174,%r175
    store i32 %r176, ptr %r103
    br label %L43
L49:
    %r119 = load i32, ptr %r117
    %r120 = add i32 0,2
    %r121 = icmp slt i32 %r119,%r120
    br i1 %r121, label %L50, label %L51
L50:
    %r125 = add i32 0,0
    store i32 %r125, ptr %r124
    br label %L52
L51:
    %r171 = load i32, ptr %r110
    %r172 = add i32 0,1
    %r173 = add i32 %r171,%r172
    store i32 %r173, ptr %r110
    br label %L46
L52:
    %r126 = load i32, ptr %r124
    %r127 = add i32 0,2
    %r128 = icmp slt i32 %r126,%r127
    br i1 %r128, label %L53, label %L54
L53:
    %r132 = add i32 0,0
    store i32 %r132, ptr %r131
    br label %L55
L54:
    %r168 = load i32, ptr %r117
    %r169 = add i32 0,1
    %r170 = add i32 %r168,%r169
    store i32 %r170, ptr %r117
    br label %L49
L55:
    %r133 = load i32, ptr %r131
    %r134 = add i32 0,2
    %r135 = icmp slt i32 %r133,%r134
    br i1 %r135, label %L56, label %L57
L56:
    %r138 = load i32, ptr %r3
    %r139 = load i32, ptr %r5
    %r140 = load i32, ptr %r12
    %r141 = load i32, ptr %r19
    %r142 = load i32, ptr %r26
    %r143 = load i32, ptr %r33
    %r144 = load i32, ptr %r40
    %r145 = load i32, ptr %r47
    %r146 = load i32, ptr %r54
    %r147 = load i32, ptr %r61
    %r148 = load i32, ptr %r68
    %r149 = load i32, ptr %r75
    %r150 = load i32, ptr %r82
    %r151 = load i32, ptr %r89
    %r152 = load i32, ptr %r96
    %r153 = load i32, ptr %r103
    %r154 = load i32, ptr %r110
    %r155 = load i32, ptr %r117
    %r156 = load i32, ptr %r124
    %r157 = load i32, ptr %r131
    %r158 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r139, i32 %r140, i32 %r141, i32 %r142, i32 %r143, i32 %r144, i32 %r145, i32 %r146, i32 %r147, i32 %r148, i32 %r149, i32 %r150, i32 %r151, i32 %r152, i32 %r153, i32 %r154, i32 %r155, i32 %r156, i32 %r157
    store i32 %r138, ptr %r158
    %r159 = load i32, ptr %r3
    %r160 = add i32 0,1
    %r161 = add i32 %r159,%r160
    store i32 %r161, ptr %r3
    %r162 = load i32, ptr %r131
    %r163 = add i32 0,1
    %r164 = add i32 %r162,%r163
    store i32 %r164, ptr %r131
    br label %L55
L57:
    %r165 = load i32, ptr %r124
    %r166 = add i32 0,1
    %r167 = add i32 %r165,%r166
    store i32 %r167, ptr %r124
    br label %L52
}
