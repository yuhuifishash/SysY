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
    br label %L1
L1:
    br label %L6
L3:
    %r53 = phi i32 [%r46,%L4],[0,%L6]
    %r18 = getelementptr float, ptr %r0, i32 %r53
    %r19 = load float, ptr %r18
    %r21 = getelementptr float, ptr %r3, i32 %r53
    %r22 = load float, ptr %r21
    %r23 = fsub float %r19,%r22
    %r25 = getelementptr float, ptr %r6, i32 %r53
    store float %r23, ptr %r25
    %r27 = getelementptr float, ptr %r1, i32 %r53
    %r28 = load float, ptr %r27
    %r30 = getelementptr float, ptr %r4, i32 %r53
    %r31 = load float, ptr %r30
    %r32 = fsub float %r28,%r31
    %r34 = getelementptr float, ptr %r7, i32 %r53
    store float %r32, ptr %r34
    %r36 = getelementptr float, ptr %r2, i32 %r53
    %r37 = load float, ptr %r36
    %r39 = getelementptr float, ptr %r5, i32 %r53
    %r40 = load float, ptr %r39
    %r41 = fsub float %r37,%r40
    %r43 = getelementptr float, ptr %r8, i32 %r53
    store float %r41, ptr %r43
    %r46 = add i32 %r53,1
    br label %L4
L4:
    %r49 = icmp slt i32 %r46,3
    br i1 %r49, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L3
}
define i32 @main()
{
L0:
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
    store i32 3, ptr @N
    store i32 3, ptr @M
    store i32 3, ptr @L
    br label %L18
L3:
    %r133 = phi i32 [%r46,%L4],[0,%L18]
    %r22 = getelementptr [3 x float], ptr %r3, i32 0, i32 %r133
    %r23 = sitofp i32 %r133 to float
    store float %r23, ptr %r22
    %r26 = getelementptr [3 x float], ptr %r4, i32 0, i32 %r133
    store float %r23, ptr %r26
    %r30 = getelementptr [3 x float], ptr %r5, i32 0, i32 %r133
    store float %r23, ptr %r30
    %r34 = getelementptr [3 x float], ptr %r6, i32 0, i32 %r133
    store float %r23, ptr %r34
    %r38 = getelementptr [3 x float], ptr %r7, i32 0, i32 %r133
    store float %r23, ptr %r38
    %r42 = getelementptr [3 x float], ptr %r8, i32 0, i32 %r133
    store float %r23, ptr %r42
    %r46 = add i32 %r133,1
    br label %L4
L4:
    %r49 = icmp slt i32 %r46,3
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
    %r61 = call i32 @sub(ptr %r52,ptr %r53,ptr %r54,ptr %r55,ptr %r56,ptr %r57,ptr %r58,ptr %r59,ptr %r60)
    %r66 = icmp slt i32 %r61,3
    br i1 %r66, label %L19, label %L9
L7:
    %r135 = phi i32 [%r76,%L8],[%r61,%L19]
    %r70 = getelementptr [6 x float], ptr %r9, i32 0, i32 %r135
    %r71 = load float, ptr %r70
    %r72 = fptosi float %r71 to i32
    call void @putint(i32 %r72)
    %r76 = add i32 %r135,1
    br label %L8
L8:
    %r79 = icmp slt i32 %r76,3
    br i1 %r79, label %L7, label %L9
L9:
    call void @putch(i32 10)
    br label %L20
L11:
    %r137 = phi i32 [%r97,%L12],[0,%L20]
    %r91 = getelementptr [3 x float], ptr %r10, i32 0, i32 %r137
    %r92 = load float, ptr %r91
    %r93 = fptosi float %r92 to i32
    call void @putint(i32 %r93)
    %r97 = add i32 %r137,1
    br label %L12
L12:
    %r100 = icmp slt i32 %r97,3
    br i1 %r100, label %L11, label %L13
L13:
    call void @putch(i32 10)
    br label %L21
L15:
    %r139 = phi i32 [0,%L21],[%r118,%L16]
    %r112 = getelementptr [3 x float], ptr %r11, i32 0, i32 %r139
    %r113 = load float, ptr %r112
    %r114 = fptosi float %r113 to i32
    call void @putint(i32 %r114)
    %r118 = add i32 %r139,1
    br label %L16
L16:
    %r121 = icmp slt i32 %r118,3
    br i1 %r121, label %L15, label %L17
L17:
    call void @putch(i32 10)
    ret i32 0
L18:
    br label %L3
L19:
    br label %L7
L20:
    br label %L11
L21:
    br label %L15
}
