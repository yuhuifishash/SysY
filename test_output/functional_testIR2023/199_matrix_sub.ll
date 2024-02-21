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
L0:  ;
    %r9 = alloca i32
    br label %L1
L1:  ;
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    br label %L2
L2:  ;
    %r12 = load i32, ptr %r9
    %r13 = add i32 3,0
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L3, label %L4
L3:  ;
    %r15 = load i32, ptr %r9
    %r16 = getelementptr float, ptr %r6, i32 %r15
    %r17 = load i32, ptr %r9
    %r18 = getelementptr float, ptr %r0, i32 %r17
    %r19 = load float, ptr %r18
    %r20 = load i32, ptr %r9
    %r21 = getelementptr float, ptr %r3, i32 %r20
    %r22 = load float, ptr %r21
    %r23 = fsub float %r19,%r22
    store float %r23, ptr %r16
    %r24 = load i32, ptr %r9
    %r25 = getelementptr float, ptr %r7, i32 %r24
    %r26 = load i32, ptr %r9
    %r27 = getelementptr float, ptr %r1, i32 %r26
    %r28 = load float, ptr %r27
    %r29 = load i32, ptr %r9
    %r30 = getelementptr float, ptr %r4, i32 %r29
    %r31 = load float, ptr %r30
    %r32 = fsub float %r28,%r31
    store float %r32, ptr %r25
    %r33 = load i32, ptr %r9
    %r34 = getelementptr float, ptr %r8, i32 %r33
    %r35 = load i32, ptr %r9
    %r36 = getelementptr float, ptr %r2, i32 %r35
    %r37 = load float, ptr %r36
    %r38 = load i32, ptr %r9
    %r39 = getelementptr float, ptr %r5, i32 %r38
    %r40 = load float, ptr %r39
    %r41 = fsub float %r37,%r40
    store float %r41, ptr %r34
    %r42 = load i32, ptr %r9
    %r43 = add i32 1,0
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r9
    br label %L2
