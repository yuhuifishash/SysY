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
    br label %L1
L1:
    %r10 = icmp slt i32 0,%r2
    br i1 %r10, label %L24, label %L5
L3:
    %r133 = phi i32 [%r109,%L4],[0,%L24]
    %r17 = icmp slt i32 0,%r3
    br i1 %r17, label %L25, label %L9
L4:
    %r112 = icmp slt i32 %r109,%r2
    br i1 %r112, label %L3, label %L5
L5:
    ret void
L7:
    %r131 = phi i32 [%r101,%L8],[0,%L25]
    %r23 = getelementptr float, ptr %r145, i32 %r131
    store float %r24, ptr %r23
    %r29 = icmp slt i32 0,%r2
    br i1 %r29, label %L26, label %L13
L8:
    %r104 = icmp slt i32 %r101,%r3
    br i1 %r104, label %L7, label %L9
L9:
    %r109 = add i32 %r133,1
    br label %L4
L11:
    %r127 = phi i32 [%r93,%L12],[0,%L26]
    %r36 = icmp slt i32 0,%r3
    br i1 %r36, label %L27, label %L17
L12:
    %r96 = icmp slt i32 %r93,%r2
    br i1 %r96, label %L11, label %L13
L13:
    %r101 = add i32 %r131,1
    br label %L8
L15:
    %r121 = phi i32 [%r85,%L16],[0,%L27]
    %r42 = load float, ptr %r41
    %r45 = getelementptr float, ptr %r147, i32 %r121
    %r46 = load float, ptr %r45
    br label %L18
L16:
    %r88 = icmp slt i32 %r85,%r3
    br i1 %r88, label %L15, label %L17
L17:
    %r93 = add i32 %r127,1
    br label %L12
L18:
    br label %L20
L19:
    %r62 = fmul float %r46,%r139
    %r71 = sitofp i32 %r121 to float
    %r72 = fadd float %r71,%r70
    %r73 = fmul float %r66,%r72
    %r76 = fmul float %r73,%r75
    br label %L21
L20:
    br label %L19
L21:
    br label %L23
L22:
    %r78 = fmul float %r62,%r144
    %r79 = fadd float %r42,%r78
    store float %r79, ptr %r41
    %r85 = add i32 %r121,1
    br label %L16
L23:
    %r143 = fadd float %r76,%r142
    %r144 = call float @my_sin(float %r143)
    br label %L22
L24:
    br label %L3
L25:
    %r145 = getelementptr [8 x float], ptr %r0, i32 %r133
    %r24 = sitofp i32 0 to float
    br label %L7
L26:
    br label %L11
