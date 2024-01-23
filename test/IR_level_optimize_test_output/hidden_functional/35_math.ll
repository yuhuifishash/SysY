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
    br label %L1
L1:
    %r14 = fsub float %r1,%r0
    %r16 = sitofp i32 2 to float
    %r17 = fdiv float %r14,%r16
    %r18 = fadd float %r0,%r17
    %r23 = call float @simpson(float %r0,float %r18,i32 %r4)
    %r28 = call float @simpson(float %r18,float %r1,i32 %r4)
    %r31 = fadd float %r23,%r28
    %r33 = fsub float %r31,%r3
    br label %L4
L2:
    %r44 = fadd float %r23,%r28
    %r47 = fadd float %r23,%r28
    %r49 = fsub float %r47,%r3
    %r50 = fadd float 0x0,0x402e000000000000
    %r51 = fdiv float %r49,%r50
    %r52 = fadd float %r44,%r51
    ret float %r52
L3:
    %r57 = sitofp i32 2 to float
    %r58 = fdiv float %r2,%r57
    %r61 = call float @asr5(float %r0,float %r18,float %r58,float %r23,i32 %r4)
    %r67 = fdiv float %r2,%r57
    %r70 = call float @asr5(float %r18,float %r1,float %r67,float %r28,i32 %r4)
    %r71 = fadd float %r61,%r70
    ret float %r71
L4:
    br label %L6
L5:
    %r34 = phi float [%r74,%L8],[%r33,%L7]
    %r37 = sitofp i32 15 to float
    %r38 = fmul float %r37,%r2
    %r39 = fcmp ole float %r34,%r38
    br i1 %r39, label %L2, label %L3
L6:
    %r72 = sitofp i32 0 to float
    %r73 = fcmp ogt float %r33,%r72
    br i1 %r73, label %L7, label %L8
L7:
    br label %L5
