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
@k = global i32 zeroinitializer
define float @params_f40(float %r0,float %r1,float %r2,float %r3,float %r4,float %r5,float %r6,float %r7,float %r8,float %r9,float %r10,float %r11,float %r12,float %r13,float %r14,float %r15,float %r16,float %r17,float %r18,float %r19,float %r20,float %r21,float %r22,float %r23,float %r24,float %r25,float %r26,float %r27,float %r28,float %r29,float %r30,float %r31,float %r32,float %r33,float %r34,float %r35,float %r36,float %r37,float %r38,float %r39)
{
L0:  ;
    %r84 = alloca [10 x float]
    br label %L1
L1:  ;
    %r82 = sitofp i32 0 to float
    %r83 = fcmp one float %r39,%r82
    br i1 %r83, label %L2, label %L3
L2:  ;
    call void @llvm.memset.p0.i32(ptr %r84,i8 0,i32 40,i1 0)
    %r87 = fadd float %r0,%r1
    %r89 = fadd float %r87,%r2
    %r91 = fadd float %r89,%r3
    %r92 = getelementptr [10 x float], ptr %r84, i32 0, i32 0
    store float %r91, ptr %r92
    %r95 = fadd float %r4,%r5
    %r97 = fadd float %r95,%r6
    %r99 = fadd float %r97,%r7
    %r100 = getelementptr [10 x float], ptr %r84, i32 0, i32 1
    store float %r99, ptr %r100
    %r103 = fadd float %r8,%r9
    %r105 = fadd float %r103,%r10
    %r107 = fadd float %r105,%r11
    %r108 = getelementptr [10 x float], ptr %r84, i32 0, i32 2
    store float %r107, ptr %r108
    %r111 = fadd float %r12,%r13
    %r113 = fadd float %r111,%r14
    %r115 = fadd float %r113,%r15
    %r116 = getelementptr [10 x float], ptr %r84, i32 0, i32 3
    store float %r115, ptr %r116
    %r119 = fadd float %r16,%r17
    %r121 = fadd float %r119,%r18
    %r123 = fadd float %r121,%r19
    %r124 = getelementptr [10 x float], ptr %r84, i32 0, i32 4
    store float %r123, ptr %r124
    %r127 = fadd float %r20,%r21
    %r129 = fadd float %r127,%r22
    %r131 = fadd float %r129,%r23
    %r132 = getelementptr [10 x float], ptr %r84, i32 0, i32 5
    store float %r131, ptr %r132
    %r135 = fadd float %r24,%r25
    %r137 = fadd float %r135,%r26
    %r139 = fadd float %r137,%r27
    %r140 = getelementptr [10 x float], ptr %r84, i32 0, i32 6
    store float %r139, ptr %r140
    %r143 = fadd float %r28,%r29
    %r145 = fadd float %r143,%r30
    %r147 = fadd float %r145,%r31
    %r148 = getelementptr [10 x float], ptr %r84, i32 0, i32 7
    store float %r147, ptr %r148
    %r151 = fadd float %r32,%r33
    %r153 = fadd float %r151,%r34
    %r155 = fadd float %r153,%r35
    %r156 = getelementptr [10 x float], ptr %r84, i32 0, i32 8
    store float %r155, ptr %r156
    %r159 = fadd float %r36,%r37
    %r161 = fadd float %r159,%r38
    %r163 = fadd float %r161,%r39
    %r164 = getelementptr [10 x float], ptr %r84, i32 0, i32 9
    store float %r163, ptr %r164
    %r166 = getelementptr [10 x float], ptr %r84, i32 0
    call void @putfarray(i32 10,ptr %r166)
    %r167 = load i32, ptr @k
    %r168 = getelementptr [10 x float], ptr %r84, i32 0, i32 %r167
    %r169 = load float, ptr %r168
    br label %L5
L3:  ;
    %r211 = fadd float %r0,%r1
    %r213 = fadd float %r211,%r2
    %r214 = call float @params_f40(float %r1,float %r2,float %r3,float %r4,float %r5,float %r6,float %r7,float %r8,float %r9,float %r10,float %r11,float %r12,float %r13,float %r14,float %r15,float %r16,float %r17,float %r18,float %r19,float %r20,float %r21,float %r22,float %r23,float %r24,float %r25,float %r26,float %r27,float %r28,float %r29,float %r30,float %r31,float %r32,float %r33,float %r34,float %r35,float %r36,float %r37,float %r38,float %r39,float %r213)
    br label %L5
L5:  ;
    %r217 = phi float [%r169,%L2],[%r214,%L3]
    ret float %r217
}
define float @params_f40_i24(i32 %r0,i32 %r1,i32 %r2,float %r3,i32 %r4,i32 %r5,i32 %r6,float %r7,float %r8,float %r9,i32 %r10,float %r11,float %r12,i32 %r13,float %r14,i32 %r15,float %r16,float %r17,float %r18,float %r19,float %r20,float %r21,i32 %r22,float %r23,i32 %r24,i32 %r25,float %r26,float %r27,float %r28,float %r29,float %r30,i32 %r31,float %r32,i32 %r33,float %r34,float %r35,float %r36,float %r37,i32 %r38,i32 %r39,float %r40,float %r41,float %r42,i32 %r43,float %r44,i32 %r45,i32 %r46,float %r47,float %r48,float %r49,float %r50,i32 %r51,i32 %r52,i32 %r53,float %r54,float %r55,float %r56,float %r57,float %r58,float %r59,i32 %r60,float %r61,i32 %r62,float %r63)
{
L0:  ;
    %r212 = alloca [8 x i32]
    %r131 = alloca [10 x float]
    br label %L1
L1:  ;
    %r130 = icmp ne i32 %r0,0
    br i1 %r130, label %L2, label %L3
L2:  ;  preheader0
    call void @llvm.memset.p0.i32(ptr %r131,i8 0,i32 40,i1 0)
    %r134 = fadd float %r42,%r18
    %r136 = fadd float %r134,%r61
    %r138 = fadd float %r136,%r11
    %r139 = getelementptr [10 x float], ptr %r131, i32 0, i32 0
    store float %r138, ptr %r139
    %r142 = fadd float %r3,%r36
    %r144 = fadd float %r142,%r21
    %r146 = fadd float %r144,%r9
    %r147 = getelementptr [10 x float], ptr %r131, i32 0, i32 1
    store float %r146, ptr %r147
    %r150 = fadd float %r7,%r29
    %r152 = fadd float %r150,%r41
    %r154 = fadd float %r152,%r19
    %r155 = getelementptr [10 x float], ptr %r131, i32 0, i32 2
    store float %r154, ptr %r155
    %r158 = fadd float %r17,%r49
    %r160 = fadd float %r158,%r40
    %r162 = fadd float %r160,%r8
    %r163 = getelementptr [10 x float], ptr %r131, i32 0, i32 3
    store float %r162, ptr %r163
    %r166 = fadd float %r35,%r59
    %r168 = fadd float %r166,%r54
    %r170 = fadd float %r168,%r55
    %r171 = getelementptr [10 x float], ptr %r131, i32 0, i32 4
    store float %r170, ptr %r171
    %r174 = fadd float %r26,%r34
    %r176 = fadd float %r174,%r56
    %r178 = fadd float %r176,%r28
    %r179 = getelementptr [10 x float], ptr %r131, i32 0, i32 5
    store float %r178, ptr %r179
    %r182 = fadd float %r48,%r30
    %r184 = fadd float %r182,%r57
    %r186 = fadd float %r184,%r47
    %r187 = getelementptr [10 x float], ptr %r131, i32 0, i32 6
    store float %r186, ptr %r187
    %r190 = fadd float %r12,%r50
    %r192 = fadd float %r190,%r16
    %r194 = fadd float %r192,%r44
    %r195 = getelementptr [10 x float], ptr %r131, i32 0, i32 7
    store float %r194, ptr %r195
    %r198 = fadd float %r23,%r27
    %r200 = fadd float %r198,%r37
    %r202 = fadd float %r200,%r63
    %r203 = getelementptr [10 x float], ptr %r131, i32 0, i32 8
    store float %r202, ptr %r203
    %r206 = fadd float %r58,%r14
    %r208 = fadd float %r206,%r20
    %r210 = fadd float %r208,%r32
    %r211 = getelementptr [10 x float], ptr %r131, i32 0, i32 9
    store float %r210, ptr %r211
    call void @llvm.memset.p0.i32(ptr %r212,i8 0,i32 32,i1 0)
    %r215 = add i32 %r13,%r4
    %r217 = add i32 %r215,%r1
    %r218 = getelementptr [8 x i32], ptr %r212, i32 0, i32 0
    store i32 %r217, ptr %r218
    %r221 = add i32 %r51,%r5
    %r223 = add i32 %r221,%r6
    %r224 = getelementptr [8 x i32], ptr %r212, i32 0, i32 1
    store i32 %r223, ptr %r224
    %r227 = add i32 %r2,%r22
    %r229 = add i32 %r227,%r31
    %r230 = getelementptr [8 x i32], ptr %r212, i32 0, i32 2
    store i32 %r229, ptr %r230
    %r233 = add i32 %r39,%r24
    %r235 = add i32 %r233,%r45
    %r236 = getelementptr [8 x i32], ptr %r212, i32 0, i32 3
    store i32 %r235, ptr %r236
    %r239 = add i32 %r43,%r25
    %r241 = add i32 %r239,%r62
    %r242 = getelementptr [8 x i32], ptr %r212, i32 0, i32 4
    store i32 %r241, ptr %r242
    %r245 = add i32 %r60,%r46
    %r247 = add i32 %r245,%r33
    %r248 = getelementptr [8 x i32], ptr %r212, i32 0, i32 5
    store i32 %r247, ptr %r248
    %r251 = add i32 %r38,%r15
    %r253 = add i32 %r251,%r53
    %r254 = getelementptr [8 x i32], ptr %r212, i32 0, i32 6
    store i32 %r253, ptr %r254
    %r257 = add i32 %r52,%r10
    %r259 = add i32 %r257,%r0
    %r260 = getelementptr [8 x i32], ptr %r212, i32 0, i32 7
    store i32 %r259, ptr %r260
    %r262 = getelementptr [10 x float], ptr %r131, i32 0
    call void @putfarray(i32 10,ptr %r262)
    %r264 = getelementptr [8 x i32], ptr %r212, i32 0
    call void @putarray(i32 8,ptr %r264)
    br label %L5
L3:  ;
    %r352 = call float @params_f40_i24(i32 %r4,i32 %r1,i32 %r2,float %r3,i32 %r4,i32 %r5,i32 %r6,float %r7,float %r8,float %r9,i32 %r10,float %r11,float %r12,i32 %r13,float %r14,i32 %r15,float %r16,float %r17,float %r18,float %r19,float %r20,float %r21,i32 %r22,float %r23,i32 %r24,i32 %r25,float %r26,float %r27,float %r28,float %r29,float %r30,i32 %r31,float %r32,i32 %r33,float %r34,float %r35,float %r36,float %r37,i32 %r38,i32 %r39,float %r40,float %r41,float %r42,i32 %r43,float %r44,i32 %r45,i32 %r46,float %r47,float %r48,float %r49,float %r50,i32 %r51,i32 %r52,i32 %r53,float %r54,float %r55,float %r56,float %r57,float %r58,float %r59,i32 %r60,float %r61,i32 %r62,float %r63)
    br label %L8
L5:  ;  exiting0  header0
    %r357 = phi i32 [0,%L2],[%r283,%L6]
    %r269 = icmp slt i32 %r357,8
    br i1 %r269, label %L6, label %L7
L6:  ;  latch0
    %r271 = getelementptr [8 x i32], ptr %r212, i32 0, i32 %r357
    %r274 = load i32, ptr %r271
    %r276 = getelementptr [10 x float], ptr %r131, i32 0, i32 %r357
    %r277 = load float, ptr %r276
    %r278 = sitofp i32 %r274 to float
    %r279 = fsub float %r278,%r277
    %r280 = fptosi float %r279 to i32
    store i32 %r280, ptr %r271
    %r283 = add i32 %r357,1
    br label %L5
L7:  ;
    %r284 = load i32, ptr @k
    %r285 = getelementptr [8 x i32], ptr %r212, i32 0, i32 %r284
    %r286 = load i32, ptr %r285
    %r287 = sitofp i32 %r286 to float
    br label %L8
L8:  ;
    %r355 = phi float [%r352,%L3],[%r287,%L7]
    ret float %r355
}
define float @params_fa40(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8,ptr %r9,ptr %r10,ptr %r11,ptr %r12,ptr %r13,ptr %r14,ptr %r15,ptr %r16,ptr %r17,ptr %r18,ptr %r19,ptr %r20,ptr %r21,ptr %r22,ptr %r23,ptr %r24,ptr %r25,ptr %r26,ptr %r27,ptr %r28,ptr %r29,ptr %r30,ptr %r31,ptr %r32,ptr %r33,ptr %r34,ptr %r35,ptr %r36,ptr %r37,ptr %r38,ptr %r39)
{
L0:  ;
    %r40 = alloca [10 x float]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r40,i8 0,i32 40,i1 0)
    %r41 = load i32, ptr @k
    %r42 = getelementptr float, ptr %r0, i32 %r41
    %r43 = load float, ptr %r42
    %r45 = getelementptr float, ptr %r1, i32 %r41
    %r46 = load float, ptr %r45
    %r47 = fadd float %r43,%r46
    %r49 = getelementptr float, ptr %r2, i32 %r41
    %r50 = load float, ptr %r49
    %r51 = fadd float %r47,%r50
    %r53 = getelementptr float, ptr %r3, i32 %r41
    %r54 = load float, ptr %r53
    %r55 = fadd float %r51,%r54
    %r56 = getelementptr [10 x float], ptr %r40, i32 0, i32 0
    store float %r55, ptr %r56
    %r58 = getelementptr float, ptr %r4, i32 %r41
    %r59 = load float, ptr %r58
    %r61 = getelementptr float, ptr %r5, i32 %r41
    %r62 = load float, ptr %r61
    %r63 = fadd float %r59,%r62
    %r65 = getelementptr float, ptr %r6, i32 %r41
    %r66 = load float, ptr %r65
    %r67 = fadd float %r63,%r66
    %r69 = getelementptr float, ptr %r7, i32 %r41
    %r70 = load float, ptr %r69
    %r71 = fadd float %r67,%r70
    %r72 = getelementptr [10 x float], ptr %r40, i32 0, i32 1
    store float %r71, ptr %r72
    %r74 = getelementptr float, ptr %r8, i32 %r41
    %r75 = load float, ptr %r74
    %r77 = getelementptr float, ptr %r9, i32 %r41
    %r78 = load float, ptr %r77
    %r79 = fadd float %r75,%r78
    %r81 = getelementptr float, ptr %r10, i32 %r41
    %r82 = load float, ptr %r81
    %r83 = fadd float %r79,%r82
    %r85 = getelementptr float, ptr %r11, i32 %r41
    %r86 = load float, ptr %r85
    %r87 = fadd float %r83,%r86
    %r88 = getelementptr [10 x float], ptr %r40, i32 0, i32 2
    store float %r87, ptr %r88
    %r90 = getelementptr float, ptr %r12, i32 %r41
    %r91 = load float, ptr %r90
    %r93 = getelementptr float, ptr %r13, i32 %r41
    %r94 = load float, ptr %r93
    %r95 = fadd float %r91,%r94
    %r97 = getelementptr float, ptr %r14, i32 %r41
    %r98 = load float, ptr %r97
    %r99 = fadd float %r95,%r98
    %r101 = getelementptr float, ptr %r15, i32 %r41
    %r102 = load float, ptr %r101
    %r103 = fadd float %r99,%r102
    %r104 = getelementptr [10 x float], ptr %r40, i32 0, i32 3
    store float %r103, ptr %r104
    %r106 = getelementptr float, ptr %r16, i32 %r41
    %r107 = load float, ptr %r106
    %r109 = getelementptr float, ptr %r17, i32 %r41
    %r110 = load float, ptr %r109
    %r111 = fadd float %r107,%r110
    %r113 = getelementptr float, ptr %r18, i32 %r41
    %r114 = load float, ptr %r113
    %r115 = fadd float %r111,%r114
    %r117 = getelementptr float, ptr %r19, i32 %r41
    %r118 = load float, ptr %r117
    %r119 = fadd float %r115,%r118
    %r120 = getelementptr [10 x float], ptr %r40, i32 0, i32 4
    store float %r119, ptr %r120
    %r122 = getelementptr float, ptr %r20, i32 %r41
    %r123 = load float, ptr %r122
    %r125 = getelementptr float, ptr %r21, i32 %r41
    %r126 = load float, ptr %r125
    %r127 = fadd float %r123,%r126
    %r129 = getelementptr float, ptr %r22, i32 %r41
    %r130 = load float, ptr %r129
    %r131 = fadd float %r127,%r130
    %r133 = getelementptr float, ptr %r23, i32 %r41
    %r134 = load float, ptr %r133
    %r135 = fadd float %r131,%r134
    %r136 = getelementptr [10 x float], ptr %r40, i32 0, i32 5
    store float %r135, ptr %r136
    %r138 = getelementptr float, ptr %r24, i32 %r41
    %r139 = load float, ptr %r138
    %r141 = getelementptr float, ptr %r25, i32 %r41
    %r142 = load float, ptr %r141
    %r143 = fadd float %r139,%r142
    %r145 = getelementptr float, ptr %r26, i32 %r41
    %r146 = load float, ptr %r145
    %r147 = fadd float %r143,%r146
    %r149 = getelementptr float, ptr %r27, i32 %r41
    %r150 = load float, ptr %r149
    %r151 = fadd float %r147,%r150
    %r152 = getelementptr [10 x float], ptr %r40, i32 0, i32 6
    store float %r151, ptr %r152
    %r154 = getelementptr float, ptr %r28, i32 %r41
    %r155 = load float, ptr %r154
    %r157 = getelementptr float, ptr %r29, i32 %r41
    %r158 = load float, ptr %r157
    %r159 = fadd float %r155,%r158
    %r161 = getelementptr float, ptr %r30, i32 %r41
    %r162 = load float, ptr %r161
    %r163 = fadd float %r159,%r162
    %r165 = getelementptr float, ptr %r31, i32 %r41
    %r166 = load float, ptr %r165
    %r167 = fadd float %r163,%r166
    %r168 = getelementptr [10 x float], ptr %r40, i32 0, i32 7
    store float %r167, ptr %r168
    %r170 = getelementptr float, ptr %r32, i32 %r41
    %r171 = load float, ptr %r170
    %r173 = getelementptr float, ptr %r33, i32 %r41
    %r174 = load float, ptr %r173
    %r175 = fadd float %r171,%r174
    %r177 = getelementptr float, ptr %r34, i32 %r41
    %r178 = load float, ptr %r177
    %r179 = fadd float %r175,%r178
    %r181 = getelementptr float, ptr %r35, i32 %r41
    %r182 = load float, ptr %r181
    %r183 = fadd float %r179,%r182
    %r184 = getelementptr [10 x float], ptr %r40, i32 0, i32 8
    store float %r183, ptr %r184
    %r186 = getelementptr float, ptr %r36, i32 %r41
    %r187 = load float, ptr %r186
    %r189 = getelementptr float, ptr %r37, i32 %r41
    %r190 = load float, ptr %r189
    %r191 = fadd float %r187,%r190
    %r193 = getelementptr float, ptr %r38, i32 %r41
    %r194 = load float, ptr %r193
    %r195 = fadd float %r191,%r194
    %r197 = getelementptr float, ptr %r39, i32 %r41
    %r198 = load float, ptr %r197
    %r199 = fadd float %r195,%r198
    %r200 = getelementptr [10 x float], ptr %r40, i32 0, i32 9
    store float %r199, ptr %r200
    %r205 = sitofp i32 0 to float
    %r206 = fcmp one float %r198,%r205
    %r208 = zext i1 %r206 to i32
    %r209 = icmp ne i32 %r208,0
    %r210 = fadd float 0x0,0x0
    %r211 = zext i1 %r209 to i32
    %r212 = sitofp i32 %r211 to float
    %r213 = fcmp one float %r212,%r210
    %r215 = zext i1 %r213 to i32
    %r216 = sitofp i32 %r215 to float
    %r217 = fcmp one float %r216,%r210
    br i1 %r217, label %L2, label %L3
