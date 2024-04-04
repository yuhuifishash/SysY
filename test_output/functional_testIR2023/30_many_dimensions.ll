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
define i32 @sum(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8,ptr %r9,ptr %r10,ptr %r11,ptr %r12,ptr %r13,ptr %r14,ptr %r15,ptr %r16,ptr %r17,ptr %r18)
{
L0:  ;
    br label %L1
L1:  ;
    %r19 = add i32 0,0
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = add i32 1,0
    %r23 = add i32 0,0
    %r24 = getelementptr [2 x i32], ptr %r1, i32 %r22, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = add i32 %r21,%r25
    %r27 = add i32 0,0
    %r28 = add i32 0,0
    %r29 = add i32 1,0
    %r30 = getelementptr [2 x [2 x i32]], ptr %r2, i32 %r27, i32 %r28, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = add i32 %r26,%r31
    %r33 = add i32 1,0
    %r34 = add i32 0,0
    %r35 = add i32 1,0
    %r36 = add i32 0,0
    %r37 = getelementptr [2 x [2 x [2 x i32]]], ptr %r3, i32 %r33, i32 %r34, i32 %r35, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = add i32 %r32,%r38
    %r40 = add i32 0,0
    %r41 = add i32 0,0
    %r42 = add i32 1,0
    %r43 = add i32 1,0
    %r44 = add i32 0,0
    %r45 = getelementptr [2 x [2 x [2 x [2 x i32]]]], ptr %r4, i32 %r40, i32 %r41, i32 %r42, i32 %r43, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = add i32 %r39,%r46
    %r48 = add i32 1,0
    %r49 = add i32 1,0
    %r50 = add i32 1,0
    %r51 = add i32 0,0
    %r52 = add i32 0,0
    %r53 = add i32 1,0
    %r54 = getelementptr [2 x [2 x [2 x [2 x [2 x i32]]]]], ptr %r5, i32 %r48, i32 %r49, i32 %r50, i32 %r51, i32 %r52, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = add i32 %r47,%r55
    %r57 = add i32 0,0
    %r58 = add i32 0,0
    %r59 = add i32 0,0
    %r60 = add i32 1,0
    %r61 = add i32 1,0
    %r62 = add i32 1,0
    %r63 = add i32 0,0
    %r64 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]], ptr %r6, i32 %r57, i32 %r58, i32 %r59, i32 %r60, i32 %r61, i32 %r62, i32 %r63
    %r65 = load i32, ptr %r64
    %r66 = add i32 %r56,%r65
    %r67 = add i32 1,0
    %r68 = add i32 1,0
    %r69 = add i32 1,0
    %r70 = add i32 1,0
    %r71 = add i32 0,0
    %r72 = add i32 0,0
    %r73 = add i32 0,0
    %r74 = add i32 1,0
    %r75 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]], ptr %r7, i32 %r67, i32 %r68, i32 %r69, i32 %r70, i32 %r71, i32 %r72, i32 %r73, i32 %r74
    %r76 = load i32, ptr %r75
    %r77 = add i32 %r66,%r76
    %r78 = add i32 0,0
    %r79 = add i32 0,0
    %r80 = add i32 0,0
    %r81 = add i32 1,0
    %r82 = add i32 1,0
    %r83 = add i32 1,0
    %r84 = add i32 0,0
    %r85 = add i32 0,0
    %r86 = add i32 0,0
    %r87 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]], ptr %r8, i32 %r78, i32 %r79, i32 %r80, i32 %r81, i32 %r82, i32 %r83, i32 %r84, i32 %r85, i32 %r86
    %r88 = load i32, ptr %r87
    %r89 = add i32 %r77,%r88
    %r90 = add i32 0,0
    %r91 = add i32 0,0
    %r92 = add i32 1,0
    %r93 = add i32 1,0
    %r94 = add i32 0,0
    %r95 = add i32 0,0
    %r96 = add i32 1,0
    %r97 = add i32 0,0
    %r98 = add i32 0,0
    %r99 = add i32 1,0
    %r100 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]], ptr %r9, i32 %r90, i32 %r91, i32 %r92, i32 %r93, i32 %r94, i32 %r95, i32 %r96, i32 %r97, i32 %r98, i32 %r99
    %r101 = load i32, ptr %r100
    %r102 = add i32 %r89,%r101
    %r103 = add i32 0,0
    %r104 = add i32 0,0
    %r105 = add i32 1,0
    %r106 = add i32 1,0
    %r107 = add i32 1,0
    %r108 = add i32 1,0
    %r109 = add i32 1,0
    %r110 = add i32 0,0
    %r111 = add i32 0,0
    %r112 = add i32 1,0
    %r113 = add i32 1,0
    %r114 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]], ptr %r10, i32 %r103, i32 %r104, i32 %r105, i32 %r106, i32 %r107, i32 %r108, i32 %r109, i32 %r110, i32 %r111, i32 %r112, i32 %r113
    %r115 = load i32, ptr %r114
    %r116 = add i32 %r102,%r115
    %r117 = add i32 0,0
    %r118 = add i32 0,0
    %r119 = add i32 1,0
    %r120 = add i32 1,0
    %r121 = add i32 0,0
    %r122 = add i32 0,0
    %r123 = add i32 1,0
    %r124 = add i32 0,0
    %r125 = add i32 0,0
    %r126 = add i32 1,0
    %r127 = add i32 1,0
    %r128 = add i32 0,0
    %r129 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]], ptr %r11, i32 %r117, i32 %r118, i32 %r119, i32 %r120, i32 %r121, i32 %r122, i32 %r123, i32 %r124, i32 %r125, i32 %r126, i32 %r127, i32 %r128
    %r130 = load i32, ptr %r129
    %r131 = add i32 %r116,%r130
    %r132 = add i32 1,0
    %r133 = add i32 1,0
    %r134 = add i32 0,0
    %r135 = add i32 0,0
    %r136 = add i32 1,0
    %r137 = add i32 1,0
    %r138 = add i32 1,0
    %r139 = add i32 0,0
    %r140 = add i32 0,0
    %r141 = add i32 1,0
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
    %r155 = add i32 1,0
    %r156 = add i32 1,0
    %r157 = add i32 1,0
    %r158 = add i32 1,0
    %r159 = add i32 1,0
    %r160 = add i32 1,0
    %r161 = add i32 1,0
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
    %r175 = add i32 1,0
    %r176 = add i32 1,0
    %r177 = add i32 1,0
    %r178 = add i32 1,0
    %r179 = add i32 1,0
    %r180 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]], ptr %r14, i32 %r165, i32 %r166, i32 %r167, i32 %r168, i32 %r169, i32 %r170, i32 %r171, i32 %r172, i32 %r173, i32 %r174, i32 %r175, i32 %r176, i32 %r177, i32 %r178, i32 %r179
    %r181 = load i32, ptr %r180
    %r182 = add i32 %r164,%r181
    %r183 = add i32 1,0
    %r184 = add i32 1,0
    %r185 = add i32 1,0
    %r186 = add i32 1,0
    %r187 = add i32 0,0
    %r188 = add i32 0,0
    %r189 = add i32 0,0
    %r190 = add i32 0,0
    %r191 = add i32 1,0
    %r192 = add i32 1,0
    %r193 = add i32 1,0
    %r194 = add i32 0,0
    %r195 = add i32 0,0
    %r196 = add i32 1,0
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
    %r207 = add i32 1,0
    %r208 = add i32 1,0
    %r209 = add i32 1,0
    %r210 = add i32 1,0
    %r211 = add i32 1,0
    %r212 = add i32 0,0
    %r213 = add i32 0,0
    %r214 = add i32 1,0
    %r215 = add i32 0,0
    %r216 = add i32 1,0
    %r217 = add i32 0,0
    %r218 = add i32 1,0
    %r219 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]], ptr %r16, i32 %r202, i32 %r203, i32 %r204, i32 %r205, i32 %r206, i32 %r207, i32 %r208, i32 %r209, i32 %r210, i32 %r211, i32 %r212, i32 %r213, i32 %r214, i32 %r215, i32 %r216, i32 %r217, i32 %r218
    %r220 = load i32, ptr %r219
    %r221 = add i32 %r201,%r220
    %r222 = add i32 1,0
    %r223 = add i32 1,0
    %r224 = add i32 0,0
    %r225 = add i32 0,0
    %r226 = add i32 1,0
    %r227 = add i32 0,0
    %r228 = add i32 1,0
    %r229 = add i32 0,0
    %r230 = add i32 0,0
    %r231 = add i32 0,0
    %r232 = add i32 1,0
    %r233 = add i32 1,0
    %r234 = add i32 1,0
    %r235 = add i32 1,0
    %r236 = add i32 0,0
    %r237 = add i32 0,0
    %r238 = add i32 1,0
    %r239 = add i32 1,0
    %r240 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]], ptr %r17, i32 %r222, i32 %r223, i32 %r224, i32 %r225, i32 %r226, i32 %r227, i32 %r228, i32 %r229, i32 %r230, i32 %r231, i32 %r232, i32 %r233, i32 %r234, i32 %r235, i32 %r236, i32 %r237, i32 %r238, i32 %r239
    %r241 = load i32, ptr %r240
    %r242 = add i32 %r221,%r241
    %r243 = add i32 0,0
    %r244 = add i32 0,0
    %r245 = add i32 1,0
    %r246 = add i32 0,0
    %r247 = add i32 0,0
    %r248 = add i32 0,0
    %r249 = add i32 1,0
    %r250 = add i32 0,0
    %r251 = add i32 0,0
    %r252 = add i32 1,0
    %r253 = add i32 1,0
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
L0:  ;
    %r95 = alloca i32
    %r90 = alloca i32
    %r85 = alloca i32
    %r80 = alloca i32
    %r75 = alloca i32
    %r70 = alloca i32
    %r65 = alloca i32
    %r60 = alloca i32
    %r55 = alloca i32
    %r50 = alloca i32
    %r45 = alloca i32
    %r40 = alloca i32
    %r35 = alloca i32
    %r30 = alloca i32
    %r25 = alloca i32
    %r20 = alloca i32
    %r15 = alloca i32
    %r10 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r0 = alloca [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 2097152,i1 0)
    %r1 = add i32 0,0
    %r2 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
    store i32 %r1, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    br label %L2