L8:
    %r74 = fsub float 0x0,%r33
    br label %L5
}
define float @asr4(float %r0,float %r1,float %r2,i32 %r3)
{
L0:
    br label %L1
L1:
    %r14 = call float @simpson(float %r0,float %r1,i32 %r3)
    %r16 = call float @asr5(float %r0,float %r1,float %r2,float %r14,i32 %r3)
    ret float %r16
}
define float @my_pow(float %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = icmp slt i32 %r1,0
    br i1 %r6, label %L2, label %L3
L2:
    %r12 = sub i32 0,%r1
    %r13 = call float @my_pow(float %r0,i32 %r12)
    %r14 = sitofp i32 1 to float
    %r15 = fdiv float %r14,%r13
    ret float %r15
L3:
    %r17 = fadd float 0x0,0x3ff0000000000000
    %r19 = icmp ne i32 %r1,0
    br i1 %r19, label %L10, label %L7
L5:
    %r41 = phi i32 [%r32,%L6],[%r1,%L10]
    %r39 = phi float [%r29,%L6],[%r0,%L10]
    %r37 = phi float [%r17,%L10],[%r36,%L6]
    %r22 = srem i32 %r41,2
    %r23 = icmp ne i32 %r22,0
    br i1 %r23, label %L8, label %L9
L6:
    %r34 = icmp ne i32 %r32,0
    br i1 %r34, label %L5, label %L7
L7:
    %r38 = phi float [%r17,%L3],[%r36,%L6]
    ret float %r38
L8:
    %r26 = fmul float %r37,%r39
    br label %L9
L9:
    %r36 = phi float [%r37,%L5],[%r26,%L8]
    %r29 = fmul float %r39,%r39
    %r32 = sdiv i32 %r41,2
    br label %L6
L10:
    br label %L5
}
define float @F1(float %r0)
{
L0:
    br label %L1
L1:
    %r4 = sitofp i32 1 to float
    %r5 = fdiv float %r4,%r0
    ret float %r5
}
define float @my_sqrt(float %r0)
{
L0:
    br label %L1
L1:
    %r4 = sitofp i32 100 to float
    %r5 = fcmp ogt float %r0,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = fadd float 0x0,0x4024000000000000
    %r11 = sitofp i32 100 to float
    %r12 = fdiv float %r0,%r11
    %r13 = call float @my_sqrt(float %r12)
    %r14 = fmul float %r8,%r13
    ret float %r14
L3:
    %r18 = sitofp i32 8 to float
    %r19 = fdiv float %r0,%r18
    %r20 = fadd float 0x0,0x3fe0000000000000
    %r21 = fadd float %r19,%r20
    %r24 = sitofp i32 2 to float
    %r25 = fmul float %r24,%r0
    %r28 = sitofp i32 4 to float
    %r29 = fadd float %r28,%r0
    %r30 = fdiv float %r25,%r29
    %r31 = fadd float %r21,%r30
    br label %L8
L5:
    %r52 = phi float [%r43,%L6],[%r31,%L8]
    %r50 = phi i32 [%r46,%L6],[10,%L8]
    %r39 = fdiv float %r0,%r52
    %r40 = fadd float %r52,%r39
    %r43 = fdiv float %r40,%r42
    %r46 = sub i32 %r50,1
    br label %L6
L6:
    %r48 = icmp ne i32 %r46,0
    br i1 %r48, label %L5, label %L7
L7:
    ret float %r43
L8:
    %r42 = sitofp i32 2 to float
    br label %L5
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
define float @F2(float %r0)
{
L0:
    br label %L1
L1:
    %r6 = fmul float %r0,%r0
    %r7 = sitofp i32 1 to float
    %r8 = fsub float %r7,%r6
    %r9 = call float @my_sqrt(float %r8)
    %r11 = fdiv float %r7,%r9
    ret float %r11
}
define float @simpson(float %r0,float %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r10 = fsub float %r1,%r0
    %r12 = sitofp i32 2 to float
    %r13 = fdiv float %r10,%r12
    %r14 = fadd float %r0,%r13
    %r17 = icmp eq i32 %r2,1
    br i1 %r17, label %L2, label %L3
L2:
    br label %L6
L3:
    %r40 = icmp eq i32 %r2,2
    br i1 %r40, label %L4, label %L5
L4:
    br label %L9
L5:
    %r62 = sitofp i32 0 to float
    ret float %r62
L6:
    br label %L8
L7:
    br label %L12
L8:
    %r63 = sitofp i32 1 to float
    %r64 = fdiv float %r63,%r0
    br label %L7
L9:
    br label %L11
L10:
    br label %L15
L11:
    %r65 = fmul float %r0,%r0
    %r66 = sitofp i32 1 to float
    %r67 = fsub float %r66,%r65
    %r68 = call float @my_sqrt(float %r67)
    %r69 = fdiv float %r66,%r68
    br label %L10
L12:
    br label %L14
L13:
    %r25 = sitofp i32 4 to float
    %r26 = fmul float %r25,%r71
    %r27 = fadd float %r64,%r26
    br label %L18
L14:
    %r70 = sitofp i32 1 to float
    %r71 = fdiv float %r70,%r14
    br label %L13
L15:
    br label %L17
L16:
    %r48 = sitofp i32 4 to float
    %r49 = fmul float %r48,%r76
    %r50 = fadd float %r69,%r49
    br label %L21
L17:
    %r72 = fmul float %r14,%r14
    %r73 = sitofp i32 1 to float
    %r74 = fsub float %r73,%r72
    %r75 = call float @my_sqrt(float %r74)
    %r76 = fdiv float %r73,%r75
    br label %L16
L18:
    br label %L20
L19:
    %r30 = fadd float %r27,%r78
    %r33 = fsub float %r1,%r0
    %r34 = fmul float %r30,%r33
    %r36 = sitofp i32 6 to float
    %r37 = fdiv float %r34,%r36
    ret float %r37
L20:
    %r77 = sitofp i32 1 to float
    %r78 = fdiv float %r77,%r1
    br label %L19
L21:
    br label %L23
L22:
    %r53 = fadd float %r50,%r83
    %r56 = fsub float %r1,%r0
    %r57 = fmul float %r53,%r56
    %r59 = sitofp i32 6 to float
    %r60 = fdiv float %r57,%r59
    ret float %r60
L23:
    %r79 = fmul float %r1,%r1
    %r80 = sitofp i32 1 to float
    %r81 = fsub float %r80,%r79
    %r82 = call float @my_sqrt(float %r81)
    %r83 = fdiv float %r80,%r82
    br label %L22
}
define float @eee(float %r0)
{
L0:
    br label %L1
L1:
    %r3 = fadd float 0x0,0x3f50624de0000000
    %r4 = fcmp ogt float %r0,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r10 = sitofp i32 2 to float
    %r11 = fdiv float %r0,%r10
    %r12 = call float @eee(float %r11)
    %r15 = fmul float %r12,%r12
    ret float %r15
L3:
    %r18 = sitofp i32 1 to float
    %r19 = fadd float %r18,%r0
    %r22 = fmul float %r0,%r0
    %r24 = sitofp i32 2 to float
    %r25 = fdiv float %r22,%r24
    %r26 = fadd float %r19,%r25
    %r29 = call float @my_pow(float %r0,i32 3)
    %r31 = sitofp i32 6 to float
    %r32 = fdiv float %r29,%r31
    %r33 = fadd float %r26,%r32
    %r36 = call float @my_pow(float %r0,i32 4)
    %r38 = sitofp i32 24 to float
    %r39 = fdiv float %r36,%r38
    %r40 = fadd float %r33,%r39
    %r43 = call float @my_pow(float %r0,i32 5)
    %r45 = sitofp i32 120 to float
    %r46 = fdiv float %r43,%r45
    %r47 = fadd float %r40,%r46
    ret float %r47
}
define float @my_exp(float %r0)
{
L0:
    br label %L1
L1:
    %r4 = sitofp i32 0 to float
    %r5 = fcmp olt float %r0,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r10 = fsub float 0x0,%r0
    %r11 = call float @my_exp(float %r10)
    %r12 = sitofp i32 1 to float
    %r13 = fdiv float %r12,%r11
    ret float %r13
L3:
    %r16 = fptosi float %r0 to i32
    %r19 = sitofp i32 %r16 to float
    %r20 = fsub float %r0,%r19
    %r22 = fadd float 0x0,0x4005bf0a80000000
    %r24 = call float @my_pow(float %r22,i32 %r16)
    %r27 = call float @eee(float %r20)
    %r30 = fmul float %r24,%r27
    ret float %r30
}
define float @my_ln(float %r0)
{
L0:
    br label %L1
L1:
    %r3 = sitofp i32 1 to float
    %r5 = fadd float 0x0,0x3e45798ee0000000
    br label %L2
L2:
    br label %L4
L3:
    ret float %r9
L4:
    %r8 = call float @simpson(float %r3,float %r0,i32 1)
    %r9 = call float @asr5(float %r3,float %r0,float %r5,float %r8,i32 1)
    br label %L3
}
define float @my_log(float %r0,float %r1)
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    br label %L4
L3:
    br label %L8
L4:
    %r9 = sitofp i32 1 to float
    %r10 = fadd float 0x0,0x3e45798ee0000000
    br label %L5
L5:
    br label %L7
L6:
    br label %L3
L7:
    %r13 = call float @simpson(float %r9,float %r1,i32 1)
    %r11 = call float @asr5(float %r9,float %r1,float %r10,float %r13,i32 1)
    br label %L6
L8:
    br label %L10
L9:
    %r8 = fdiv float %r11,%r16
    ret float %r8
L10:
    %r14 = sitofp i32 1 to float
    %r15 = fadd float 0x0,0x3e45798ee0000000
    br label %L11
L11:
    br label %L13
L12:
    br label %L9
L13:
    %r18 = call float @simpson(float %r14,float %r0,i32 1)
    %r16 = call float @asr5(float %r14,float %r0,float %r15,float %r18,i32 1)
    br label %L12
}
define float @my_powf(float %r0,float %r1)
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    br label %L4
L3:
    %r7 = fmul float %r1,%r11
    %r8 = call float @my_exp(float %r7)
    ret float %r8
