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
    %r30 = alloca i32
    %r13 = alloca float
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load float, ptr %r1
    %r3 = add i32 100,0
    %r4 = sitofp i32 %r3 to float
    %r5 = fcmp ogt float %r2,%r4
    br i1 %r5, label %L2, label %L3
L2:  ;
    %r6 = fadd float 0x4024000000000000,0x0
<<<<<<< HEAD
    %r7 = load float, ptr %r1
    %r8 = add i32 100,0
    %r9 = sitofp i32 %r8 to float
    %r10 = fdiv float %r7,%r9
=======
    %r10 = fdiv float %r0,%r4
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r11 = call float @my_sqrt(float %r10)
    %r12 = fmul float %r6,%r11
    ret float %r12
L3:  ;
    %r14 = load float, ptr %r1
    %r15 = add i32 8,0
    %r16 = sitofp i32 %r15 to float
    %r17 = fdiv float %r14,%r16
    %r18 = fadd float 0x3fe0000000000000,0x0
    %r19 = fadd float %r17,%r18
    %r20 = add i32 2,0
    %r21 = load float, ptr %r1
    %r22 = sitofp i32 %r20 to float
    %r23 = fmul float %r22,%r21
    %r24 = add i32 4,0
    %r25 = load float, ptr %r1
    %r26 = sitofp i32 %r24 to float
    %r27 = fadd float %r26,%r25
    %r28 = fdiv float %r23,%r27
    %r29 = fadd float %r19,%r28
    store float %r29, ptr %r13
    %r31 = add i32 10,0
    store i32 %r31, ptr %r30
    br label %L4
L4:  ;
    %r32 = load i32, ptr %r30
    %r33 = icmp ne i32 %r32,0
    br i1 %r33, label %L5, label %L6
L5:  ;
<<<<<<< HEAD
    %r34 = load float, ptr %r13
    %r35 = load float, ptr %r1
    %r36 = load float, ptr %r13
    %r37 = fdiv float %r35,%r36
    %r38 = fadd float %r34,%r37
    %r39 = add i32 2,0
    %r40 = sitofp i32 %r39 to float
    %r41 = fdiv float %r38,%r40
    store float %r41, ptr %r13
    %r42 = load i32, ptr %r30
    %r43 = add i32 1,0
    %r44 = sub i32 %r42,%r43
    store i32 %r44, ptr %r30
