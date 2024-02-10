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
define float @my_cos(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr %r1
    %r3 = load float, ptr @PI
    %r4 = add i32 2,0
    %r5 = sitofp i32 %r4 to float
    %r6 = fdiv float %r3,%r5
    %r7 = fadd float %r2,%r6
    %r8 = call float @my_sin(float %r7)
    ret float %r8
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
    %r6 = load float, ptr %r1
    ret float %r6
L3:
    %r7 = load float, ptr %r1
    %r8 = fsub float 0x0,%r7
    ret float %r8
}
define void @write_mat(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r14 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    store i32 %r2, ptr %r4
    br label %L1
L1:
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    br label %L2
L2:
    %r7 = load i32, ptr %r5
    %r8 = load i32, ptr %r3
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L3, label %L4
L3:
    %r10 = load i32, ptr %r5
    %r11 = add i32 0,0
    %r12 = getelementptr [8 x float], ptr %r0, i32 %r10, i32 %r11
    %r13 = load float, ptr %r12
    call void @putfloat(float %r13)
    %r15 = add i32 1,0
    store i32 %r15, ptr %r14
    br label %L5
L4:
    %r31 = add i32 10,0
    call void @putch(i32 %r31)
    ret void
L5:
    %r16 = load i32, ptr %r14
    %r17 = load i32, ptr %r4
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L6, label %L7
L6:
    %r19 = add i32 32,0
    call void @putch(i32 %r19)
    %r20 = load i32, ptr %r5
    %r21 = load i32, ptr %r14
    %r22 = getelementptr [8 x float], ptr %r0, i32 %r20, i32 %r21
    %r23 = load float, ptr %r22
    call void @putfloat(float %r23)
    %r24 = load i32, ptr %r14
    %r25 = add i32 1,0
    %r26 = add i32 %r24,%r25
    store i32 %r26, ptr %r14
    br label %L5
L7:
    %r27 = add i32 10,0
    call void @putch(i32 %r27)
    %r28 = load i32, ptr %r5
    %r29 = add i32 1,0
    %r30 = add i32 %r28,%r29
    store i32 %r30, ptr %r5
    br label %L2
}
define float @p(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = add i32 3,0
    %r3 = load float, ptr %r1
    %r4 = sitofp i32 %r2 to float
    %r5 = fmul float %r4,%r3
    %r6 = add i32 4,0
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
    %r6 = load float, ptr %r1
    ret float %r6
L3:
    %r7 = load float, ptr %r1
    %r8 = fadd float 0x4008000000000000,0x0
    %r9 = fdiv float %r7,%r8
    %r10 = call float @my_sin_impl(float %r9)
    %r11 = call float @p(float %r10)
    ret float %r11
}
define float @my_sin(float %r0)
{
L0:
    %r9 = alloca i32
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr %r1
    %r3 = load float, ptr @TWO_PI
    %r4 = fcmp ogt float %r2,%r3
    br i1 %r4, label %L2, label %L4
L2:
    %r10 = load float, ptr %r1
    %r11 = load float, ptr @TWO_PI
    %r12 = fdiv float %r10,%r11
    %r13 = fptosi float %r12 to i32
    store i32 %r13, ptr %r9
    %r14 = load float, ptr %r1
    %r15 = load i32, ptr %r9
    %r16 = load float, ptr @TWO_PI
    %r17 = sitofp i32 %r15 to float
    %r18 = fmul float %r17,%r16
    %r19 = fsub float %r14,%r18
    store float %r19, ptr %r1
    br label %L3
L3:
    %r20 = load float, ptr %r1
    %r21 = load float, ptr @PI
    %r22 = fcmp ogt float %r20,%r21
    br i1 %r22, label %L5, label %L6
L4:
    %r5 = load float, ptr %r1
    %r6 = load float, ptr @TWO_PI
    %r7 = fsub float 0x0,%r6
    %r8 = fcmp olt float %r5,%r7
    br i1 %r8, label %L2, label %L3
L5:
    %r23 = load float, ptr %r1
    %r24 = load float, ptr @TWO_PI
    %r25 = fsub float %r23,%r24
    store float %r25, ptr %r1
    br label %L6
L6:
    %r26 = load float, ptr %r1
    %r27 = load float, ptr @PI
    %r28 = fsub float 0x0,%r27
    %r29 = fcmp olt float %r26,%r28
    br i1 %r29, label %L7, label %L8
L7:
    %r30 = load float, ptr %r1
    %r31 = load float, ptr @TWO_PI
    %r32 = fadd float %r30,%r31
    store float %r32, ptr %r1
    br label %L8
L8:
    %r33 = load float, ptr %r1
    %r34 = call float @my_sin_impl(float %r33)
    ret float %r34
}
define void @dct(ptr %r0,ptr %r1,i32 %r2,i32 %r3)
{
L0:
    %r26 = alloca i32
    %r21 = alloca i32
    %r11 = alloca i32
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    store i32 %r2, ptr %r4
    store i32 %r3, ptr %r5
    br label %L1
L1:
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    br label %L2
L2:
    %r8 = load i32, ptr %r6
    %r9 = load i32, ptr %r4
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L4
L3:
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    br label %L5
L4:
    ret void
L5:
    %r13 = load i32, ptr %r11
    %r14 = load i32, ptr %r5
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L6, label %L7
L6:
    %r16 = load i32, ptr %r6
    %r17 = load i32, ptr %r11
    %r18 = getelementptr [8 x float], ptr %r0, i32 %r16, i32 %r17
    %r19 = add i32 0,0
    %r20 = sitofp i32 %r19 to float
    store float %r20, ptr %r18
    %r22 = add i32 0,0
    store i32 %r22, ptr %r21
    br label %L8
L7:
    %r84 = load i32, ptr %r6
    %r85 = add i32 1,0
    %r86 = add i32 %r84,%r85
    store i32 %r86, ptr %r6
    br label %L2
L8:
    %r23 = load i32, ptr %r21
    %r24 = load i32, ptr %r4
    %r25 = icmp slt i32 %r23,%r24
    br i1 %r25, label %L9, label %L10
L9:
    %r27 = add i32 0,0
    store i32 %r27, ptr %r26
    br label %L11
L10:
    %r81 = load i32, ptr %r11
    %r82 = add i32 1,0
    %r83 = add i32 %r81,%r82
    store i32 %r83, ptr %r11
    br label %L5
L11:
    %r28 = load i32, ptr %r26
    %r29 = load i32, ptr %r5
    %r30 = icmp slt i32 %r28,%r29
    br i1 %r30, label %L12, label %L13
L12:
    %r31 = load i32, ptr %r6
    %r32 = load i32, ptr %r11
    %r33 = getelementptr [8 x float], ptr %r0, i32 %r31, i32 %r32
    %r34 = load i32, ptr %r6
    %r35 = load i32, ptr %r11
    %r36 = getelementptr [8 x float], ptr %r0, i32 %r34, i32 %r35
    %r37 = load float, ptr %r36
    %r38 = load i32, ptr %r21
    %r39 = load i32, ptr %r26
    %r40 = getelementptr [8 x float], ptr %r1, i32 %r38, i32 %r39
    %r41 = load float, ptr %r40
    %r42 = load float, ptr @PI
    %r43 = load i32, ptr %r4
    %r44 = sitofp i32 %r43 to float
    %r45 = fdiv float %r42,%r44
    %r46 = load i32, ptr %r21
    %r47 = fadd float 0x3ff0000000000000,0x0
    %r48 = fadd float 0x4000000000000000,0x0
    %r49 = fdiv float %r47,%r48
    %r50 = sitofp i32 %r46 to float
    %r51 = fadd float %r50,%r49
    %r52 = fmul float %r45,%r51
    %r53 = load i32, ptr %r6
    %r54 = sitofp i32 %r53 to float
    %r55 = fmul float %r52,%r54
    %r56 = call float @my_cos(float %r55)
    %r57 = fmul float %r41,%r56
    %r58 = load float, ptr @PI
    %r59 = load i32, ptr %r5
    %r60 = sitofp i32 %r59 to float
    %r61 = fdiv float %r58,%r60
    %r62 = load i32, ptr %r26
    %r63 = fadd float 0x3ff0000000000000,0x0
    %r64 = fadd float 0x4000000000000000,0x0
    %r65 = fdiv float %r63,%r64
    %r66 = sitofp i32 %r62 to float
    %r67 = fadd float %r66,%r65
    %r68 = fmul float %r61,%r67
    %r69 = load i32, ptr %r11
    %r70 = sitofp i32 %r69 to float
    %r71 = fmul float %r68,%r70
    %r72 = call float @my_cos(float %r71)
    %r73 = fmul float %r57,%r72
    %r74 = fadd float %r37,%r73
    store float %r74, ptr %r33
    %r75 = load i32, ptr %r26
    %r76 = add i32 1,0
    %r77 = add i32 %r75,%r76
    store i32 %r77, ptr %r26
    br label %L11
L13:
    %r78 = load i32, ptr %r21
    %r79 = add i32 1,0
    %r80 = add i32 %r78,%r79
    store i32 %r80, ptr %r21
    br label %L8
}
define void @idct(ptr %r0,ptr %r1,i32 %r2,i32 %r3)
{
L0:
    %r29 = alloca i32
    %r28 = alloca i32
    %r11 = alloca i32
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    store i32 %r2, ptr %r4
    store i32 %r3, ptr %r5
    br label %L1
L1:
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    br label %L2
L2:
    %r8 = load i32, ptr %r6
    %r9 = load i32, ptr %r4
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L4
L3:
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    br label %L5
L4:
    ret void
L5:
    %r13 = load i32, ptr %r11
    %r14 = load i32, ptr %r5
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L6, label %L7
L6:
    %r16 = load i32, ptr %r6
    %r17 = load i32, ptr %r11
    %r18 = getelementptr [8 x float], ptr %r0, i32 %r16, i32 %r17
    %r19 = add i32 1,0
    %r20 = fadd float 0x4010000000000000,0x0
    %r21 = sitofp i32 %r19 to float
    %r22 = fdiv float %r21,%r20
    %r23 = add i32 0,0
    %r24 = add i32 0,0
    %r25 = getelementptr [8 x float], ptr %r1, i32 %r23, i32 %r24
    %r26 = load float, ptr %r25
    %r27 = fmul float %r22,%r26
    store float %r27, ptr %r18
    store i32 0, ptr %r28
    store i32 0, ptr %r29
    %r30 = add i32 1,0
    store i32 %r30, ptr %r28
    br label %L8
L7:
    %r156 = load i32, ptr %r6
    %r157 = add i32 1,0
    %r158 = add i32 %r156,%r157
    store i32 %r158, ptr %r6
    br label %L2
L8:
    %r31 = load i32, ptr %r28
    %r32 = load i32, ptr %r4
    %r33 = icmp slt i32 %r31,%r32
    br i1 %r33, label %L9, label %L10
L9:
    %r34 = load i32, ptr %r6
    %r35 = load i32, ptr %r11
    %r36 = getelementptr [8 x float], ptr %r0, i32 %r34, i32 %r35
    %r37 = load i32, ptr %r6
    %r38 = load i32, ptr %r11
    %r39 = getelementptr [8 x float], ptr %r0, i32 %r37, i32 %r38
    %r40 = load float, ptr %r39
    %r41 = add i32 1,0
    %r42 = fadd float 0x4000000000000000,0x0
    %r43 = sitofp i32 %r41 to float
    %r44 = fdiv float %r43,%r42
    %r45 = load i32, ptr %r28
    %r46 = add i32 0,0
    %r47 = getelementptr [8 x float], ptr %r1, i32 %r45, i32 %r46
    %r48 = load float, ptr %r47
    %r49 = fmul float %r44,%r48
    %r50 = fadd float %r40,%r49
    store float %r50, ptr %r36
    %r51 = load i32, ptr %r28
    %r52 = add i32 1,0
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr %r28
    br label %L8
L10:
    %r54 = add i32 1,0
    store i32 %r54, ptr %r29
    br label %L11
L11:
    %r55 = load i32, ptr %r29
    %r56 = load i32, ptr %r5
    %r57 = icmp slt i32 %r55,%r56
    br i1 %r57, label %L12, label %L13
L12:
    %r58 = load i32, ptr %r6
    %r59 = load i32, ptr %r11
    %r60 = getelementptr [8 x float], ptr %r0, i32 %r58, i32 %r59
    %r61 = load i32, ptr %r6
    %r62 = load i32, ptr %r11
    %r63 = getelementptr [8 x float], ptr %r0, i32 %r61, i32 %r62
    %r64 = load float, ptr %r63
    %r65 = add i32 1,0
    %r66 = fadd float 0x4000000000000000,0x0
    %r67 = sitofp i32 %r65 to float
    %r68 = fdiv float %r67,%r66
    %r69 = add i32 0,0
    %r70 = load i32, ptr %r29
    %r71 = getelementptr [8 x float], ptr %r1, i32 %r69, i32 %r70
    %r72 = load float, ptr %r71
    %r73 = fmul float %r68,%r72
    %r74 = fadd float %r64,%r73
    store float %r74, ptr %r60
    %r75 = load i32, ptr %r29
    %r76 = add i32 1,0
    %r77 = add i32 %r75,%r76
    store i32 %r77, ptr %r29
    br label %L11
L13:
    %r78 = add i32 1,0
    store i32 %r78, ptr %r28
    br label %L14
L14:
    %r79 = load i32, ptr %r28
    %r80 = load i32, ptr %r4
    %r81 = icmp slt i32 %r79,%r80
    br i1 %r81, label %L15, label %L16
L15:
    %r82 = add i32 1,0
    store i32 %r82, ptr %r29
    br label %L17
L16:
    %r136 = load i32, ptr %r6
    %r137 = load i32, ptr %r11
    %r138 = getelementptr [8 x float], ptr %r0, i32 %r136, i32 %r137
    %r139 = load i32, ptr %r6
    %r140 = load i32, ptr %r11
    %r141 = getelementptr [8 x float], ptr %r0, i32 %r139, i32 %r140
    %r142 = load float, ptr %r141
    %r143 = fadd float 0x4000000000000000,0x0
    %r144 = fmul float %r142,%r143
    %r145 = load i32, ptr %r4
    %r146 = sitofp i32 %r145 to float
    %r147 = fdiv float %r144,%r146
    %r148 = fadd float 0x4000000000000000,0x0
    %r149 = fmul float %r147,%r148
    %r150 = load i32, ptr %r5
    %r151 = sitofp i32 %r150 to float
    %r152 = fdiv float %r149,%r151
    store float %r152, ptr %r138
    %r153 = load i32, ptr %r11
    %r154 = add i32 1,0
    %r155 = add i32 %r153,%r154
    store i32 %r155, ptr %r11
    br label %L5
L17:
    %r83 = load i32, ptr %r29
    %r84 = load i32, ptr %r5
    %r85 = icmp slt i32 %r83,%r84
    br i1 %r85, label %L18, label %L19
L18:
    %r86 = load i32, ptr %r6
    %r87 = load i32, ptr %r11
    %r88 = getelementptr [8 x float], ptr %r0, i32 %r86, i32 %r87
    %r89 = load i32, ptr %r6
    %r90 = load i32, ptr %r11
    %r91 = getelementptr [8 x float], ptr %r0, i32 %r89, i32 %r90
    %r92 = load float, ptr %r91
    %r93 = load i32, ptr %r28
    %r94 = load i32, ptr %r29
    %r95 = getelementptr [8 x float], ptr %r1, i32 %r93, i32 %r94
    %r96 = load float, ptr %r95
    %r97 = load float, ptr @PI
    %r98 = load i32, ptr %r4
    %r99 = sitofp i32 %r98 to float
    %r100 = fdiv float %r97,%r99
    %r101 = load i32, ptr %r6
    %r102 = fadd float 0x3ff0000000000000,0x0
    %r103 = fadd float 0x4000000000000000,0x0
    %r104 = fdiv float %r102,%r103
    %r105 = sitofp i32 %r101 to float
    %r106 = fadd float %r105,%r104
    %r107 = fmul float %r100,%r106
    %r108 = load i32, ptr %r28
    %r109 = sitofp i32 %r108 to float
    %r110 = fmul float %r107,%r109
    %r111 = call float @my_cos(float %r110)
    %r112 = fmul float %r96,%r111
    %r113 = load float, ptr @PI
    %r114 = load i32, ptr %r5
    %r115 = sitofp i32 %r114 to float
    %r116 = fdiv float %r113,%r115
    %r117 = load i32, ptr %r11
    %r118 = fadd float 0x3ff0000000000000,0x0
    %r119 = fadd float 0x4000000000000000,0x0
    %r120 = fdiv float %r118,%r119
    %r121 = sitofp i32 %r117 to float
    %r122 = fadd float %r121,%r120
    %r123 = fmul float %r116,%r122
    %r124 = load i32, ptr %r29
    %r125 = sitofp i32 %r124 to float
    %r126 = fmul float %r123,%r125
    %r127 = call float @my_cos(float %r126)
    %r128 = fmul float %r112,%r127
    %r129 = fadd float %r92,%r128
    store float %r129, ptr %r88
    %r130 = load i32, ptr %r29
    %r131 = add i32 1,0
    %r132 = add i32 %r130,%r131
    store i32 %r132, ptr %r29
    br label %L17
L19:
    %r133 = load i32, ptr %r28
    %r134 = add i32 1,0
    %r135 = add i32 %r133,%r134
    store i32 %r135, ptr %r28
    br label %L14
}
define i32 @main()
{
L0:
    %r9 = alloca i32
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
    br label %L2
L2:
    %r6 = load i32, ptr %r4
    %r7 = load i32, ptr %r0
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L4
L3:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    br label %L5
L4:
    %r24 = getelementptr [8 x [8 x float]], ptr @test_dct, i32 0
    %r25 = getelementptr [8 x [8 x float]], ptr @test_block, i32 0
    %r26 = load i32, ptr %r0
    %r27 = load i32, ptr %r2
    call void @dct(ptr %r24,ptr %r25,i32 %r26,i32 %r27)
    %r28 = getelementptr [8 x [8 x float]], ptr @test_dct, i32 0
    %r29 = load i32, ptr %r0
    %r30 = load i32, ptr %r2
    call void @write_mat(ptr %r28,i32 %r29,i32 %r30)
    %r31 = getelementptr [8 x [8 x float]], ptr @test_idct, i32 0
    %r32 = getelementptr [8 x [8 x float]], ptr @test_dct, i32 0
    %r33 = load i32, ptr %r0
    %r34 = load i32, ptr %r2
    call void @idct(ptr %r31,ptr %r32,i32 %r33,i32 %r34)
    %r35 = getelementptr [8 x [8 x float]], ptr @test_idct, i32 0
    %r36 = load i32, ptr %r0
    %r37 = load i32, ptr %r2
    call void @write_mat(ptr %r35,i32 %r36,i32 %r37)
    %r38 = add i32 0,0
    ret i32 %r38
L5:
    %r11 = load i32, ptr %r9
    %r12 = load i32, ptr %r2
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L6, label %L7
L6:
    %r14 = load i32, ptr %r4
    %r15 = load i32, ptr %r9
    %r16 = getelementptr [8 x [8 x float]], ptr @test_block, i32 0, i32 %r14, i32 %r15
    %r17 = call float @getfloat()
    store float %r17, ptr %r16
    %r18 = load i32, ptr %r9
    %r19 = add i32 1,0
    %r20 = add i32 %r18,%r19
    store i32 %r20, ptr %r9
    br label %L5
L7:
    %r21 = load i32, ptr %r4
    %r22 = add i32 1,0
    %r23 = add i32 %r21,%r22
    store i32 %r23, ptr %r4
    br label %L2
}