L4:
    %r9 = sitofp i32 1 to float
    %r10 = fadd float 0x0,0x3e45798ee0000000
    br label %L5
L5:
    br label %L7
L6:
    br label %L3
L7:
    %r13 = call float @simpson(float %r9,float %r0,i32 1)
    %r11 = call float @asr5(float %r9,float %r0,float %r10,float %r13,i32 1)
    br label %L6
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r3 = icmp ne i32 %r1,0
    br i1 %r3, label %L52, label %L5
L3:
    %r68 = phi i32 [%r64,%L4],[%r1,%L52]
    %r5 = call float @getfloat()
    %r7 = call float @getfloat()
    br label %L17
L4:
    %r66 = icmp ne i32 %r64,0
    br i1 %r66, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L22
L7:
    call void @putch(i32 45)
    br label %L8
L8:
    call void @putch(i32 32)
    %r34 = fcmp ogt float %r5,%r33
    br i1 %r34, label %L12, label %L10
L9:
    br label %L28
L10:
    call void @putch(i32 45)
    br label %L11
L11:
    call void @putch(i32 32)
    %r54 = fcmp ogt float %r5,%r33
    br i1 %r54, label %L14, label %L15
L12:
    %r39 = sitofp i32 0 to float
    %r40 = fcmp ogt float %r7,%r39
    br i1 %r40, label %L9, label %L10