L2:  ;
    %r7 = load i32, ptr %r5
    %r8 = add i32 2,0
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L3, label %L4
L3:  ;
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    br label %L5
L4:  ;
    %r181 = add i32 0,0
    %r182 = add i32 0,0
    %r183 = add i32 0,0
    %r184 = add i32 0,0
    %r185 = add i32 0,0
    %r186 = add i32 0,0
    %r187 = add i32 0,0
    %r188 = add i32 0,0
    %r189 = add i32 0,0
    %r190 = add i32 0,0
    %r191 = add i32 0,0
    %r192 = add i32 0,0
    %r193 = add i32 0,0
    %r194 = add i32 0,0
    %r195 = add i32 0,0
    %r196 = add i32 0,0
    %r197 = add i32 0,0
    %r198 = add i32 0,0
    %r199 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r181, i32 %r182, i32 %r183, i32 %r184, i32 %r185, i32 %r186, i32 %r187, i32 %r188, i32 %r189, i32 %r190, i32 %r191, i32 %r192, i32 %r193, i32 %r194, i32 %r195, i32 %r196, i32 %r197, i32 %r198
    %r200 = add i32 0,0
    %r201 = add i32 0,0
    %r202 = add i32 0,0
    %r203 = add i32 0,0
    %r204 = add i32 0,0
    %r205 = add i32 0,0
    %r206 = add i32 0,0
    %r207 = add i32 0,0
    %r208 = add i32 0,0
    %r209 = add i32 0,0
    %r210 = add i32 0,0
    %r211 = add i32 0,0
    %r212 = add i32 0,0
    %r213 = add i32 0,0
    %r214 = add i32 0,0
    %r215 = add i32 0,0
    %r216 = add i32 0,0
    %r217 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r200, i32 %r201, i32 %r202, i32 %r203, i32 %r204, i32 %r205, i32 %r206, i32 %r207, i32 %r208, i32 %r209, i32 %r210, i32 %r211, i32 %r212, i32 %r213, i32 %r214, i32 %r215, i32 %r216
    %r218 = add i32 0,0
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
    %r234 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r218, i32 %r219, i32 %r220, i32 %r221, i32 %r222, i32 %r223, i32 %r224, i32 %r225, i32 %r226, i32 %r227, i32 %r228, i32 %r229, i32 %r230, i32 %r231, i32 %r232, i32 %r233
    %r235 = add i32 0,0
    %r236 = add i32 0,0
    %r237 = add i32 0,0
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
    %r250 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r235, i32 %r236, i32 %r237, i32 %r238, i32 %r239, i32 %r240, i32 %r241, i32 %r242, i32 %r243, i32 %r244, i32 %r245, i32 %r246, i32 %r247, i32 %r248, i32 %r249
    %r251 = add i32 0,0
    %r252 = add i32 0,0
    %r253 = add i32 0,0
    %r254 = add i32 0,0
    %r255 = add i32 0,0
    %r256 = add i32 0,0
    %r257 = add i32 0,0
    %r258 = add i32 0,0
    %r259 = add i32 0,0
    %r260 = add i32 0,0
    %r261 = add i32 0,0
    %r262 = add i32 0,0
    %r263 = add i32 0,0
    %r264 = add i32 0,0
    %r265 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r251, i32 %r252, i32 %r253, i32 %r254, i32 %r255, i32 %r256, i32 %r257, i32 %r258, i32 %r259, i32 %r260, i32 %r261, i32 %r262, i32 %r263, i32 %r264
    %r266 = add i32 0,0
    %r267 = add i32 0,0
    %r268 = add i32 0,0
    %r269 = add i32 0,0
    %r270 = add i32 0,0
    %r271 = add i32 0,0
    %r272 = add i32 0,0
    %r273 = add i32 0,0
    %r274 = add i32 0,0
    %r275 = add i32 0,0
    %r276 = add i32 0,0
    %r277 = add i32 0,0
    %r278 = add i32 0,0
    %r279 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r266, i32 %r267, i32 %r268, i32 %r269, i32 %r270, i32 %r271, i32 %r272, i32 %r273, i32 %r274, i32 %r275, i32 %r276, i32 %r277, i32 %r278
    %r280 = add i32 0,0
    %r281 = add i32 0,0
    %r282 = add i32 0,0
    %r283 = add i32 0,0
    %r284 = add i32 0,0
    %r285 = add i32 0,0
    %r286 = add i32 0,0
    %r287 = add i32 0,0
    %r288 = add i32 0,0
    %r289 = add i32 0,0
    %r290 = add i32 0,0
    %r291 = add i32 0,0
    %r292 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r280, i32 %r281, i32 %r282, i32 %r283, i32 %r284, i32 %r285, i32 %r286, i32 %r287, i32 %r288, i32 %r289, i32 %r290, i32 %r291
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
    %r303 = add i32 0,0
    %r304 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r293, i32 %r294, i32 %r295, i32 %r296, i32 %r297, i32 %r298, i32 %r299, i32 %r300, i32 %r301, i32 %r302, i32 %r303
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
    %r315 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r305, i32 %r306, i32 %r307, i32 %r308, i32 %r309, i32 %r310, i32 %r311, i32 %r312, i32 %r313, i32 %r314
    %r316 = add i32 0,0
    %r317 = add i32 0,0
    %r318 = add i32 0,0
    %r319 = add i32 0,0
    %r320 = add i32 0,0
    %r321 = add i32 0,0
    %r322 = add i32 0,0
    %r323 = add i32 0,0
    %r324 = add i32 0,0
    %r325 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r316, i32 %r317, i32 %r318, i32 %r319, i32 %r320, i32 %r321, i32 %r322, i32 %r323, i32 %r324
    %r326 = add i32 0,0
    %r327 = add i32 0,0
    %r328 = add i32 0,0
    %r329 = add i32 0,0
    %r330 = add i32 0,0
    %r331 = add i32 0,0
    %r332 = add i32 0,0
    %r333 = add i32 0,0
    %r334 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r326, i32 %r327, i32 %r328, i32 %r329, i32 %r330, i32 %r331, i32 %r332, i32 %r333
    %r335 = add i32 0,0
    %r336 = add i32 0,0
    %r337 = add i32 0,0
    %r338 = add i32 0,0
    %r339 = add i32 0,0
    %r340 = add i32 0,0
    %r341 = add i32 0,0
    %r342 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r335, i32 %r336, i32 %r337, i32 %r338, i32 %r339, i32 %r340, i32 %r341
    %r343 = add i32 0,0
    %r344 = add i32 0,0
    %r345 = add i32 0,0
    %r346 = add i32 0,0
    %r347 = add i32 0,0
    %r348 = add i32 0,0
    %r349 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r343, i32 %r344, i32 %r345, i32 %r346, i32 %r347, i32 %r348
    %r350 = add i32 0,0
    %r351 = add i32 0,0
    %r352 = add i32 0,0
    %r353 = add i32 0,0
    %r354 = add i32 0,0
    %r355 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r350, i32 %r351, i32 %r352, i32 %r353, i32 %r354
    %r356 = add i32 0,0
    %r357 = add i32 0,0
    %r358 = add i32 0,0
    %r359 = add i32 0,0
    %r360 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r356, i32 %r357, i32 %r358, i32 %r359
    %r361 = add i32 0,0
    %r362 = add i32 0,0
    %r363 = add i32 0,0
    %r364 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r361, i32 %r362, i32 %r363
    %r365 = add i32 0,0
    %r366 = add i32 0,0
    %r367 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r365, i32 %r366
    %r368 = add i32 0,0
    %r369 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r368
    %r370 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0
    %r371 = call i32 @sum(ptr %r199,ptr %r217,ptr %r234,ptr %r250,ptr %r265,ptr %r279,ptr %r292,ptr %r304,ptr %r315,ptr %r325,ptr %r334,ptr %r342,ptr %r349,ptr %r355,ptr %r360,ptr %r364,ptr %r367,ptr %r369,ptr %r370)
    call void @putint(i32 %r371)
    %r372 = add i32 0,0
    ret i32 %r372
