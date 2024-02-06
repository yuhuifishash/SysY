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
define i32 @tran(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:
    %r9 = alloca i32
    br label %L1
L1:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    %r12 = add i32 0,1
    %r13 = getelementptr float, ptr %r2, i32 %r12
    %r14 = load float, ptr %r13
    %r15 = add i32 0,2
    %r16 = getelementptr float, ptr %r7, i32 %r15
    store float %r14, ptr %r16
    %r17 = add i32 0,2
    %r18 = getelementptr float, ptr %r1, i32 %r17
    %r19 = load float, ptr %r18
    %r20 = add i32 0,1
    %r21 = getelementptr float, ptr %r8, i32 %r20
    store float %r19, ptr %r21
    %r22 = add i32 0,0
    %r23 = getelementptr float, ptr %r1, i32 %r22
    %r24 = load float, ptr %r23
    %r25 = add i32 0,1
    %r26 = getelementptr float, ptr %r6, i32 %r25
    store float %r24, ptr %r26
    %r27 = add i32 0,0
    %r28 = getelementptr float, ptr %r2, i32 %r27
    %r29 = load float, ptr %r28
    %r30 = add i32 0,2
    %r31 = getelementptr float, ptr %r6, i32 %r30
    store float %r29, ptr %r31
    %r32 = add i32 0,1
    %r33 = getelementptr float, ptr %r0, i32 %r32
    %r34 = load float, ptr %r33
    %r35 = add i32 0,0
    %r36 = getelementptr float, ptr %r7, i32 %r35
    store float %r34, ptr %r36
    %r37 = add i32 0,2
    %r38 = getelementptr float, ptr %r0, i32 %r37
    %r39 = load float, ptr %r38
    %r40 = add i32 0,0
    %r41 = getelementptr float, ptr %r8, i32 %r40
    store float %r39, ptr %r41
    %r42 = add i32 0,1
    %r43 = getelementptr float, ptr %r1, i32 %r42
    %r44 = load float, ptr %r43
    %r45 = add i32 0,1
    %r46 = getelementptr float, ptr %r7, i32 %r45
    store float %r44, ptr %r46
    %r47 = add i32 0,2
    %r48 = getelementptr float, ptr %r2, i32 %r47
    %r49 = load float, ptr %r48
    %r50 = add i32 0,2
    %r51 = getelementptr float, ptr %r8, i32 %r50
    store float %r49, ptr %r51
    %r52 = add i32 0,0
    %r53 = getelementptr float, ptr %r0, i32 %r52
    %r54 = load float, ptr %r53
    %r55 = add i32 0,0
    %r56 = getelementptr float, ptr %r6, i32 %r55
    store float %r54, ptr %r56
    %r57 = add i32 0,0
    ret i32 %r57
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
    %r61 = call i32 @tran(ptr %r52,ptr %r53,ptr %r54,ptr %r55,ptr %r56,ptr %r57,ptr %r58,ptr %r59,ptr %r60)
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
    %r104 = add i32 0,0
    store i32 %r104, ptr %r12
    %r105 = load i32, ptr %r62
    call void @putch(i32 %r105)
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
