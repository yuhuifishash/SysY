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
@N = global i32 zeroinitializer
@M = global i32 zeroinitializer
@L = global i32 zeroinitializer
define i32 @sub(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:
    %r9 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r9
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    br label %L2
L2:
    %r11 = load i32, ptr %r9
    %r12 = add i32 3,0
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L4
L3:
    %r14 = load i32, ptr %r9
    %r15 = getelementptr float, ptr %r6, i32 %r14
    %r16 = load i32, ptr %r9
    %r17 = getelementptr float, ptr %r0, i32 %r16
    %r18 = load float, ptr %r17
    %r19 = load i32, ptr %r9
    %r20 = getelementptr float, ptr %r3, i32 %r19
    %r21 = load float, ptr %r20
    %r22 = fsub float %r18,%r21
    store float %r22, ptr %r15
    %r23 = load i32, ptr %r9
    %r24 = getelementptr float, ptr %r7, i32 %r23
    %r25 = load i32, ptr %r9
    %r26 = getelementptr float, ptr %r1, i32 %r25
    %r27 = load float, ptr %r26
    %r28 = load i32, ptr %r9
    %r29 = getelementptr float, ptr %r4, i32 %r28
    %r30 = load float, ptr %r29
    %r31 = fsub float %r27,%r30
    store float %r31, ptr %r24
    %r32 = load i32, ptr %r9
    %r33 = getelementptr float, ptr %r8, i32 %r32
    %r34 = load i32, ptr %r9
    %r35 = getelementptr float, ptr %r2, i32 %r34
    %r36 = load float, ptr %r35
    %r37 = load i32, ptr %r9
    %r38 = getelementptr float, ptr %r5, i32 %r37
    %r39 = load float, ptr %r38
    %r40 = fsub float %r36,%r39
    store float %r40, ptr %r33
    %r41 = load i32, ptr %r9
    %r42 = add i32 1,0
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r9
    br label %L2
L4:
    %r44 = add i32 0,0
    ret i32 %r44
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
    %r15 = add i32 3,0
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
    %r53 = call i32 @sub(ptr %r44,ptr %r45,ptr %r46,ptr %r47,ptr %r48,ptr %r49,ptr %r50,ptr %r51,ptr %r52)
    store i32 %r53, ptr %r12
    store i32 0, ptr %r54
    br label %L5
L5:
    %r55 = load i32, ptr %r12
    %r56 = add i32 3,0
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
    %r67 = add i32 0,0
    store i32 %r67, ptr %r12
    %r68 = load i32, ptr %r54
    call void @putch(i32 %r68)
    br label %L8
L8:
    %r69 = load i32, ptr %r12
    %r70 = add i32 3,0
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
    %r84 = add i32 3,0
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