L5:  ;
    %r12 = load i32, ptr %r10
    %r13 = add i32 2,0
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L6, label %L7
L6:  ;
    %r16 = add i32 0,0
    store i32 %r16, ptr %r15
    br label %L8
L7:  ;
    %r178 = load i32, ptr %r5
    %r179 = add i32 1,0
    %r180 = add i32 %r178,%r179
    store i32 %r180, ptr %r5
    br label %L2
L8:  ;
    %r17 = load i32, ptr %r15
    %r18 = add i32 2,0
    %r19 = icmp slt i32 %r17,%r18
    br i1 %r19, label %L9, label %L10
L9:  ;
    %r21 = add i32 0,0
    store i32 %r21, ptr %r20
    br label %L11
L10:  ;
    %r175 = load i32, ptr %r10
    %r176 = add i32 1,0
    %r177 = add i32 %r175,%r176
    store i32 %r177, ptr %r10
    br label %L5
L11:  ;
    %r22 = load i32, ptr %r20
    %r23 = add i32 2,0
    %r24 = icmp slt i32 %r22,%r23
    br i1 %r24, label %L12, label %L13
L12:  ;
    %r26 = add i32 0,0
    store i32 %r26, ptr %r25
    br label %L14
L13:  ;
    %r172 = load i32, ptr %r15
    %r173 = add i32 1,0
    %r174 = add i32 %r172,%r173
    store i32 %r174, ptr %r15
    br label %L8
