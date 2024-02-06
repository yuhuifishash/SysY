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
@W = global i32 192
@H = global i32 192
@N = global i32 24
@PI = global float 0x400921fb60000000
@TWO_PI = global float 0x401921fb60000000
@MAX_STEP = global i32 10
@MAX_DISTANCE = global float 0x4000000000000000
@EPSILON = global float 0x3eb0c6f7a0000000
@RAND_MAX = global i32 100000006
@seed = global i32 0
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
define i32 @rand()
{
L0:
    br label %L1
L1:
    %r0 = load i32, ptr @seed
    %r1 = add i32 0,19980130
    %r2 = mul i32 %r0,%r1
    %r3 = add i32 0,23333
    %r4 = add i32 %r2,%r3
    %r5 = add i32 0,100000007
    %r6 = srem i32 %r4,%r5
    store i32 %r6, ptr @seed
    %r7 = load i32, ptr @seed
    %r8 = add i32 0,0
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
L2:
    %r12 = load i32, ptr @seed
    %r13 = add i32 0,100000007
    %r14 = add i32 %r12,%r13
    store i32 %r14, ptr @seed
    br label %L3
L3:
    %r15 = load i32, ptr @seed
    ret i32 %r15
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
define float @my_sqrt(float %r0)
{
L0:
    %r19 = alloca i32
    %r2 = alloca float
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r3 = load float, ptr %r1
    %r4 = add i32 0,8
    %r5 = sitofp i32 %r4 to float
    %r6 = fdiv float %r3,%r5
    %r7 = fadd float 0x0,0x3fe0000000000000
    %r8 = fadd float %r6,%r7
    %r9 = add i32 0,2
    %r10 = load float, ptr %r1
    %r11 = sitofp i32 %r9 to float
    %r12 = fmul float %r11,%r10
    %r13 = add i32 0,4
    %r14 = load float, ptr %r1
    %r15 = sitofp i32 %r13 to float
    %r16 = fadd float %r15,%r14
    %r17 = fdiv float %r12,%r16
    %r18 = fadd float %r8,%r17
    store float %r18, ptr %r2
    %r20 = add i32 0,10
    store i32 %r20, ptr %r19
    %r21 = load i32, ptr %r19
    %r22 = icmp ne i32 %r21,0
    br i1 %r22, label %L3, label %L5
L3:
    %r23 = load float, ptr %r2
    %r24 = load float, ptr %r1
    %r25 = load float, ptr %r2
    %r26 = fdiv float %r24,%r25
    %r27 = fadd float %r23,%r26
    %r28 = add i32 0,2
    %r29 = sitofp i32 %r28 to float
    %r30 = fdiv float %r27,%r29
    store float %r30, ptr %r2
    %r31 = load i32, ptr %r19
    %r32 = add i32 0,1
    %r33 = sub i32 %r31,%r32
    store i32 %r33, ptr %r19
    br label %L4
L4:
    %r34 = load i32, ptr %r19
    %r35 = icmp ne i32 %r34,0
    br i1 %r35, label %L3, label %L5
L5:
    %r36 = load float, ptr %r2
    ret float %r36
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
define float @circle_sdf(float %r0,float %r1,float %r2,float %r3,float %r4)
{
L0:
    %r14 = alloca float
    %r10 = alloca float
    %r5 = alloca float
    store float %r0, ptr %r5
    %r6 = alloca float
    store float %r1, ptr %r6
    %r7 = alloca float
    store float %r2, ptr %r7
    %r8 = alloca float
    store float %r3, ptr %r8
    %r9 = alloca float
    store float %r4, ptr %r9
    br label %L1
L1:
    %r11 = load float, ptr %r5
    %r12 = load float, ptr %r7
    %r13 = fsub float %r11,%r12
    store float %r13, ptr %r10
    %r15 = load float, ptr %r6
    %r16 = load float, ptr %r8
    %r17 = fsub float %r15,%r16
    store float %r17, ptr %r14
    %r18 = load float, ptr %r10
    %r19 = load float, ptr %r10
    %r20 = fmul float %r18,%r19
    %r21 = load float, ptr %r14
    %r22 = load float, ptr %r14
    %r23 = fmul float %r21,%r22
    %r24 = fadd float %r20,%r23
    %r25 = call float @my_sqrt(float %r24)
    %r26 = load float, ptr %r9
    %r27 = fsub float %r25,%r26
    ret float %r27
}
define void @scene(float %r0,float %r1,ptr %r2)
{
L0:
    %r12 = alloca float
    %r5 = alloca float
    %r3 = alloca float
    store float %r0, ptr %r3
    %r4 = alloca float
    store float %r1, ptr %r4
    br label %L1
L1:
    %r6 = load float, ptr %r3
    %r7 = load float, ptr %r4
    %r8 = fadd float 0x0,0x3fd99999a0000000
    %r9 = fadd float 0x0,0x3fd99999a0000000
    %r10 = fadd float 0x0,0x3fb99999a0000000
    %r11 = call float @circle_sdf(float %r6,float %r7,float %r8,float %r9,float %r10)
    store float %r11, ptr %r5
    %r13 = load float, ptr %r3
    %r14 = load float, ptr %r4
    %r15 = fadd float 0x0,0x3fe3333340000000
    %r16 = fadd float 0x0,0x3fe3333340000000
    %r17 = fadd float 0x0,0x3fa99999a0000000
    %r18 = call float @circle_sdf(float %r13,float %r14,float %r15,float %r16,float %r17)
    store float %r18, ptr %r12
    %r19 = load float, ptr %r5
    %r20 = load float, ptr %r12
    %r21 = fcmp olt float %r19,%r20
    br i1 %r21, label %L2, label %L3
L2:
    %r24 = load float, ptr %r5
    %r25 = add i32 0,0
    %r26 = getelementptr float, ptr %r2, i32 %r25
    store float %r24, ptr %r26
    %r27 = fadd float 0x0,0x4008000000000000
    %r28 = add i32 0,1
    %r29 = getelementptr float, ptr %r2, i32 %r28
    store float %r27, ptr %r29
    br label %L4
L3:
    %r30 = load float, ptr %r12
    %r31 = add i32 0,0
    %r32 = getelementptr float, ptr %r2, i32 %r31
    store float %r30, ptr %r32
    %r33 = fadd float 0x0,0x0
    %r34 = add i32 0,1
    %r35 = getelementptr float, ptr %r2, i32 %r34
    store float %r33, ptr %r35
    br label %L4
L4:
    ret void
}
define float @trace(float %r0,float %r1,float %r2,float %r3)
{
L0:
    %r25 = alloca [2 x float]
    %r10 = alloca i32
    %r8 = alloca float
    %r4 = alloca float
    store float %r0, ptr %r4
    %r5 = alloca float
    store float %r1, ptr %r5
    %r6 = alloca float
    store float %r2, ptr %r6
    %r7 = alloca float
    store float %r3, ptr %r7
    br label %L1
L1:
    %r9 = fadd float 0x0,0x0
    store float %r9, ptr %r8
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    %r12 = load i32, ptr %r10
    %r13 = load i32, ptr @MAX_STEP
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L6, label %L5
L3:
    %r26 = load float, ptr %r4
    %r27 = load float, ptr %r6
    %r28 = load float, ptr %r8
    %r29 = fmul float %r27,%r28
    %r30 = fadd float %r26,%r29
    %r31 = load float, ptr %r5
    %r32 = load float, ptr %r7
    %r33 = load float, ptr %r8
    %r34 = fmul float %r32,%r33
    %r35 = fadd float %r31,%r34
    %r36 = getelementptr float, ptr %r25, i32 0
    call void @scene(float %r30,float %r35,ptr %r36)
    %r37 = add i32 0,0
    %r38 = getelementptr [2 x float], ptr %r25, i32 0, i32 %r37
    %r39 = load float, ptr %r38
    %r40 = load float, ptr @EPSILON
    %r41 = fcmp olt float %r39,%r40
    br i1 %r41, label %L8, label %L9
L4:
    %r55 = load i32, ptr %r10
    %r56 = load i32, ptr @MAX_STEP
    %r57 = icmp slt i32 %r55,%r56
    br i1 %r57, label %L10, label %L5
L5:
    %r68 = fadd float 0x0,0x0
    ret float %r68
L6:
    %r17 = load float, ptr %r8
    %r18 = load float, ptr @MAX_DISTANCE
    %r19 = fcmp olt float %r17,%r18
    br i1 %r19, label %L3, label %L5
L8:
    %r44 = add i32 0,1
    %r45 = getelementptr [2 x float], ptr %r25, i32 0, i32 %r44
    %r46 = load float, ptr %r45
    ret float %r46
L9:
    %r47 = load float, ptr %r8
    %r48 = add i32 0,0
    %r49 = getelementptr [2 x float], ptr %r25, i32 0, i32 %r48
    %r50 = load float, ptr %r49
    %r51 = fadd float %r47,%r50
    store float %r51, ptr %r8
    %r52 = load i32, ptr %r10
    %r53 = add i32 0,1
    %r54 = add i32 %r52,%r53
    store i32 %r54, ptr %r10
    br label %L4
L10:
    %r60 = load float, ptr %r8
    %r61 = load float, ptr @MAX_DISTANCE
    %r62 = fcmp olt float %r60,%r61
    br i1 %r62, label %L3, label %L5
}
define float @sample(float %r0,float %r1)
{
L0:
    %r16 = alloca float
    %r13 = alloca float
    %r6 = alloca i32
    %r4 = alloca float
    %r2 = alloca float
    store float %r0, ptr %r2
    %r3 = alloca float
    store float %r1, ptr %r3
    br label %L1
L1:
    %r5 = fadd float 0x0,0x0
    store float %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = load i32, ptr %r6
    %r9 = load i32, ptr @N
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L5
L3:
    %r14 = call i32 @rand()
    %r15 = sitofp i32 %r14 to float
    store float %r15, ptr %r13
    %r17 = load float, ptr @TWO_PI
    %r18 = load i32, ptr %r6
    %r19 = load float, ptr %r13
    %r20 = load i32, ptr @RAND_MAX
    %r21 = sitofp i32 %r20 to float
    %r22 = fdiv float %r19,%r21
    %r23 = sitofp i32 %r18 to float
    %r24 = fadd float %r23,%r22
    %r25 = fmul float %r17,%r24
    %r26 = load i32, ptr @N
    %r27 = sitofp i32 %r26 to float
    %r28 = fdiv float %r25,%r27
    store float %r28, ptr %r16
    %r29 = load float, ptr %r4
    %r30 = load float, ptr %r2
    %r31 = load float, ptr %r3
    %r32 = load float, ptr %r16
    %r33 = call float @my_cos(float %r32)
    %r34 = load float, ptr %r16
    %r35 = call float @my_sin(float %r34)
    %r36 = call float @trace(float %r30,float %r31,float %r33,float %r35)
    %r37 = fadd float %r29,%r36
    store float %r37, ptr %r4
    %r38 = load i32, ptr %r6
    %r39 = add i32 0,1
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r6
    br label %L4
L4:
    %r41 = load i32, ptr %r6
    %r42 = load i32, ptr @N
    %r43 = icmp slt i32 %r41,%r42
    br i1 %r43, label %L3, label %L5
L5:
    %r46 = load float, ptr %r4
    %r47 = load i32, ptr @N
    %r48 = sitofp i32 %r47 to float
    %r49 = fdiv float %r46,%r48
    ret float %r49
}
define void @write_pgm()
{
L0:
    %r29 = alloca i32
    %r26 = alloca float
    %r23 = alloca float
    %r16 = alloca i32
    %r9 = alloca i32
    br label %L1
L1:
    %r0 = add i32 0,80
    call void @putch(i32 %r0)
    %r1 = add i32 0,50
    call void @putch(i32 %r1)
    %r2 = add i32 0,10
    call void @putch(i32 %r2)
    %r3 = load i32, ptr @W
    call void @putint(i32 %r3)
    %r4 = add i32 0,32
    call void @putch(i32 %r4)
    %r5 = load i32, ptr @H
    call void @putint(i32 %r5)
    %r6 = add i32 0,32
    call void @putch(i32 %r6)
    %r7 = add i32 0,255
    call void @putint(i32 %r7)
    %r8 = add i32 0,10
    call void @putch(i32 %r8)
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r9
    %r12 = load i32, ptr @H
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L5
L3:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r16
    %r19 = load i32, ptr @W
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L7, label %L9
L4:
    %r62 = load i32, ptr %r9
    %r63 = load i32, ptr @H
    %r64 = icmp slt i32 %r62,%r63
    br i1 %r64, label %L3, label %L5
L5:
    ret void
L7:
    %r24 = load i32, ptr %r16
    %r25 = sitofp i32 %r24 to float
    store float %r25, ptr %r23
    %r27 = load i32, ptr %r9
    %r28 = sitofp i32 %r27 to float
    store float %r28, ptr %r26
    %r30 = load float, ptr %r23
    %r31 = load i32, ptr @W
    %r32 = sitofp i32 %r31 to float
    %r33 = fdiv float %r30,%r32
    %r34 = load float, ptr %r26
    %r35 = load i32, ptr @H
    %r36 = sitofp i32 %r35 to float
    %r37 = fdiv float %r34,%r36
    %r38 = call float @sample(float %r33,float %r37)
    %r39 = fadd float 0x0,0x406fe00000000000
    %r40 = fmul float %r38,%r39
    %r41 = fptosi float %r40 to i32
    store i32 %r41, ptr %r29
    %r42 = load i32, ptr %r29
    %r43 = add i32 0,255
    %r44 = icmp sgt i32 %r42,%r43
    br i1 %r44, label %L10, label %L11
L8:
    %r53 = load i32, ptr %r16
    %r54 = load i32, ptr @W
    %r55 = icmp slt i32 %r53,%r54
    br i1 %r55, label %L7, label %L9
L9:
    %r58 = add i32 0,10
    call void @putch(i32 %r58)
    %r59 = load i32, ptr %r9
    %r60 = add i32 0,1
    %r61 = add i32 %r59,%r60
    store i32 %r61, ptr %r9
    br label %L4
L10:
    %r47 = add i32 0,255
    store i32 %r47, ptr %r29
    br label %L11
L11:
    %r48 = load i32, ptr %r29
    call void @putint(i32 %r48)
    %r49 = add i32 0,32
    call void @putch(i32 %r49)
    %r50 = load i32, ptr %r16
    %r51 = add i32 0,1
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r16
    br label %L8
}
define i32 @main()
{
L0:
    br label %L1
L1:
    call void @write_pgm()
    %r0 = add i32 0,0
    ret i32 %r0
}
