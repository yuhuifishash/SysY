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
define float @my_fabs(float %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = sitofp i32 0 to float
    %r5 = fcmp ogt float %r0,%r4
    br i1 %r5, label %L2, label %L3
L2:  ;
    ret float %r0
L3:  ;
    %r8 = fsub float 0x0,%r0
    ret float %r8
}
define float @my_cos(float %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = fadd float 0x0,0x400921fb60000000
    %r5 = sitofp i32 2 to float
    %r6 = fdiv float %r3,%r5
    %r7 = fadd float %r0,%r6
    %r8 = call float @my_sin(float %r7)
    ret float %r8
}
define float @p(float %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = sitofp i32 3 to float
    %r5 = fmul float %r4,%r0
    %r8 = sitofp i32 4 to float
    %r9 = fmul float %r8,%r0
    %r11 = fmul float %r9,%r0
    %r13 = fmul float %r11,%r0
    %r14 = fsub float %r5,%r13
    ret float %r14
}
define float @my_sin_impl(float %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = call float @my_fabs(float %r0)
    %r4 = fadd float 0x0,0x3eb0c6f7a0000000
    %r5 = fcmp ole float %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:  ;
    ret float %r0
L3:  ;
    %r8 = fadd float 0x4008000000000000,0x0
    %r9 = fdiv float %r0,%r8
    %r10 = call float @my_sin_impl(float %r9)
    %r11 = call float @p(float %r10)
    ret float %r11
}
define float @my_sin(float %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = fadd float 0x0,0x401921fb60000000
    %r4 = fcmp ogt float %r0,%r3
    br i1 %r4, label %L2, label %L4
L2:  ;
    %r11 = fadd float 0x0,0x401921fb60000000
    %r12 = fdiv float %r0,%r11
    %r13 = fptosi float %r12 to i32
    %r16 = fadd float 0x0,0x401921fb60000000
    %r17 = sitofp i32 %r13 to float
    %r18 = fmul float %r17,%r16
    %r19 = fsub float %r0,%r18
    br label %L3
L3:  ;
    %r35 = phi float [%r19,%L2],[%r0,%L4]
    %r21 = fadd float 0x0,0x400921fb60000000
    %r22 = fcmp ogt float %r35,%r21
    br i1 %r22, label %L5, label %L6
L4:  ;
    %r6 = fadd float 0x0,0x401921fb60000000
    %r7 = fsub float 0x0,%r6
    %r8 = fcmp olt float %r0,%r7
    br i1 %r8, label %L2, label %L3
L5:  ;
    %r24 = fadd float 0x0,0x401921fb60000000
    %r25 = fsub float %r35,%r24
    br label %L6
L6:  ;
    %r36 = phi float [%r35,%L3],[%r25,%L5]
    %r27 = fadd float 0x0,0x400921fb60000000
    %r28 = fsub float 0x0,%r27
    %r29 = fcmp olt float %r36,%r28
    br i1 %r29, label %L7, label %L8
L7:  ;
    %r31 = fadd float 0x0,0x401921fb60000000
    %r32 = fadd float %r36,%r31
    br label %L8
L8:  ;
    %r37 = phi float [%r36,%L6],[%r32,%L7]
    %r34 = call float @my_sin_impl(float %r37)
    ret float %r34
}
define void @write_mat(ptr %r0,i32 %r1,i32 %r2)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r34 = phi i32 [0,%L1],[%r30,%L7]
    %r9 = icmp slt i32 %r34,%r1
    br i1 %r9, label %L3, label %L4
L3:  ;
    %r12 = getelementptr [8 x float], ptr %r0, i32 %r34, i32 0
    %r13 = load float, ptr %r12
    call void @putfloat(float %r13)
    br label %L5
L4:  ;
    call void @putch(i32 10)
    ret void
L5:  ;
    %r33 = phi i32 [1,%L3],[%r26,%L6]
    %r18 = icmp slt i32 %r33,%r2
    br i1 %r18, label %L6, label %L7
L6:  ;
    call void @putch(i32 32)
    %r22 = getelementptr [8 x float], ptr %r0, i32 %r34, i32 %r33
    %r23 = load float, ptr %r22
    call void @putfloat(float %r23)
    %r26 = add i32 %r33,1
    br label %L5
L7:  ;
    call void @putch(i32 10)
    %r30 = add i32 %r34,1
    br label %L2
}
define void @dct(ptr %r0,ptr %r1,i32 %r2,i32 %r3)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r96 = phi i32 [0,%L1],[%r86,%L7]
    %r10 = icmp slt i32 %r96,%r2
    br i1 %r10, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    ret void
L5:  ;
    %r95 = phi i32 [0,%L3],[%r83,%L10]
    %r15 = icmp slt i32 %r95,%r3
    br i1 %r15, label %L6, label %L7
L6:  ;
    %r18 = getelementptr [8 x float], ptr %r0, i32 %r96, i32 %r95
    %r20 = sitofp i32 0 to float
    store float %r20, ptr %r18
    br label %L8