L14:  ;
    %r27 = load i32, ptr %r25
    %r28 = add i32 2,0
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L15, label %L16
L15:  ;
    %r31 = add i32 0,0
    store i32 %r31, ptr %r30
    br label %L17
L16:  ;
    %r169 = load i32, ptr %r20
    %r170 = add i32 1,0
    %r171 = add i32 %r169,%r170
    store i32 %r171, ptr %r20
    br label %L11
L17:  ;
    %r32 = load i32, ptr %r30
    %r33 = add i32 2,0
    %r34 = icmp slt i32 %r32,%r33
    br i1 %r34, label %L18, label %L19
L18:  ;
    %r36 = add i32 0,0
    store i32 %r36, ptr %r35
    br label %L20
L19:  ;
    %r166 = load i32, ptr %r25
    %r167 = add i32 1,0
    %r168 = add i32 %r166,%r167
    store i32 %r168, ptr %r25
    br label %L14
L20:  ;
    %r37 = load i32, ptr %r35
    %r38 = add i32 2,0
    %r39 = icmp slt i32 %r37,%r38
    br i1 %r39, label %L21, label %L22
L21:  ;
    %r41 = add i32 0,0
    store i32 %r41, ptr %r40
    br label %L23
L22:  ;
    %r163 = load i32, ptr %r30
    %r164 = add i32 1,0
    %r165 = add i32 %r163,%r164
    store i32 %r165, ptr %r30
    br label %L17