L4:  ;
    %r45 = add i32 0,0
    ret i32 %r45
}
define i32 @main()
{
L0:  ;
    %r55 = alloca i32
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
L1:  ;
    %r0 = add i32 3,0
    store i32 %r0, ptr @N
    %r1 = add i32 3,0
    store i32 %r1, ptr @M
    %r2 = add i32 3,0
    store i32 %r2, ptr @L
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r12
    br label %L2
L2:  ;
    %r15 = load i32, ptr %r12
    %r16 = add i32 3,0
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L4
L3:  ;
    %r18 = load i32, ptr %r12
    %r19 = getelementptr [3 x float], ptr %r3, i32 0, i32 %r18
    %r20 = load i32, ptr %r12
    %r21 = sitofp i32 %r20 to float
    store float %r21, ptr %r19
<<<<<<< HEAD
    %r22 = load i32, ptr %r12
    %r23 = getelementptr [3 x float], ptr %r4, i32 0, i32 %r22
    %r24 = load i32, ptr %r12
    %r25 = sitofp i32 %r24 to float
    store float %r25, ptr %r23
    %r26 = load i32, ptr %r12
    %r27 = getelementptr [3 x float], ptr %r5, i32 0, i32 %r26
    %r28 = load i32, ptr %r12
    %r29 = sitofp i32 %r28 to float
    store float %r29, ptr %r27
    %r30 = load i32, ptr %r12
    %r31 = getelementptr [3 x float], ptr %r6, i32 0, i32 %r30
    %r32 = load i32, ptr %r12
    %r33 = sitofp i32 %r32 to float
    store float %r33, ptr %r31
    %r34 = load i32, ptr %r12
    %r35 = getelementptr [3 x float], ptr %r7, i32 0, i32 %r34
    %r36 = load i32, ptr %r12
    %r37 = sitofp i32 %r36 to float
    store float %r37, ptr %r35
    %r38 = load i32, ptr %r12
    %r39 = getelementptr [3 x float], ptr %r8, i32 0, i32 %r38
    %r40 = load i32, ptr %r12
    %r41 = sitofp i32 %r40 to float
    store float %r41, ptr %r39
    %r42 = load i32, ptr %r12
    %r43 = add i32 1,0
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r12
=======
    %r23 = getelementptr [3 x float], ptr %r4, i32 0, i32 %r102
    store float %r21, ptr %r23
    %r27 = getelementptr [3 x float], ptr %r5, i32 0, i32 %r102
    store float %r21, ptr %r27
    %r31 = getelementptr [3 x float], ptr %r6, i32 0, i32 %r102
    store float %r21, ptr %r31
    %r35 = getelementptr [3 x float], ptr %r7, i32 0, i32 %r102
    store float %r21, ptr %r35
    %r39 = getelementptr [3 x float], ptr %r8, i32 0, i32 %r102
    store float %r21, ptr %r39
    %r44 = add i32 %r102,1
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br label %L2
L4:  ;
    %r45 = getelementptr [3 x float], ptr %r3, i32 0
    %r46 = getelementptr [3 x float], ptr %r4, i32 0
    %r47 = getelementptr [3 x float], ptr %r5, i32 0
    %r48 = getelementptr [3 x float], ptr %r6, i32 0
    %r49 = getelementptr [3 x float], ptr %r7, i32 0
    %r50 = getelementptr [3 x float], ptr %r8, i32 0
    %r51 = getelementptr [6 x float], ptr %r9, i32 0
    %r52 = getelementptr [3 x float], ptr %r10, i32 0
    %r53 = getelementptr [3 x float], ptr %r11, i32 0
    %r54 = call i32 @sub(ptr %r45,ptr %r46,ptr %r47,ptr %r48,ptr %r49,ptr %r50,ptr %r51,ptr %r52,ptr %r53)
    store i32 %r54, ptr %r12
    %r56 = add i32 0,0
    store i32 %r56, ptr %r55
    br label %L5
L5:  ;
    %r57 = load i32, ptr %r12
    %r58 = add i32 3,0
    %r59 = icmp slt i32 %r57,%r58
    br i1 %r59, label %L6, label %L7
L6:  ;
    %r60 = load i32, ptr %r12
    %r61 = getelementptr [6 x float], ptr %r9, i32 0, i32 %r60
    %r62 = load float, ptr %r61
    %r63 = fptosi float %r62 to i32
    store i32 %r63, ptr %r55
    %r64 = load i32, ptr %r55
    call void @putint(i32 %r64)
    %r65 = load i32, ptr %r12
    %r66 = add i32 1,0
    %r67 = add i32 %r65,%r66
    store i32 %r67, ptr %r12
    br label %L5
L7:  ;
    %r68 = add i32 10,0
    store i32 %r68, ptr %r55
    %r69 = add i32 0,0
    store i32 %r69, ptr %r12
    %r70 = load i32, ptr %r55
    call void @putch(i32 %r70)
    br label %L8
L8:  ;
    %r71 = load i32, ptr %r12
    %r72 = add i32 3,0
    %r73 = icmp slt i32 %r71,%r72
    br i1 %r73, label %L9, label %L10
L9:  ;
    %r74 = load i32, ptr %r12
    %r75 = getelementptr [3 x float], ptr %r10, i32 0, i32 %r74
    %r76 = load float, ptr %r75
    %r77 = fptosi float %r76 to i32
    store i32 %r77, ptr %r55
    %r78 = load i32, ptr %r55
    call void @putint(i32 %r78)
    %r79 = load i32, ptr %r12
    %r80 = add i32 1,0
    %r81 = add i32 %r79,%r80
    store i32 %r81, ptr %r12
    br label %L8
L10:  ;
    %r82 = add i32 10,0
    store i32 %r82, ptr %r55
    %r83 = add i32 0,0
    store i32 %r83, ptr %r12
    %r84 = load i32, ptr %r55
    call void @putch(i32 %r84)
    br label %L11
L11:  ;
    %r85 = load i32, ptr %r12
    %r86 = add i32 3,0
    %r87 = icmp slt i32 %r85,%r86
    br i1 %r87, label %L12, label %L13
L12:  ;
    %r88 = load i32, ptr %r12
    %r89 = getelementptr [3 x float], ptr %r11, i32 0, i32 %r88
    %r90 = load float, ptr %r89
    %r91 = fptosi float %r90 to i32
    store i32 %r91, ptr %r55
    %r92 = load i32, ptr %r55
    call void @putint(i32 %r92)
    %r93 = load i32, ptr %r12
    %r94 = add i32 1,0
    %r95 = add i32 %r93,%r94
    store i32 %r95, ptr %r12
    br label %L11
L13:  ;
    %r96 = add i32 10,0
    store i32 %r96, ptr %r55
    %r97 = load i32, ptr %r55
    call void @putch(i32 %r97)
    %r98 = add i32 0,0
    ret i32 %r98
}