L2:  ;
    %r219 = getelementptr [10 x float], ptr %r40, i32 0
    call void @putfarray(i32 10,ptr %r219)
    %r220 = load i32, ptr @k
    %r221 = getelementptr [10 x float], ptr %r40, i32 0, i32 %r220
    %r222 = load float, ptr %r221
    br label %L5
L3:  ;
    %r223 = getelementptr float, ptr %r1
    %r224 = getelementptr float, ptr %r2
    %r225 = getelementptr float, ptr %r3
    %r226 = getelementptr float, ptr %r4
    %r227 = getelementptr float, ptr %r5
    %r228 = getelementptr float, ptr %r6
    %r229 = getelementptr float, ptr %r7
    %r230 = getelementptr float, ptr %r8
    %r231 = getelementptr float, ptr %r9
    %r232 = getelementptr float, ptr %r10
    %r233 = getelementptr float, ptr %r11
    %r234 = getelementptr float, ptr %r12
    %r235 = getelementptr float, ptr %r13
    %r236 = getelementptr float, ptr %r14
    %r237 = getelementptr float, ptr %r15
    %r238 = getelementptr float, ptr %r16
    %r239 = getelementptr float, ptr %r17
    %r240 = getelementptr float, ptr %r18
    %r241 = getelementptr float, ptr %r19
    %r242 = getelementptr float, ptr %r20
    %r243 = getelementptr float, ptr %r21
    %r244 = getelementptr float, ptr %r22
    %r245 = getelementptr float, ptr %r23
    %r246 = getelementptr float, ptr %r24
    %r247 = getelementptr float, ptr %r25
    %r248 = getelementptr float, ptr %r26
    %r249 = getelementptr float, ptr %r27
    %r250 = getelementptr float, ptr %r28
    %r251 = getelementptr float, ptr %r29
    %r252 = getelementptr float, ptr %r30
    %r253 = getelementptr float, ptr %r31
    %r254 = getelementptr float, ptr %r32
    %r255 = getelementptr float, ptr %r33
    %r256 = getelementptr float, ptr %r34
    %r257 = getelementptr float, ptr %r35
    %r258 = getelementptr float, ptr %r36
    %r259 = getelementptr float, ptr %r37
    %r260 = getelementptr float, ptr %r38
    %r261 = getelementptr float, ptr %r39
    %r262 = getelementptr [10 x float], ptr %r40, i32 0
    %r263 = call float @params_fa40(ptr %r223,ptr %r224,ptr %r225,ptr %r226,ptr %r227,ptr %r228,ptr %r229,ptr %r230,ptr %r231,ptr %r232,ptr %r233,ptr %r234,ptr %r235,ptr %r236,ptr %r237,ptr %r238,ptr %r239,ptr %r240,ptr %r241,ptr %r242,ptr %r243,ptr %r244,ptr %r245,ptr %r246,ptr %r247,ptr %r248,ptr %r249,ptr %r250,ptr %r251,ptr %r252,ptr %r253,ptr %r254,ptr %r255,ptr %r256,ptr %r257,ptr %r258,ptr %r259,ptr %r260,ptr %r261,ptr %r262)
    br label %L5