L23:  ;
    %r42 = load i32, ptr %r40
    %r43 = add i32 2,0
    %r44 = icmp slt i32 %r42,%r43
    br i1 %r44, label %L24, label %L25
L24:  ;
    %r46 = add i32 0,0
    store i32 %r46, ptr %r45
    br label %L26
L25:  ;
    %r160 = load i32, ptr %r35
    %r161 = add i32 1,0
    %r162 = add i32 %r160,%r161
    store i32 %r162, ptr %r35
    br label %L20
L26:  ;
    %r47 = load i32, ptr %r45
    %r48 = add i32 2,0
    %r49 = icmp slt i32 %r47,%r48
    br i1 %r49, label %L27, label %L28
L27:  ;
    %r51 = add i32 0,0
    store i32 %r51, ptr %r50
    br label %L29
L28:  ;
    %r157 = load i32, ptr %r40
    %r158 = add i32 1,0
    %r159 = add i32 %r157,%r158
    store i32 %r159, ptr %r40
    br label %L23
L29:  ;
    %r52 = load i32, ptr %r50
    %r53 = add i32 2,0
    %r54 = icmp slt i32 %r52,%r53
    br i1 %r54, label %L30, label %L31
L30:  ;
    %r56 = add i32 0,0
    store i32 %r56, ptr %r55
    br label %L32