L27:
    %r41 = getelementptr [8 x float], ptr %r0, i32 %r133, i32 %r131
    %r147 = getelementptr [8 x float], ptr %r1, i32 %r127
    %r47 = fadd float 0x0,0x400921fb60000000
    %r49 = sitofp i32 %r2 to float
    %r50 = fdiv float %r47,%r49
    %r52 = fadd float 0x0,0x3ff0000000000000
    %r53 = fadd float 0x0,0x4000000000000000
    %r54 = fdiv float %r52,%r53
    %r55 = sitofp i32 %r127 to float
    %r56 = fadd float %r55,%r54
    %r57 = fmul float %r50,%r56
    %r59 = sitofp i32 %r133 to float
    %r60 = fmul float %r57,%r59
    %r63 = fadd float 0x0,0x400921fb60000000
    %r65 = sitofp i32 %r3 to float
    %r66 = fdiv float %r63,%r65
    %r68 = fadd float 0x0,0x3ff0000000000000
    %r69 = fadd float 0x0,0x4000000000000000
    %r70 = fdiv float %r68,%r69
    %r75 = sitofp i32 %r131 to float
    %r135 = fadd float 0x0,0x400921fb60000000
    %r136 = sitofp i32 2 to float
    %r137 = fdiv float %r135,%r136
    %r138 = fadd float %r60,%r137
    %r139 = call float @my_sin(float %r138)
    %r140 = fadd float 0x0,0x400921fb60000000
    %r142 = fdiv float %r140,%r136
    br label %L15
}
define float @my_fabs(float %r0)
{
L0:
    br label %L1
L1:
    %r4 = sitofp i32 0 to float
    %r5 = fcmp ogt float %r0,%r4
    br i1 %r5, label %L2, label %L3
L2:
    ret float %r0
L3:
    %r10 = fsub float 0x0,%r0
    ret float %r10
}
define void @write_mat(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r9 = icmp slt i32 0,%r1
    br i1 %r9, label %L10, label %L5
L3:
    %r50 = phi i32 [%r39,%L4],[0,%L10]
    %r14 = getelementptr [8 x float], ptr %r0, i32 %r50, i32 0
    %r15 = load float, ptr %r14
    call void @putfloat(float %r15)
    %r20 = icmp slt i32 1,%r2
    br i1 %r20, label %L11, label %L9
L4:
    %r42 = icmp slt i32 %r39,%r1
    br i1 %r42, label %L3, label %L5
L5:
    call void @putch(i32 10)
    ret void
L7:
    %r48 = phi i32 [%r30,%L8],[1,%L11]
    call void @putch(i32 32)
    %r26 = getelementptr float, ptr %r53, i32 %r48
    %r27 = load float, ptr %r26
    call void @putfloat(float %r27)
    %r30 = add i32 %r48,1
    br label %L8
L8:
    %r33 = icmp slt i32 %r30,%r2
    br i1 %r33, label %L7, label %L9
L9:
    call void @putch(i32 10)
    %r39 = add i32 %r50,1
    br label %L4
L10:
    br label %L3
L11:
    %r53 = getelementptr [8 x float], ptr %r0, i32 %r50
    br label %L7
}
define void @idct(ptr %r0,ptr %r1,i32 %r2,i32 %r3)
{
L0:
    br label %L1
L1:
    %r10 = icmp slt i32 0,%r2
    br i1 %r10, label %L32, label %L5
L3:
    %r225 = phi i32 [%r197,%L4],[0,%L32]
    %r17 = icmp slt i32 0,%r3
    br i1 %r17, label %L33, label %L9
L4:
    %r200 = icmp slt i32 %r197,%r2
    br i1 %r200, label %L3, label %L5
L5:
    ret void
L7:
    %r223 = phi i32 [%r189,%L8],[0,%L33]
    %r27 = load float, ptr %r26
    %r28 = fmul float %r23,%r27
    %r31 = getelementptr float, ptr %r237, i32 %r223
    store float %r28, ptr %r31
    %r39 = icmp slt i32 1,%r2
    br i1 %r39, label %L34, label %L13
L8:
    %r192 = icmp slt i32 %r189,%r3
    br i1 %r192, label %L7, label %L9
L9:
    %r197 = add i32 %r225,1
    br label %L4
L11:
    %r217 = phi i32 [%r61,%L12],[1,%L34]
    %r45 = load float, ptr %r44
    %r52 = getelementptr [8 x float], ptr %r1, i32 %r217, i32 0
    %r53 = load float, ptr %r52
    %r54 = fmul float %r49,%r53
    %r55 = fadd float %r45,%r54
    store float %r55, ptr %r44
    %r61 = add i32 %r217,1
    br label %L12
L12:
    %r64 = icmp slt i32 %r61,%r2
    br i1 %r64, label %L11, label %L13
L13:
    %r70 = icmp slt i32 1,%r3
    br i1 %r70, label %L35, label %L17
L15:
    %r207 = phi i32 [%r92,%L16],[1,%L35]
    %r76 = load float, ptr %r75
    %r83 = getelementptr [8 x float], ptr %r1, i32 0, i32 %r207
    %r84 = load float, ptr %r83
    %r85 = fmul float %r80,%r84
    %r86 = fadd float %r76,%r85
    store float %r86, ptr %r75
    %r92 = add i32 %r207,1
    br label %L16
L16:
    %r95 = icmp slt i32 %r92,%r3
    br i1 %r95, label %L15, label %L17
L17:
    %r101 = icmp slt i32 1,%r2
    br i1 %r101, label %L36, label %L21
L19:
    %r219 = phi i32 [%r164,%L20],[1,%L36]
    %r107 = icmp slt i32 1,%r3
    br i1 %r107, label %L37, label %L25
L20:
    %r167 = icmp slt i32 %r164,%r2
    br i1 %r167, label %L19, label %L21
L21:
    %r172 = getelementptr float, ptr %r237, i32 %r223
    %r173 = load float, ptr %r172
    %r175 = fmul float %r173,%r174
    %r178 = fdiv float %r175,%r177
    %r180 = fmul float %r178,%r179
    %r183 = fdiv float %r180,%r182
    store float %r183, ptr %r172
    %r189 = add i32 %r223,1
    br label %L8
L23:
    %r211 = phi i32 [%r156,%L24],[1,%L37]
    %r113 = load float, ptr %r112
    %r116 = getelementptr float, ptr %r243, i32 %r211
    %r117 = load float, ptr %r116
    br label %L26
L24:
    %r159 = icmp slt i32 %r156,%r3
    br i1 %r159, label %L23, label %L25
L25:
    %r164 = add i32 %r219,1
    br label %L20
L26:
    br label %L28
L27:
    %r133 = fmul float %r117,%r231
    %r146 = sitofp i32 %r211 to float
    %r147 = fmul float %r144,%r146
    br label %L29
L28:
    br label %L27
L29:
    br label %L31
L30:
    %r149 = fmul float %r133,%r236
    %r150 = fadd float %r113,%r149
    store float %r150, ptr %r112
    %r156 = add i32 %r211,1
    br label %L24
L31:
    %r235 = fadd float %r147,%r234
    %r236 = call float @my_sin(float %r235)
    br label %L30
L32:
    br label %L3
L33:
    %r21 = fadd float 0x0,0x4010000000000000
    %r22 = sitofp i32 1 to float
    %r23 = fdiv float %r22,%r21
    %r26 = getelementptr [8 x float], ptr %r1, i32 0, i32 0
    %r237 = getelementptr [8 x float], ptr %r0, i32 %r225
    %r174 = fadd float 0x0,0x4000000000000000
    %r177 = sitofp i32 %r2 to float
    %r179 = fadd float 0x0,0x4000000000000000
    %r182 = sitofp i32 %r3 to float
    br label %L7
L34:
    %r44 = getelementptr [8 x float], ptr %r0, i32 %r225, i32 %r223
    %r47 = fadd float 0x0,0x4000000000000000
    %r48 = sitofp i32 1 to float
    %r49 = fdiv float %r48,%r47
    br label %L11
L35:
    %r75 = getelementptr [8 x float], ptr %r0, i32 %r225, i32 %r223
    %r78 = fadd float 0x0,0x4000000000000000
    %r79 = sitofp i32 1 to float
    %r80 = fdiv float %r79,%r78
    br label %L15
L36:
    br label %L19
L37:
    %r112 = getelementptr [8 x float], ptr %r0, i32 %r225, i32 %r223
    %r243 = getelementptr [8 x float], ptr %r1, i32 %r219
    %r118 = fadd float 0x0,0x400921fb60000000
    %r120 = sitofp i32 %r2 to float
    %r121 = fdiv float %r118,%r120
    %r123 = fadd float 0x0,0x3ff0000000000000
    %r124 = fadd float 0x0,0x4000000000000000
    %r125 = fdiv float %r123,%r124
    %r126 = sitofp i32 %r225 to float
    %r127 = fadd float %r126,%r125
    %r128 = fmul float %r121,%r127
    %r130 = sitofp i32 %r219 to float
    %r131 = fmul float %r128,%r130
    %r134 = fadd float 0x0,0x400921fb60000000
    %r136 = sitofp i32 %r3 to float
    %r137 = fdiv float %r134,%r136
    %r139 = fadd float 0x0,0x3ff0000000000000
    %r140 = fadd float 0x0,0x4000000000000000
    %r141 = fdiv float %r139,%r140
    %r142 = sitofp i32 %r223 to float
    %r143 = fadd float %r142,%r141
    %r144 = fmul float %r137,%r143
    %r227 = fadd float 0x0,0x400921fb60000000
    %r228 = sitofp i32 2 to float
    %r229 = fdiv float %r227,%r228
    %r230 = fadd float %r131,%r229
    %r231 = call float @my_sin(float %r230)
    %r232 = fadd float 0x0,0x400921fb60000000
    %r234 = fdiv float %r232,%r228
    br label %L23
}
define float @p(float %r0)
{
L0:
    br label %L1
L1:
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
L0:
    br label %L1
L1:
    br label %L4
L2:
    ret float %r0
L3:
    %r10 = fadd float 0x0,0x4008000000000000
    %r11 = fdiv float %r0,%r10
    %r12 = call float @my_sin_impl(float %r11)
    br label %L9
L4:
    br label %L6
L5:
    %r3 = phi float [%r0,%L7],[%r16,%L8]
    %r4 = fadd float 0x0,0x3eb0c6f7a0000000
    %r5 = fcmp ole float %r3,%r4
    br i1 %r5, label %L2, label %L3
L6:
    %r14 = sitofp i32 0 to float
    %r15 = fcmp ogt float %r0,%r14
    br i1 %r15, label %L7, label %L8
L7:
    br label %L5
L8:
    %r16 = fsub float 0x0,%r0
    br label %L5
L9:
    br label %L11
L10:
    ret float %r23
L11:
    %r17 = sitofp i32 3 to float
    %r18 = fmul float %r17,%r12
    %r19 = sitofp i32 4 to float
    %r20 = fmul float %r19,%r12
    %r21 = fmul float %r20,%r12
    %r22 = fmul float %r21,%r12
    %r23 = fsub float %r18,%r22
    br label %L10
}
define float @my_sin(float %r0)
{
L0:
    br label %L1
L1:
    %r3 = fadd float 0x0,0x401921fb60000000
    %r4 = fcmp ogt float %r0,%r3
    br i1 %r4, label %L2, label %L4
L2:
    %r18 = fadd float 0x0,0x401921fb60000000
    %r19 = fdiv float %r0,%r18
    %r20 = fptosi float %r19 to i32
    %r23 = fadd float 0x0,0x401921fb60000000
    %r24 = sitofp i32 %r20 to float
    %r25 = fmul float %r24,%r23
    %r26 = fsub float %r0,%r25
    br label %L3
L3:
    %r46 = phi float [%r26,%L2],[%r0,%L4]
    %r28 = fadd float 0x0,0x400921fb60000000
    %r29 = fcmp ogt float %r46,%r28
    br i1 %r29, label %L6, label %L7
L4:
    %r8 = fadd float 0x0,0x401921fb60000000
    %r9 = fsub float 0x0,%r8
    %r10 = fcmp olt float %r0,%r9
    br i1 %r10, label %L2, label %L3
L6:
    %r33 = fadd float 0x0,0x401921fb60000000
    %r34 = fsub float %r46,%r33
    br label %L7
L7:
    %r47 = phi float [%r46,%L3],[%r34,%L6]
    %r36 = fadd float 0x0,0x400921fb60000000
    %r37 = fsub float 0x0,%r36
    %r38 = fcmp olt float %r47,%r37
    br i1 %r38, label %L8, label %L9
L8:
    %r42 = fadd float 0x0,0x401921fb60000000
    %r43 = fadd float %r47,%r42
    br label %L9
L9:
    %r48 = phi float [%r47,%L7],[%r43,%L8]
    %r45 = call float @my_sin_impl(float %r48)
    ret float %r45
}
define float @my_cos(float %r0)
{
L0:
    br label %L1
L1:
    %r3 = fadd float 0x0,0x400921fb60000000
    %r5 = sitofp i32 2 to float
    %r6 = fdiv float %r3,%r5
    %r7 = fadd float %r0,%r6
    %r8 = call float @my_sin(float %r7)
    ret float %r8
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    %r8 = icmp slt i32 0,%r1
    br i1 %r8, label %L10, label %L5
L3:
    %r57 = phi i32 [0,%L10],[%r32,%L4]
    %r15 = icmp slt i32 0,%r3
    br i1 %r15, label %L11, label %L9
L4:
    %r35 = icmp slt i32 %r32,%r1
    br i1 %r35, label %L3, label %L5
L5:
    %r38 = getelementptr float, ptr @test_dct, i32 0
    %r39 = getelementptr float, ptr @test_block, i32 0
    call void @dct(ptr %r38,ptr %r39,i32 %r1,i32 %r3)
    call void @write_mat(ptr %r38,i32 %r1,i32 %r3)
    %r45 = getelementptr float, ptr @test_idct, i32 0
    call void @idct(ptr %r45,ptr %r38,i32 %r1,i32 %r3)
    call void @write_mat(ptr %r45,i32 %r1,i32 %r3)
    ret i32 0
L7:
    %r55 = phi i32 [%r24,%L8],[0,%L11]
    %r18 = call float @getfloat()
    %r21 = getelementptr float, ptr %r59, i32 %r55
    store float %r18, ptr %r21
    %r24 = add i32 %r55,1
    br label %L8
L8:
    %r27 = icmp slt i32 %r24,%r3
    br i1 %r27, label %L7, label %L9
L9:
    %r32 = add i32 %r57,1
    br label %L4
L10:
    br label %L3
L11:
    %r59 = getelementptr [8 x [8 x float]], ptr @test_block, i32 0, i32 %r57
    br label %L7
}