L7:  ;
    %r86 = add i32 %r96,1
    br label %L2
L8:  ;
    %r93 = phi i32 [0,%L6],[%r80,%L13]
    %r25 = icmp slt i32 %r93,%r2
    br i1 %r25, label %L9, label %L10
L9:  ;
    br label %L11
L10:  ;
    %r83 = add i32 %r95,1
    br label %L5
L11:  ;
    %r90 = phi i32 [0,%L9],[%r77,%L12]
    %r30 = icmp slt i32 %r90,%r3
    br i1 %r30, label %L12, label %L13
L12:  ;
    %r33 = getelementptr [8 x float], ptr %r0, i32 %r96, i32 %r95
    %r36 = getelementptr [8 x float], ptr %r0, i32 %r96, i32 %r95
    %r37 = load float, ptr %r36
    %r40 = getelementptr [8 x float], ptr %r1, i32 %r93, i32 %r90
    %r41 = load float, ptr %r40
    %r42 = fadd float 0x0,0x400921fb60000000
    %r44 = sitofp i32 %r2 to float
    %r45 = fdiv float %r42,%r44
    %r47 = fadd float 0x3ff0000000000000,0x0
    %r48 = fadd float 0x4000000000000000,0x0
    %r49 = fdiv float %r47,%r48
    %r50 = sitofp i32 %r93 to float
    %r51 = fadd float %r50,%r49
    %r52 = fmul float %r45,%r51
    %r54 = sitofp i32 %r96 to float
    %r55 = fmul float %r52,%r54
    %r56 = call float @my_cos(float %r55)
    %r57 = fmul float %r41,%r56
    %r58 = fadd float 0x0,0x400921fb60000000
    %r60 = sitofp i32 %r3 to float
    %r61 = fdiv float %r58,%r60
    %r63 = fadd float 0x3ff0000000000000,0x0
    %r64 = fadd float 0x4000000000000000,0x0
    %r65 = fdiv float %r63,%r64
    %r66 = sitofp i32 %r90 to float
    %r67 = fadd float %r66,%r65
    %r68 = fmul float %r61,%r67
    %r70 = sitofp i32 %r95 to float
    %r71 = fmul float %r68,%r70
    %r72 = call float @my_cos(float %r71)
    %r73 = fmul float %r57,%r72
    %r74 = fadd float %r37,%r73
    store float %r74, ptr %r33
    %r77 = add i32 %r90,1
    br label %L11
L13:  ;
    %r80 = add i32 %r93,1
    br label %L8
}
define void @idct(ptr %r0,ptr %r1,i32 %r2,i32 %r3)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r172 = phi i32 [0,%L1],[%r160,%L7]
    %r10 = icmp slt i32 %r172,%r2
    br i1 %r10, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    ret void
L5:  ;
    %r171 = phi i32 [0,%L3],[%r157,%L16]
    %r15 = icmp slt i32 %r171,%r3
    br i1 %r15, label %L6, label %L7
L6:  ;
    %r18 = getelementptr [8 x float], ptr %r0, i32 %r172, i32 %r171
    %r20 = fadd float 0x4010000000000000,0x0
    %r21 = sitofp i32 1 to float
    %r22 = fdiv float %r21,%r20
    %r25 = getelementptr [8 x float], ptr %r1, i32 0, i32 0
    %r26 = load float, ptr %r25
    %r27 = fmul float %r22,%r26
    store float %r27, ptr %r18
    br label %L8
L7:  ;
    %r160 = add i32 %r172,1
    br label %L2
L8:  ;
    %r168 = phi i32 [1,%L6],[%r55,%L9]
    %r35 = icmp slt i32 %r168,%r2
    br i1 %r35, label %L9, label %L10
L9:  ;
    %r38 = getelementptr [8 x float], ptr %r0, i32 %r172, i32 %r171
    %r41 = getelementptr [8 x float], ptr %r0, i32 %r172, i32 %r171
    %r42 = load float, ptr %r41
    %r44 = fadd float 0x4000000000000000,0x0
    %r45 = sitofp i32 1 to float
    %r46 = fdiv float %r45,%r44
    %r49 = getelementptr [8 x float], ptr %r1, i32 %r168, i32 0
    %r50 = load float, ptr %r49
    %r51 = fmul float %r46,%r50
    %r52 = fadd float %r42,%r51
    store float %r52, ptr %r38
    %r55 = add i32 %r168,1
    br label %L8
L10:  ;
    br label %L11
L11:  ;
    %r163 = phi i32 [1,%L10],[%r79,%L12]
    %r59 = icmp slt i32 %r163,%r3
    br i1 %r59, label %L12, label %L13
L12:  ;
    %r62 = getelementptr [8 x float], ptr %r0, i32 %r172, i32 %r171
    %r65 = getelementptr [8 x float], ptr %r0, i32 %r172, i32 %r171
    %r66 = load float, ptr %r65
    %r68 = fadd float 0x4000000000000000,0x0
    %r69 = sitofp i32 1 to float
    %r70 = fdiv float %r69,%r68
    %r73 = getelementptr [8 x float], ptr %r1, i32 0, i32 %r163
    %r74 = load float, ptr %r73
    %r75 = fmul float %r70,%r74
    %r76 = fadd float %r66,%r75
    store float %r76, ptr %r62
    %r79 = add i32 %r163,1
    br label %L11