L31:  ;
    %r154 = load i32, ptr %r45
    %r155 = add i32 1,0
    %r156 = add i32 %r154,%r155
    store i32 %r156, ptr %r45
    br label %L26
L32:  ;
    %r57 = load i32, ptr %r55
    %r58 = add i32 2,0
    %r59 = icmp slt i32 %r57,%r58
    br i1 %r59, label %L33, label %L34
L33:  ;
    %r61 = add i32 0,0
    store i32 %r61, ptr %r60
    br label %L35
L34:  ;
    %r151 = load i32, ptr %r50
    %r152 = add i32 1,0
    %r153 = add i32 %r151,%r152
    store i32 %r153, ptr %r50
    br label %L29
L35:  ;
    %r62 = load i32, ptr %r60
    %r63 = add i32 2,0
    %r64 = icmp slt i32 %r62,%r63
    br i1 %r64, label %L36, label %L37
L36:  ;
    %r66 = add i32 0,0
    store i32 %r66, ptr %r65
    br label %L38
L37:  ;
    %r148 = load i32, ptr %r55
    %r149 = add i32 1,0
    %r150 = add i32 %r148,%r149
    store i32 %r150, ptr %r55
    br label %L32
L38:  ;
    %r67 = load i32, ptr %r65
    %r68 = add i32 2,0
    %r69 = icmp slt i32 %r67,%r68
    br i1 %r69, label %L39, label %L40
L39:  ;
    %r71 = add i32 0,0
    store i32 %r71, ptr %r70
    br label %L41
L40:  ;
    %r145 = load i32, ptr %r60
    %r146 = add i32 1,0
    %r147 = add i32 %r145,%r146
    store i32 %r147, ptr %r60
    br label %L35
L41:  ;
    %r72 = load i32, ptr %r70
    %r73 = add i32 2,0
    %r74 = icmp slt i32 %r72,%r73
    br i1 %r74, label %L42, label %L43
L42:  ;
    %r76 = add i32 0,0
    store i32 %r76, ptr %r75
    br label %L44
L43:  ;
    %r142 = load i32, ptr %r65
    %r143 = add i32 1,0
    %r144 = add i32 %r142,%r143
    store i32 %r144, ptr %r65
    br label %L38