L5:  ;
    %r266 = phi float [%r222,%L2],[%r263,%L3]
    ret float %r266
}
define i32 @params_mix(float %r0,ptr %r1,i32 %r2,ptr %r3,float %r4,i32 %r5,float %r6,float %r7,ptr %r8,ptr %r9,i32 %r10,i32 %r11,ptr %r12,ptr %r13,ptr %r14,i32 %r15,ptr %r16,ptr %r17,float %r18,float %r19,float %r20,ptr %r21,i32 %r22,float %r23,float %r24,float %r25,ptr %r26,ptr %r27,ptr %r28,ptr %r29,ptr %r30,float %r31,float %r32,ptr %r33,i32 %r34,ptr %r35,ptr %r36,float %r37,float %r38,ptr %r39,ptr %r40,i32 %r41,i32 %r42,float %r43,float %r44,ptr %r45,i32 %r46,ptr %r47,i32 %r48,ptr %r49,ptr %r50,float %r51,float %r52,ptr %r53,i32 %r54,ptr %r55,ptr %r56,float %r57,i32 %r58,float %r59,ptr %r60,ptr %r61,float %r62,i32 %r63)
{
L0:  ;
    %r202 = alloca [10 x i32]
    %r99 = alloca [10 x float]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r99,i8 0,i32 40,i1 0)
    %r101 = load i32, ptr @k
    %r102 = getelementptr float, ptr %r3, i32 %r101
    %r103 = load float, ptr %r102
    %r104 = fadd float %r0,%r103
    %r106 = fadd float %r104,%r4
    %r108 = fadd float %r106,%r6
    %r109 = getelementptr [10 x float], ptr %r99, i32 0, i32 0
    store float %r108, ptr %r109
    %r112 = getelementptr float, ptr %r8, i32 %r101
    %r113 = load float, ptr %r112
    %r114 = fadd float %r7,%r113
    %r116 = getelementptr float, ptr %r12, i32 %r101
    %r117 = load float, ptr %r116
    %r118 = fadd float %r114,%r117
    %r120 = getelementptr float, ptr %r16, i32 %r101
    %r121 = load float, ptr %r120
    %r122 = fadd float %r118,%r121
    %r123 = getelementptr [10 x float], ptr %r99, i32 0, i32 1
    store float %r122, ptr %r123
    %r125 = getelementptr float, ptr %r17, i32 %r101
    %r126 = load float, ptr %r125
    %r128 = fadd float %r126,%r18
    %r130 = fadd float %r128,%r19
    %r132 = fadd float %r130,%r20
    %r133 = getelementptr [10 x float], ptr %r99, i32 0, i32 2
    store float %r132, ptr %r133
    %r135 = getelementptr float, ptr %r21, i32 %r101
    %r136 = load float, ptr %r135
    %r138 = fadd float %r136,%r23
    %r140 = fadd float %r138,%r24
    %r142 = fadd float %r140,%r25
    %r143 = getelementptr [10 x float], ptr %r99, i32 0, i32 3
    store float %r142, ptr %r143
    %r145 = getelementptr float, ptr %r27, i32 %r101
    %r146 = load float, ptr %r145
    %r148 = getelementptr float, ptr %r30, i32 %r101
    %r149 = load float, ptr %r148
    %r150 = fadd float %r146,%r149
    %r152 = fadd float %r150,%r31
    %r154 = fadd float %r152,%r32
    %r155 = getelementptr [10 x float], ptr %r99, i32 0, i32 4
    store float %r154, ptr %r155
    %r157 = getelementptr float, ptr %r35, i32 %r101
    %r158 = load float, ptr %r157
    %r160 = getelementptr float, ptr %r36, i32 %r101
    %r161 = load float, ptr %r160
    %r162 = fadd float %r158,%r161
    %r164 = fadd float %r162,%r37
    %r166 = fadd float %r164,%r38
    %r167 = getelementptr [10 x float], ptr %r99, i32 0, i32 5
    store float %r166, ptr %r167
    %r170 = fadd float %r43,%r44
    %r172 = getelementptr float, ptr %r47, i32 %r101
    %r173 = load float, ptr %r172
    %r174 = fadd float %r170,%r173
    %r176 = fadd float %r174,%r51
    %r177 = getelementptr [10 x float], ptr %r99, i32 0, i32 6
    store float %r176, ptr %r177
    %r180 = getelementptr float, ptr %r53, i32 %r101
    %r181 = load float, ptr %r180
    %r182 = fadd float %r52,%r181
    %r184 = getelementptr float, ptr %r56, i32 %r101
    %r185 = load float, ptr %r184
    %r186 = fadd float %r182,%r185
    %r188 = fadd float %r186,%r57
    %r189 = getelementptr [10 x float], ptr %r99, i32 0, i32 7
    store float %r188, ptr %r189
    %r192 = getelementptr float, ptr %r60, i32 %r101
    %r193 = load float, ptr %r192
    %r194 = fadd float %r59,%r193
    %r196 = getelementptr float, ptr %r61, i32 %r101
    %r197 = load float, ptr %r196
    %r198 = fadd float %r194,%r197
    %r200 = fadd float %r198,%r62
    %r201 = getelementptr [10 x float], ptr %r99, i32 0, i32 8
    store float %r200, ptr %r201
    call void @llvm.memset.p0.i32(ptr %r202,i8 0,i32 40,i1 0)
    %r204 = getelementptr i32, ptr %r1, i32 %r101
    %r205 = load i32, ptr %r204
    %r207 = add i32 %r205,%r2
    %r209 = add i32 %r207,%r5
    %r210 = getelementptr [10 x i32], ptr %r202, i32 0, i32 0
    store i32 %r209, ptr %r210
    %r212 = getelementptr i32, ptr %r9, i32 %r101
    %r213 = load i32, ptr %r212
    %r215 = add i32 %r213,%r10
    %r217 = add i32 %r215,%r11
    %r218 = getelementptr [10 x i32], ptr %r202, i32 0, i32 1
    store i32 %r217, ptr %r218
    %r220 = getelementptr i32, ptr %r13, i32 %r101
    %r221 = load i32, ptr %r220
    %r223 = getelementptr i32, ptr %r14, i32 %r101
    %r224 = load i32, ptr %r223
    %r225 = add i32 %r221,%r224
    %r227 = add i32 %r225,%r15
    %r228 = getelementptr [10 x i32], ptr %r202, i32 0, i32 2
    store i32 %r227, ptr %r228
    %r231 = getelementptr i32, ptr %r26, i32 %r101
    %r232 = load i32, ptr %r231
    %r233 = add i32 %r22,%r232
    %r235 = getelementptr i32, ptr %r28, i32 %r101
    %r236 = load i32, ptr %r235
    %r237 = add i32 %r233,%r236
    %r238 = getelementptr [10 x i32], ptr %r202, i32 0, i32 3
    store i32 %r237, ptr %r238
    %r240 = getelementptr i32, ptr %r29, i32 %r101
    %r241 = load i32, ptr %r240
    %r243 = getelementptr i32, ptr %r33, i32 %r101
    %r244 = load i32, ptr %r243
    %r245 = add i32 %r241,%r244
    %r247 = add i32 %r245,%r34
    %r248 = getelementptr [10 x i32], ptr %r202, i32 0, i32 4
    store i32 %r247, ptr %r248
    %r250 = getelementptr i32, ptr %r39, i32 %r101
    %r251 = load i32, ptr %r250
    %r253 = getelementptr i32, ptr %r40, i32 %r101
    %r254 = load i32, ptr %r253
    %r255 = add i32 %r251,%r254
    %r257 = add i32 %r255,%r41
    %r258 = getelementptr [10 x i32], ptr %r202, i32 0, i32 5
    store i32 %r257, ptr %r258
    %r261 = getelementptr i32, ptr %r45, i32 %r101
    %r262 = load i32, ptr %r261
    %r263 = add i32 %r42,%r262
    %r265 = add i32 %r263,%r46
    %r266 = getelementptr [10 x i32], ptr %r202, i32 0, i32 6
    store i32 %r265, ptr %r266
    %r269 = getelementptr i32, ptr %r49, i32 %r101
    %r270 = load i32, ptr %r269
    %r271 = add i32 %r48,%r270
    %r273 = getelementptr i32, ptr %r50, i32 %r101
    %r274 = load i32, ptr %r273
    %r275 = add i32 %r271,%r274
    %r276 = getelementptr [10 x i32], ptr %r202, i32 0, i32 7
    store i32 %r275, ptr %r276
    %r279 = getelementptr i32, ptr %r55, i32 %r101
    %r280 = load i32, ptr %r279
    %r281 = add i32 %r54,%r280
    %r283 = add i32 %r281,%r58
    %r285 = add i32 %r283,%r63
    %r286 = getelementptr [10 x i32], ptr %r202, i32 0, i32 8
    store i32 %r285, ptr %r286
    %r289 = icmp ne i32 %r63,0
    br i1 %r289, label %L2, label %L3