L13:  ;
    br label %L14
L14:  ;
    %r169 = phi i32 [1,%L13],[%r137,%L19]
    %r83 = icmp slt i32 %r169,%r2
    br i1 %r83, label %L15, label %L16
L15:  ;
    br label %L17
L16:  ;
    %r140 = getelementptr [8 x float], ptr %r0, i32 %r172, i32 %r171
    %r143 = getelementptr [8 x float], ptr %r0, i32 %r172, i32 %r171
    %r144 = load float, ptr %r143
    %r145 = fadd float 0x4000000000000000,0x0
    %r146 = fmul float %r144,%r145
    %r148 = sitofp i32 %r2 to float
    %r149 = fdiv float %r146,%r148
    %r150 = fadd float 0x4000000000000000,0x0
    %r151 = fmul float %r149,%r150
    %r153 = sitofp i32 %r3 to float
    %r154 = fdiv float %r151,%r153
    store float %r154, ptr %r140
    %r157 = add i32 %r171,1
    br label %L5
L17:  ;
    %r165 = phi i32 [1,%L15],[%r134,%L18]
    %r87 = icmp slt i32 %r165,%r3
    br i1 %r87, label %L18, label %L19
L18:  ;
    %r90 = getelementptr [8 x float], ptr %r0, i32 %r172, i32 %r171
    %r93 = getelementptr [8 x float], ptr %r0, i32 %r172, i32 %r171
    %r94 = load float, ptr %r93
    %r97 = getelementptr [8 x float], ptr %r1, i32 %r169, i32 %r165
    %r98 = load float, ptr %r97
    %r99 = fadd float 0x0,0x400921fb60000000
    %r101 = sitofp i32 %r2 to float
    %r102 = fdiv float %r99,%r101
    %r104 = fadd float 0x3ff0000000000000,0x0
    %r105 = fadd float 0x4000000000000000,0x0
    %r106 = fdiv float %r104,%r105
    %r107 = sitofp i32 %r172 to float
    %r108 = fadd float %r107,%r106
    %r109 = fmul float %r102,%r108
    %r111 = sitofp i32 %r169 to float
    %r112 = fmul float %r109,%r111
    %r113 = call float @my_cos(float %r112)
    %r114 = fmul float %r98,%r113
    %r115 = fadd float 0x0,0x400921fb60000000
    %r117 = sitofp i32 %r3 to float
    %r118 = fdiv float %r115,%r117
    %r120 = fadd float 0x3ff0000000000000,0x0
    %r121 = fadd float 0x4000000000000000,0x0
    %r122 = fdiv float %r120,%r121
    %r123 = sitofp i32 %r171 to float
    %r124 = fadd float %r123,%r122
    %r125 = fmul float %r118,%r124
    %r127 = sitofp i32 %r165 to float
    %r128 = fmul float %r125,%r127
    %r129 = call float @my_cos(float %r128)
    %r130 = fmul float %r114,%r129
    %r131 = fadd float %r94,%r130
    store float %r131, ptr %r90
    %r134 = add i32 %r165,1
    br label %L17
L19:  ;
    %r137 = add i32 %r169,1
    br label %L14
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    br label %L2
L2:  ;
    %r41 = phi i32 [0,%L1],[%r23,%L7]
    %r8 = icmp slt i32 %r41,%r1
    br i1 %r8, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    %r24 = getelementptr [8 x [8 x float]], ptr @test_dct, i32 0
    %r25 = getelementptr [8 x [8 x float]], ptr @test_block, i32 0
    call void @dct(ptr %r24,ptr %r25,i32 %r1,i32 %r3)
    %r28 = getelementptr [8 x [8 x float]], ptr @test_dct, i32 0
    call void @write_mat(ptr %r28,i32 %r1,i32 %r3)
    %r31 = getelementptr [8 x [8 x float]], ptr @test_idct, i32 0
    %r32 = getelementptr [8 x [8 x float]], ptr @test_dct, i32 0
    call void @idct(ptr %r31,ptr %r32,i32 %r1,i32 %r3)
    %r35 = getelementptr [8 x [8 x float]], ptr @test_idct, i32 0
    call void @write_mat(ptr %r35,i32 %r1,i32 %r3)
    ret i32 0
L5:  ;
    %r40 = phi i32 [0,%L3],[%r20,%L6]
    %r13 = icmp slt i32 %r40,%r3
    br i1 %r13, label %L6, label %L7
L6:  ;
    %r16 = getelementptr [8 x [8 x float]], ptr @test_block, i32 0, i32 %r41, i32 %r40
    %r17 = call float @getfloat()
    store float %r17, ptr %r16
    %r20 = add i32 %r40,1
    br label %L5
L7:  ;
    %r23 = add i32 %r41,1
    br label %L2
}
