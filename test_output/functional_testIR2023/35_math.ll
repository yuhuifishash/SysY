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
@e = global float 0x4005bf0a80000000
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
define float @my_sqrt(float %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = sitofp i32 100 to float
    %r5 = fcmp ogt float %r0,%r4
    br i1 %r5, label %L2, label %L3
L2:  ;
    %r6 = fadd float 0x4024000000000000,0x0
    %r10 = fdiv float %r0,%r4
    %r11 = call float @my_sqrt(float %r10)
    %r12 = fmul float %r6,%r11
    ret float %r12
L3:  ;
    %r16 = sitofp i32 8 to float
    %r17 = fdiv float %r0,%r16
    %r18 = fadd float 0x3fe0000000000000,0x0
    %r19 = fadd float %r17,%r18
    %r22 = sitofp i32 2 to float
    %r23 = fmul float %r22,%r0
    %r26 = sitofp i32 4 to float
    %r27 = fadd float %r26,%r0
    %r28 = fdiv float %r23,%r27
    %r29 = fadd float %r19,%r28
    br label %L4
L4:  ;
    %r47 = phi float [%r29,%L3],[%r41,%L5]
    %r46 = phi i32 [10,%L3],[%r44,%L5]
    %r33 = icmp ne i32 %r46,0
    br i1 %r33, label %L5, label %L6
L5:  ;
    %r37 = fdiv float %r0,%r47
    %r38 = fadd float %r47,%r37
    %r41 = fdiv float %r38,%r22
    %r44 = sub i32 %r46,1
    br label %L4
L6:  ;
    ret float %r47
}
define float @my_pow(float %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = icmp slt i32 %r1,0
    br i1 %r6, label %L2, label %L3
L2:  ;
    %r10 = sub i32 0,%r1
    %r11 = call float @my_pow(float %r0,i32 %r10)
    %r12 = sitofp i32 1 to float
    %r13 = fdiv float %r12,%r11
    ret float %r13
L3:  ;
    %r15 = fadd float 0x3ff0000000000000,0x0
    br label %L4
L4:  ;
    %r35 = phi float [%r0,%L3],[%r27,%L8]
    %r34 = phi i32 [%r1,%L3],[%r30,%L8]
    %r33 = phi float [%r15,%L3],[%r32,%L8]
    %r17 = icmp ne i32 %r34,0
    br i1 %r17, label %L5, label %L6
L5:  ;
    %r20 = srem i32 %r34,2
    %r21 = icmp ne i32 %r20,0
    br i1 %r21, label %L7, label %L8
L6:  ;
    ret float %r33
L7:  ;
    %r24 = fmul float %r33,%r35
    br label %L8
L8:  ;
    %r32 = phi float [%r33,%L5],[%r24,%L7]
    %r27 = fmul float %r35,%r35
    %r30 = sdiv i32 %r34,2
    br label %L4
}
define float @F1(float %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = sitofp i32 1 to float
    %r5 = fdiv float %r4,%r0
    ret float %r5
}
define float @F2(float %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = fmul float %r0,%r0
    %r7 = sitofp i32 1 to float
    %r8 = fsub float %r7,%r6
    %r9 = call float @my_sqrt(float %r8)
    %r11 = fdiv float %r7,%r9
    ret float %r11
}
define float @simpson(float %r0,float %r1,i32 %r2)
{
L0:  ;
    br label %L1
L1:  ;
    %r10 = fsub float %r1,%r0
    %r12 = sitofp i32 2 to float
    %r13 = fdiv float %r10,%r12
    %r14 = fadd float %r0,%r13
    %r17 = icmp eq i32 %r2,1
    br i1 %r17, label %L2, label %L3
L2:  ;
    %r19 = call float @F1(float %r0)
    %r22 = call float @F1(float %r14)
    %r23 = sitofp i32 4 to float
    %r24 = fmul float %r23,%r22
    %r25 = fadd float %r19,%r24
    %r27 = call float @F1(float %r1)
    %r28 = fadd float %r25,%r27
    %r32 = fmul float %r28,%r10
    %r34 = sitofp i32 6 to float
    %r35 = fdiv float %r32,%r34
    ret float %r35
L3:  ;
    %r38 = icmp eq i32 %r2,2
    br i1 %r38, label %L4, label %L5
L4:  ;
    %r40 = call float @F2(float %r0)
    %r43 = call float @F2(float %r14)
    %r44 = sitofp i32 4 to float
    %r45 = fmul float %r44,%r43
    %r46 = fadd float %r40,%r45
    %r48 = call float @F2(float %r1)
    %r49 = fadd float %r46,%r48
    %r53 = fmul float %r49,%r10
    %r55 = sitofp i32 6 to float
    %r56 = fdiv float %r53,%r55
    ret float %r56
L5:  ;
    %r58 = sitofp i32 0 to float
    ret float %r58
}
define float @asr5(float %r0,float %r1,float %r2,float %r3,i32 %r4)
{
L0:  ;
    br label %L1
L1:  ;
    %r14 = fsub float %r1,%r0
    %r16 = sitofp i32 2 to float
    %r17 = fdiv float %r14,%r16
    %r18 = fadd float %r0,%r17
    %r23 = call float @simpson(float %r0,float %r18,i32 %r4)
    %r28 = call float @simpson(float %r18,float %r1,i32 %r4)
    %r31 = fadd float %r23,%r28
    %r33 = fsub float %r31,%r3
    %r34 = call float @my_fabs(float %r33)
    %r37 = sitofp i32 15 to float
    %r38 = fmul float %r37,%r2
    %r39 = fcmp ole float %r34,%r38
    br i1 %r39, label %L2, label %L3
L2:  ;
    %r48 = fadd float 0x402e000000000000,0x0
    %r49 = fdiv float %r33,%r48
    %r50 = fadd float %r31,%r49
    ret float %r50
L3:  ;
    %r56 = fdiv float %r2,%r16
    %r59 = call float @asr5(float %r0,float %r18,float %r56,float %r23,i32 %r4)
    %r68 = call float @asr5(float %r18,float %r1,float %r56,float %r28,i32 %r4)
    %r69 = fadd float %r59,%r68
    ret float %r69
}
define float @asr4(float %r0,float %r1,float %r2,i32 %r3)
{
L0:  ;
    br label %L1
L1:  ;
    %r14 = call float @simpson(float %r0,float %r1,i32 %r3)
    %r16 = call float @asr5(float %r0,float %r1,float %r2,float %r14,i32 %r3)
    ret float %r16
}
define float @eee(float %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = fadd float 0x3f50624de0000000,0x0
    %r4 = fcmp ogt float %r0,%r3
    br i1 %r4, label %L2, label %L3
L2:  ;
    %r8 = sitofp i32 2 to float
    %r9 = fdiv float %r0,%r8
    %r10 = call float @eee(float %r9)
    %r13 = fmul float %r10,%r10
    ret float %r13
L3:  ;
    %r16 = sitofp i32 1 to float
    %r17 = fadd float %r16,%r0
    %r20 = fmul float %r0,%r0
    %r22 = sitofp i32 2 to float
    %r23 = fdiv float %r20,%r22
    %r24 = fadd float %r17,%r23
    %r27 = call float @my_pow(float %r0,i32 3)
    %r29 = sitofp i32 6 to float
    %r30 = fdiv float %r27,%r29
    %r31 = fadd float %r24,%r30
    %r34 = call float @my_pow(float %r0,i32 4)
    %r36 = sitofp i32 24 to float
    %r37 = fdiv float %r34,%r36
    %r38 = fadd float %r31,%r37
    %r41 = call float @my_pow(float %r0,i32 5)
    %r43 = sitofp i32 120 to float
    %r44 = fdiv float %r41,%r43
    %r45 = fadd float %r38,%r44
    ret float %r45
}
define float @my_exp(float %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = sitofp i32 0 to float
    %r5 = fcmp olt float %r0,%r4
    br i1 %r5, label %L2, label %L3
L2:  ;
    %r8 = fsub float 0x0,%r0
    %r9 = call float @my_exp(float %r8)
    %r10 = sitofp i32 1 to float
    %r11 = fdiv float %r10,%r9
    ret float %r11
L3:  ;
    %r14 = fptosi float %r0 to i32
    %r17 = sitofp i32 %r14 to float
    %r18 = fsub float %r0,%r17
    %r20 = fadd float 0x0,0x4005bf0a80000000
    %r22 = call float @my_pow(float %r20,i32 %r14)
    %r25 = call float @eee(float %r18)
    %r28 = fmul float %r22,%r25
    ret float %r28
}
define float @my_ln(float %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = sitofp i32 1 to float
    %r5 = fadd float 0x3e45798ee0000000,0x0
    %r7 = call float @asr4(float %r3,float %r0,float %r5,i32 1)
    ret float %r7
}
define float @my_log(float %r0,float %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r5 = call float @my_ln(float %r1)
    %r7 = call float @my_ln(float %r0)
    %r8 = fdiv float %r5,%r7
    ret float %r8
}
define float @my_powf(float %r0,float %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = call float @my_ln(float %r0)
    %r7 = fmul float %r1,%r6
    %r8 = call float @my_exp(float %r7)
    ret float %r8
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = call i32 @getint()
    br label %L2
L2:  ;
    %r55 = phi i32 [%r1,%L1],[%r53,%L14]
    %r3 = icmp ne i32 %r55,0
    br i1 %r3, label %L3, label %L4
L3:  ;
    %r5 = call float @getfloat()
    %r7 = call float @getfloat()
    %r9 = call float @my_fabs(float %r5)
    call void @putfloat(float %r9)
    call void @putch(i32 32)
    %r13 = call float @my_pow(float %r5,i32 2)
    call void @putfloat(float %r13)
    call void @putch(i32 32)
    %r16 = call float @my_sqrt(float %r5)
    call void @putfloat(float %r16)
    call void @putch(i32 32)
    %r19 = call float @my_exp(float %r5)
    call void @putfloat(float %r19)
    call void @putch(i32 32)
    %r23 = sitofp i32 0 to float
    %r24 = fcmp ogt float %r5,%r23
    br i1 %r24, label %L5, label %L6
L4:  ;
    ret i32 0
L5:  ;
    %r26 = call float @my_ln(float %r5)
    call void @putfloat(float %r26)
    br label %L7
L6:  ;
    call void @putch(i32 45)
    br label %L7
L7:  ;
    call void @putch(i32 32)
    %r32 = fcmp ogt float %r5,%r23
    br i1 %r32, label %L11, label %L9
L8:  ;
    %r39 = call float @my_log(float %r5,float %r7)
    call void @putfloat(float %r39)
    br label %L10
L9:  ;
    call void @putch(i32 45)
    br label %L10
L10:  ;
    call void @putch(i32 32)
    %r45 = fcmp ogt float %r5,%r23
    br i1 %r45, label %L12, label %L13
L11:  ;
    %r36 = fcmp ogt float %r7,%r23
    br i1 %r36, label %L8, label %L9
L12:  ;
    %r48 = call float @my_powf(float %r5,float %r7)
    call void @putfloat(float %r48)
    br label %L14
L13:  ;
    call void @putch(i32 45)
    br label %L14
L14:  ;
    call void @putch(i32 10)
    %r53 = sub i32 %r55,1
    br label %L2
}