L2:  ;  preheader0
    %r291 = getelementptr [10 x float], ptr %r99, i32 0
    call void @putfarray(i32 10,ptr %r291)
    %r293 = getelementptr [10 x i32], ptr %r202, i32 0
    call void @putarray(i32 10,ptr %r293)
    br label %L5
L3:  ;
    %r323 = getelementptr [10 x i32], ptr %r202, i32 0
    %r325 = getelementptr [10 x float], ptr %r99, i32 0
    %r330 = getelementptr float, ptr %r8
    %r331 = getelementptr i32, ptr %r9
    %r334 = getelementptr float, ptr %r12
    %r335 = getelementptr i32, ptr %r13
    %r336 = getelementptr i32, ptr %r14
    %r338 = getelementptr float, ptr %r16
    %r339 = getelementptr float, ptr %r17
    %r343 = getelementptr float, ptr %r21
    %r348 = getelementptr i32, ptr %r26
    %r349 = getelementptr float, ptr %r27
    %r350 = getelementptr i32, ptr %r28
    %r351 = getelementptr i32, ptr %r29
    %r352 = getelementptr float, ptr %r30
    %r355 = getelementptr i32, ptr %r33
    %r357 = getelementptr float, ptr %r35
    %r358 = getelementptr float, ptr %r36
    %r361 = getelementptr i32, ptr %r39
    %r362 = getelementptr i32, ptr %r40
    %r367 = getelementptr i32, ptr %r45
    %r369 = getelementptr float, ptr %r47
    %r371 = getelementptr i32, ptr %r49
    %r372 = getelementptr i32, ptr %r50
    %r375 = getelementptr float, ptr %r53
    %r377 = getelementptr i32, ptr %r55
    %r378 = getelementptr float, ptr %r56
    %r382 = getelementptr float, ptr %r60
    %r383 = getelementptr float, ptr %r61
    %r385 = sitofp i32 %r63 to float
    %r387 = fptosi float %r62 to i32
    %r388 = call i32 @params_mix(float %r0,ptr %r323,i32 %r2,ptr %r325,float %r4,i32 %r5,float %r6,float %r7,ptr %r330,ptr %r331,i32 %r10,i32 %r11,ptr %r334,ptr %r335,ptr %r336,i32 %r15,ptr %r338,ptr %r339,float %r18,float %r19,float %r20,ptr %r343,i32 %r22,float %r23,float %r24,float %r25,ptr %r348,ptr %r349,ptr %r350,ptr %r351,ptr %r352,float %r31,float %r32,ptr %r355,i32 %r34,ptr %r357,ptr %r358,float %r37,float %r38,ptr %r361,ptr %r362,i32 %r41,i32 %r42,float %r43,float %r44,ptr %r367,i32 %r46,ptr %r369,i32 %r48,ptr %r371,ptr %r372,float %r51,float %r52,ptr %r375,i32 %r54,ptr %r377,ptr %r378,float %r57,i32 %r58,float %r59,ptr %r382,ptr %r383,float %r385,i32 %r387)
    br label %L8
