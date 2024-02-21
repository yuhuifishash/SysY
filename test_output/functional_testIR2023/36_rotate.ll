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
define float @my_fabs(float %r0)
{
L0:  ;
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load float, ptr %r1
    %r3 = add i32 0,0
    %r4 = sitofp i32 %r3 to float
    %r5 = fcmp ogt float %r2,%r4
    br i1 %r5, label %L2, label %L3
L2:  ;
    %r6 = load float, ptr %r1
    ret float %r6
L3:  ;
    %r7 = load float, ptr %r1
    %r8 = fsub float 0x0,%r7
    ret float %r8
}
define float @my_cos(float %r0)
{
L0:  ;
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load float, ptr %r1
    %r3 = load float, ptr @PI
    %r4 = add i32 2,0
    %r5 = sitofp i32 %r4 to float
    %r6 = fdiv float %r3,%r5
    %r7 = fadd float %r2,%r6
    %r8 = call float @my_sin(float %r7)
    ret float %r8
}
define float @p(float %r0)
{
L0:  ;
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = add i32 3,0
    %r3 = load float, ptr %r1
    %r4 = sitofp i32 %r2 to float
    %r5 = fmul float %r4,%r3
    %r6 = add i32 4,0
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
define float @my_sin_impl(float %r0)
{
L0:  ;
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load float, ptr %r1
    %r3 = call float @my_fabs(float %r2)
    %r4 = load float, ptr @EPSILON
    %r5 = fcmp ole float %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:  ;
    %r6 = load float, ptr %r1
    ret float %r6
L3:  ;
    %r7 = load float, ptr %r1
    %r8 = fadd float 0x4008000000000000,0x0
    %r9 = fdiv float %r7,%r8
    %r10 = call float @my_sin_impl(float %r9)
    %r11 = call float @p(float %r10)
    ret float %r11
}
define float @my_sin(float %r0)
{
L0:  ;
    %r9 = alloca i32
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load float, ptr %r1
    %r3 = load float, ptr @TWO_PI
    %r4 = fcmp ogt float %r2,%r3
    br i1 %r4, label %L2, label %L4
L2:  ;
    %r10 = load float, ptr %r1
    %r11 = load float, ptr @TWO_PI
    %r12 = fdiv float %r10,%r11
    %r13 = fptosi float %r12 to i32
    store i32 %r13, ptr %r9
    %r14 = load float, ptr %r1
    %r15 = load i32, ptr %r9
    %r16 = load float, ptr @TWO_PI
    %r17 = sitofp i32 %r15 to float
    %r18 = fmul float %r17,%r16
    %r19 = fsub float %r14,%r18
    store float %r19, ptr %r1
    br label %L3
L3:  ;
    %r20 = load float, ptr %r1
    %r21 = load float, ptr @PI
    %r22 = fcmp ogt float %r20,%r21
    br i1 %r22, label %L5, label %L6
L4:  ;
    %r5 = load float, ptr %r1
    %r6 = load float, ptr @TWO_PI
    %r7 = fsub float 0x0,%r6
    %r8 = fcmp olt float %r5,%r7
    br i1 %r8, label %L2, label %L3
L5:  ;
    %r23 = load float, ptr %r1
    %r24 = load float, ptr @TWO_PI
    %r25 = fsub float %r23,%r24
    store float %r25, ptr %r1
    br label %L6
L6:  ;
    %r26 = load float, ptr %r1
    %r27 = load float, ptr @PI
    %r28 = fsub float 0x0,%r27
    %r29 = fcmp olt float %r26,%r28
    br i1 %r29, label %L7, label %L8
L7:  ;
    %r30 = load float, ptr %r1
    %r31 = load float, ptr @TWO_PI
    %r32 = fadd float %r30,%r31
    store float %r32, ptr %r1
    br label %L8
L8:  ;
    %r33 = load float, ptr %r1
    %r34 = call float @my_sin_impl(float %r33)
    ret float %r34
}
define i32 @read_image()
{
L0:  ;
    %r26 = alloca i32
    %r21 = alloca i32
    br label %L1
L1:  ;
    %r0 = call i32 @getch()
    %r1 = add i32 80,0
    %r2 = icmp ne i32 %r0,%r1
    br i1 %r2, label %L2, label %L4
L2:  ;
    %r6 = add i32 1,0
    %r7 = sub i32 0,%r6
    ret i32 %r7
L3:  ;
    %r8 = call i32 @getint()
    store i32 %r8, ptr @width
    %r9 = call i32 @getint()
    store i32 %r9, ptr @height
    %r10 = load i32, ptr @width
    %r11 = load i32, ptr @MAX_WIDTH
    %r12 = icmp sgt i32 %r10,%r11
    br i1 %r12, label %L5, label %L8
L4:  ;
    %r3 = call i32 @getch()
    %r4 = add i32 50,0
    %r5 = icmp ne i32 %r3,%r4
    br i1 %r5, label %L2, label %L3
L5:  ;
    %r19 = add i32 1,0
    %r20 = sub i32 0,%r19
    ret i32 %r20
L6:  ;
    %r22 = add i32 0,0
    store i32 %r22, ptr %r21
    br label %L9
L7:  ;
    %r16 = call i32 @getint()
    %r17 = add i32 255,0
    %r18 = icmp ne i32 %r16,%r17
    br i1 %r18, label %L5, label %L6
L8:  ;
    %r13 = load i32, ptr @height
    %r14 = load i32, ptr @MAX_HEIGHT
    %r15 = icmp sgt i32 %r13,%r14
    br i1 %r15, label %L5, label %L7
L9:  ;
    %r23 = load i32, ptr %r21
    %r24 = load i32, ptr @height
    %r25 = icmp slt i32 %r23,%r24
    br i1 %r25, label %L10, label %L11
L10:  ;
    %r27 = add i32 0,0
    store i32 %r27, ptr %r26
    br label %L12
L11:  ;
    %r44 = add i32 0,0
    ret i32 %r44
L12:  ;
    %r28 = load i32, ptr %r26
    %r29 = load i32, ptr @width
    %r30 = icmp slt i32 %r28,%r29
    br i1 %r30, label %L13, label %L14
L13:  ;
    %r31 = load i32, ptr %r21
    %r32 = load i32, ptr @width
    %r33 = mul i32 %r31,%r32
    %r34 = load i32, ptr %r26
    %r35 = add i32 %r33,%r34
    %r36 = getelementptr [1048576 x i32], ptr @image, i32 0, i32 %r35
    %r37 = call i32 @getint()
    store i32 %r37, ptr %r36
    %r38 = load i32, ptr %r26
    %r39 = add i32 1,0
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r26
    br label %L12
L14:  ;
    %r41 = load i32, ptr %r21
    %r42 = add i32 1,0
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r21
    br label %L9
}
define i32 @rotate(i32 %r0,i32 %r1,float %r2)
{
L0:  ;
    %r42 = alloca i32
    %r28 = alloca i32
    %r24 = alloca i32
    %r20 = alloca i32
    %r16 = alloca i32
    %r12 = alloca i32
    %r9 = alloca float
    %r6 = alloca float
    %r5 = alloca float
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    store i32 %r1, ptr %r4
    store float %r2, ptr %r5
    br label %L1
L1:  ;
    %r7 = load float, ptr %r5
    %r8 = call float @my_sin(float %r7)
    store float %r8, ptr %r6
    %r10 = load float, ptr %r5
    %r11 = call float @my_cos(float %r10)
    store float %r11, ptr %r9
    %r13 = load i32, ptr @width
    %r14 = add i32 2,0
    %r15 = sdiv i32 %r13,%r14
    store i32 %r15, ptr %r12
    %r17 = load i32, ptr @height
    %r18 = add i32 2,0
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
    br i1 %r58, label %L2, label %L6
L2:  ;
    %r68 = add i32 0,0
    ret i32 %r68
L3:  ;
    %r69 = load i32, ptr %r42
    %r70 = load i32, ptr @width
    %r71 = mul i32 %r69,%r70
    %r72 = load i32, ptr %r28
    %r73 = add i32 %r71,%r72
    %r74 = getelementptr [1048576 x i32], ptr @image, i32 0, i32 %r73
    %r75 = load i32, ptr %r74
    ret i32 %r75
L4:  ;
    %r65 = load i32, ptr %r42
    %r66 = load i32, ptr @height
    %r67 = icmp sge i32 %r65,%r66
    br i1 %r67, label %L2, label %L3
L5:  ;
    %r62 = load i32, ptr %r42
    %r63 = add i32 0,0
    %r64 = icmp slt i32 %r62,%r63
    br i1 %r64, label %L2, label %L4
L6:  ;
    %r59 = load i32, ptr %r28
    %r60 = load i32, ptr @width
    %r61 = icmp sge i32 %r59,%r60
    br i1 %r61, label %L2, label %L5
}
define void @write_pgm(float %r0)
{
L0:  ;
    %r16 = alloca i32
    %r11 = alloca i32
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = add i32 80,0
    call void @putch(i32 %r2)
    %r3 = add i32 50,0
    call void @putch(i32 %r3)
    %r4 = add i32 10,0
    call void @putch(i32 %r4)
    %r5 = load i32, ptr @width
    call void @putint(i32 %r5)
    %r6 = add i32 32,0
    call void @putch(i32 %r6)
    %r7 = load i32, ptr @height
    call void @putint(i32 %r7)
    %r8 = add i32 32,0
    call void @putch(i32 %r8)
    %r9 = add i32 255,0
    call void @putint(i32 %r9)
    %r10 = add i32 10,0
    call void @putch(i32 %r10)
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    br label %L2
L2:  ;
    %r13 = load i32, ptr %r11
    %r14 = load i32, ptr @height
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L3, label %L4
L3:  ;
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    br label %L5
L4:  ;
    ret void
L5:  ;
    %r18 = load i32, ptr %r16
    %r19 = load i32, ptr @width
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L6, label %L7
L6:  ;
    %r21 = load i32, ptr %r16
    %r22 = load i32, ptr %r11
    %r23 = load float, ptr %r1
    %r24 = call i32 @rotate(i32 %r21,i32 %r22,float %r23)
    call void @putint(i32 %r24)
    %r25 = add i32 32,0
    call void @putch(i32 %r25)
    %r26 = load i32, ptr %r16
    %r27 = add i32 1,0
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r16
    br label %L5
L7:  ;
    %r29 = add i32 10,0
    call void @putch(i32 %r29)
    %r30 = load i32, ptr %r11
    %r31 = add i32 1,0
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r11
    br label %L2
}
define i32 @main()
{
L0:  ;
    %r0 = alloca float
    br label %L1
L1:  ;
    %r1 = call float @getfloat()
    store float %r1, ptr %r0
    %r2 = call i32 @getch()
    %r3 = call i32 @read_image()
    %r4 = add i32 0,0
    %r5 = icmp slt i32 %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:  ;
    %r6 = add i32 1,0
    %r7 = sub i32 0,%r6
    ret i32 %r7
L3:  ;
    %r8 = load float, ptr %r0
    call void @write_pgm(float %r8)
    %r9 = add i32 0,0
    ret i32 %r9
}
