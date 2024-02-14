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
    %r10 = load i32, ptr @seed
    %r12 = add i32 %r10,100000007
    store i32 %r12, ptr @seed
    br label %L3
L3:
    %r13 = load i32, ptr @seed
    ret i32 %r13
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
    %r8 = fsub float 0x0,%r0
    ret float %r8
}
define float @my_sqrt(float %r0)
{
L0:
    br label %L1
L1:
    %r5 = sitofp i32 8 to float
    %r6 = fdiv float %r0,%r5
    %r7 = fadd float 0x3fe0000000000000,0x0
    %r8 = fadd float %r6,%r7
    %r11 = sitofp i32 2 to float
    %r12 = fmul float %r11,%r0
    %r15 = sitofp i32 4 to float
    %r16 = fadd float %r15,%r0
    %r17 = fdiv float %r12,%r16
    %r18 = fadd float %r8,%r17
    br label %L2
L2:
    %r36 = phi float [%r18,%L1],[%r30,%L3]
    %r35 = phi i32 [10,%L1],[%r33,%L3]
    %r22 = icmp ne i32 %r35,0
    br i1 %r22, label %L3, label %L4
L3:
    %r26 = fdiv float %r0,%r36
    %r27 = fadd float %r36,%r26
    %r29 = sitofp i32 2 to float
    %r30 = fdiv float %r27,%r29
    %r33 = sub i32 %r35,1
    br label %L2
L4:
    ret float %r36
}
define float @my_sin_impl(float %r0)
{
L0:
    br label %L1
L1:
    %r3 = call float @my_fabs(float %r0)
    %r4 = fadd float 0x0,0x3eb0c6f7a0000000
    %r5 = fcmp ole float %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
    ret float %r0
L3:
    %r8 = fadd float 0x4008000000000000,0x0
    %r9 = fdiv float %r0,%r8
    %r10 = call float @my_sin_impl(float %r9)
    %r11 = call float @p(float %r10)
    ret float %r11
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
    %r11 = fadd float 0x0,0x401921fb60000000
    %r12 = fdiv float %r0,%r11
    %r13 = fptosi float %r12 to i32
    %r16 = fadd float 0x0,0x401921fb60000000
    %r17 = sitofp i32 %r13 to float
    %r18 = fmul float %r17,%r16
    %r19 = fsub float %r0,%r18
    br label %L3
L3:
    %r35 = phi float [%r19,%L2],[%r0,%L4]
    %r21 = fadd float 0x0,0x400921fb60000000
    %r22 = fcmp ogt float %r35,%r21
    br i1 %r22, label %L5, label %L6
L4:
    %r6 = fadd float 0x0,0x401921fb60000000
    %r7 = fsub float 0x0,%r6
    %r8 = fcmp olt float %r0,%r7
    br i1 %r8, label %L2, label %L3
L5:
    %r24 = fadd float 0x0,0x401921fb60000000
    %r25 = fsub float %r35,%r24
    br label %L6
L6:
    %r36 = phi float [%r35,%L3],[%r25,%L5]
    %r27 = fadd float 0x0,0x400921fb60000000
    %r28 = fsub float 0x0,%r27
    %r29 = fcmp olt float %r36,%r28
    br i1 %r29, label %L7, label %L8
L7:
    %r31 = fadd float 0x0,0x401921fb60000000
    %r32 = fadd float %r36,%r31
    br label %L8
L8:
    %r37 = phi float [%r36,%L6],[%r32,%L7]
    %r34 = call float @my_sin_impl(float %r37)
    ret float %r34
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
    %r8 = fadd float 0x3fd99999a0000000,0x0
    %r9 = fadd float 0x3fd99999a0000000,0x0
    %r10 = fadd float 0x3fb99999a0000000,0x0
    %r11 = call float @circle_sdf(float %r0,float %r1,float %r8,float %r9,float %r10)
    %r15 = fadd float 0x3fe3333340000000,0x0
    %r16 = fadd float 0x3fe3333340000000,0x0
    %r17 = fadd float 0x3fa99999a0000000,0x0
    %r18 = call float @circle_sdf(float %r0,float %r1,float %r15,float %r16,float %r17)
    %r21 = fcmp olt float %r11,%r18
    br i1 %r21, label %L2, label %L3
L2:
    %r23 = getelementptr float, ptr %r2, i32 0
    store float %r11, ptr %r23
    %r26 = getelementptr float, ptr %r2, i32 1
    %r27 = fadd float 0x4008000000000000,0x0
    store float %r27, ptr %r26
    br label %L4
L3:
    %r29 = getelementptr float, ptr %r2, i32 0
    store float %r18, ptr %r29
    %r32 = getelementptr float, ptr %r2, i32 1
    %r33 = fadd float 0x0,0x0
    store float %r33, ptr %r32
    br label %L4
L4:
    ret void
}
define float @trace(float %r0,float %r1,float %r2,float %r3)
{
L0:
    %r18 = alloca [2 x float]
    br label %L1
L1:
    %r9 = fadd float 0x0,0x0
    br label %L2
L2:
    %r48 = phi float [%r9,%L1],[%r42,%L7]
    %r47 = phi i32 [0,%L1],[%r45,%L7]
    %r14 = icmp slt i32 %r47,10
    br i1 %r14, label %L5, label %L4
L3:
    %r22 = fmul float %r2,%r48
    %r23 = fadd float %r0,%r22
    %r27 = fmul float %r3,%r48
    %r28 = fadd float %r1,%r27
    %r29 = getelementptr [2 x float], ptr %r18, i32 0
    call void @scene(float %r23,float %r28,ptr %r29)
    %r31 = getelementptr [2 x float], ptr %r18, i32 0, i32 0
    %r32 = load float, ptr %r31
    %r33 = fadd float 0x0,0x3eb0c6f7a0000000
    %r34 = fcmp olt float %r32,%r33
    br i1 %r34, label %L6, label %L7
L4:
    %r46 = fadd float 0x0,0x0
    ret float %r46
L5:
    %r16 = fadd float 0x0,0x4000000000000000
    %r17 = fcmp olt float %r48,%r16
    br i1 %r17, label %L3, label %L4
L6:
    %r36 = getelementptr [2 x float], ptr %r18, i32 0, i32 1
    %r37 = load float, ptr %r36
    ret float %r37
L7:
    %r40 = getelementptr [2 x float], ptr %r18, i32 0, i32 0
    %r41 = load float, ptr %r40
    %r42 = fadd float %r48,%r41
    %r45 = add i32 %r47,1
    br label %L2
}
define float @sample(float %r0,float %r1)
{
L0:
    br label %L1
L1:
    %r5 = fadd float 0x0,0x0
    br label %L2
L2:
    %r44 = phi float [%r5,%L1],[%r35,%L3]
    %r43 = phi i32 [0,%L1],[%r38,%L3]
    %r10 = icmp slt i32 %r43,24
    br i1 %r10, label %L3, label %L4
L3:
    %r12 = call i32 @rand()
    %r13 = sitofp i32 %r12 to float
    %r15 = fadd float 0x0,0x401921fb60000000
    %r19 = sitofp i32 100000006 to float
    %r20 = fdiv float %r13,%r19
    %r21 = sitofp i32 %r43 to float
    %r22 = fadd float %r21,%r20
    %r23 = fmul float %r15,%r22
    %r25 = sitofp i32 24 to float
    %r26 = fdiv float %r23,%r25
    %r31 = call float @my_cos(float %r26)
    %r33 = call float @my_sin(float %r26)
    %r34 = call float @trace(float %r0,float %r1,float %r31,float %r33)
    %r35 = fadd float %r44,%r34
    %r38 = add i32 %r43,1
    br label %L2
L4:
    %r41 = sitofp i32 24 to float
    %r42 = fdiv float %r44,%r41
    ret float %r42
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
    br label %L2
L2:
    %r56 = phi i32 [0,%L1],[%r50,%L7]
    %r13 = icmp slt i32 %r56,192
    br i1 %r13, label %L3, label %L4
L3:
    br label %L5
L4:
    ret void
L5:
    %r55 = phi i32 [0,%L3],[%r46,%L9]
    %r18 = icmp slt i32 %r55,192
    br i1 %r18, label %L6, label %L7
L6:
    %r21 = sitofp i32 %r55 to float
    %r24 = sitofp i32 %r56 to float
    %r28 = sitofp i32 192 to float
    %r29 = fdiv float %r21,%r28
    %r32 = sitofp i32 192 to float
    %r33 = fdiv float %r24,%r32
    %r34 = call float @sample(float %r29,float %r33)
    %r35 = fadd float 0x406fe00000000000,0x0
    %r36 = fmul float %r34,%r35
    %r37 = fptosi float %r36 to i32
    %r40 = icmp sgt i32 %r37,255
    br i1 %r40, label %L8, label %L9
L7:
    call void @putch(i32 10)
    %r50 = add i32 %r56,1
    br label %L2
L8:
    br label %L9
L9:
    %r53 = phi i32 [%r37,%L6],[255,%L8]
    call void @putint(i32 %r53)
    call void @putch(i32 32)
    %r46 = add i32 %r55,1
    br label %L5
}
define i32 @main()
{
L0:
    br label %L1
L1:
    call void @write_pgm()
    ret i32 0
}