L5:  ;  exiting0  header0
    %r393 = phi i32 [0,%L2],[%r312,%L6]
    %r298 = icmp slt i32 %r393,10
    br i1 %r298, label %L6, label %L7
L6:  ;  latch0
    %r300 = getelementptr [10 x i32], ptr %r202, i32 0, i32 %r393
    %r303 = load i32, ptr %r300
    %r305 = getelementptr [10 x float], ptr %r99, i32 0, i32 %r393
    %r306 = load float, ptr %r305
    %r307 = sitofp i32 %r303 to float
    %r308 = fsub float %r307,%r306
    %r309 = fptosi float %r308 to i32
    store i32 %r309, ptr %r300
    %r312 = add i32 %r393,1
    br label %L5
L7:  ;
    %r313 = load i32, ptr @k
    %r314 = getelementptr [10 x i32], ptr %r202, i32 0, i32 %r313
    %r315 = load i32, ptr %r314
    %r318 = load float, ptr %r201
    %r319 = sitofp i32 %r315 to float
    %r320 = fmul float %r319,%r318
    %r321 = fptosi float %r320 to i32
    br label %L8
L8:  ;
    %r391 = phi i32 [%r388,%L3],[%r321,%L7]
    ret i32 %r391
}
define i32 @main()
{
L0:  ;
    %r1 = alloca [24 x [3 x i32]]
    %r0 = alloca [40 x [3 x float]]
    br label %L1
L1:  ;  preheader0
    %r4 = call i32 @getint()
    store i32 %r4, ptr @k
    br label %L2
L2:  ;  exiting0  header0
    %r736 = phi i32 [0,%L1],[%r14,%L3]
    %r8 = icmp slt i32 %r736,40
    br i1 %r8, label %L3, label %L4
L3:  ;  latch0
    %r10 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 %r736
    %r11 = call i32 @getfarray(ptr %r10)
    %r14 = add i32 %r736,1
    br label %L2
L4:  ;  preheader1
    br label %L5
L5:  ;  exiting1  header1
    %r737 = phi i32 [0,%L4],[%r24,%L6]
    %r18 = icmp slt i32 %r737,24
    br i1 %r18, label %L6, label %L7
L6:  ;  latch1
    %r20 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 %r737
    %r21 = call i32 @getarray(ptr %r20)
    %r24 = add i32 %r737,1
    br label %L5
L7:  ;
    %r27 = load i32, ptr @k
    %r28 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 0, i32 %r27
    %r29 = load float, ptr %r28
    %r32 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 1, i32 %r27
    %r33 = load float, ptr %r32
    %r36 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 2, i32 %r27
    %r37 = load float, ptr %r36
    %r40 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 3, i32 %r27
    %r41 = load float, ptr %r40
    %r44 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 4, i32 %r27
    %r45 = load float, ptr %r44
    %r48 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 5, i32 %r27
    %r49 = load float, ptr %r48
    %r52 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 6, i32 %r27
    %r53 = load float, ptr %r52
    %r56 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 7, i32 %r27
    %r57 = load float, ptr %r56
    %r60 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 8, i32 %r27
    %r61 = load float, ptr %r60
    %r64 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 9, i32 %r27
    %r65 = load float, ptr %r64
    %r68 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 10, i32 %r27
    %r69 = load float, ptr %r68
    %r72 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 11, i32 %r27
    %r73 = load float, ptr %r72
    %r76 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 12, i32 %r27
    %r77 = load float, ptr %r76
    %r80 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 13, i32 %r27
    %r81 = load float, ptr %r80
    %r84 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 14, i32 %r27
    %r85 = load float, ptr %r84
    %r88 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 15, i32 %r27
    %r89 = load float, ptr %r88
    %r92 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 16, i32 %r27
    %r93 = load float, ptr %r92
    %r96 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 17, i32 %r27
    %r97 = load float, ptr %r96
    %r100 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 18, i32 %r27
    %r101 = load float, ptr %r100
    %r104 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 19, i32 %r27
    %r105 = load float, ptr %r104
    %r108 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 20, i32 %r27
    %r109 = load float, ptr %r108
    %r112 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 21, i32 %r27
    %r113 = load float, ptr %r112
    %r116 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 22, i32 %r27
    %r117 = load float, ptr %r116
    %r120 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 23, i32 %r27
    %r121 = load float, ptr %r120
    %r124 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 24, i32 %r27
    %r125 = load float, ptr %r124
    %r128 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 25, i32 %r27
    %r129 = load float, ptr %r128
    %r132 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 26, i32 %r27
    %r133 = load float, ptr %r132
    %r136 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 27, i32 %r27
    %r137 = load float, ptr %r136
    %r140 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 28, i32 %r27
    %r141 = load float, ptr %r140
    %r144 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 29, i32 %r27
    %r145 = load float, ptr %r144
    %r148 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 30, i32 %r27
    %r149 = load float, ptr %r148
    %r152 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 31, i32 %r27
    %r153 = load float, ptr %r152
    %r156 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 32, i32 %r27
    %r157 = load float, ptr %r156
    %r160 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 33, i32 %r27
    %r161 = load float, ptr %r160
    %r164 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 34, i32 %r27
    %r165 = load float, ptr %r164
    %r168 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 35, i32 %r27
    %r169 = load float, ptr %r168
    %r172 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 36, i32 %r27
    %r173 = load float, ptr %r172
    %r176 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 37, i32 %r27
    %r177 = load float, ptr %r176
    %r180 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 38, i32 %r27
    %r181 = load float, ptr %r180
    %r184 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 39, i32 %r27
    %r185 = load float, ptr %r184
    %r186 = call float @params_f40(float %r29,float %r33,float %r37,float %r41,float %r45,float %r49,float %r53,float %r57,float %r61,float %r65,float %r69,float %r73,float %r77,float %r81,float %r85,float %r89,float %r93,float %r97,float %r101,float %r105,float %r109,float %r113,float %r117,float %r121,float %r125,float %r129,float %r133,float %r137,float %r141,float %r145,float %r149,float %r153,float %r157,float %r161,float %r165,float %r169,float %r173,float %r177,float %r181,float %r185)
    %r190 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 23, i32 %r27
    %r191 = load i32, ptr %r190
    %r194 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 2, i32 %r27
    %r195 = load i32, ptr %r194
    %r198 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 6, i32 %r27
    %r199 = load i32, ptr %r198
    %r206 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 1, i32 %r27
    %r207 = load i32, ptr %r206
    %r210 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 4, i32 %r27
    %r211 = load i32, ptr %r210
    %r214 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 5, i32 %r27
    %r215 = load i32, ptr %r214
    %r230 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 22, i32 %r27
    %r231 = load i32, ptr %r230
    %r242 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 0, i32 %r27
    %r243 = load i32, ptr %r242
    %r250 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 19, i32 %r27
    %r251 = load i32, ptr %r250
    %r278 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 7, i32 %r27
    %r279 = load i32, ptr %r278
    %r286 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 10, i32 %r27
    %r287 = load i32, ptr %r286
    %r290 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 13, i32 %r27
    %r291 = load i32, ptr %r290
    %r314 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 8, i32 %r27
    %r315 = load i32, ptr %r314
    %r322 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 17, i32 %r27
    %r323 = load i32, ptr %r322
    %r342 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 18, i32 %r27
    %r343 = load i32, ptr %r342
    %r346 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 9, i32 %r27
    %r347 = load i32, ptr %r346
    %r362 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 12, i32 %r27
    %r363 = load i32, ptr %r362
    %r370 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 11, i32 %r27
    %r371 = load i32, ptr %r370
    %r374 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 16, i32 %r27
    %r375 = load i32, ptr %r374
    %r394 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 3, i32 %r27
    %r395 = load i32, ptr %r394
    %r398 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 21, i32 %r27
    %r399 = load i32, ptr %r398
    %r402 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 20, i32 %r27
    %r403 = load i32, ptr %r402
    %r430 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 15, i32 %r27
    %r431 = load i32, ptr %r430
    %r438 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 14, i32 %r27
    %r439 = load i32, ptr %r438
    %r444 = call float @params_f40_i24(i32 %r191,i32 %r195,i32 %r199,float %r45,i32 %r207,i32 %r211,i32 %r215,float %r61,float %r89,float %r57,i32 %r231,float %r41,float %r141,i32 %r243,float %r177,i32 %r251,float %r149,float %r77,float %r33,float %r73,float %r181,float %r53,i32 %r279,float %r157,i32 %r287,i32 %r291,float %r109,float %r161,float %r121,float %r65,float %r129,i32 %r315,float %r185,i32 %r323,float %r113,float %r93,float %r49,float %r165,i32 %r343,i32 %r347,float %r85,float %r69,float %r29,i32 %r363,float %r153,i32 %r371,i32 %r375,float %r137,float %r125,float %r81,float %r145,i32 %r395,i32 %r399,i32 %r403,float %r101,float %r105,float %r117,float %r133,float %r173,float %r97,i32 %r431,float %r37,i32 %r439,float %r169)
    %r447 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 0
    %r449 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 1
    %r451 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 2
    %r453 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 3
    %r455 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 4
    %r457 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 5
    %r459 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 6
    %r461 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 7
    %r463 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 8
    %r465 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 9
    %r467 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 10
    %r469 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 11
    %r471 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 12
    %r473 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 13
    %r475 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 14
    %r477 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 15
    %r479 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 16
    %r481 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 17
    %r483 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 18
    %r485 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 19
    %r487 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 20
    %r489 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 21
    %r491 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 22
    %r493 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 23
    %r495 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 24
    %r497 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 25
    %r499 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 26
    %r501 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 27
    %r503 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 28
    %r505 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 29
    %r507 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 30
    %r509 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 31
    %r511 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 32
    %r513 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 33
    %r515 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 34
    %r517 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 35
    %r519 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 36
    %r521 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 37
    %r523 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 38
    %r525 = getelementptr [40 x [3 x float]], ptr %r0, i32 0, i32 39
    %r526 = call float @params_fa40(ptr %r447,ptr %r449,ptr %r451,ptr %r453,ptr %r455,ptr %r457,ptr %r459,ptr %r461,ptr %r463,ptr %r465,ptr %r467,ptr %r469,ptr %r471,ptr %r473,ptr %r475,ptr %r477,ptr %r479,ptr %r481,ptr %r483,ptr %r485,ptr %r487,ptr %r489,ptr %r491,ptr %r493,ptr %r495,ptr %r497,ptr %r499,ptr %r501,ptr %r503,ptr %r505,ptr %r507,ptr %r509,ptr %r511,ptr %r513,ptr %r515,ptr %r517,ptr %r519,ptr %r521,ptr %r523,ptr %r525)
    %r533 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 0
    %r559 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 3
    %r571 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 6
    %r573 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 7
    %r613 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 10
    %r617 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 11
    %r619 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 12
    %r631 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 13
    %r649 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 15
    %r651 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 16
    %r669 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 19
    %r681 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 22
    %r683 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 23
    %r699 = getelementptr [24 x [3 x i32]], ptr %r1, i32 0, i32 1
    %r726 = call i32 @params_mix(float %r29,ptr %r533,i32 %r207,ptr %r449,float %r37,i32 %r195,float %r41,float %r45,ptr %r457,ptr %r559,i32 %r211,i32 %r215,ptr %r459,ptr %r571,ptr %r573,i32 %r315,ptr %r461,ptr %r463,float %r65,float %r69,float %r73,ptr %r471,i32 %r347,float %r81,float %r85,float %r89,ptr %r613,ptr %r479,ptr %r617,ptr %r619,ptr %r481,float %r101,float %r105,ptr %r631,i32 %r439,ptr %r487,ptr %r489,float %r117,float %r121,ptr %r649,ptr %r651,i32 %r323,i32 %r343,float %r125,float %r129,ptr %r669,i32 %r403,ptr %r499,i32 %r399,ptr %r681,ptr %r683,float %r137,float %r141,ptr %r505,i32 %r243,ptr %r699,ptr %r507,float %r153,i32 %r195,float %r157,ptr %r513,ptr %r515,float %r169,i32 %r395)
    call void @putfloat(float %r186)
    call void @putch(i32 10)
    call void @putfloat(float %r444)
    call void @putch(i32 10)
    call void @putfloat(float %r526)
    call void @putch(i32 10)
    call void @putint(i32 %r726)
    call void @putch(i32 10)
    ret i32 0
}
