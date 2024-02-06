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
@MAX_WIDTH = global i32 1024
@MAX_HEIGHT = global i32 1024
@image = global [1048576x i32] zeroinitializer
@width = global i32 zeroinitializer
@height = global i32 zeroinitializer
@PI = global float 0x400921fb60000000
@TWO_PI = global float 0x401921fb60000000
@EPSILON = global float 0x3eb0c6f7a0000000
define void @write_pgm(float %r0)
{
L0:
    %r18 = alloca i32
    %r11 = alloca i32
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = add i32 0,80
    call void @putch(i32 %r2)
    %r3 = add i32 0,50
    call void @putch(i32 %r3)
    %r4 = add i32 0,10
    call void @putch(i32 %r4)
    %r5 = load i32, ptr @width
    call void @putint(i32 %r5)
    %r6 = add i32 0,32
    call void @putch(i32 %r6)
    %r7 = load i32, ptr @height
    call void @putint(i32 %r7)
    %r8 = add i32 0,32
    call void @putch(i32 %r8)
    %r9 = add i32 0,255
    call void @putint(i32 %r9)
    %r10 = add i32 0,10
    call void @putch(i32 %r10)
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    %r13 = load i32, ptr %r11
    %r14 = load i32, ptr @height
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L3, label %L5
L3:
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr %r18
    %r21 = load i32, ptr @width
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L7, label %L9
L4:
    %r42 = load i32, ptr %r11
    %r43 = load i32, ptr @height
    %r44 = icmp slt i32 %r42,%r43
    br i1 %r44, label %L3, label %L5
L5:
    ret void
L7:
    %r25 = load i32, ptr %r18
    %r26 = load i32, ptr %r11
    %r27 = load float, ptr %r1
    %r28 = call i32 @rotate(i32 %r25,i32 %r26,float %r27)
    call void @putint(i32 %r28)
    %r29 = add i32 0,32
    call void @putch(i32 %r29)
    %r30 = load i32, ptr %r18
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r18
    br label %L8
L8:
    %r33 = load i32, ptr %r18
    %r34 = load i32, ptr @width
    %r35 = icmp slt i32 %r33,%r34
    br i1 %r35, label %L7, label %L9
L9:
    %r38 = add i32 0,10
    call void @putch(i32 %r38)
    %r39 = load i32, ptr %r11
    %r40 = add i32 0,1
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r11
    br label %L4
}
define i32 @main()
{
L0:
    %r0 = alloca float
    br label %L1
L1:
    %r1 = call float @getfloat()
    store float %r1, ptr %r0
    %r2 = call i32 @getch()
    %r3 = call i32 @read_image()
    %r4 = add i32 0,0
    %r5 = icmp slt i32 %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = add i32 0,1
    %r9 = sub i32 0,%r8
    ret i32 %r9
L3:
    %r10 = load float, ptr %r0
    call void @write_pgm(float %r10)
    %r11 = add i32 0,0
    ret i32 %r11
}
define float @p(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = add i32 0,3
    %r3 = load float, ptr %r1
    %r4 = sitofp i32 %r2 to float
    %r5 = fmul float %r4,%r3
    %r6 = add i32 0,4
    %r7 = load float, ptr %r1
    %r8 = sitofp i32 %r6 to float
    %r9 = fmul float %r8,%r7
    %r10 = load float, ptr %r1
    %r11 = fmul float %r9,%r10
    %r12 = load float, ptr %r1
    %r13 = fmul float %r11,%r12
    %r14 = fsub float %r5,%r13
    ret float %r14
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
define float @my_sin_impl(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr %r1
    %r3 = call float @my_fabs(float %r2)
    %r4 = load float, ptr @EPSILON
    %r5 = fcmp ole float %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = load float, ptr %r1
    ret float %r8
L3:
    %r9 = load float, ptr %r1
    %r10 = fadd float 0x0,0x4008000000000000
    %r11 = fdiv float %r9,%r10
    %r12 = call float @my_sin_impl(float %r11)
    %r13 = call float @p(float %r12)
    ret float %r13
}
define float @my_sin(float %r0)
{
L0:
    %r16 = alloca i32
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr %r1
    %r3 = load float, ptr @TWO_PI
    %r4 = fcmp ogt float %r2,%r3
    br i1 %r4, label %L2, label %L4
L2:
    %r17 = load float, ptr %r1
    %r18 = load float, ptr @TWO_PI
    %r19 = fdiv float %r17,%r18
    %r20 = fptosi float %r19 to i32
    store i32 %r20, ptr %r16
    %r21 = load float, ptr %r1
    %r22 = load i32, ptr %r16
    %r23 = load float, ptr @TWO_PI
    %r24 = sitofp i32 %r22 to float
    %r25 = fmul float %r24,%r23
    %r26 = fsub float %r21,%r25
    store float %r26, ptr %r1
    br label %L3
L3:
    %r27 = load float, ptr %r1
    %r28 = load float, ptr @PI
    %r29 = fcmp ogt float %r27,%r28
    br i1 %r29, label %L6, label %L7
L4:
    %r7 = load float, ptr %r1
    %r8 = load float, ptr @TWO_PI
    %r9 = fsub float 0x0,%r8
    %r10 = fcmp olt float %r7,%r9
    br i1 %r10, label %L2, label %L3
L6:
    %r32 = load float, ptr %r1
    %r33 = load float, ptr @TWO_PI
    %r34 = fsub float %r32,%r33
    store float %r34, ptr %r1
    br label %L7
L7:
    %r35 = load float, ptr %r1
    %r36 = load float, ptr @PI
    %r37 = fsub float 0x0,%r36
    %r38 = fcmp olt float %r35,%r37
    br i1 %r38, label %L8, label %L9
L8:
    %r41 = load float, ptr %r1
    %r42 = load float, ptr @TWO_PI
    %r43 = fadd float %r41,%r42
    store float %r43, ptr %r1
    br label %L9
L9:
    %r44 = load float, ptr %r1
    %r45 = call float @my_sin_impl(float %r44)
    ret float %r45
}
define float @my_cos(float %r0)
{
L0:
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr %r1
    %r3 = load float, ptr @PI
    %r4 = add i32 0,2
    %r5 = sitofp i32 %r4 to float
    %r6 = fdiv float %r3,%r5
    %r7 = fadd float %r2,%r6
    %r8 = call float @my_sin(float %r7)
    ret float %r8
}
define i32 @read_image()
{
L0:
    %r47 = alloca i32
    %r40 = alloca i32
    br label %L1
L1:
    %r0 = call i32 @getch()
    %r1 = add i32 0,80
    %r2 = icmp ne i32 %r0,%r1
    br i1 %r2, label %L2, label %L4
L2:
    %r13 = add i32 0,1
    %r14 = sub i32 0,%r13
    ret i32 %r14
L3:
    %r15 = call i32 @getint()
    store i32 %r15, ptr @width
    %r16 = call i32 @getint()
    store i32 %r16, ptr @height
    %r17 = load i32, ptr @width
    %r18 = load i32, ptr @MAX_WIDTH
    %r19 = icmp sgt i32 %r17,%r18
    br i1 %r19, label %L6, label %L10
L4:
    %r5 = call i32 @getch()
    %r6 = add i32 0,50
    %r7 = icmp ne i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L6:
    %r38 = add i32 0,1
    %r39 = sub i32 0,%r38
    ret i32 %r39
L7:
    %r41 = add i32 0,0
    store i32 %r41, ptr %r40
    %r42 = load i32, ptr %r40
    %r43 = load i32, ptr @height
    %r44 = icmp slt i32 %r42,%r43
    br i1 %r44, label %L13, label %L15
L8:
    %r30 = call i32 @getint()
    %r31 = add i32 0,255
    %r32 = icmp ne i32 %r30,%r31
    br i1 %r32, label %L6, label %L7
L10:
    %r22 = load i32, ptr @height
    %r23 = load i32, ptr @MAX_HEIGHT
    %r24 = icmp sgt i32 %r22,%r23
    br i1 %r24, label %L6, label %L8
L13:
    %r48 = add i32 0,0
    store i32 %r48, ptr %r47
    %r49 = load i32, ptr %r47
    %r50 = load i32, ptr @width
    %r51 = icmp slt i32 %r49,%r50
    br i1 %r51, label %L17, label %L19
L14:
    %r72 = load i32, ptr %r40
    %r73 = load i32, ptr @height
    %r74 = icmp slt i32 %r72,%r73
    br i1 %r74, label %L13, label %L15
L15:
    %r77 = add i32 0,0
    ret i32 %r77
L17:
    %r54 = call i32 @getint()
    %r55 = load i32, ptr %r40
    %r56 = load i32, ptr @width
    %r57 = mul i32 %r55,%r56
    %r58 = load i32, ptr %r47
    %r59 = add i32 %r57,%r58
    %r60 = getelementptr [1048576 x i32], ptr @image, i32 0, i32 %r59
    store i32 %r54, ptr %r60
    %r61 = load i32, ptr %r47
    %r62 = add i32 0,1
    %r63 = add i32 %r61,%r62
    store i32 %r63, ptr %r47
    br label %L18
L18:
    %r64 = load i32, ptr %r47
    %r65 = load i32, ptr @width
    %r66 = icmp slt i32 %r64,%r65
    br i1 %r66, label %L17, label %L19
L19:
    %r69 = load i32, ptr %r40
    %r70 = add i32 0,1
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r40
    br label %L14
}
define i32 @rotate(i32 %r0,i32 %r1,float %r2)
{
L0:
    %r42 = alloca i32
    %r28 = alloca i32
    %r24 = alloca i32
    %r20 = alloca i32
    %r16 = alloca i32
    %r12 = alloca i32
    %r9 = alloca float
    %r6 = alloca float
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    %r4 = alloca i32
    store i32 %r1, ptr %r4
    %r5 = alloca float
    store float %r2, ptr %r5
    br label %L1
L1:
    %r7 = load float, ptr %r5
    %r8 = call float @my_sin(float %r7)
    store float %r8, ptr %r6
    %r10 = load float, ptr %r5
    %r11 = call float @my_cos(float %r10)
    store float %r11, ptr %r9
    %r13 = load i32, ptr @width
    %r14 = add i32 0,2
    %r15 = sdiv i32 %r13,%r14
    store i32 %r15, ptr %r12
    %r17 = load i32, ptr @height
    %r18 = add i32 0,2
    %r19 = sdiv i32 %r17,%r18
    store i32 %r19, ptr %r16
    %r21 = load i32, ptr %r3
    %r22 = load i32, ptr %r12
    %r23 = sub i32 %r21,%r22
    store i32 %r23, ptr %r20
    %r25 = load i32, ptr %r4
    %r26 = load i32, ptr %r16
    %r27 = sub i32 %r25,%r26
    store i32 %r27, ptr %r24
    %r29 = load i32, ptr %r20
    %r30 = load float, ptr %r9
    %r31 = sitofp i32 %r29 to float
    %r32 = fmul float %r31,%r30
    %r33 = load i32, ptr %r24
    %r34 = load float, ptr %r6
    %r35 = sitofp i32 %r33 to float
    %r36 = fmul float %r35,%r34
    %r37 = fsub float %r32,%r36
    %r38 = load i32, ptr %r12
    %r39 = sitofp i32 %r38 to float
    %r40 = fadd float %r37,%r39
    %r41 = fptosi float %r40 to i32
    store i32 %r41, ptr %r28
    %r43 = load i32, ptr %r20
    %r44 = load float, ptr %r6
    %r45 = sitofp i32 %r43 to float
    %r46 = fmul float %r45,%r44
    %r47 = load i32, ptr %r24
    %r48 = load float, ptr %r9
    %r49 = sitofp i32 %r47 to float
    %r50 = fmul float %r49,%r48
    %r51 = fadd float %r46,%r50
    %r52 = load i32, ptr %r16
    %r53 = sitofp i32 %r52 to float
    %r54 = fadd float %r51,%r53
    %r55 = fptosi float %r54 to i32
    store i32 %r55, ptr %r42
    %r56 = load i32, ptr %r28
    %r57 = add i32 0,0
    %r58 = icmp slt i32 %r56,%r57
    br i1 %r58, label %L2, label %L8
L2:
    %r85 = add i32 0,0
    ret i32 %r85
L3:
    %r86 = load i32, ptr %r42
    %r87 = load i32, ptr @width
    %r88 = mul i32 %r86,%r87
    %r89 = load i32, ptr %r28
    %r90 = add i32 %r88,%r89
    %r91 = getelementptr [1048576 x i32], ptr @image, i32 0, i32 %r90
    %r92 = load i32, ptr %r91
    ret i32 %r92
L4:
    %r77 = load i32, ptr %r42
    %r78 = load i32, ptr @height
    %r79 = icmp sge i32 %r77,%r78
    br i1 %r79, label %L2, label %L3
L6:
    %r69 = load i32, ptr %r42
    %r70 = add i32 0,0
    %r71 = icmp slt i32 %r69,%r70
    br i1 %r71, label %L2, label %L4
L8:
    %r61 = load i32, ptr %r28
    %r62 = load i32, ptr @width
    %r63 = icmp sge i32 %r61,%r62
    br i1 %r63, label %L2, label %L6
}