=======
    %r37 = fdiv float %r0,%r47
    %r38 = fadd float %r47,%r37
    %r41 = fdiv float %r38,%r22
    %r44 = sub i32 %r46,1
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br label %L4
L6:  ;
    %r45 = load float, ptr %r13
    ret float %r45
}
define float @my_pow(float %r0,i32 %r1)
{
L0:  ;
    %r14 = alloca float
    %r3 = alloca i32
    %r2 = alloca float
    store float %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
    %r4 = load i32, ptr %r3
    %r5 = add i32 0,0
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:  ;
    %r7 = add i32 1,0
    %r8 = load float, ptr %r2
    %r9 = load i32, ptr %r3
    %r10 = sub i32 0,%r9
    %r11 = call float @my_pow(float %r8,i32 %r10)
    %r12 = sitofp i32 %r7 to float
    %r13 = fdiv float %r12,%r11
    ret float %r13
L3:  ;
    %r15 = fadd float 0x3ff0000000000000,0x0
    store float %r15, ptr %r14
    br label %L4
L4:  ;
    %r16 = load i32, ptr %r3
    %r17 = icmp ne i32 %r16,0
    br i1 %r17, label %L5, label %L6
L5:  ;
    %r18 = load i32, ptr %r3
    %r19 = add i32 2,0
    %r20 = srem i32 %r18,%r19
    %r21 = icmp ne i32 %r20,0
    br i1 %r21, label %L7, label %L8
L6:  ;
    %r31 = load float, ptr %r14
    ret float %r31
L7:  ;
    %r22 = load float, ptr %r14
    %r23 = load float, ptr %r2
    %r24 = fmul float %r22,%r23
    store float %r24, ptr %r14
    br label %L8
L8:  ;
    %r25 = load float, ptr %r2
    %r26 = load float, ptr %r2
    %r27 = fmul float %r25,%r26
    store float %r27, ptr %r2
    %r28 = load i32, ptr %r3
    %r29 = add i32 2,0
    %r30 = sdiv i32 %r28,%r29
    store i32 %r30, ptr %r3
    br label %L4
}
define float @F1(float %r0)
{
L0:  ;
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = add i32 1,0
    %r3 = load float, ptr %r1
    %r4 = sitofp i32 %r2 to float
    %r5 = fdiv float %r4,%r3
    ret float %r5
}
define float @F2(float %r0)
{
L0:  ;
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = add i32 1,0
    %r3 = add i32 1,0
    %r4 = load float, ptr %r1
    %r5 = load float, ptr %r1
    %r6 = fmul float %r4,%r5
    %r7 = sitofp i32 %r3 to float
    %r8 = fsub float %r7,%r6
    %r9 = call float @my_sqrt(float %r8)
<<<<<<< HEAD
    %r10 = sitofp i32 %r2 to float
    %r11 = fdiv float %r10,%r9
=======
    %r11 = fdiv float %r7,%r9
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    ret float %r11
}
define float @simpson(float %r0,float %r1,i32 %r2)
{
L0:  ;
    %r6 = alloca float
    %r5 = alloca i32
    %r4 = alloca float
    %r3 = alloca float
    store float %r0, ptr %r3
    store float %r1, ptr %r4
    store i32 %r2, ptr %r5
    br label %L1
L1:  ;
    %r7 = load float, ptr %r3
    %r8 = load float, ptr %r4
    %r9 = load float, ptr %r3
    %r10 = fsub float %r8,%r9
    %r11 = add i32 2,0
    %r12 = sitofp i32 %r11 to float
    %r13 = fdiv float %r10,%r12
    %r14 = fadd float %r7,%r13
    store float %r14, ptr %r6
    %r15 = load i32, ptr %r5
    %r16 = add i32 1,0
    %r17 = icmp eq i32 %r15,%r16
    br i1 %r17, label %L2, label %L3
L2:  ;
    %r18 = load float, ptr %r3
    %r19 = call float @F1(float %r18)
    %r20 = add i32 4,0
    %r21 = load float, ptr %r6
    %r22 = call float @F1(float %r21)
    %r23 = sitofp i32 %r20 to float
    %r24 = fmul float %r23,%r22
    %r25 = fadd float %r19,%r24
    %r26 = load float, ptr %r4
    %r27 = call float @F1(float %r26)
    %r28 = fadd float %r25,%r27
<<<<<<< HEAD
    %r29 = load float, ptr %r4
    %r30 = load float, ptr %r3
    %r31 = fsub float %r29,%r30
    %r32 = fmul float %r28,%r31
    %r33 = add i32 6,0
    %r34 = sitofp i32 %r33 to float
=======
    %r32 = fmul float %r28,%r10
    %r34 = sitofp i32 6 to float
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r35 = fdiv float %r32,%r34
    ret float %r35
L3:  ;
    %r36 = load i32, ptr %r5
    %r37 = add i32 2,0
    %r38 = icmp eq i32 %r36,%r37
    br i1 %r38, label %L4, label %L5
L4:  ;
    %r39 = load float, ptr %r3
    %r40 = call float @F2(float %r39)
    %r41 = add i32 4,0
    %r42 = load float, ptr %r6
    %r43 = call float @F2(float %r42)
    %r44 = sitofp i32 %r41 to float
    %r45 = fmul float %r44,%r43
    %r46 = fadd float %r40,%r45
    %r47 = load float, ptr %r4
    %r48 = call float @F2(float %r47)
    %r49 = fadd float %r46,%r48
<<<<<<< HEAD
    %r50 = load float, ptr %r4
    %r51 = load float, ptr %r3
    %r52 = fsub float %r50,%r51
    %r53 = fmul float %r49,%r52
    %r54 = add i32 6,0
    %r55 = sitofp i32 %r54 to float
=======
    %r53 = fmul float %r49,%r10
    %r55 = sitofp i32 6 to float
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r56 = fdiv float %r53,%r55
    ret float %r56
L5:  ;
    %r57 = add i32 0,0
    %r58 = sitofp i32 %r57 to float
    ret float %r58
}
define float @asr5(float %r0,float %r1,float %r2,float %r3,i32 %r4)
{
L0:  ;
    %r24 = alloca float
    %r19 = alloca float
    %r10 = alloca float
    %r9 = alloca i32
    %r8 = alloca float
    %r7 = alloca float
    %r6 = alloca float
    %r5 = alloca float
    store float %r0, ptr %r5
    store float %r1, ptr %r6
    store float %r2, ptr %r7
    store float %r3, ptr %r8
    store i32 %r4, ptr %r9
    br label %L1
L1:  ;
    %r11 = load float, ptr %r5
    %r12 = load float, ptr %r6
    %r13 = load float, ptr %r5
    %r14 = fsub float %r12,%r13
    %r15 = add i32 2,0
    %r16 = sitofp i32 %r15 to float
    %r17 = fdiv float %r14,%r16
    %r18 = fadd float %r11,%r17
    store float %r18, ptr %r10
    %r20 = load float, ptr %r5
    %r21 = load float, ptr %r10
    %r22 = load i32, ptr %r9
    %r23 = call float @simpson(float %r20,float %r21,i32 %r22)
    store float %r23, ptr %r19
    %r25 = load float, ptr %r10
    %r26 = load float, ptr %r6
    %r27 = load i32, ptr %r9
    %r28 = call float @simpson(float %r25,float %r26,i32 %r27)
    store float %r28, ptr %r24
    %r29 = load float, ptr %r19
    %r30 = load float, ptr %r24
    %r31 = fadd float %r29,%r30
    %r32 = load float, ptr %r8
    %r33 = fsub float %r31,%r32
    %r34 = call float @my_fabs(float %r33)
    %r35 = add i32 15,0
    %r36 = load float, ptr %r7
    %r37 = sitofp i32 %r35 to float
    %r38 = fmul float %r37,%r36
    %r39 = fcmp ole float %r34,%r38
    br i1 %r39, label %L2, label %L3
L2:  ;
<<<<<<< HEAD
    %r40 = load float, ptr %r19
    %r41 = load float, ptr %r24
    %r42 = fadd float %r40,%r41
    %r43 = load float, ptr %r19
    %r44 = load float, ptr %r24
    %r45 = fadd float %r43,%r44
    %r46 = load float, ptr %r8
    %r47 = fsub float %r45,%r46
=======
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r48 = fadd float 0x402e000000000000,0x0
    %r49 = fdiv float %r33,%r48
    %r50 = fadd float %r31,%r49
    ret float %r50
L3:  ;
<<<<<<< HEAD
    %r51 = load float, ptr %r5
    %r52 = load float, ptr %r10
    %r53 = load float, ptr %r7
    %r54 = add i32 2,0
    %r55 = sitofp i32 %r54 to float
    %r56 = fdiv float %r53,%r55
    %r57 = load float, ptr %r19
    %r58 = load i32, ptr %r9
    %r59 = call float @asr5(float %r51,float %r52,float %r56,float %r57,i32 %r58)
    %r60 = load float, ptr %r10
    %r61 = load float, ptr %r6
    %r62 = load float, ptr %r7
    %r63 = add i32 2,0
    %r64 = sitofp i32 %r63 to float
    %r65 = fdiv float %r62,%r64
    %r66 = load float, ptr %r24
    %r67 = load i32, ptr %r9
    %r68 = call float @asr5(float %r60,float %r61,float %r65,float %r66,i32 %r67)
=======
    %r56 = fdiv float %r2,%r16
    %r59 = call float @asr5(float %r0,float %r18,float %r56,float %r23,i32 %r4)
    %r68 = call float @asr5(float %r18,float %r1,float %r56,float %r28,i32 %r4)
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r69 = fadd float %r59,%r68
    ret float %r69
}
define float @asr4(float %r0,float %r1,float %r2,i32 %r3)
{
L0:  ;
    %r7 = alloca i32
    %r6 = alloca float
    %r5 = alloca float
    %r4 = alloca float
    store float %r0, ptr %r4
    store float %r1, ptr %r5
    store float %r2, ptr %r6
    store i32 %r3, ptr %r7
    br label %L1
L1:  ;
    %r8 = load float, ptr %r4
    %r9 = load float, ptr %r5
    %r10 = load float, ptr %r6
    %r11 = load float, ptr %r4
    %r12 = load float, ptr %r5
    %r13 = load i32, ptr %r7
    %r14 = call float @simpson(float %r11,float %r12,i32 %r13)
    %r15 = load i32, ptr %r7
    %r16 = call float @asr5(float %r8,float %r9,float %r10,float %r14,i32 %r15)
    ret float %r16
}
define float @eee(float %r0)
{
L0:  ;
    %r5 = alloca float
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load float, ptr %r1
    %r3 = fadd float 0x3f50624de0000000,0x0
    %r4 = fcmp ogt float %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:  ;
    %r6 = load float, ptr %r1
    %r7 = add i32 2,0
    %r8 = sitofp i32 %r7 to float
    %r9 = fdiv float %r6,%r8
    %r10 = call float @eee(float %r9)
    store float %r10, ptr %r5
    %r11 = load float, ptr %r5
    %r12 = load float, ptr %r5
    %r13 = fmul float %r11,%r12
    ret float %r13
L3:  ;
    %r14 = add i32 1,0
    %r15 = load float, ptr %r1
    %r16 = sitofp i32 %r14 to float
    %r17 = fadd float %r16,%r15
    %r18 = load float, ptr %r1
    %r19 = load float, ptr %r1
    %r20 = fmul float %r18,%r19
    %r21 = add i32 2,0
    %r22 = sitofp i32 %r21 to float
    %r23 = fdiv float %r20,%r22
    %r24 = fadd float %r17,%r23
    %r25 = load float, ptr %r1
    %r26 = add i32 3,0
    %r27 = call float @my_pow(float %r25,i32 %r26)
    %r28 = add i32 6,0
    %r29 = sitofp i32 %r28 to float
    %r30 = fdiv float %r27,%r29
    %r31 = fadd float %r24,%r30
    %r32 = load float, ptr %r1
    %r33 = add i32 4,0
    %r34 = call float @my_pow(float %r32,i32 %r33)
    %r35 = add i32 24,0
    %r36 = sitofp i32 %r35 to float
    %r37 = fdiv float %r34,%r36
    %r38 = fadd float %r31,%r37
    %r39 = load float, ptr %r1
    %r40 = add i32 5,0
    %r41 = call float @my_pow(float %r39,i32 %r40)
    %r42 = add i32 120,0
    %r43 = sitofp i32 %r42 to float
    %r44 = fdiv float %r41,%r43
    %r45 = fadd float %r38,%r44
    ret float %r45
}
define float @my_exp(float %r0)
{
L0:  ;
    %r23 = alloca float
    %r19 = alloca float
    %r12 = alloca i32
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load float, ptr %r1
    %r3 = add i32 0,0
    %r4 = sitofp i32 %r3 to float
    %r5 = fcmp olt float %r2,%r4
    br i1 %r5, label %L2, label %L3
L2:  ;
    %r6 = add i32 1,0
    %r7 = load float, ptr %r1
    %r8 = fsub float 0x0,%r7
    %r9 = call float @my_exp(float %r8)
    %r10 = sitofp i32 %r6 to float
    %r11 = fdiv float %r10,%r9
    ret float %r11
L3:  ;
    %r13 = load float, ptr %r1
    %r14 = fptosi float %r13 to i32
    store i32 %r14, ptr %r12
    %r15 = load float, ptr %r1
    %r16 = load i32, ptr %r12
    %r17 = sitofp i32 %r16 to float
    %r18 = fsub float %r15,%r17
    store float %r18, ptr %r1
    %r20 = load float, ptr @e
    %r21 = load i32, ptr %r12
    %r22 = call float @my_pow(float %r20,i32 %r21)
    store float %r22, ptr %r19
    %r24 = load float, ptr %r1
    %r25 = call float @eee(float %r24)
    store float %r25, ptr %r23
    %r26 = load float, ptr %r19
    %r27 = load float, ptr %r23
    %r28 = fmul float %r26,%r27
    ret float %r28
}
define float @my_ln(float %r0)
{
L0:  ;
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = add i32 1,0
    %r3 = sitofp i32 %r2 to float
    %r4 = load float, ptr %r1
    %r5 = fadd float 0x3e45798ee0000000,0x0
    %r6 = add i32 1,0
    %r7 = call float @asr4(float %r3,float %r4,float %r5,i32 %r6)
    ret float %r7
}
define float @my_log(float %r0,float %r1)
{
L0:  ;
    %r3 = alloca float
    %r2 = alloca float
    store float %r0, ptr %r2
    store float %r1, ptr %r3
    br label %L1
L1:  ;
    %r4 = load float, ptr %r3
    %r5 = call float @my_ln(float %r4)
    %r6 = load float, ptr %r2
    %r7 = call float @my_ln(float %r6)
    %r8 = fdiv float %r5,%r7
    ret float %r8
}
define float @my_powf(float %r0,float %r1)
{
L0:  ;
    %r3 = alloca float
    %r2 = alloca float
    store float %r0, ptr %r2
    store float %r1, ptr %r3
    br label %L1
L1:  ;
    %r4 = load float, ptr %r3
    %r5 = load float, ptr %r2
    %r6 = call float @my_ln(float %r5)
    %r7 = fmul float %r4,%r6
    %r8 = call float @my_exp(float %r7)
    ret float %r8
}
define i32 @main()
{
L0:  ;
    %r6 = alloca float
    %r4 = alloca float
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    br label %L2
L2:  ;
    %r2 = load i32, ptr %r0
    %r3 = icmp ne i32 %r2,0
    br i1 %r3, label %L3, label %L4
L3:  ;
    %r5 = call float @getfloat()
    store float %r5, ptr %r4
    %r7 = call float @getfloat()
    store float %r7, ptr %r6
    %r8 = load float, ptr %r4
    %r9 = call float @my_fabs(float %r8)
    call void @putfloat(float %r9)
    %r10 = add i32 32,0
    call void @putch(i32 %r10)
    %r11 = load float, ptr %r4
    %r12 = add i32 2,0
    %r13 = call float @my_pow(float %r11,i32 %r12)
    call void @putfloat(float %r13)
    %r14 = add i32 32,0
    call void @putch(i32 %r14)
    %r15 = load float, ptr %r4
    %r16 = call float @my_sqrt(float %r15)
    call void @putfloat(float %r16)
    %r17 = add i32 32,0
    call void @putch(i32 %r17)
    %r18 = load float, ptr %r4
    %r19 = call float @my_exp(float %r18)
    call void @putfloat(float %r19)
    %r20 = add i32 32,0
    call void @putch(i32 %r20)
    %r21 = load float, ptr %r4
    %r22 = add i32 0,0
    %r23 = sitofp i32 %r22 to float
    %r24 = fcmp ogt float %r21,%r23
    br i1 %r24, label %L5, label %L6
L4:  ;
    %r54 = add i32 0,0
    ret i32 %r54
L5:  ;
    %r25 = load float, ptr %r4
    %r26 = call float @my_ln(float %r25)
    call void @putfloat(float %r26)
    br label %L7
L6:  ;
    %r27 = add i32 45,0
    call void @putch(i32 %r27)
    br label %L7
L7:  ;
<<<<<<< HEAD
    %r28 = add i32 32,0
    call void @putch(i32 %r28)
    %r29 = load float, ptr %r4
    %r30 = add i32 0,0
    %r31 = sitofp i32 %r30 to float
    %r32 = fcmp ogt float %r29,%r31
=======
    call void @putch(i32 32)
    %r32 = fcmp ogt float %r5,%r23
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br i1 %r32, label %L11, label %L9
L8:  ;
    %r37 = load float, ptr %r4
    %r38 = load float, ptr %r6
    %r39 = call float @my_log(float %r37,float %r38)
    call void @putfloat(float %r39)
    br label %L10
L9:  ;
    %r40 = add i32 45,0
    call void @putch(i32 %r40)
    br label %L10
L10:  ;
<<<<<<< HEAD
    %r41 = add i32 32,0
    call void @putch(i32 %r41)
    %r42 = load float, ptr %r4
    %r43 = add i32 0,0
    %r44 = sitofp i32 %r43 to float
    %r45 = fcmp ogt float %r42,%r44
    br i1 %r45, label %L12, label %L13
L11:  ;
    %r33 = load float, ptr %r6
    %r34 = add i32 0,0
    %r35 = sitofp i32 %r34 to float
    %r36 = fcmp ogt float %r33,%r35
=======
    call void @putch(i32 32)
    %r45 = fcmp ogt float %r5,%r23
    br i1 %r45, label %L12, label %L13
L11:  ;
    %r36 = fcmp ogt float %r7,%r23
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br i1 %r36, label %L8, label %L9
L12:  ;
    %r46 = load float, ptr %r4
    %r47 = load float, ptr %r6
    %r48 = call float @my_powf(float %r46,float %r47)
    call void @putfloat(float %r48)
    br label %L14
L13:  ;
    %r49 = add i32 45,0
    call void @putch(i32 %r49)
    br label %L14
L14:  ;
    %r50 = add i32 10,0
    call void @putch(i32 %r50)
    %r51 = load i32, ptr %r0
    %r52 = add i32 1,0
    %r53 = sub i32 %r51,%r52
    store i32 %r53, ptr %r0
    br label %L2
}
