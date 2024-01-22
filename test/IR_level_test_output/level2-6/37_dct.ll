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
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    br label %L1
L1:
    %r8 = load i32, ptr %r6
    %r9 = load i32, ptr %r4
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L2, label %L3
L2:
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    br label %L4
L3:
    ret void
L4:
    %r15 = load i32, ptr %r13
    %r16 = load i32, ptr %r5
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L5, label %L6
L5:
    %r20 = add i32 0,0
    %r21 = load i32, ptr %r6
    %r22 = load i32, ptr %r13
    %r23 = getelementptr [8 x float], ptr %r0, i32 %r21, i32 %r22
    %r24 = sitofp i32 %r20 to float
    store float %r24, ptr %r23
    %r26 = add i32 0,0
    store i32 %r26, ptr %r25
    br label %L7
L6:
    %r92 = load i32, ptr %r6
    %r93 = add i32 0,1
    %r94 = add i32 %r92,%r93
    store i32 %r94, ptr %r6
    br label %L1
L7:
    %r27 = load i32, ptr %r25
    %r28 = load i32, ptr %r4
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L8, label %L9
L8:
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    br label %L10
L9:
    %r89 = load i32, ptr %r13
    %r90 = add i32 0,1
    %r91 = add i32 %r89,%r90
    store i32 %r91, ptr %r13
    br label %L4
L10:
    %r34 = load i32, ptr %r32
    %r35 = load i32, ptr %r5
    %r36 = icmp slt i32 %r34,%r35
    br i1 %r36, label %L11, label %L12
L11:
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
    br label %L10
