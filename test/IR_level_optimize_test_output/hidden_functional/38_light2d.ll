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
define i32 @rand()
{
L0:
    br label %L1
L1:
    %r0 = load i32, ptr @seed
    %r2 = mul i32 %r0,19980130
    %r4 = add i32 %r2,23333
    %r6 = srem i32 %r4,100000007
    store i32 %r6, ptr @seed
    %r7 = load i32, ptr @seed
    %r9 = icmp slt i32 %r7,0
    br i1 %r9, label %L2, label %L3
L2:
    %r12 = load i32, ptr @seed
    %r14 = add i32 %r12,100000007
    store i32 %r14, ptr @seed
    br label %L3
L3:
    %r15 = load i32, ptr @seed
    ret i32 %r15
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
define float @my_sqrt(float %r0)
{
L0:
    br label %L1
L1:
    %r5 = sitofp i32 8 to float
    %r6 = fdiv float %r0,%r5
    %r7 = fadd float 0x0,0x3fe0000000000000
    %r8 = fadd float %r6,%r7
    %r11 = sitofp i32 2 to float
    %r12 = fmul float %r11,%r0
    %r15 = sitofp i32 4 to float
    %r16 = fadd float %r15,%r0
    %r17 = fdiv float %r12,%r16
    %r18 = fadd float %r8,%r17
    br label %L6
L3:
    %r39 = phi float [%r30,%L4],[%r18,%L6]
    %r37 = phi i32 [10,%L6],[%r33,%L4]
    %r26 = fdiv float %r0,%r39
    %r27 = fadd float %r39,%r26
    %r30 = fdiv float %r27,%r29
    %r33 = sub i32 %r37,1
    br label %L4
L4:
    %r35 = icmp ne i32 %r33,0
    br i1 %r35, label %L3, label %L5
L5:
    ret float %r30
L6:
    %r29 = sitofp i32 2 to float
    br label %L3
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
define float @circle_sdf(float %r0,float %r1,float %r2,float %r3,float %r4)
{
L0:
    br label %L1
L1:
    %r13 = fsub float %r0,%r2
    %r17 = fsub float %r1,%r3
    %r20 = fmul float %r13,%r13
    %r23 = fmul float %r17,%r17
    %r24 = fadd float %r20,%r23
    %r25 = call float @my_sqrt(float %r24)
    %r27 = fsub float %r25,%r4
    ret float %r27
}
define void @scene(float %r0,float %r1,ptr %r2)
{
L0:
    br label %L1
L1:
    %r8 = fadd float 0x0,0x3fd99999a0000000
    %r9 = fadd float 0x0,0x3fd99999a0000000
    %r10 = fadd float 0x0,0x3fb99999a0000000
    %r11 = call float @circle_sdf(float %r0,float %r1,float %r8,float %r9,float %r10)
    %r15 = fadd float 0x0,0x3fe3333340000000
    %r16 = fadd float 0x0,0x3fe3333340000000
    %r17 = fadd float 0x0,0x3fa99999a0000000
    %r18 = call float @circle_sdf(float %r0,float %r1,float %r15,float %r16,float %r17)
    %r21 = fcmp olt float %r11,%r18
    br i1 %r21, label %L2, label %L3
L2:
    %r26 = getelementptr float, ptr %r2, i32 0
    store float %r11, ptr %r26
    %r27 = fadd float 0x0,0x4008000000000000
    %r29 = getelementptr float, ptr %r2, i32 1
    store float %r27, ptr %r29
    br label %L4
L3:
    %r32 = getelementptr float, ptr %r2, i32 0
    store float %r18, ptr %r32
    %r33 = fadd float 0x0,0x0
    %r35 = getelementptr float, ptr %r2, i32 1
    store float %r33, ptr %r35
    br label %L4
L4:
    ret void
}
define float @trace(float %r0,float %r1,float %r2,float %r3)
{
L0:
    %r25 = alloca [2 x float]
    br label %L1
L1:
    %r9 = fadd float 0x0,0x0
    br label %L6
L3:
    %r71 = phi float [%r51,%L10],[%r9,%L12]
    %r69 = phi i32 [0,%L12],[%r54,%L10]
    %r29 = fmul float %r2,%r71
    %r30 = fadd float %r0,%r29
    %r34 = fmul float %r3,%r71
    %r35 = fadd float %r1,%r34
    call void @scene(float %r30,float %r35,ptr %r36)
    %r39 = load float, ptr %r38
    %r41 = fcmp olt float %r39,%r40
    br i1 %r41, label %L8, label %L9
L4:
    %r57 = icmp slt i32 %r54,10
    br i1 %r57, label %L10, label %L5
L5:
    %r68 = fadd float 0x0,0x0
    ret float %r68
L6:
    %r18 = fadd float 0x0,0x4000000000000000
    %r19 = fcmp olt float %r9,%r18
    br i1 %r19, label %L12, label %L5
L8:
    %r45 = getelementptr [2 x float], ptr %r25, i32 0, i32 1
    %r46 = load float, ptr %r45
    ret float %r46
L9:
    %r49 = getelementptr [2 x float], ptr %r25, i32 0, i32 0
    %r50 = load float, ptr %r49
    %r51 = fadd float %r71,%r50
    %r54 = add i32 %r69,1
    br label %L4
L10:
    %r61 = fadd float 0x0,0x4000000000000000
    %r62 = fcmp olt float %r51,%r61
    br i1 %r62, label %L3, label %L5
L12:
    %r36 = getelementptr float, ptr %r25, i32 0
    %r38 = getelementptr [2 x float], ptr %r25, i32 0, i32 0
    %r40 = fadd float 0x0,0x3eb0c6f7a0000000
    br label %L3
}
define float @sample(float %r0,float %r1)
{
L0:
    br label %L1
L1:
    %r5 = fadd float 0x0,0x0
    br label %L14
L3:
    %r52 = phi float [%r37,%L4],[%r5,%L14]
    %r50 = phi i32 [%r40,%L4],[0,%L14]
    br label %L6
L4:
    %r43 = icmp slt i32 %r40,24
    br i1 %r43, label %L3, label %L5
L5:
    %r48 = sitofp i32 24 to float
    %r49 = fdiv float %r37,%r48
    ret float %r49
L6:
    br label %L8
L7:
    %r15 = sitofp i32 %r62 to float
    %r22 = fdiv float %r15,%r21
    %r23 = sitofp i32 %r50 to float
    %r24 = fadd float %r23,%r22
    %r25 = fmul float %r17,%r24
    %r28 = fdiv float %r25,%r27
    br label %L11
L8:
    %r54 = load i32, ptr @seed
    %r55 = mul i32 %r54,19980130
    %r56 = add i32 %r55,23333
    %r57 = srem i32 %r56,100000007
    store i32 %r57, ptr @seed
    %r58 = load i32, ptr @seed
    %r59 = icmp slt i32 %r58,0
    br i1 %r59, label %L9, label %L10
L9:
    %r60 = load i32, ptr @seed
    %r61 = add i32 %r60,100000007
    store i32 %r61, ptr @seed
    br label %L10
L10:
    %r62 = load i32, ptr @seed
    br label %L7
L11:
    br label %L13
L12:
    %r35 = call float @my_sin(float %r28)
    %r36 = call float @trace(float %r0,float %r1,float %r67,float %r35)
    %r37 = fadd float %r52,%r36
    %r40 = add i32 %r50,1
    br label %L4
L13:
    %r66 = fadd float %r28,%r65
    %r67 = call float @my_sin(float %r66)
    br label %L12
L14:
    %r17 = fadd float 0x0,0x401921fb60000000
    %r21 = sitofp i32 100000006 to float
    %r27 = sitofp i32 24 to float
    %r63 = fadd float 0x0,0x400921fb60000000
    %r64 = sitofp i32 2 to float
    %r65 = fdiv float %r63,%r64
    br label %L3
}
define void @write_pgm()
{
L0:
    br label %L1
L1:
    call void @putch(i32 80)
    call void @putch(i32 50)
    call void @putch(i32 10)
    call void @putint(i32 192)
    call void @putch(i32 32)
    call void @putint(i32 192)
    call void @putch(i32 32)
    call void @putint(i32 255)
    call void @putch(i32 10)
    br label %L12
L3:
    %r76 = phi i32 [%r61,%L4],[0,%L12]
    br label %L13
L4:
    %r64 = icmp slt i32 %r61,192
    br i1 %r64, label %L3, label %L5
L5:
    ret void
L7:
    %r74 = phi i32 [%r52,%L8],[0,%L13]
    %r25 = sitofp i32 %r74 to float
    %r33 = fdiv float %r25,%r32
    %r38 = call float @sample(float %r33,float %r37)
    %r40 = fmul float %r38,%r39
    %r41 = fptosi float %r40 to i32
    %r44 = icmp sgt i32 %r41,255
    br i1 %r44, label %L10, label %L11
L8:
    %r55 = icmp slt i32 %r52,192
    br i1 %r55, label %L7, label %L9
L9:
    call void @putch(i32 10)
    %r61 = add i32 %r76,1
    br label %L4
L10:
    br label %L11
L11:
    %r71 = phi i32 [%r41,%L7],[255,%L10]
    call void @putint(i32 %r71)
    call void @putch(i32 32)
    %r52 = add i32 %r74,1
    br label %L8
L12:
    %r32 = sitofp i32 192 to float
    %r39 = fadd float 0x0,0x406fe00000000000
    br label %L3
L13:
    %r28 = sitofp i32 %r76 to float
    %r37 = fdiv float %r28,%r32
    br label %L7
}
define i32 @main()
{
L0:
    br label %L1
L1:
    call void @write_pgm()
    ret i32 0
}
