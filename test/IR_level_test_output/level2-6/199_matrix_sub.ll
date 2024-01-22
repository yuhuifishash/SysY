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
declare void @starttime()
declare void @stoptime()
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
@N = global i32 zeroinitializer
@M = global i32 zeroinitializer
@L = global i32 zeroinitializer
define i32 @sub(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:
    %r9 = alloca i32
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    br label %L1
L1:
    %r12 = load i32, ptr %r9
    %r13 = add i32 0,3
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L2, label %L3
L2:
    %r17 = load i32, ptr %r9
    %r18 = getelementptr float, ptr %r0, i32 %r17
    %r19 = load float, ptr %r18
    %r20 = load i32, ptr %r9
    %r21 = getelementptr float, ptr %r3, i32 %r20
    %r22 = load float, ptr %r21
    %r23 = fsub float %r19,%r22
    %r24 = load i32, ptr %r9
    %r25 = getelementptr float, ptr %r6, i32 %r24
    store float %r23, ptr %r25
    %r26 = load i32, ptr %r9
    %r27 = getelementptr float, ptr %r1, i32 %r26
    %r28 = load float, ptr %r27
    %r29 = load i32, ptr %r9
    %r30 = getelementptr float, ptr %r4, i32 %r29
    %r31 = load float, ptr %r30
    %r32 = fsub float %r28,%r31
    %r33 = load i32, ptr %r9
    %r34 = getelementptr float, ptr %r7, i32 %r33
    store float %r32, ptr %r34
    %r35 = load i32, ptr %r9
    %r36 = getelementptr float, ptr %r2, i32 %r35
    %r37 = load float, ptr %r36
    %r38 = load i32, ptr %r9
    %r39 = getelementptr float, ptr %r5, i32 %r38
    %r40 = load float, ptr %r39
    %r41 = fsub float %r37,%r40
    %r42 = load i32, ptr %r9
    %r43 = getelementptr float, ptr %r8, i32 %r42
    store float %r41, ptr %r43
    %r44 = load i32, ptr %r9
    %r45 = add i32 0,1
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r9
    br label %L1
L3:
    %r47 = add i32 0,0
    ret i32 %r47
}
define i32 @main()
{
L0:
    %r57 = alloca i32
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
    br label %L1
L1:
    %r15 = load i32, ptr %r12
    %r16 = add i32 0,3
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L2, label %L3
L2:
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
    br label %L1
L3:
    %r47 = getelementptr float, ptr %r3, i32 0
    %r48 = getelementptr float, ptr %r4, i32 0
    %r49 = getelementptr float, ptr %r5, i32 0
    %r50 = getelementptr float, ptr %r6, i32 0
    %r51 = getelementptr float, ptr %r7, i32 0
    %r52 = getelementptr float, ptr %r8, i32 0
    %r53 = getelementptr float, ptr %r9, i32 0
    %r54 = getelementptr float, ptr %r10, i32 0
    %r55 = getelementptr float, ptr %r11, i32 0
    %r56 = call i32 @sub(ptr %r47,ptr %r48,ptr %r49,ptr %r50,ptr %r51,ptr %r52,ptr %r53,ptr %r54,ptr %r55)
    store i32 %r56, ptr %r12
    %r58 = add i32 0,0
    store i32 %r58, ptr %r57
    br label %L4
L4:
    %r59 = load i32, ptr %r12
    %r60 = add i32 0,3
    %r61 = icmp slt i32 %r59,%r60
    br i1 %r61, label %L5, label %L6
L5:
    %r64 = load i32, ptr %r12
    %r65 = getelementptr [6 x float], ptr %r9, i32 0, i32 %r64
    %r66 = load float, ptr %r65
    %r67 = fptosi float %r66 to i32
    store i32 %r67, ptr %r57
    %r68 = load i32, ptr %r57
    call void @putint(i32 %r68)
    %r69 = load i32, ptr %r12
    %r70 = add i32 0,1
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r12
    br label %L4
L6:
    %r72 = add i32 0,10
    store i32 %r72, ptr %r57
    %r73 = add i32 0,0
    store i32 %r73, ptr %r12
    %r74 = load i32, ptr %r57
    call void @putch(i32 %r74)
    br label %L7
L7:
    %r75 = load i32, ptr %r12
    %r76 = add i32 0,3
    %r77 = icmp slt i32 %r75,%r76
    br i1 %r77, label %L8, label %L9
L8:
    %r80 = load i32, ptr %r12
    %r81 = getelementptr [3 x float], ptr %r10, i32 0, i32 %r80
    %r82 = load float, ptr %r81
    %r83 = fptosi float %r82 to i32
    store i32 %r83, ptr %r57
    %r84 = load i32, ptr %r57
    call void @putint(i32 %r84)
    %r85 = load i32, ptr %r12
    %r86 = add i32 0,1
    %r87 = add i32 %r85,%r86
    store i32 %r87, ptr %r12
    br label %L7
L9:
    %r88 = add i32 0,10
    store i32 %r88, ptr %r57
    %r89 = add i32 0,0
    store i32 %r89, ptr %r12
    %r90 = load i32, ptr %r57
    call void @putch(i32 %r90)
    br label %L10
L10:
    %r91 = load i32, ptr %r12
    %r92 = add i32 0,3
    %r93 = icmp slt i32 %r91,%r92
    br i1 %r93, label %L11, label %L12
L11:
    %r96 = load i32, ptr %r12
    %r97 = getelementptr [3 x float], ptr %r11, i32 0, i32 %r96
    %r98 = load float, ptr %r97
    %r99 = fptosi float %r98 to i32
    store i32 %r99, ptr %r57
    %r100 = load i32, ptr %r57
    call void @putint(i32 %r100)
    %r101 = load i32, ptr %r12
    %r102 = add i32 0,1
    %r103 = add i32 %r101,%r102
    store i32 %r103, ptr %r12
    br label %L10
L12:
    %r104 = add i32 0,10
    store i32 %r104, ptr %r57
    %r105 = load i32, ptr %r57
    call void @putch(i32 %r105)
    %r106 = add i32 0,0
    ret i32 %r106
}