L12:
    %r86 = load i32, ptr %r25
    %r87 = add i32 0,1
    %r88 = add i32 %r86,%r87
    store i32 %r88, ptr %r25
    br label %L7
}
define float @my_fabs(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
    %r2 = load float, ptr %r1
    %r3 = add i32 0,0
    %r4 = sitofp i32 %r3 to float
    %r5 = fcmp ogt float %r2,%r4
    br i1 %r5, label %L1, label %L2
L1:
    %r8 = load float, ptr %r1
    ret float %r8
L2:
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
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    br label %L1
L1:
    %r7 = load i32, ptr %r5
    %r8 = load i32, ptr %r3
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
L2:
    %r12 = load i32, ptr %r5
    %r13 = add i32 0,0
    %r14 = getelementptr [8 x float], ptr %r0, i32 %r12, i32 %r13
    %r15 = load float, ptr %r14
    call void @putfloat(float %r15)
    %r17 = add i32 0,1
    store i32 %r17, ptr %r16
    br label %L4
L3:
    %r35 = add i32 0,10
    call void @putch(i32 %r35)
    ret void
L4:
    %r18 = load i32, ptr %r16
    %r19 = load i32, ptr %r4
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L5, label %L6
L5:
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
    br label %L4
L6:
    %r31 = add i32 0,10
    call void @putch(i32 %r31)
    %r32 = load i32, ptr %r5
    %r33 = add i32 0,1
    %r34 = add i32 %r32,%r33
    store i32 %r34, ptr %r5
    br label %L1
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
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    br label %L1
L1:
    %r8 = load i32, ptr %r6
    %r9 = load i32, ptr %r4
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L2, label %L3
L2:
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    br label %L4
L3:
    ret void
L4:
    %r15 = load i32, ptr %r13
    %r16 = load i32, ptr %r5
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L5, label %L6
L5:
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
    br label %L7
L6:
    %r170 = load i32, ptr %r6
    %r171 = add i32 0,1
    %r172 = add i32 %r170,%r171
    store i32 %r172, ptr %r6
    br label %L1
L7:
    %r37 = load i32, ptr %r32
    %r38 = load i32, ptr %r4
    %r39 = icmp slt i32 %r37,%r38
    br i1 %r39, label %L8, label %L9
L8:
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
    br label %L7
L9:
    %r62 = add i32 0,1
    store i32 %r62, ptr %r34
    br label %L10
L10:
    %r63 = load i32, ptr %r34
    %r64 = load i32, ptr %r5
    %r65 = icmp slt i32 %r63,%r64
    br i1 %r65, label %L11, label %L12
L11:
    %r68 = load i32, ptr %r6
    %r69 = load i32, ptr %r13
    %r70 = getelementptr [8 x float], ptr %r0, i32 %r68, i32 %r69
    %r71 = load float, ptr %r70
    %r72 = add i32 0,1
    %r73 = fadd float 0x0,0x4000000000000000
    %r74 = sitofp i32 %r72 to float
    %r75 = fdiv float %r74,%r73
    %r76 = add i32 0,0
    %r77 = load i32, ptr %r34
    %r78 = getelementptr [8 x float], ptr %r1, i32 %r76, i32 %r77
    %r79 = load float, ptr %r78
    %r80 = fmul float %r75,%r79
    %r81 = fadd float %r71,%r80
    %r82 = load i32, ptr %r6
    %r83 = load i32, ptr %r13
    %r84 = getelementptr [8 x float], ptr %r0, i32 %r82, i32 %r83
    store float %r81, ptr %r84
    %r85 = load i32, ptr %r34
    %r86 = add i32 0,1
    %r87 = add i32 %r85,%r86
    store i32 %r87, ptr %r34
    br label %L10
L12:
    %r88 = add i32 0,1
    store i32 %r88, ptr %r32
    br label %L13
L13:
    %r89 = load i32, ptr %r32
    %r90 = load i32, ptr %r4
    %r91 = icmp slt i32 %r89,%r90
    br i1 %r91, label %L14, label %L15
L14:
    %r94 = add i32 0,1
    store i32 %r94, ptr %r34
    br label %L16
L15:
    %r150 = load i32, ptr %r6
    %r151 = load i32, ptr %r13
    %r152 = getelementptr [8 x float], ptr %r0, i32 %r150, i32 %r151
    %r153 = load float, ptr %r152
    %r154 = fadd float 0x0,0x4000000000000000
    %r155 = fmul float %r153,%r154
    %r156 = load i32, ptr %r4
    %r157 = sitofp i32 %r156 to float
    %r158 = fdiv float %r155,%r157
    %r159 = fadd float 0x0,0x4000000000000000
    %r160 = fmul float %r158,%r159
    %r161 = load i32, ptr %r5
    %r162 = sitofp i32 %r161 to float
    %r163 = fdiv float %r160,%r162
    %r164 = load i32, ptr %r6
    %r165 = load i32, ptr %r13
    %r166 = getelementptr [8 x float], ptr %r0, i32 %r164, i32 %r165
    store float %r163, ptr %r166
    %r167 = load i32, ptr %r13
    %r168 = add i32 0,1
    %r169 = add i32 %r167,%r168
    store i32 %r169, ptr %r13
    br label %L4
L16:
    %r95 = load i32, ptr %r34
    %r96 = load i32, ptr %r5
    %r97 = icmp slt i32 %r95,%r96
    br i1 %r97, label %L17, label %L18
L17:
    %r100 = load i32, ptr %r6
    %r101 = load i32, ptr %r13
    %r102 = getelementptr [8 x float], ptr %r0, i32 %r100, i32 %r101
    %r103 = load float, ptr %r102
    %r104 = load i32, ptr %r32
    %r105 = load i32, ptr %r34
    %r106 = getelementptr [8 x float], ptr %r1, i32 %r104, i32 %r105
    %r107 = load float, ptr %r106
    %r108 = load float, ptr @PI
    %r109 = load i32, ptr %r4
    %r110 = sitofp i32 %r109 to float
    %r111 = fdiv float %r108,%r110
    %r112 = load i32, ptr %r6
    %r113 = fadd float 0x0,0x3ff0000000000000
    %r114 = fadd float 0x0,0x4000000000000000
    %r115 = fdiv float %r113,%r114
    %r116 = sitofp i32 %r112 to float
    %r117 = fadd float %r116,%r115
    %r118 = fmul float %r111,%r117
    %r119 = load i32, ptr %r32
    %r120 = sitofp i32 %r119 to float
    %r121 = fmul float %r118,%r120
    %r122 = call float @my_cos(float %r121)
    %r123 = fmul float %r107,%r122
    %r124 = load float, ptr @PI
    %r125 = load i32, ptr %r5
    %r126 = sitofp i32 %r125 to float
    %r127 = fdiv float %r124,%r126
    %r128 = load i32, ptr %r13
    %r129 = fadd float 0x0,0x3ff0000000000000
    %r130 = fadd float 0x0,0x4000000000000000
    %r131 = fdiv float %r129,%r130
    %r132 = sitofp i32 %r128 to float
    %r133 = fadd float %r132,%r131
    %r134 = fmul float %r127,%r133
    %r135 = load i32, ptr %r34
    %r136 = sitofp i32 %r135 to float
    %r137 = fmul float %r134,%r136
    %r138 = call float @my_cos(float %r137)
    %r139 = fmul float %r123,%r138
    %r140 = fadd float %r103,%r139
    %r141 = load i32, ptr %r6
    %r142 = load i32, ptr %r13
    %r143 = getelementptr [8 x float], ptr %r0, i32 %r141, i32 %r142
    store float %r140, ptr %r143
    %r144 = load i32, ptr %r34
    %r145 = add i32 0,1
    %r146 = add i32 %r144,%r145
    store i32 %r146, ptr %r34
    br label %L16
L18:
    %r147 = load i32, ptr %r32
    %r148 = add i32 0,1
    %r149 = add i32 %r147,%r148
    store i32 %r149, ptr %r32
    br label %L13
}
define float @p(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
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
    %r2 = load float, ptr %r1
    %r3 = call float @my_fabs(float %r2)
    %r4 = load float, ptr @EPSILON
    %r5 = fcmp ole float %r3,%r4
    br i1 %r5, label %L1, label %L2
L1:
    %r8 = load float, ptr %r1
    ret float %r8
L2:
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
    %r2 = load float, ptr %r1
    %r3 = load float, ptr @TWO_PI
    %r4 = fcmp ogt float %r2,%r3
    br i1 %r4, label %L1, label %L3
L1:
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
    br label %L2
L2:
    %r27 = load float, ptr %r1
    %r28 = load float, ptr @PI
    %r29 = fcmp ogt float %r27,%r28
    br i1 %r29, label %L5, label %L6
L3:
    %r7 = load float, ptr %r1
    %r8 = load float, ptr @TWO_PI
    %r9 = fsub float 0x0,%r8
    %r10 = fcmp olt float %r7,%r9
    br i1 %r10, label %L1, label %L2
L5:
    %r32 = load float, ptr %r1
    %r33 = load float, ptr @TWO_PI
    %r34 = fsub float %r32,%r33
    store float %r34, ptr %r1
    br label %L6
L6:
    %r35 = load float, ptr %r1
    %r36 = load float, ptr @PI
    %r37 = fsub float 0x0,%r36
    %r38 = fcmp olt float %r35,%r37
    br i1 %r38, label %L7, label %L8
L7:
    %r41 = load float, ptr %r1
    %r42 = load float, ptr @TWO_PI
    %r43 = fadd float %r41,%r42
    store float %r43, ptr %r1
    br label %L8
L8:
    %r44 = load float, ptr %r1
    %r45 = call float @my_sin_impl(float %r44)
    ret float %r45
}
define float @my_cos(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
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
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L1
L1:
    %r6 = load i32, ptr %r4
    %r7 = load i32, ptr %r0
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    br label %L4
L3:
    %r28 = getelementptr float, ptr @test_dct, i32 0
    %r29 = getelementptr float, ptr @test_block, i32 0
    %r30 = load i32, ptr %r0
    %r31 = load i32, ptr %r2
    call void @dct(ptr %r28,ptr %r29,i32 %r30,i32 %r31)
    %r32 = getelementptr float, ptr @test_dct, i32 0
    %r33 = load i32, ptr %r0
    %r34 = load i32, ptr %r2
    call void @write_mat(ptr %r32,i32 %r33,i32 %r34)
    %r35 = getelementptr float, ptr @test_idct, i32 0
    %r36 = getelementptr float, ptr @test_dct, i32 0
    %r37 = load i32, ptr %r0
    %r38 = load i32, ptr %r2
    call void @idct(ptr %r35,ptr %r36,i32 %r37,i32 %r38)
    %r39 = getelementptr float, ptr @test_idct, i32 0
    %r40 = load i32, ptr %r0
    %r41 = load i32, ptr %r2
    call void @write_mat(ptr %r39,i32 %r40,i32 %r41)
    %r42 = add i32 0,0
    ret i32 %r42
L4:
    %r13 = load i32, ptr %r11
    %r14 = load i32, ptr %r2
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L5, label %L6
L5:
    %r18 = call float @getfloat()
    %r19 = load i32, ptr %r4
    %r20 = load i32, ptr %r11
    %r21 = getelementptr [8 x [8 x float]], ptr @test_block, i32 0, i32 %r19, i32 %r20
    store float %r18, ptr %r21
    %r22 = load i32, ptr %r11
    %r23 = add i32 0,1
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r11
    br label %L4
L6:
    %r25 = load i32, ptr %r4
    %r26 = add i32 0,1
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r4
    br label %L1
}
