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
@MAX_DIM_X = global i32 8
@MAX_DIM_Y = global i32 8
@test_block = global [8x [8x float]] zeroinitializer
@test_dct = global [8x [8x float]] zeroinitializer
@test_idct = global [8x [8x float]] zeroinitializer
@PI = global float 0x400921fb60000000
@TWO_PI = global float 0x401921fb60000000
@EPSILON = global float 0x3eb0c6f7a0000000
define void @dct(ptr %r0,ptr %r1,i32 %r2,i32 %r3)
{
L0:
    %r32 = alloca i32
    %r25 = alloca i32
    %r13 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    store i32 %r2, ptr %r4
    %r5 = alloca i32
    store i32 %r3, ptr %r5
    br label %L1
L1:
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = load i32, ptr %r6
    %r9 = load i32, ptr %r4
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L5
L3:
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    %r15 = load i32, ptr %r13
    %r16 = load i32, ptr %r5
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L7, label %L9
L4:
    %r110 = load i32, ptr %r6
    %r111 = load i32, ptr %r4
    %r112 = icmp slt i32 %r110,%r111
    br i1 %r112, label %L3, label %L5
L5:
    ret void
L7:
    %r20 = add i32 0,0
    %r21 = load i32, ptr %r6
    %r22 = load i32, ptr %r13
    %r23 = getelementptr [8 x float], ptr %r0, i32 %r21, i32 %r22
    %r24 = sitofp i32 %r20 to float
    store float %r24, ptr %r23
    %r26 = add i32 0,0
    store i32 %r26, ptr %r25
    %r27 = load i32, ptr %r25
    %r28 = load i32, ptr %r4
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L11, label %L13
L8:
    %r102 = load i32, ptr %r13
    %r103 = load i32, ptr %r5
    %r104 = icmp slt i32 %r102,%r103
    br i1 %r104, label %L7, label %L9
L9:
    %r107 = load i32, ptr %r6
    %r108 = add i32 0,1
    %r109 = add i32 %r107,%r108
    store i32 %r109, ptr %r6
    br label %L4
L11:
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r34 = load i32, ptr %r32
    %r35 = load i32, ptr %r5
    %r36 = icmp slt i32 %r34,%r35
    br i1 %r36, label %L15, label %L17
L12:
    %r94 = load i32, ptr %r25
    %r95 = load i32, ptr %r4
    %r96 = icmp slt i32 %r94,%r95
    br i1 %r96, label %L11, label %L13
L13:
    %r99 = load i32, ptr %r13
    %r100 = add i32 0,1
    %r101 = add i32 %r99,%r100
    store i32 %r101, ptr %r13
    br label %L8
L15:
    %r39 = load i32, ptr %r6
    %r40 = load i32, ptr %r13
    %r41 = getelementptr [8 x float], ptr %r0, i32 %r39, i32 %r40
    %r42 = load float, ptr %r41
    %r43 = load i32, ptr %r25
    %r44 = load i32, ptr %r32
    %r45 = getelementptr [8 x float], ptr %r1, i32 %r43, i32 %r44
    %r46 = load float, ptr %r45
    %r47 = load float, ptr @PI
    %r48 = load i32, ptr %r4
    %r49 = sitofp i32 %r48 to float
    %r50 = fdiv float %r47,%r49
    %r51 = load i32, ptr %r25
    %r52 = fadd float 0x0,0x3ff0000000000000
    %r53 = fadd float 0x0,0x4000000000000000
    %r54 = fdiv float %r52,%r53
    %r55 = sitofp i32 %r51 to float
    %r56 = fadd float %r55,%r54
    %r57 = fmul float %r50,%r56
    %r58 = load i32, ptr %r6
    %r59 = sitofp i32 %r58 to float
    %r60 = fmul float %r57,%r59
    %r61 = call float @my_cos(float %r60)
    %r62 = fmul float %r46,%r61
    %r63 = load float, ptr @PI
    %r64 = load i32, ptr %r5
    %r65 = sitofp i32 %r64 to float
    %r66 = fdiv float %r63,%r65
    %r67 = load i32, ptr %r32
    %r68 = fadd float 0x0,0x3ff0000000000000
    %r69 = fadd float 0x0,0x4000000000000000
    %r70 = fdiv float %r68,%r69
    %r71 = sitofp i32 %r67 to float
    %r72 = fadd float %r71,%r70
    %r73 = fmul float %r66,%r72
    %r74 = load i32, ptr %r13
    %r75 = sitofp i32 %r74 to float
    %r76 = fmul float %r73,%r75
    %r77 = call float @my_cos(float %r76)
    %r78 = fmul float %r62,%r77
    %r79 = fadd float %r42,%r78
    %r80 = load i32, ptr %r6
    %r81 = load i32, ptr %r13
    %r82 = getelementptr [8 x float], ptr %r0, i32 %r80, i32 %r81
    store float %r79, ptr %r82
    %r83 = load i32, ptr %r32
    %r84 = add i32 0,1
    %r85 = add i32 %r83,%r84
    store i32 %r85, ptr %r32
    br label %L16
L16:
    %r86 = load i32, ptr %r32
    %r87 = load i32, ptr %r5
    %r88 = icmp slt i32 %r86,%r87
    br i1 %r88, label %L15, label %L17
L17:
    %r91 = load i32, ptr %r25
    %r92 = add i32 0,1
    %r93 = add i32 %r91,%r92
    store i32 %r93, ptr %r25
    br label %L12
}
define float @my_fabs(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr %r1
    %r3 = add i32 0,0
    %r4 = sitofp i32 %r3 to float
    %r5 = fcmp ogt float %r2,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = load float, ptr %r1
    ret float %r8
L3:
    %r9 = load float, ptr %r1
    %r10 = fsub float 0x0,%r9
    ret float %r10
}
define void @write_mat(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r16 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = alloca i32
    store i32 %r2, ptr %r4
    br label %L1
L1:
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = load i32, ptr %r5
    %r8 = load i32, ptr %r3
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L3, label %L5
L3:
    %r12 = load i32, ptr %r5
    %r13 = add i32 0,0
    %r14 = getelementptr [8 x float], ptr %r0, i32 %r12, i32 %r13
    %r15 = load float, ptr %r14
    call void @putfloat(float %r15)
    %r17 = add i32 0,1
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r16
    %r19 = load i32, ptr %r4
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L7, label %L9
L4:
    %r40 = load i32, ptr %r5
    %r41 = load i32, ptr %r3
    %r42 = icmp slt i32 %r40,%r41
    br i1 %r42, label %L3, label %L5
L5:
    %r45 = add i32 0,10
    call void @putch(i32 %r45)
    ret void
L7:
    %r23 = add i32 0,32
    call void @putch(i32 %r23)
    %r24 = load i32, ptr %r5
    %r25 = load i32, ptr %r16
    %r26 = getelementptr [8 x float], ptr %r0, i32 %r24, i32 %r25
    %r27 = load float, ptr %r26
    call void @putfloat(float %r27)
    %r28 = load i32, ptr %r16
    %r29 = add i32 0,1
    %r30 = add i32 %r28,%r29
    store i32 %r30, ptr %r16
    br label %L8
L8:
    %r31 = load i32, ptr %r16
    %r32 = load i32, ptr %r4
    %r33 = icmp slt i32 %r31,%r32
    br i1 %r33, label %L7, label %L9
L9:
    %r36 = add i32 0,10
    call void @putch(i32 %r36)
    %r37 = load i32, ptr %r5
    %r38 = add i32 0,1
    %r39 = add i32 %r37,%r38
    store i32 %r39, ptr %r5
    br label %L4
}
define void @idct(ptr %r0,ptr %r1,i32 %r2,i32 %r3)
{
L0:
    %r34 = alloca i32
    %r32 = alloca i32
    %r13 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    store i32 %r2, ptr %r4
    %r5 = alloca i32
    store i32 %r3, ptr %r5
    br label %L1
L1:
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = load i32, ptr %r6
    %r9 = load i32, ptr %r4
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L5
L3:
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    %r15 = load i32, ptr %r13
    %r16 = load i32, ptr %r5
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L7, label %L9
L4:
    %r198 = load i32, ptr %r6
    %r199 = load i32, ptr %r4
    %r200 = icmp slt i32 %r198,%r199
    br i1 %r200, label %L3, label %L5
L5:
    ret void
L7:
    %r20 = add i32 0,1
    %r21 = fadd float 0x0,0x4010000000000000
    %r22 = sitofp i32 %r20 to float
    %r23 = fdiv float %r22,%r21
    %r24 = add i32 0,0
    %r25 = add i32 0,0
    %r26 = getelementptr [8 x float], ptr %r1, i32 %r24, i32 %r25
    %r27 = load float, ptr %r26
    %r28 = fmul float %r23,%r27
    %r29 = load i32, ptr %r6
    %r30 = load i32, ptr %r13
    %r31 = getelementptr [8 x float], ptr %r0, i32 %r29, i32 %r30
    store float %r28, ptr %r31
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r35 = add i32 0,0
    store i32 %r35, ptr %r34
    %r36 = add i32 0,1
    store i32 %r36, ptr %r32
    %r37 = load i32, ptr %r32
    %r38 = load i32, ptr %r4
    %r39 = icmp slt i32 %r37,%r38
    br i1 %r39, label %L11, label %L13
L8:
    %r190 = load i32, ptr %r13
    %r191 = load i32, ptr %r5
    %r192 = icmp slt i32 %r190,%r191
    br i1 %r192, label %L7, label %L9
L9:
    %r195 = load i32, ptr %r6
    %r196 = add i32 0,1
    %r197 = add i32 %r195,%r196
    store i32 %r197, ptr %r6
    br label %L4
L11:
    %r42 = load i32, ptr %r6
    %r43 = load i32, ptr %r13
    %r44 = getelementptr [8 x float], ptr %r0, i32 %r42, i32 %r43
    %r45 = load float, ptr %r44
    %r46 = add i32 0,1
    %r47 = fadd float 0x0,0x4000000000000000
    %r48 = sitofp i32 %r46 to float
    %r49 = fdiv float %r48,%r47
    %r50 = load i32, ptr %r32
    %r51 = add i32 0,0
    %r52 = getelementptr [8 x float], ptr %r1, i32 %r50, i32 %r51
    %r53 = load float, ptr %r52
    %r54 = fmul float %r49,%r53
    %r55 = fadd float %r45,%r54
    %r56 = load i32, ptr %r6
    %r57 = load i32, ptr %r13
    %r58 = getelementptr [8 x float], ptr %r0, i32 %r56, i32 %r57
    store float %r55, ptr %r58
    %r59 = load i32, ptr %r32
    %r60 = add i32 0,1
    %r61 = add i32 %r59,%r60
    store i32 %r61, ptr %r32
    br label %L12
L12:
    %r62 = load i32, ptr %r32
    %r63 = load i32, ptr %r4
    %r64 = icmp slt i32 %r62,%r63
    br i1 %r64, label %L11, label %L13
L13:
    %r67 = add i32 0,1
    store i32 %r67, ptr %r34
    %r68 = load i32, ptr %r34
    %r69 = load i32, ptr %r5
    %r70 = icmp slt i32 %r68,%r69
    br i1 %r70, label %L15, label %L17
L15:
    %r73 = load i32, ptr %r6
    %r74 = load i32, ptr %r13
    %r75 = getelementptr [8 x float], ptr %r0, i32 %r73, i32 %r74
    %r76 = load float, ptr %r75
    %r77 = add i32 0,1
    %r78 = fadd float 0x0,0x4000000000000000
    %r79 = sitofp i32 %r77 to float
    %r80 = fdiv float %r79,%r78
    %r81 = add i32 0,0
    %r82 = load i32, ptr %r34
    %r83 = getelementptr [8 x float], ptr %r1, i32 %r81, i32 %r82
    %r84 = load float, ptr %r83
    %r85 = fmul float %r80,%r84
    %r86 = fadd float %r76,%r85
    %r87 = load i32, ptr %r6
    %r88 = load i32, ptr %r13
    %r89 = getelementptr [8 x float], ptr %r0, i32 %r87, i32 %r88
    store float %r86, ptr %r89
    %r90 = load i32, ptr %r34
    %r91 = add i32 0,1
    %r92 = add i32 %r90,%r91
    store i32 %r92, ptr %r34
    br label %L16
L16:
    %r93 = load i32, ptr %r34
    %r94 = load i32, ptr %r5
    %r95 = icmp slt i32 %r93,%r94
    br i1 %r95, label %L15, label %L17
L17:
    %r98 = add i32 0,1
    store i32 %r98, ptr %r32
    %r99 = load i32, ptr %r32
    %r100 = load i32, ptr %r4
    %r101 = icmp slt i32 %r99,%r100
    br i1 %r101, label %L19, label %L21
L19:
    %r104 = add i32 0,1
    store i32 %r104, ptr %r34
    %r105 = load i32, ptr %r34
    %r106 = load i32, ptr %r5
    %r107 = icmp slt i32 %r105,%r106
    br i1 %r107, label %L23, label %L25
L20:
    %r165 = load i32, ptr %r32
    %r166 = load i32, ptr %r4
    %r167 = icmp slt i32 %r165,%r166
    br i1 %r167, label %L19, label %L21
L21:
    %r170 = load i32, ptr %r6
    %r171 = load i32, ptr %r13
    %r172 = getelementptr [8 x float], ptr %r0, i32 %r170, i32 %r171
    %r173 = load float, ptr %r172
    %r174 = fadd float 0x0,0x4000000000000000
    %r175 = fmul float %r173,%r174
    %r176 = load i32, ptr %r4
    %r177 = sitofp i32 %r176 to float
    %r178 = fdiv float %r175,%r177
    %r179 = fadd float 0x0,0x4000000000000000
    %r180 = fmul float %r178,%r179
    %r181 = load i32, ptr %r5
    %r182 = sitofp i32 %r181 to float
    %r183 = fdiv float %r180,%r182
    %r184 = load i32, ptr %r6
    %r185 = load i32, ptr %r13
    %r186 = getelementptr [8 x float], ptr %r0, i32 %r184, i32 %r185
    store float %r183, ptr %r186
    %r187 = load i32, ptr %r13
    %r188 = add i32 0,1
    %r189 = add i32 %r187,%r188
    store i32 %r189, ptr %r13
    br label %L8
L23:
    %r110 = load i32, ptr %r6
    %r111 = load i32, ptr %r13
    %r112 = getelementptr [8 x float], ptr %r0, i32 %r110, i32 %r111
    %r113 = load float, ptr %r112
    %r114 = load i32, ptr %r32
    %r115 = load i32, ptr %r34
    %r116 = getelementptr [8 x float], ptr %r1, i32 %r114, i32 %r115
    %r117 = load float, ptr %r116
    %r118 = load float, ptr @PI
    %r119 = load i32, ptr %r4
    %r120 = sitofp i32 %r119 to float
    %r121 = fdiv float %r118,%r120
    %r122 = load i32, ptr %r6
    %r123 = fadd float 0x0,0x3ff0000000000000
    %r124 = fadd float 0x0,0x4000000000000000
    %r125 = fdiv float %r123,%r124
    %r126 = sitofp i32 %r122 to float
    %r127 = fadd float %r126,%r125
    %r128 = fmul float %r121,%r127
    %r129 = load i32, ptr %r32
    %r130 = sitofp i32 %r129 to float
    %r131 = fmul float %r128,%r130
    %r132 = call float @my_cos(float %r131)
    %r133 = fmul float %r117,%r132
    %r134 = load float, ptr @PI
    %r135 = load i32, ptr %r5
    %r136 = sitofp i32 %r135 to float
    %r137 = fdiv float %r134,%r136
    %r138 = load i32, ptr %r13
    %r139 = fadd float 0x0,0x3ff0000000000000
    %r140 = fadd float 0x0,0x4000000000000000
    %r141 = fdiv float %r139,%r140
    %r142 = sitofp i32 %r138 to float
    %r143 = fadd float %r142,%r141
    %r144 = fmul float %r137,%r143
    %r145 = load i32, ptr %r34
    %r146 = sitofp i32 %r145 to float
    %r147 = fmul float %r144,%r146
    %r148 = call float @my_cos(float %r147)
    %r149 = fmul float %r133,%r148
    %r150 = fadd float %r113,%r149
    %r151 = load i32, ptr %r6
    %r152 = load i32, ptr %r13
    %r153 = getelementptr [8 x float], ptr %r0, i32 %r151, i32 %r152
    store float %r150, ptr %r153
    %r154 = load i32, ptr %r34
    %r155 = add i32 0,1
    %r156 = add i32 %r154,%r155
    store i32 %r156, ptr %r34
    br label %L24
L24:
    %r157 = load i32, ptr %r34
    %r158 = load i32, ptr %r5
    %r159 = icmp slt i32 %r157,%r158
    br i1 %r159, label %L23, label %L25
L25:
    %r162 = load i32, ptr %r32
    %r163 = add i32 0,1
    %r164 = add i32 %r162,%r163
    store i32 %r164, ptr %r32
    br label %L20
}
define float @p(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = add i32 0,3
    %r3 = load float, ptr %r1
    %r4 = sitofp i32 %r2 to float
    %r5 = fmul float %r4,%r3
    %r6 = add i32 0,4
    %r7 = load float, ptr %r1
    %r8 = sitofp i32 %r6 to float
    %r9 = fmul float %r8,%r7
    %r10 = load float, ptr %r1
    %r11 = fmul float %r9,%r10
    %r12 = load float, ptr %r1
    %r13 = fmul float %r11,%r12
    %r14 = fsub float %r5,%r13
    ret float %r14
}
define float @my_sin_impl(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr %r1
    %r3 = call float @my_fabs(float %r2)
    %r4 = load float, ptr @EPSILON
    %r5 = fcmp ole float %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = load float, ptr %r1
    ret float %r8
L3:
    %r9 = load float, ptr %r1
    %r10 = fadd float 0x0,0x4008000000000000
    %r11 = fdiv float %r9,%r10
    %r12 = call float @my_sin_impl(float %r11)
    %r13 = call float @p(float %r12)
    ret float %r13
}
define float @my_sin(float %r0)
{
L0:
    %r16 = alloca i32
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr %r1
    %r3 = load float, ptr @TWO_PI
    %r4 = fcmp ogt float %r2,%r3
    br i1 %r4, label %L2, label %L4
L2:
    %r17 = load float, ptr %r1
    %r18 = load float, ptr @TWO_PI
    %r19 = fdiv float %r17,%r18
    %r20 = fptosi float %r19 to i32
    store i32 %r20, ptr %r16
    %r21 = load float, ptr %r1
    %r22 = load i32, ptr %r16
    %r23 = load float, ptr @TWO_PI
    %r24 = sitofp i32 %r22 to float
    %r25 = fmul float %r24,%r23
    %r26 = fsub float %r21,%r25
    store float %r26, ptr %r1
    br label %L3
L3:
    %r27 = load float, ptr %r1
    %r28 = load float, ptr @PI
    %r29 = fcmp ogt float %r27,%r28
    br i1 %r29, label %L6, label %L7
L4:
    %r7 = load float, ptr %r1
    %r8 = load float, ptr @TWO_PI
    %r9 = fsub float 0x0,%r8
    %r10 = fcmp olt float %r7,%r9
    br i1 %r10, label %L2, label %L3
L6:
    %r32 = load float, ptr %r1
    %r33 = load float, ptr @TWO_PI
    %r34 = fsub float %r32,%r33
    store float %r34, ptr %r1
    br label %L7
L7:
    %r35 = load float, ptr %r1
    %r36 = load float, ptr @PI
    %r37 = fsub float 0x0,%r36
    %r38 = fcmp olt float %r35,%r37
    br i1 %r38, label %L8, label %L9
L8:
    %r41 = load float, ptr %r1
    %r42 = load float, ptr @TWO_PI
    %r43 = fadd float %r41,%r42
    store float %r43, ptr %r1
    br label %L9
L9:
    %r44 = load float, ptr %r1
    %r45 = call float @my_sin_impl(float %r44)
    ret float %r45
}
define float @my_cos(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr %r1
    %r3 = load float, ptr @PI
    %r4 = add i32 0,2
    %r5 = sitofp i32 %r4 to float
    %r6 = fdiv float %r3,%r5
    %r7 = fadd float %r2,%r6
    %r8 = call float @my_sin(float %r7)
    ret float %r8
}
define i32 @main()
{
L0:
    %r11 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = load i32, ptr %r4
    %r7 = load i32, ptr %r0
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L5
L3:
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    %r13 = load i32, ptr %r11
    %r14 = load i32, ptr %r2
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L7, label %L9
L4:
    %r33 = load i32, ptr %r4
    %r34 = load i32, ptr %r0
    %r35 = icmp slt i32 %r33,%r34
    br i1 %r35, label %L3, label %L5
L5:
    %r38 = getelementptr float, ptr @test_dct, i32 0
    %r39 = getelementptr float, ptr @test_block, i32 0
    %r40 = load i32, ptr %r0
    %r41 = load i32, ptr %r2
    call void @dct(ptr %r38,ptr %r39,i32 %r40,i32 %r41)
    %r42 = getelementptr float, ptr @test_dct, i32 0
    %r43 = load i32, ptr %r0
    %r44 = load i32, ptr %r2
    call void @write_mat(ptr %r42,i32 %r43,i32 %r44)
    %r45 = getelementptr float, ptr @test_idct, i32 0
    %r46 = getelementptr float, ptr @test_dct, i32 0
    %r47 = load i32, ptr %r0
    %r48 = load i32, ptr %r2
    call void @idct(ptr %r45,ptr %r46,i32 %r47,i32 %r48)
    %r49 = getelementptr float, ptr @test_idct, i32 0
    %r50 = load i32, ptr %r0
    %r51 = load i32, ptr %r2
    call void @write_mat(ptr %r49,i32 %r50,i32 %r51)
    %r52 = add i32 0,0
    ret i32 %r52
L7:
    %r18 = call float @getfloat()
    %r19 = load i32, ptr %r4
    %r20 = load i32, ptr %r11
    %r21 = getelementptr [8 x [8 x float]], ptr @test_block, i32 0, i32 %r19, i32 %r20
    store float %r18, ptr %r21
    %r22 = load i32, ptr %r11
    %r23 = add i32 0,1
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r11
    br label %L8
L8:
    %r25 = load i32, ptr %r11
    %r26 = load i32, ptr %r2
    %r27 = icmp slt i32 %r25,%r26
    br i1 %r27, label %L7, label %L9
L9:
    %r30 = load i32, ptr %r4
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r4
    br label %L4
}
