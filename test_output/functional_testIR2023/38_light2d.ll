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
define i32 @rand()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = load i32, ptr @seed
    %r1 = add i32 19980130,0
    %r2 = mul i32 %r0,%r1
    %r3 = add i32 23333,0
    %r4 = add i32 %r2,%r3
    %r5 = add i32 100000007,0
    %r6 = srem i32 %r4,%r5
    store i32 %r6, ptr @seed
    %r7 = load i32, ptr @seed
    %r8 = add i32 0,0
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
L2:  ;
    %r10 = load i32, ptr @seed
    %r11 = add i32 100000007,0
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr @seed
    br label %L3
L3:  ;
    %r13 = load i32, ptr @seed
    ret i32 %r13
}
define float @p(float %r0)
{
L0:  ;
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
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
define float @my_fabs(float %r0)
{
L0:  ;
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load float, ptr %r1
    %r3 = add i32 0,0
    %r4 = sitofp i32 %r3 to float
    %r5 = fcmp ogt float %r2,%r4
    br i1 %r5, label %L2, label %L3
L2:  ;
    %r6 = load float, ptr %r1
    ret float %r6
L3:  ;
    %r7 = load float, ptr %r1
    %r8 = fsub float 0x0,%r7
    ret float %r8
}
define float @my_sqrt(float %r0)
{
L0:  ;
    %r19 = alloca i32
    %r2 = alloca float
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r3 = load float, ptr %r1
    %r4 = add i32 8,0
    %r5 = sitofp i32 %r4 to float
    %r6 = fdiv float %r3,%r5
    %r7 = fadd float 0x3fe0000000000000,0x0
    %r8 = fadd float %r6,%r7
    %r9 = add i32 2,0
    %r10 = load float, ptr %r1
    %r11 = sitofp i32 %r9 to float
    %r12 = fmul float %r11,%r10
    %r13 = add i32 4,0
    %r14 = load float, ptr %r1
    %r15 = sitofp i32 %r13 to float
    %r16 = fadd float %r15,%r14
    %r17 = fdiv float %r12,%r16
    %r18 = fadd float %r8,%r17
    store float %r18, ptr %r2
    %r20 = add i32 10,0
    store i32 %r20, ptr %r19
    br label %L2
L2:  ;
    %r21 = load i32, ptr %r19
    %r22 = icmp ne i32 %r21,0
    br i1 %r22, label %L3, label %L4
L3:  ;
    %r23 = load float, ptr %r2
    %r24 = load float, ptr %r1
    %r25 = load float, ptr %r2
    %r26 = fdiv float %r24,%r25
    %r27 = fadd float %r23,%r26
    %r28 = add i32 2,0
    %r29 = sitofp i32 %r28 to float
    %r30 = fdiv float %r27,%r29
    store float %r30, ptr %r2
    %r31 = load i32, ptr %r19
    %r32 = add i32 1,0
    %r33 = sub i32 %r31,%r32
    store i32 %r33, ptr %r19
    br label %L2
L4:  ;
    %r34 = load float, ptr %r2
    ret float %r34
}
define float @my_sin_impl(float %r0)
{
L0:  ;
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load float, ptr %r1
    %r3 = call float @my_fabs(float %r2)
    %r4 = fadd float 0x0,0x3eb0c6f7a0000000
    %r5 = fcmp ole float %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:  ;
    %r6 = load float, ptr %r1
    ret float %r6
L3:  ;
    %r7 = load float, ptr %r1
    %r8 = fadd float 0x4008000000000000,0x0
    %r9 = fdiv float %r7,%r8
    %r10 = call float @my_sin_impl(float %r9)
    %r11 = call float @p(float %r10)
    ret float %r11
}
define float @my_sin(float %r0)
{
L0:  ;
    %r9 = alloca i32
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load float, ptr %r1
    %r3 = fadd float 0x0,0x401921fb60000000
    %r4 = fcmp ogt float %r2,%r3
    br i1 %r4, label %L2, label %L4
L2:  ;
    %r10 = load float, ptr %r1
    %r11 = fadd float 0x0,0x401921fb60000000
    %r12 = fdiv float %r10,%r11
    %r13 = fptosi float %r12 to i32
    store i32 %r13, ptr %r9
    %r14 = load float, ptr %r1
    %r15 = load i32, ptr %r9
    %r16 = fadd float 0x0,0x401921fb60000000
    %r17 = sitofp i32 %r15 to float
    %r18 = fmul float %r17,%r16
    %r19 = fsub float %r14,%r18
    store float %r19, ptr %r1
    br label %L3
L3:  ;
    %r20 = load float, ptr %r1
    %r21 = fadd float 0x0,0x400921fb60000000
    %r22 = fcmp ogt float %r20,%r21
    br i1 %r22, label %L5, label %L6
L4:  ;
    %r5 = load float, ptr %r1
    %r6 = fadd float 0x0,0x401921fb60000000
    %r7 = fsub float 0x0,%r6
    %r8 = fcmp olt float %r5,%r7
    br i1 %r8, label %L2, label %L3
L5:  ;
    %r23 = load float, ptr %r1
    %r24 = fadd float 0x0,0x401921fb60000000
    %r25 = fsub float %r23,%r24
    store float %r25, ptr %r1
    br label %L6
L6:  ;
    %r26 = load float, ptr %r1
    %r27 = fadd float 0x0,0x400921fb60000000
    %r28 = fsub float 0x0,%r27
    %r29 = fcmp olt float %r26,%r28
    br i1 %r29, label %L7, label %L8
L7:  ;
    %r30 = load float, ptr %r1
    %r31 = fadd float 0x0,0x401921fb60000000
    %r32 = fadd float %r30,%r31
    store float %r32, ptr %r1
    br label %L8
L8:  ;
    %r33 = load float, ptr %r1
    %r34 = call float @my_sin_impl(float %r33)
    ret float %r34
}
define float @my_cos(float %r0)
{
L0:  ;
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load float, ptr %r1
    %r3 = fadd float 0x0,0x400921fb60000000
    %r4 = add i32 2,0
    %r5 = sitofp i32 %r4 to float
    %r6 = fdiv float %r3,%r5
    %r7 = fadd float %r2,%r6
    %r8 = call float @my_sin(float %r7)
    ret float %r8
}
define float @circle_sdf(float %r0,float %r1,float %r2,float %r3,float %r4)
{
L0:  ;
    %r14 = alloca float
    %r10 = alloca float
    %r9 = alloca float
    %r8 = alloca float
    %r7 = alloca float
    %r6 = alloca float
    %r5 = alloca float
    store float %r0, ptr %r5
    store float %r1, ptr %r6
    store float %r2, ptr %r7
    store float %r3, ptr %r8
    store float %r4, ptr %r9
    br label %L1
L1:  ;
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
L0:  ;
    %r12 = alloca float
    %r5 = alloca float
    %r4 = alloca float
    %r3 = alloca float
    store float %r0, ptr %r3
    store float %r1, ptr %r4
    br label %L1
L1:  ;
    %r6 = load float, ptr %r3
    %r7 = load float, ptr %r4
    %r8 = fadd float 0x3fd99999a0000000,0x0
    %r9 = fadd float 0x3fd99999a0000000,0x0
    %r10 = fadd float 0x3fb99999a0000000,0x0
    %r11 = call float @circle_sdf(float %r6,float %r7,float %r8,float %r9,float %r10)
    store float %r11, ptr %r5
    %r13 = load float, ptr %r3
    %r14 = load float, ptr %r4
    %r15 = fadd float 0x3fe3333340000000,0x0
    %r16 = fadd float 0x3fe3333340000000,0x0
    %r17 = fadd float 0x3fa99999a0000000,0x0
    %r18 = call float @circle_sdf(float %r13,float %r14,float %r15,float %r16,float %r17)
    store float %r18, ptr %r12
    %r19 = load float, ptr %r5
    %r20 = load float, ptr %r12
    %r21 = fcmp olt float %r19,%r20
    br i1 %r21, label %L2, label %L3
L2:  ;
    %r22 = add i32 0,0
    %r23 = getelementptr float, ptr %r2, i32 %r22
    %r24 = load float, ptr %r5
    store float %r24, ptr %r23
    %r25 = add i32 1,0
    %r26 = getelementptr float, ptr %r2, i32 %r25
    %r27 = fadd float 0x4008000000000000,0x0
    store float %r27, ptr %r26
    br label %L4
L3:  ;
    %r28 = add i32 0,0
    %r29 = getelementptr float, ptr %r2, i32 %r28
    %r30 = load float, ptr %r12
    store float %r30, ptr %r29
    %r31 = add i32 1,0
    %r32 = getelementptr float, ptr %r2, i32 %r31
    %r33 = fadd float 0x0,0x0
    store float %r33, ptr %r32
    br label %L4
L4:  ;
    ret void
}
define float @trace(float %r0,float %r1,float %r2,float %r3)
{
L0:  ;
    %r18 = alloca [2 x float]
    %r10 = alloca i32
    %r8 = alloca float
    %r7 = alloca float
    %r6 = alloca float
    %r5 = alloca float
    %r4 = alloca float
    store float %r0, ptr %r4
    store float %r1, ptr %r5
    store float %r2, ptr %r6
    store float %r3, ptr %r7
    br label %L1
L1:  ;
    %r9 = fadd float 0x0,0x0
    store float %r9, ptr %r8
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    br label %L2
L2:  ;
    %r12 = load i32, ptr %r10
    %r13 = add i32 0,10
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L5, label %L4
L3:  ;
    %r19 = load float, ptr %r4
    %r20 = load float, ptr %r6
    %r21 = load float, ptr %r8
    %r22 = fmul float %r20,%r21
    %r23 = fadd float %r19,%r22
    %r24 = load float, ptr %r5
    %r25 = load float, ptr %r7
    %r26 = load float, ptr %r8
    %r27 = fmul float %r25,%r26
    %r28 = fadd float %r24,%r27
    %r29 = getelementptr [2 x float], ptr %r18, i32 0
    call void @scene(float %r23,float %r28,ptr %r29)
    %r30 = add i32 0,0
    %r31 = getelementptr [2 x float], ptr %r18, i32 0, i32 %r30
    %r32 = load float, ptr %r31
    %r33 = fadd float 0x0,0x3eb0c6f7a0000000
    %r34 = fcmp olt float %r32,%r33
    br i1 %r34, label %L6, label %L7
L4:  ;
    %r46 = fadd float 0x0,0x0
    ret float %r46
L5:  ;
    %r15 = load float, ptr %r8
    %r16 = fadd float 0x0,0x4000000000000000
    %r17 = fcmp olt float %r15,%r16
    br i1 %r17, label %L3, label %L4
L6:  ;
    %r35 = add i32 1,0
    %r36 = getelementptr [2 x float], ptr %r18, i32 0, i32 %r35
    %r37 = load float, ptr %r36
    ret float %r37
L7:  ;
    %r38 = load float, ptr %r8
    %r39 = add i32 0,0
    %r40 = getelementptr [2 x float], ptr %r18, i32 0, i32 %r39
    %r41 = load float, ptr %r40
    %r42 = fadd float %r38,%r41
    store float %r42, ptr %r8
    %r43 = load i32, ptr %r10
    %r44 = add i32 1,0
    %r45 = add i32 %r43,%r44
    store i32 %r45, ptr %r10
    br label %L2
}
define float @sample(float %r0,float %r1)
{
L0:  ;
    %r14 = alloca float
    %r11 = alloca float
    %r6 = alloca i32
    %r4 = alloca float
    %r3 = alloca float
    %r2 = alloca float
    store float %r0, ptr %r2
    store float %r1, ptr %r3
    br label %L1
L1:  ;
    %r5 = fadd float 0x0,0x0
    store float %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    br label %L2
L2:  ;
    %r8 = load i32, ptr %r6
    %r9 = add i32 0,24
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L4
L3:  ;
    %r12 = call i32 @rand()
    %r13 = sitofp i32 %r12 to float
    store float %r13, ptr %r11
    %r15 = fadd float 0x0,0x401921fb60000000
    %r16 = load i32, ptr %r6
    %r17 = load float, ptr %r11
    %r18 = add i32 0,100000006
    %r19 = sitofp i32 %r18 to float
    %r20 = fdiv float %r17,%r19
    %r21 = sitofp i32 %r16 to float
    %r22 = fadd float %r21,%r20
    %r23 = fmul float %r15,%r22
    %r24 = add i32 0,24
    %r25 = sitofp i32 %r24 to float
    %r26 = fdiv float %r23,%r25
    store float %r26, ptr %r14
    %r27 = load float, ptr %r4
    %r28 = load float, ptr %r2
    %r29 = load float, ptr %r3
    %r30 = load float, ptr %r14
    %r31 = call float @my_cos(float %r30)
    %r32 = load float, ptr %r14
    %r33 = call float @my_sin(float %r32)
    %r34 = call float @trace(float %r28,float %r29,float %r31,float %r33)
    %r35 = fadd float %r27,%r34
    store float %r35, ptr %r4
    %r36 = load i32, ptr %r6
    %r37 = add i32 1,0
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r6
    br label %L2
L4:  ;
    %r39 = load float, ptr %r4
    %r40 = add i32 0,24
    %r41 = sitofp i32 %r40 to float
    %r42 = fdiv float %r39,%r41
    ret float %r42
}
define void @write_pgm()
{
L0:  ;
    %r25 = alloca i32
    %r22 = alloca float
    %r19 = alloca float
    %r14 = alloca i32
    %r9 = alloca i32
    br label %L1
L1:  ;
    %r0 = add i32 80,0
    call void @putch(i32 %r0)
    %r1 = add i32 50,0
    call void @putch(i32 %r1)
    %r2 = add i32 10,0
    call void @putch(i32 %r2)
    %r3 = add i32 0,192
    call void @putint(i32 %r3)
    %r4 = add i32 32,0
    call void @putch(i32 %r4)
    %r5 = add i32 0,192
    call void @putint(i32 %r5)
    %r6 = add i32 32,0
    call void @putch(i32 %r6)
    %r7 = add i32 255,0
    call void @putint(i32 %r7)
    %r8 = add i32 10,0
    call void @putch(i32 %r8)
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    br label %L2
L2:  ;
    %r11 = load i32, ptr %r9
    %r12 = add i32 0,192
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L4
L3:  ;
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    br label %L5
L4:  ;
    ret void
L5:  ;
    %r16 = load i32, ptr %r14
    %r17 = add i32 0,192
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L6, label %L7
L6:  ;
    %r20 = load i32, ptr %r14
    %r21 = sitofp i32 %r20 to float
    store float %r21, ptr %r19
    %r23 = load i32, ptr %r9
    %r24 = sitofp i32 %r23 to float
    store float %r24, ptr %r22
    %r26 = load float, ptr %r19
    %r27 = add i32 0,192
    %r28 = sitofp i32 %r27 to float
    %r29 = fdiv float %r26,%r28
    %r30 = load float, ptr %r22
    %r31 = add i32 0,192
    %r32 = sitofp i32 %r31 to float
    %r33 = fdiv float %r30,%r32
    %r34 = call float @sample(float %r29,float %r33)
    %r35 = fadd float 0x406fe00000000000,0x0
    %r36 = fmul float %r34,%r35
    %r37 = fptosi float %r36 to i32
    store i32 %r37, ptr %r25
    %r38 = load i32, ptr %r25
    %r39 = add i32 255,0
    %r40 = icmp sgt i32 %r38,%r39
    br i1 %r40, label %L8, label %L9
L7:  ;
    %r47 = add i32 10,0
    call void @putch(i32 %r47)
    %r48 = load i32, ptr %r9
    %r49 = add i32 1,0
    %r50 = add i32 %r48,%r49
    store i32 %r50, ptr %r9
    br label %L2
L8:  ;
    %r41 = add i32 255,0
    store i32 %r41, ptr %r25
    br label %L9
L9:  ;
    %r42 = load i32, ptr %r25
    call void @putint(i32 %r42)
    %r43 = add i32 32,0
    call void @putch(i32 %r43)
    %r44 = load i32, ptr %r14
    %r45 = add i32 1,0
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r14
    br label %L5
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    call void @write_pgm()
    %r0 = add i32 0,0
    ret i32 %r0
}