L14:
    br label %L43
L15:
    call void @putch(i32 45)
    br label %L16
L16:
    call void @putch(i32 10)
    %r64 = sub i32 %r68,1
    br label %L4
L17:
    br label %L19
L18:
    %r9 = phi float [%r5,%L20],[%r72,%L21]
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
    %r24 = fcmp ogt float %r5,%r33
    br i1 %r24, label %L6, label %L7
L19:
    %r71 = fcmp ogt float %r5,%r33
    br i1 %r71, label %L20, label %L21
L20:
    br label %L18
L21:
    %r72 = fsub float 0x0,%r5
    br label %L18
L22:
    br label %L24
L23:
    call void @putfloat(float %r75)
    br label %L8
L24:
    %r73 = sitofp i32 1 to float
    %r74 = fadd float 0x0,0x3e45798ee0000000
    br label %L25
L25:
    br label %L27
L26:
    br label %L23
L27:
    %r77 = call float @simpson(float %r73,float %r5,i32 1)
    %r75 = call float @asr5(float %r73,float %r5,float %r74,float %r77,i32 1)
    br label %L26
L28:
    br label %L30
L29:
    call void @putfloat(float %r86)
    br label %L11
L30:
    br label %L31
L31:
    br label %L33
L32:
    br label %L37
L33:
    %r80 = sitofp i32 1 to float
    %r81 = fadd float 0x0,0x3e45798ee0000000
    br label %L34
L34:
    br label %L36
L35:
    br label %L32
L36:
    %r83 = call float @simpson(float %r80,float %r7,i32 1)
    %r82 = call float @asr5(float %r80,float %r7,float %r81,float %r83,i32 1)
    br label %L35
L37:
    br label %L39
L38:
    %r86 = fdiv float %r82,%r89
    br label %L29
L39:
    %r87 = sitofp i32 1 to float
    %r88 = fadd float 0x0,0x3e45798ee0000000
    br label %L40
L40:
    br label %L42
L41:
    br label %L38
L42:
    %r90 = call float @simpson(float %r87,float %r5,i32 1)
    %r89 = call float @asr5(float %r87,float %r5,float %r88,float %r90,i32 1)
    br label %L41
L43:
    br label %L45
L44:
    call void @putfloat(float %r94)
    br label %L16
L45:
    br label %L46
L46:
    br label %L48
L47:
    %r93 = fmul float %r7,%r97
    %r94 = call float @my_exp(float %r93)
    br label %L44
L48:
    %r95 = sitofp i32 1 to float
    %r96 = fadd float 0x0,0x3e45798ee0000000
    br label %L49
L49:
    br label %L51
L50:
    br label %L47
L51:
    %r98 = call float @simpson(float %r95,float %r5,i32 1)
    %r97 = call float @asr5(float %r95,float %r5,float %r96,float %r98,i32 1)
    br label %L50
L52:
    %r33 = sitofp i32 0 to float
    br label %L3
}
