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
@M = global i32 zeroinitializer
@L = global i32 zeroinitializer
@N = global i32 zeroinitializer
define i32 @add(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:
    %r9 = alloca i32
    br label %L1
L1:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    %r12 = load i32, ptr %r9
    %r13 = load i32, ptr @M
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L3, label %L5
L3:
    %r17 = load i32, ptr %r9
    %r18 = getelementptr float, ptr %r0, i32 %r17
    %r19 = load float, ptr %r18
    %r20 = load i32, ptr %r9
    %r21 = getelementptr float, ptr %r3, i32 %r20
    %r22 = load float, ptr %r21
    %r23 = fadd float %r19,%r22
    %r24 = load i32, ptr %r9
    %r25 = getelementptr float, ptr %r6, i32 %r24
    store float %r23, ptr %r25
    %r26 = load i32, ptr %r9
    %r27 = getelementptr float, ptr %r1, i32 %r26
    %r28 = load float, ptr %r27
    %r29 = load i32, ptr %r9
    %r30 = getelementptr float, ptr %r4, i32 %r29
    %r31 = load float, ptr %r30
    %r32 = fadd float %r28,%r31
    %r33 = load i32, ptr %r9
    %r34 = getelementptr float, ptr %r7, i32 %r33
    store float %r32, ptr %r34
    %r35 = load i32, ptr %r9
    %r36 = getelementptr float, ptr %r2, i32 %r35
    %r37 = load float, ptr %r36
    %r38 = load i32, ptr %r9
    %r39 = getelementptr float, ptr %r5, i32 %r38
    %r40 = load float, ptr %r39
    %r41 = fadd float %r37,%r40
    %r42 = load i32, ptr %r9
    %r43 = getelementptr float, ptr %r8, i32 %r42
    store float %r41, ptr %r43
    %r44 = load i32, ptr %r9
    %r45 = add i32 0,1
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r9
    br label %L4
L4:
    %r47 = load i32, ptr %r9
    %r48 = load i32, ptr @M
    %r49 = icmp slt i32 %r47,%r48
    br i1 %r49, label %L3, label %L5
L5:
    %r52 = add i32 0,0
    ret i32 %r52
}
define i32 @main()
{
L0:
    %r62 = alloca i32
    %r12 = alloca i32
    %r11 = alloca [3 x float]
    %r10 = alloca [3 x float]
    %r9 = alloca [6 x float]
    %r8 = alloca [3 x float]
    %r7 = alloca [3 x float]
    %r6 = alloca [3 x float]
    %r5 = alloca [3 x float]
    %r4 = alloca [3 x float]
    %r3 = alloca [3 x float]
    br label %L1
L1:
    %r0 = add i32 0,3
    store i32 %r0, ptr @N
    %r1 = add i32 0,3
    store i32 %r1, ptr @M
    %r2 = add i32 0,3
    store i32 %r2, ptr @L
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r12
    %r15 = load i32, ptr %r12
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L5
L3:
    %r20 = load i32, ptr %r12
    %r21 = load i32, ptr %r12
    %r22 = getelementptr [3 x float], ptr %r3, i32 0, i32 %r21
    %r23 = sitofp i32 %r20 to float
    store float %r23, ptr %r22
    %r24 = load i32, ptr %r12
    %r25 = load i32, ptr %r12
    %r26 = getelementptr [3 x float], ptr %r4, i32 0, i32 %r25
    %r27 = sitofp i32 %r24 to float
    store float %r27, ptr %r26
    %r28 = load i32, ptr %r12
    %r29 = load i32, ptr %r12
    %r30 = getelementptr [3 x float], ptr %r5, i32 0, i32 %r29
    %r31 = sitofp i32 %r28 to float
    store float %r31, ptr %r30
    %r32 = load i32, ptr %r12
    %r33 = load i32, ptr %r12
    %r34 = getelementptr [3 x float], ptr %r6, i32 0, i32 %r33
    %r35 = sitofp i32 %r32 to float
    store float %r35, ptr %r34
    %r36 = load i32, ptr %r12
    %r37 = load i32, ptr %r12
    %r38 = getelementptr [3 x float], ptr %r7, i32 0, i32 %r37
    %r39 = sitofp i32 %r36 to float
    store float %r39, ptr %r38
    %r40 = load i32, ptr %r12
    %r41 = load i32, ptr %r12
    %r42 = getelementptr [3 x float], ptr %r8, i32 0, i32 %r41
    %r43 = sitofp i32 %r40 to float
    store float %r43, ptr %r42
    %r44 = load i32, ptr %r12
    %r45 = add i32 0,1
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r12
    br label %L4
L4:
    %r47 = load i32, ptr %r12
    %r48 = load i32, ptr @M
    %r49 = icmp slt i32 %r47,%r48
    br i1 %r49, label %L3, label %L5
L5:
    %r52 = getelementptr float, ptr %r3, i32 0
    %r53 = getelementptr float, ptr %r4, i32 0
    %r54 = getelementptr float, ptr %r5, i32 0
    %r55 = getelementptr float, ptr %r6, i32 0
    %r56 = getelementptr float, ptr %r7, i32 0
    %r57 = getelementptr float, ptr %r8, i32 0
    %r58 = getelementptr float, ptr %r9, i32 0
    %r59 = getelementptr float, ptr %r10, i32 0
    %r60 = getelementptr float, ptr %r11, i32 0
    %r61 = call i32 @add(ptr %r52,ptr %r53,ptr %r54,ptr %r55,ptr %r56,ptr %r57,ptr %r58,ptr %r59,ptr %r60)
    store i32 %r61, ptr %r12
    %r63 = add i32 0,0
    store i32 %r63, ptr %r62
    %r64 = load i32, ptr %r12
    %r65 = load i32, ptr @N
    %r66 = icmp slt i32 %r64,%r65
    br i1 %r66, label %L7, label %L9
L7:
    %r69 = load i32, ptr %r12
    %r70 = getelementptr [6 x float], ptr %r9, i32 0, i32 %r69
    %r71 = load float, ptr %r70
    %r72 = fptosi float %r71 to i32
    store i32 %r72, ptr %r62
    %r73 = load i32, ptr %r62
    call void @putint(i32 %r73)
    %r74 = load i32, ptr %r12
    %r75 = add i32 0,1
    %r76 = add i32 %r74,%r75
    store i32 %r76, ptr %r12
    br label %L8
L8:
    %r77 = load i32, ptr %r12
    %r78 = load i32, ptr @N
    %r79 = icmp slt i32 %r77,%r78
    br i1 %r79, label %L7, label %L9
L9:
    %r82 = add i32 0,10
    store i32 %r82, ptr %r62
    %r83 = load i32, ptr %r62
    call void @putch(i32 %r83)
    %r84 = add i32 0,0
    store i32 %r84, ptr %r12
    %r85 = load i32, ptr %r12
    %r86 = load i32, ptr @N
    %r87 = icmp slt i32 %r85,%r86
    br i1 %r87, label %L11, label %L13
L11:
    %r90 = load i32, ptr %r12
    %r91 = getelementptr [3 x float], ptr %r10, i32 0, i32 %r90
    %r92 = load float, ptr %r91
    %r93 = fptosi float %r92 to i32
    store i32 %r93, ptr %r62
    %r94 = load i32, ptr %r62
    call void @putint(i32 %r94)
    %r95 = load i32, ptr %r12
    %r96 = add i32 0,1
    %r97 = add i32 %r95,%r96
    store i32 %r97, ptr %r12
    br label %L12
L12:
    %r98 = load i32, ptr %r12
    %r99 = load i32, ptr @N
    %r100 = icmp slt i32 %r98,%r99
    br i1 %r100, label %L11, label %L13
L13:
    %r103 = add i32 0,10
    store i32 %r103, ptr %r62
    %r104 = load i32, ptr %r62
    call void @putch(i32 %r104)
    %r105 = add i32 0,0
    store i32 %r105, ptr %r12
    %r106 = load i32, ptr %r12
    %r107 = load i32, ptr @N
    %r108 = icmp slt i32 %r106,%r107
    br i1 %r108, label %L15, label %L17
L15:
    %r111 = load i32, ptr %r12
    %r112 = getelementptr [3 x float], ptr %r11, i32 0, i32 %r111
    %r113 = load float, ptr %r112
    %r114 = fptosi float %r113 to i32
    store i32 %r114, ptr %r62
    %r115 = load i32, ptr %r62
    call void @putint(i32 %r115)
    %r116 = load i32, ptr %r12
    %r117 = add i32 0,1
    %r118 = add i32 %r116,%r117
    store i32 %r118, ptr %r12
    br label %L16
L16:
    %r119 = load i32, ptr %r12
    %r120 = load i32, ptr @N
    %r121 = icmp slt i32 %r119,%r120
    br i1 %r121, label %L15, label %L17
L17:
    %r124 = add i32 0,10
    store i32 %r124, ptr %r62
    %r125 = load i32, ptr %r62
    call void @putch(i32 %r125)
    %r126 = add i32 0,0
    ret i32 %r126
}
