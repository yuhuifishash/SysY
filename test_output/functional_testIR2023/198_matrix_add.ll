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
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r46 = phi i32 [0,%L1],[%r44,%L3]
    %r13 = load i32, ptr @M
    %r14 = icmp slt i32 %r46,%r13
    br i1 %r14, label %L3, label %L4
L3:  ;
    %r16 = getelementptr float, ptr %r6, i32 %r46
    %r18 = getelementptr float, ptr %r0, i32 %r46
    %r19 = load float, ptr %r18
    %r21 = getelementptr float, ptr %r3, i32 %r46
    %r22 = load float, ptr %r21
    %r23 = fadd float %r19,%r22
    store float %r23, ptr %r16
    %r25 = getelementptr float, ptr %r7, i32 %r46
    %r27 = getelementptr float, ptr %r1, i32 %r46
    %r28 = load float, ptr %r27
    %r30 = getelementptr float, ptr %r4, i32 %r46
    %r31 = load float, ptr %r30
    %r32 = fadd float %r28,%r31
    store float %r32, ptr %r25
    %r34 = getelementptr float, ptr %r8, i32 %r46
    %r36 = getelementptr float, ptr %r2, i32 %r46
    %r37 = load float, ptr %r36
    %r39 = getelementptr float, ptr %r5, i32 %r46
    %r40 = load float, ptr %r39
    %r41 = fadd float %r37,%r40
    store float %r41, ptr %r34
    %r44 = add i32 %r46,1
    br label %L2
L4:  ;
    ret i32 0
}
define i32 @main()
{
L0:  ;
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
    store i32 3, ptr @N
    store i32 3, ptr @M
    store i32 3, ptr @L
    br label %L2
L2:  ;
    %r102 = phi i32 [0,%L1],[%r44,%L3]
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 %r102,%r16
    br i1 %r17, label %L3, label %L4
L3:  ;
    %r19 = getelementptr [3 x float], ptr %r3, i32 0, i32 %r102
    %r21 = sitofp i32 %r102 to float
    store float %r21, ptr %r19
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
    %r54 = call i32 @add(ptr %r45,ptr %r46,ptr %r47,ptr %r48,ptr %r49,ptr %r50,ptr %r51,ptr %r52,ptr %r53)
    br label %L5
L5:  ;
    %r103 = phi i32 [%r54,%L4],[%r67,%L6]
    %r58 = load i32, ptr @N
    %r59 = icmp slt i32 %r103,%r58
    br i1 %r59, label %L6, label %L7
L6:  ;
    %r61 = getelementptr [6 x float], ptr %r9, i32 0, i32 %r103
    %r62 = load float, ptr %r61
    %r63 = fptosi float %r62 to i32
    call void @putint(i32 %r63)
    %r67 = add i32 %r103,1
    br label %L5
L7:  ;
    call void @putch(i32 10)
    br label %L8
L8:  ;
    %r104 = phi i32 [0,%L7],[%r81,%L9]
    %r72 = load i32, ptr @N
    %r73 = icmp slt i32 %r104,%r72
    br i1 %r73, label %L9, label %L10
L9:  ;
    %r75 = getelementptr [3 x float], ptr %r10, i32 0, i32 %r104
    %r76 = load float, ptr %r75
    %r77 = fptosi float %r76 to i32
    call void @putint(i32 %r77)
    %r81 = add i32 %r104,1
    br label %L8
L10:  ;
    call void @putch(i32 10)
    br label %L11
L11:  ;
    %r105 = phi i32 [0,%L10],[%r95,%L12]
    %r86 = load i32, ptr @N
    %r87 = icmp slt i32 %r105,%r86
    br i1 %r87, label %L12, label %L13
L12:  ;
    %r89 = getelementptr [3 x float], ptr %r11, i32 0, i32 %r105
    %r90 = load float, ptr %r89
    %r91 = fptosi float %r90 to i32
    call void @putint(i32 %r91)
    %r95 = add i32 %r105,1
    br label %L11
L13:  ;
    call void @putch(i32 10)
    ret i32 0
}