L44:  ;
    %r77 = load i32, ptr %r75
    %r78 = add i32 2,0
    %r79 = icmp slt i32 %r77,%r78
    br i1 %r79, label %L45, label %L46
L45:  ;
    %r81 = add i32 0,0
    store i32 %r81, ptr %r80
    br label %L47
L46:  ;
    %r139 = load i32, ptr %r70
    %r140 = add i32 1,0
    %r141 = add i32 %r139,%r140
    store i32 %r141, ptr %r70
    br label %L41
L47:  ;
    %r82 = load i32, ptr %r80
    %r83 = add i32 2,0
    %r84 = icmp slt i32 %r82,%r83
    br i1 %r84, label %L48, label %L49
L48:  ;
    %r86 = add i32 0,0
    store i32 %r86, ptr %r85
    br label %L50
L49:  ;
    %r136 = load i32, ptr %r75
    %r137 = add i32 1,0
    %r138 = add i32 %r136,%r137
    store i32 %r138, ptr %r75
    br label %L44
L50:  ;
    %r87 = load i32, ptr %r85
    %r88 = add i32 2,0
    %r89 = icmp slt i32 %r87,%r88
    br i1 %r89, label %L51, label %L52
L51:  ;
    %r91 = add i32 0,0
    store i32 %r91, ptr %r90
    br label %L53
L52:  ;
    %r133 = load i32, ptr %r80
    %r134 = add i32 1,0
    %r135 = add i32 %r133,%r134
    store i32 %r135, ptr %r80
    br label %L47
L53:  ;
    %r92 = load i32, ptr %r90
    %r93 = add i32 2,0
    %r94 = icmp slt i32 %r92,%r93
    br i1 %r94, label %L54, label %L55
L54:  ;
    %r96 = add i32 0,0
    store i32 %r96, ptr %r95
    br label %L56
L55:  ;
    %r130 = load i32, ptr %r85
    %r131 = add i32 1,0
    %r132 = add i32 %r130,%r131
    store i32 %r132, ptr %r85
    br label %L50
L56:  ;
    %r97 = load i32, ptr %r95
    %r98 = add i32 2,0
    %r99 = icmp slt i32 %r97,%r98
    br i1 %r99, label %L57, label %L58
L57:  ;
    %r100 = load i32, ptr %r5
    %r101 = load i32, ptr %r10
    %r102 = load i32, ptr %r15
    %r103 = load i32, ptr %r20
    %r104 = load i32, ptr %r25
    %r105 = load i32, ptr %r30
    %r106 = load i32, ptr %r35
    %r107 = load i32, ptr %r40
    %r108 = load i32, ptr %r45
    %r109 = load i32, ptr %r50
    %r110 = load i32, ptr %r55
    %r111 = load i32, ptr %r60
    %r112 = load i32, ptr %r65
    %r113 = load i32, ptr %r70
    %r114 = load i32, ptr %r75
    %r115 = load i32, ptr %r80
    %r116 = load i32, ptr %r85
    %r117 = load i32, ptr %r90
    %r118 = load i32, ptr %r95
    %r119 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], ptr %r0, i32 0, i32 %r100, i32 %r101, i32 %r102, i32 %r103, i32 %r104, i32 %r105, i32 %r106, i32 %r107, i32 %r108, i32 %r109, i32 %r110, i32 %r111, i32 %r112, i32 %r113, i32 %r114, i32 %r115, i32 %r116, i32 %r117, i32 %r118
    %r120 = load i32, ptr %r3
    store i32 %r120, ptr %r119
    %r121 = load i32, ptr %r3
    %r122 = add i32 1,0
    %r123 = add i32 %r121,%r122
    store i32 %r123, ptr %r3
    %r124 = load i32, ptr %r95
    %r125 = add i32 1,0
    %r126 = add i32 %r124,%r125
    store i32 %r126, ptr %r95
    br label %L56
L58:  ;
    %r127 = load i32, ptr %r90
    %r128 = add i32 1,0
    %r129 = add i32 %r127,%r128
    store i32 %r129, ptr %r90
    br label %L53
}
