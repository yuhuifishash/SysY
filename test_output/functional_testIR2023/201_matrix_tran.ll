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
    store i32 0, ptr %r9
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 2,0
    %r12 = getelementptr float, ptr %r7, i32 %r11
    %r13 = add i32 1,0
    %r14 = getelementptr float, ptr %r2, i32 %r13
    %r15 = load float, ptr %r14
    store float %r15, ptr %r12
    %r16 = add i32 1,0
    %r17 = getelementptr float, ptr %r8, i32 %r16
    %r18 = add i32 2,0
    %r19 = getelementptr float, ptr %r1, i32 %r18
    %r20 = load float, ptr %r19
    store float %r20, ptr %r17
    %r21 = add i32 1,0
    %r22 = getelementptr float, ptr %r6, i32 %r21
    %r23 = add i32 0,0
    %r24 = getelementptr float, ptr %r1, i32 %r23
    %r25 = load float, ptr %r24
    store float %r25, ptr %r22
    %r26 = add i32 2,0
    %r27 = getelementptr float, ptr %r6, i32 %r26
    %r28 = add i32 0,0
    %r29 = getelementptr float, ptr %r2, i32 %r28
    %r30 = load float, ptr %r29
    store float %r30, ptr %r27
    %r31 = add i32 0,0
    %r32 = getelementptr float, ptr %r7, i32 %r31
    %r33 = add i32 1,0
    %r34 = getelementptr float, ptr %r0, i32 %r33
    %r35 = load float, ptr %r34
    store float %r35, ptr %r32
    %r36 = add i32 0,0
    %r37 = getelementptr float, ptr %r8, i32 %r36
    %r38 = add i32 2,0
    %r39 = getelementptr float, ptr %r0, i32 %r38
    %r40 = load float, ptr %r39
    store float %r40, ptr %r37
    %r41 = add i32 1,0
    %r42 = getelementptr float, ptr %r7, i32 %r41
    %r43 = add i32 1,0
    %r44 = getelementptr float, ptr %r1, i32 %r43
    %r45 = load float, ptr %r44
    store float %r45, ptr %r42
    %r46 = add i32 2,0
    %r47 = getelementptr float, ptr %r8, i32 %r46
    %r48 = add i32 2,0
    %r49 = getelementptr float, ptr %r2, i32 %r48
    %r50 = load float, ptr %r49
    store float %r50, ptr %r47
    %r51 = add i32 0,0
    %r52 = getelementptr float, ptr %r6, i32 %r51
    %r53 = add i32 0,0
    %r54 = getelementptr float, ptr %r0, i32 %r53
    %r55 = load float, ptr %r54
    store float %r55, ptr %r52
    %r56 = add i32 0,0
    ret i32 %r56
}
define i32 @main()
{
L0:
    %r54 = alloca i32
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
    %r0 = add i32 3,0
    store i32 %r0, ptr @N
    %r1 = add i32 3,0
    store i32 %r1, ptr @M
    %r2 = add i32 3,0
    store i32 %r2, ptr @L
    store i32 0, ptr %r12
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    br label %L2
L2:
    %r14 = load i32, ptr %r12
    %r15 = load i32, ptr @M
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L3, label %L4
L3:
    %r17 = load i32, ptr %r12
    %r18 = getelementptr [3 x float], ptr %r3, i32 0, i32 %r17
    %r19 = load i32, ptr %r12
    %r20 = sitofp i32 %r19 to float
    store float %r20, ptr %r18
    %r21 = load i32, ptr %r12
    %r22 = getelementptr [3 x float], ptr %r4, i32 0, i32 %r21
    %r23 = load i32, ptr %r12
    %r24 = sitofp i32 %r23 to float
    store float %r24, ptr %r22
    %r25 = load i32, ptr %r12
    %r26 = getelementptr [3 x float], ptr %r5, i32 0, i32 %r25
    %r27 = load i32, ptr %r12
    %r28 = sitofp i32 %r27 to float
    store float %r28, ptr %r26
    %r29 = load i32, ptr %r12
    %r30 = getelementptr [3 x float], ptr %r6, i32 0, i32 %r29
    %r31 = load i32, ptr %r12
    %r32 = sitofp i32 %r31 to float
    store float %r32, ptr %r30
    %r33 = load i32, ptr %r12
    %r34 = getelementptr [3 x float], ptr %r7, i32 0, i32 %r33
    %r35 = load i32, ptr %r12
    %r36 = sitofp i32 %r35 to float
    store float %r36, ptr %r34
    %r37 = load i32, ptr %r12
    %r38 = getelementptr [3 x float], ptr %r8, i32 0, i32 %r37
    %r39 = load i32, ptr %r12
    %r40 = sitofp i32 %r39 to float
    store float %r40, ptr %r38
    %r41 = load i32, ptr %r12
    %r42 = add i32 1,0
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r12
    br label %L2
L4:
    %r44 = getelementptr [3 x float], ptr %r3, i32 0
    %r45 = getelementptr [3 x float], ptr %r4, i32 0
    %r46 = getelementptr [3 x float], ptr %r5, i32 0
    %r47 = getelementptr [3 x float], ptr %r6, i32 0
    %r48 = getelementptr [3 x float], ptr %r7, i32 0
    %r49 = getelementptr [3 x float], ptr %r8, i32 0
    %r50 = getelementptr [6 x float], ptr %r9, i32 0
    %r51 = getelementptr [3 x float], ptr %r10, i32 0
    %r52 = getelementptr [3 x float], ptr %r11, i32 0
    %r53 = call i32 @tran(ptr %r44,ptr %r45,ptr %r46,ptr %r47,ptr %r48,ptr %r49,ptr %r50,ptr %r51,ptr %r52)
    store i32 %r53, ptr %r12
    store i32 0, ptr %r54
    br label %L5
L5:
    %r55 = load i32, ptr %r12
    %r56 = load i32, ptr @N
    %r57 = icmp slt i32 %r55,%r56
    br i1 %r57, label %L6, label %L7
L6:
    %r58 = load i32, ptr %r12
    %r59 = getelementptr [6 x float], ptr %r9, i32 0, i32 %r58
    %r60 = load float, ptr %r59
    %r61 = fptosi float %r60 to i32
    store i32 %r61, ptr %r54
    %r62 = load i32, ptr %r54
    call void @putint(i32 %r62)
    %r63 = load i32, ptr %r12
    %r64 = add i32 1,0
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r12
    br label %L5
L7:
    %r66 = add i32 10,0
    store i32 %r66, ptr %r54
    %r67 = load i32, ptr %r54
    call void @putch(i32 %r67)
    %r68 = add i32 0,0
    store i32 %r68, ptr %r12
    br label %L8
L8:
    %r69 = load i32, ptr %r12
    %r70 = load i32, ptr @N
    %r71 = icmp slt i32 %r69,%r70
    br i1 %r71, label %L9, label %L10
L9:
    %r72 = load i32, ptr %r12
    %r73 = getelementptr [3 x float], ptr %r10, i32 0, i32 %r72
    %r74 = load float, ptr %r73
    %r75 = fptosi float %r74 to i32
    store i32 %r75, ptr %r54
    %r76 = load i32, ptr %r54
    call void @putint(i32 %r76)
    %r77 = load i32, ptr %r12
    %r78 = add i32 1,0
    %r79 = add i32 %r77,%r78
    store i32 %r79, ptr %r12
    br label %L8
L10:
    %r80 = add i32 10,0
    store i32 %r80, ptr %r54
    %r81 = add i32 0,0
    store i32 %r81, ptr %r12
    %r82 = load i32, ptr %r54
    call void @putch(i32 %r82)
    br label %L11
L11:
    %r83 = load i32, ptr %r12
    %r84 = load i32, ptr @N
    %r85 = icmp slt i32 %r83,%r84
    br i1 %r85, label %L12, label %L13
L12:
    %r86 = load i32, ptr %r12
    %r87 = getelementptr [3 x float], ptr %r11, i32 0, i32 %r86
    %r88 = load float, ptr %r87
    %r89 = fptosi float %r88 to i32
    store i32 %r89, ptr %r54
    %r90 = load i32, ptr %r54
    call void @putint(i32 %r90)
    %r91 = load i32, ptr %r12
    %r92 = add i32 1,0
    %r93 = add i32 %r91,%r92
    store i32 %r93, ptr %r12
    br label %L11
L13:
    %r94 = add i32 10,0
    store i32 %r94, ptr %r54
    %r95 = load i32, ptr %r54
    call void @putch(i32 %r95)
    %r96 = add i32 0,0
    ret i32 %r96
}
