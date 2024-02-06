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
define float @asr5(float %r0,float %r1,float %r2,float %r3,i32 %r4)
{
L0:
    %r24 = alloca float
    %r19 = alloca float
    %r10 = alloca float
    %r5 = alloca float
    store float %r0, ptr %r5
    %r6 = alloca float
    store float %r1, ptr %r6
    %r7 = alloca float
    store float %r2, ptr %r7
    %r8 = alloca float
    store float %r3, ptr %r8
    %r9 = alloca i32
    store i32 %r4, ptr %r9
    br label %L1
L1:
    %r11 = load float, ptr %r5
    %r12 = load float, ptr %r6
    %r13 = load float, ptr %r5
    %r14 = fsub float %r12,%r13
    %r15 = add i32 0,2
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
    %r35 = add i32 0,15
    %r36 = load float, ptr %r7
    %r37 = sitofp i32 %r35 to float
    %r38 = fmul float %r37,%r36
    %r39 = fcmp ole float %r34,%r38
    br i1 %r39, label %L2, label %L3
L2:
    %r42 = load float, ptr %r19
    %r43 = load float, ptr %r24
    %r44 = fadd float %r42,%r43
    %r45 = load float, ptr %r19
    %r46 = load float, ptr %r24
    %r47 = fadd float %r45,%r46
    %r48 = load float, ptr %r8
    %r49 = fsub float %r47,%r48
    %r50 = fadd float 0x0,0x402e000000000000
    %r51 = fdiv float %r49,%r50
    %r52 = fadd float %r44,%r51
    ret float %r52
L3:
    %r53 = load float, ptr %r5
    %r54 = load float, ptr %r10
    %r55 = load float, ptr %r7
    %r56 = add i32 0,2
    %r57 = sitofp i32 %r56 to float
    %r58 = fdiv float %r55,%r57
    %r59 = load float, ptr %r19
    %r60 = load i32, ptr %r9
    %r61 = call float @asr5(float %r53,float %r54,float %r58,float %r59,i32 %r60)
    %r62 = load float, ptr %r10
    %r63 = load float, ptr %r6
    %r64 = load float, ptr %r7
    %r65 = add i32 0,2
    %r66 = sitofp i32 %r65 to float
    %r67 = fdiv float %r64,%r66
    %r68 = load float, ptr %r24
    %r69 = load i32, ptr %r9
    %r70 = call float @asr5(float %r62,float %r63,float %r67,float %r68,i32 %r69)
    %r71 = fadd float %r61,%r70
    ret float %r71
}
define float @asr4(float %r0,float %r1,float %r2,i32 %r3)
{
L0:
    %r4 = alloca float
    store float %r0, ptr %r4
    %r5 = alloca float
    store float %r1, ptr %r5
    %r6 = alloca float
    store float %r2, ptr %r6
    %r7 = alloca i32
    store i32 %r3, ptr %r7
    br label %L1
L1:
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
define float @my_pow(float %r0,i32 %r1)
{
L0:
    %r16 = alloca float
    %r2 = alloca float
    store float %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r3
    %r5 = add i32 0,0
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r9 = add i32 0,1
    %r10 = load float, ptr %r2
    %r11 = load i32, ptr %r3
    %r12 = sub i32 0,%r11
    %r13 = call float @my_pow(float %r10,i32 %r12)
    %r14 = sitofp i32 %r9 to float
    %r15 = fdiv float %r14,%r13
    ret float %r15
L3:
    %r17 = fadd float 0x0,0x3ff0000000000000
    store float %r17, ptr %r16
    %r18 = load i32, ptr %r3
    %r19 = icmp ne i32 %r18,0
    br i1 %r19, label %L5, label %L7
L5:
    %r20 = load i32, ptr %r3
    %r21 = add i32 0,2
    %r22 = srem i32 %r20,%r21
    %r23 = icmp ne i32 %r22,0
    br i1 %r23, label %L8, label %L9
L6:
    %r33 = load i32, ptr %r3
    %r34 = icmp ne i32 %r33,0
    br i1 %r34, label %L5, label %L7
L7:
    %r35 = load float, ptr %r16
    ret float %r35
L8:
    %r24 = load float, ptr %r16
    %r25 = load float, ptr %r2
    %r26 = fmul float %r24,%r25
    store float %r26, ptr %r16
    br label %L9
L9:
    %r27 = load float, ptr %r2
    %r28 = load float, ptr %r2
    %r29 = fmul float %r27,%r28
    store float %r29, ptr %r2
    %r30 = load i32, ptr %r3
    %r31 = add i32 0,2
    %r32 = sdiv i32 %r30,%r31
    store i32 %r32, ptr %r3
    br label %L6
}
define float @F1(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = add i32 0,1
    %r3 = load float, ptr %r1
    %r4 = sitofp i32 %r2 to float
    %r5 = fdiv float %r4,%r3
    ret float %r5
}
define float @my_sqrt(float %r0)
{
L0:
    %r32 = alloca i32
    %r15 = alloca float
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr %r1
    %r3 = add i32 0,100
    %r4 = sitofp i32 %r3 to float
    %r5 = fcmp ogt float %r2,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = fadd float 0x0,0x4024000000000000
    %r9 = load float, ptr %r1
    %r10 = add i32 0,100
    %r11 = sitofp i32 %r10 to float
    %r12 = fdiv float %r9,%r11
    %r13 = call float @my_sqrt(float %r12)
    %r14 = fmul float %r8,%r13
    ret float %r14
L3:
    %r16 = load float, ptr %r1
    %r17 = add i32 0,8
    %r18 = sitofp i32 %r17 to float
    %r19 = fdiv float %r16,%r18
    %r20 = fadd float 0x0,0x3fe0000000000000
    %r21 = fadd float %r19,%r20
    %r22 = add i32 0,2
    %r23 = load float, ptr %r1
    %r24 = sitofp i32 %r22 to float
    %r25 = fmul float %r24,%r23
    %r26 = add i32 0,4
    %r27 = load float, ptr %r1
    %r28 = sitofp i32 %r26 to float
    %r29 = fadd float %r28,%r27
    %r30 = fdiv float %r25,%r29
    %r31 = fadd float %r21,%r30
    store float %r31, ptr %r15
    %r33 = add i32 0,10
    store i32 %r33, ptr %r32
    %r34 = load i32, ptr %r32
    %r35 = icmp ne i32 %r34,0
    br i1 %r35, label %L5, label %L7
L5:
    %r36 = load float, ptr %r15
    %r37 = load float, ptr %r1
    %r38 = load float, ptr %r15
    %r39 = fdiv float %r37,%r38
    %r40 = fadd float %r36,%r39
    %r41 = add i32 0,2
    %r42 = sitofp i32 %r41 to float
    %r43 = fdiv float %r40,%r42
    store float %r43, ptr %r15
    %r44 = load i32, ptr %r32
    %r45 = add i32 0,1
    %r46 = sub i32 %r44,%r45
    store i32 %r46, ptr %r32
    br label %L6
L6:
    %r47 = load i32, ptr %r32
    %r48 = icmp ne i32 %r47,0
    br i1 %r48, label %L5, label %L7
L7:
    %r49 = load float, ptr %r15
    ret float %r49
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
    %r8 = load float, ptr %r1
    ret float %r8
L3:
    %r9 = load float, ptr %r1
    %r10 = fsub float 0x0,%r9
    ret float %r10
}
define float @F2(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = add i32 0,1
    %r3 = add i32 0,1
    %r4 = load float, ptr %r1
    %r5 = load float, ptr %r1
    %r6 = fmul float %r4,%r5
    %r7 = sitofp i32 %r3 to float
    %r8 = fsub float %r7,%r6
    %r9 = call float @my_sqrt(float %r8)
    %r10 = sitofp i32 %r2 to float
    %r11 = fdiv float %r10,%r9
    ret float %r11
}
define float @simpson(float %r0,float %r1,i32 %r2)
{
L0:
    %r6 = alloca float
    %r3 = alloca float
    store float %r0, ptr %r3
    %r4 = alloca float
    store float %r1, ptr %r4
    %r5 = alloca i32
    store i32 %r2, ptr %r5
    br label %L1
L1:
    %r7 = load float, ptr %r3
    %r8 = load float, ptr %r4
    %r9 = load float, ptr %r3
    %r10 = fsub float %r8,%r9
    %r11 = add i32 0,2
    %r12 = sitofp i32 %r11 to float
    %r13 = fdiv float %r10,%r12
    %r14 = fadd float %r7,%r13
    store float %r14, ptr %r6
    %r15 = load i32, ptr %r5
    %r16 = add i32 0,1
    %r17 = icmp eq i32 %r15,%r16
    br i1 %r17, label %L2, label %L3
L2:
    %r20 = load float, ptr %r3
    %r21 = call float @F1(float %r20)
    %r22 = add i32 0,4
    %r23 = load float, ptr %r6
    %r24 = call float @F1(float %r23)
    %r25 = sitofp i32 %r22 to float
    %r26 = fmul float %r25,%r24
    %r27 = fadd float %r21,%r26
    %r28 = load float, ptr %r4
    %r29 = call float @F1(float %r28)
    %r30 = fadd float %r27,%r29
    %r31 = load float, ptr %r4
    %r32 = load float, ptr %r3
    %r33 = fsub float %r31,%r32
    %r34 = fmul float %r30,%r33
    %r35 = add i32 0,6
    %r36 = sitofp i32 %r35 to float
    %r37 = fdiv float %r34,%r36
    ret float %r37
L3:
    %r38 = load i32, ptr %r5
    %r39 = add i32 0,2
    %r40 = icmp eq i32 %r38,%r39
    br i1 %r40, label %L4, label %L5
L4:
    %r43 = load float, ptr %r3
    %r44 = call float @F2(float %r43)
    %r45 = add i32 0,4
    %r46 = load float, ptr %r6
    %r47 = call float @F2(float %r46)
    %r48 = sitofp i32 %r45 to float
    %r49 = fmul float %r48,%r47
    %r50 = fadd float %r44,%r49
    %r51 = load float, ptr %r4
    %r52 = call float @F2(float %r51)
    %r53 = fadd float %r50,%r52
    %r54 = load float, ptr %r4
    %r55 = load float, ptr %r3
    %r56 = fsub float %r54,%r55
    %r57 = fmul float %r53,%r56
    %r58 = add i32 0,6
    %r59 = sitofp i32 %r58 to float
    %r60 = fdiv float %r57,%r59
    ret float %r60
L5:
    %r61 = add i32 0,0
    %r62 = sitofp i32 %r61 to float
    ret float %r62
}
define float @eee(float %r0)
{
L0:
    %r7 = alloca float
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr %r1
    %r3 = fadd float 0x0,0x3f50624de0000000
    %r4 = fcmp ogt float %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r8 = load float, ptr %r1
    %r9 = add i32 0,2
    %r10 = sitofp i32 %r9 to float
    %r11 = fdiv float %r8,%r10
    %r12 = call float @eee(float %r11)
    store float %r12, ptr %r7
    %r13 = load float, ptr %r7
    %r14 = load float, ptr %r7
    %r15 = fmul float %r13,%r14
    ret float %r15
L3:
    %r16 = add i32 0,1
    %r17 = load float, ptr %r1
    %r18 = sitofp i32 %r16 to float
    %r19 = fadd float %r18,%r17
    %r20 = load float, ptr %r1
    %r21 = load float, ptr %r1
    %r22 = fmul float %r20,%r21
    %r23 = add i32 0,2
    %r24 = sitofp i32 %r23 to float
    %r25 = fdiv float %r22,%r24
    %r26 = fadd float %r19,%r25
    %r27 = load float, ptr %r1
    %r28 = add i32 0,3
    %r29 = call float @my_pow(float %r27,i32 %r28)
    %r30 = add i32 0,6
    %r31 = sitofp i32 %r30 to float
    %r32 = fdiv float %r29,%r31
    %r33 = fadd float %r26,%r32
    %r34 = load float, ptr %r1
    %r35 = add i32 0,4
    %r36 = call float @my_pow(float %r34,i32 %r35)
    %r37 = add i32 0,24
    %r38 = sitofp i32 %r37 to float
    %r39 = fdiv float %r36,%r38
    %r40 = fadd float %r33,%r39
    %r41 = load float, ptr %r1
    %r42 = add i32 0,5
    %r43 = call float @my_pow(float %r41,i32 %r42)
    %r44 = add i32 0,120
    %r45 = sitofp i32 %r44 to float
    %r46 = fdiv float %r43,%r45
    %r47 = fadd float %r40,%r46
    ret float %r47
}
define float @my_exp(float %r0)
{
L0:
    %r25 = alloca float
    %r21 = alloca float
    %r14 = alloca i32
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr %r1
    %r3 = add i32 0,0
    %r4 = sitofp i32 %r3 to float
    %r5 = fcmp olt float %r2,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = add i32 0,1
    %r9 = load float, ptr %r1
    %r10 = fsub float 0x0,%r9
    %r11 = call float @my_exp(float %r10)
    %r12 = sitofp i32 %r8 to float
    %r13 = fdiv float %r12,%r11
    ret float %r13
L3:
    %r15 = load float, ptr %r1
    %r16 = fptosi float %r15 to i32
    store i32 %r16, ptr %r14
    %r17 = load float, ptr %r1
    %r18 = load i32, ptr %r14
    %r19 = sitofp i32 %r18 to float
    %r20 = fsub float %r17,%r19
    store float %r20, ptr %r1
    %r22 = load float, ptr @e
    %r23 = load i32, ptr %r14
    %r24 = call float @my_pow(float %r22,i32 %r23)
    store float %r24, ptr %r21
    %r26 = load float, ptr %r1
    %r27 = call float @eee(float %r26)
    store float %r27, ptr %r25
    %r28 = load float, ptr %r21
    %r29 = load float, ptr %r25
    %r30 = fmul float %r28,%r29
    ret float %r30
}
define float @my_ln(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = add i32 0,1
    %r3 = sitofp i32 %r2 to float
    %r4 = load float, ptr %r1
    %r5 = fadd float 0x0,0x3e45798ee0000000
    %r6 = add i32 0,1
    %r7 = call float @asr4(float %r3,float %r4,float %r5,i32 %r6)
    ret float %r7
}
define float @my_log(float %r0,float %r1)
{
L0:
    %r2 = alloca float
    store float %r0, ptr %r2
    %r3 = alloca float
    store float %r1, ptr %r3
    br label %L1
L1:
    %r4 = load float, ptr %r3
    %r5 = call float @my_ln(float %r4)
    %r6 = load float, ptr %r2
    %r7 = call float @my_ln(float %r6)
    %r8 = fdiv float %r5,%r7
    ret float %r8
}
define float @my_powf(float %r0,float %r1)
{
L0:
    %r2 = alloca float
    store float %r0, ptr %r2
    %r3 = alloca float
    store float %r1, ptr %r3
    br label %L1
L1:
    %r4 = load float, ptr %r3
    %r5 = load float, ptr %r2
    %r6 = call float @my_ln(float %r5)
    %r7 = fmul float %r4,%r6
    %r8 = call float @my_exp(float %r7)
    ret float %r8
}
define i32 @main()
{
L0:
    %r6 = alloca float
    %r4 = alloca float
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr %r0
    %r3 = icmp ne i32 %r2,0
    br i1 %r3, label %L3, label %L5
L3:
    %r5 = call float @getfloat()
    store float %r5, ptr %r4
    %r7 = call float @getfloat()
    store float %r7, ptr %r6
    %r8 = load float, ptr %r4
    %r9 = call float @my_fabs(float %r8)
    call void @putfloat(float %r9)
    %r10 = add i32 0,32
    call void @putch(i32 %r10)
    %r11 = load float, ptr %r4
    %r12 = add i32 0,2
    %r13 = call float @my_pow(float %r11,i32 %r12)
    call void @putfloat(float %r13)
    %r14 = add i32 0,32
    call void @putch(i32 %r14)
    %r15 = load float, ptr %r4
    %r16 = call float @my_sqrt(float %r15)
    call void @putfloat(float %r16)
    %r17 = add i32 0,32
    call void @putch(i32 %r17)
    %r18 = load float, ptr %r4
    %r19 = call float @my_exp(float %r18)
    call void @putfloat(float %r19)
    %r20 = add i32 0,32
    call void @putch(i32 %r20)
    %r21 = load float, ptr %r4
    %r22 = add i32 0,0
    %r23 = sitofp i32 %r22 to float
    %r24 = fcmp ogt float %r21,%r23
    br i1 %r24, label %L6, label %L7
L4:
    %r65 = load i32, ptr %r0
    %r66 = icmp ne i32 %r65,0
    br i1 %r66, label %L3, label %L5
L5:
    %r67 = add i32 0,0
    ret i32 %r67
L6:
    %r27 = load float, ptr %r4
    %r28 = call float @my_ln(float %r27)
    call void @putfloat(float %r28)
    br label %L8
L7:
    %r29 = add i32 0,45
    call void @putch(i32 %r29)
    br label %L8
L8:
    %r30 = add i32 0,32
    call void @putch(i32 %r30)
    %r31 = load float, ptr %r4
    %r32 = add i32 0,0
    %r33 = sitofp i32 %r32 to float
    %r34 = fcmp ogt float %r31,%r33
    br i1 %r34, label %L12, label %L10
L9:
    %r46 = load float, ptr %r4
    %r47 = load float, ptr %r6
    %r48 = call float @my_log(float %r46,float %r47)
    call void @putfloat(float %r48)
    br label %L11
L10:
    %r49 = add i32 0,45
    call void @putch(i32 %r49)
    br label %L11
L11:
    %r50 = add i32 0,32
    call void @putch(i32 %r50)
    %r51 = load float, ptr %r4
    %r52 = add i32 0,0
    %r53 = sitofp i32 %r52 to float
    %r54 = fcmp ogt float %r51,%r53
    br i1 %r54, label %L14, label %L15
L12:
    %r37 = load float, ptr %r6
    %r38 = add i32 0,0
    %r39 = sitofp i32 %r38 to float
    %r40 = fcmp ogt float %r37,%r39
    br i1 %r40, label %L9, label %L10
L14:
    %r57 = load float, ptr %r4
    %r58 = load float, ptr %r6
    %r59 = call float @my_powf(float %r57,float %r58)
    call void @putfloat(float %r59)
    br label %L16
L15:
    %r60 = add i32 0,45
    call void @putch(i32 %r60)
    br label %L16
L16:
    %r61 = add i32 0,10
    call void @putch(i32 %r61)
    %r62 = load i32, ptr %r0
    %r63 = add i32 0,1
    %r64 = sub i32 %r62,%r63
    store i32 %r64, ptr %r0
    br label %L4
}
