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
    br label %L1
L1:
    call void @putch(i32 80)
    call void @putch(i32 50)
    call void @putch(i32 10)
    %r5 = load i32, ptr @width
    call void @putint(i32 %r5)
    call void @putch(i32 32)
    %r7 = load i32, ptr @height
    call void @putint(i32 %r7)
    call void @putch(i32 32)
    call void @putint(i32 255)
    call void @putch(i32 10)
    %r15 = icmp slt i32 0,%r7
    br i1 %r15, label %L10, label %L5
L3:
    %r51 = phi i32 [%r41,%L4],[0,%L10]
    %r21 = load i32, ptr @width
    %r22 = icmp slt i32 0,%r21
    br i1 %r22, label %L11, label %L9
L4:
    %r43 = load i32, ptr @height
    %r44 = icmp slt i32 %r41,%r43
    br i1 %r44, label %L3, label %L5
L5:
    ret void
L7:
    %r49 = phi i32 [%r32,%L8],[0,%L11]
    %r28 = call i32 @rotate(i32 %r49,i32 %r51,float %r0)
    call void @putint(i32 %r28)
    call void @putch(i32 32)
    %r32 = add i32 %r49,1
    br label %L8
L8:
    %r34 = load i32, ptr @width
    %r35 = icmp slt i32 %r32,%r34
    br i1 %r35, label %L7, label %L9
L9:
    call void @putch(i32 10)
    %r41 = add i32 %r51,1
    br label %L4
L10:
    br label %L3
L11:
    br label %L7
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call float @getfloat()
    %r2 = call i32 @getch()
    %r3 = call i32 @read_image()
    %r5 = icmp slt i32 %r3,0
    br i1 %r5, label %L2, label %L3
L2:
    ret i32 -1
L3:
    call void @write_pgm(float %r1)
    ret i32 0
}
define float @p(float %r0)
{
L0:
    br label %L1
L1:
    %r4 = sitofp i32 3 to float
    %r5 = fmul float %r4,%r0
    %r8 = sitofp i32 4 to float
    %r9 = fmul float %r8,%r0
    %r11 = fmul float %r9,%r0
    %r13 = fmul float %r11,%r0
    %r14 = fsub float %r5,%r13
    ret float %r14
}
define float @my_fabs(float %r0)
{
L0:
    br label %L1
L1:
    %r4 = sitofp i32 0 to float
    %r5 = fcmp ogt float %r0,%r4
    br i1 %r5, label %L2, label %L3
L2:
    ret float %r0
L3:
    %r10 = fsub float 0x0,%r0
    ret float %r10
}
define float @my_sin_impl(float %r0)
{
L0:
    br label %L1
L1:
    br label %L4
L2:
    ret float %r0
L3:
    %r10 = fadd float 0x0,0x4008000000000000
    %r11 = fdiv float %r0,%r10
    %r12 = call float @my_sin_impl(float %r11)
    br label %L9
L4:
    br label %L6
L5:
    %r3 = phi float [%r0,%L7],[%r16,%L8]
    %r4 = fadd float 0x0,0x3eb0c6f7a0000000
    %r5 = fcmp ole float %r3,%r4
    br i1 %r5, label %L2, label %L3
L6:
    %r14 = sitofp i32 0 to float
    %r15 = fcmp ogt float %r0,%r14
    br i1 %r15, label %L7, label %L8
L7:
    br label %L5
L8:
    %r16 = fsub float 0x0,%r0
    br label %L5
L9:
    br label %L11
L10:
    ret float %r23
L11:
    %r17 = sitofp i32 3 to float
    %r18 = fmul float %r17,%r12
    %r19 = sitofp i32 4 to float
    %r20 = fmul float %r19,%r12
    %r21 = fmul float %r20,%r12
    %r22 = fmul float %r21,%r12
    %r23 = fsub float %r18,%r22
    br label %L10
}
define float @my_sin(float %r0)
{
L0:
    br label %L1
L1:
    %r3 = fadd float 0x0,0x401921fb60000000
    %r4 = fcmp ogt float %r0,%r3
    br i1 %r4, label %L2, label %L4
L2:
    %r18 = fadd float 0x0,0x401921fb60000000
    %r19 = fdiv float %r0,%r18
    %r20 = fptosi float %r19 to i32
    %r23 = fadd float 0x0,0x401921fb60000000
    %r24 = sitofp i32 %r20 to float
    %r25 = fmul float %r24,%r23
    %r26 = fsub float %r0,%r25
    br label %L3
L3:
    %r46 = phi float [%r26,%L2],[%r0,%L4]
    %r28 = fadd float 0x0,0x400921fb60000000
    %r29 = fcmp ogt float %r46,%r28
    br i1 %r29, label %L6, label %L7
L4:
    %r8 = fadd float 0x0,0x401921fb60000000
    %r9 = fsub float 0x0,%r8
    %r10 = fcmp olt float %r0,%r9
    br i1 %r10, label %L2, label %L3
L6:
    %r33 = fadd float 0x0,0x401921fb60000000
    %r34 = fsub float %r46,%r33
    br label %L7
L7:
    %r47 = phi float [%r46,%L3],[%r34,%L6]
    %r36 = fadd float 0x0,0x400921fb60000000
    %r37 = fsub float 0x0,%r36
    %r38 = fcmp olt float %r47,%r37
    br i1 %r38, label %L8, label %L9
L8:
    %r42 = fadd float 0x0,0x401921fb60000000
    %r43 = fadd float %r47,%r42
    br label %L9
L9:
    %r48 = phi float [%r47,%L7],[%r43,%L8]
    %r45 = call float @my_sin_impl(float %r48)
    ret float %r45
}
define float @my_cos(float %r0)
{
L0:
    br label %L1
L1:
    %r3 = fadd float 0x0,0x400921fb60000000
    %r5 = sitofp i32 2 to float
    %r6 = fdiv float %r3,%r5
    %r7 = fadd float %r0,%r6
    %r8 = call float @my_sin(float %r7)
    ret float %r8
}
define i32 @read_image()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @getch()
    %r2 = icmp ne i32 %r0,80
    br i1 %r2, label %L2, label %L4
L2:
    ret i32 -1
L3:
    %r15 = call i32 @getint()
    store i32 %r15, ptr @width
    %r16 = call i32 @getint()
    store i32 %r16, ptr @height
    %r17 = load i32, ptr @width
    %r19 = icmp sgt i32 %r17,1024
    br i1 %r19, label %L6, label %L10
L4:
    %r5 = call i32 @getch()
    %r7 = icmp ne i32 %r5,50
    br i1 %r7, label %L2, label %L3
L6:
    ret i32 -1
L7:
    %r43 = load i32, ptr @height
    %r44 = icmp slt i32 0,%r43
    br i1 %r44, label %L20, label %L15
L8:
    %r30 = call i32 @getint()
    %r32 = icmp ne i32 %r30,255
    br i1 %r32, label %L6, label %L7
L10:
    %r22 = load i32, ptr @height
    %r24 = icmp sgt i32 %r22,1024
    br i1 %r24, label %L6, label %L8
L13:
    %r82 = phi i32 [%r71,%L14],[0,%L20]
    %r50 = load i32, ptr @width
    %r51 = icmp slt i32 0,%r50
    br i1 %r51, label %L21, label %L19
L14:
    %r73 = load i32, ptr @height
    %r74 = icmp slt i32 %r71,%r73
    br i1 %r74, label %L13, label %L15
L15:
    ret i32 0
L17:
    %r80 = phi i32 [%r63,%L18],[0,%L21]
    %r54 = call i32 @getint()
    %r56 = load i32, ptr @width
    %r57 = mul i32 %r82,%r56
    %r59 = add i32 %r57,%r80
    %r60 = getelementptr [1048576 x i32], ptr @image, i32 0, i32 %r59
    store i32 %r54, ptr %r60
    %r63 = add i32 %r80,1
    br label %L18
L18:
    %r65 = load i32, ptr @width
    %r66 = icmp slt i32 %r63,%r65
    br i1 %r66, label %L17, label %L19
L19:
    %r71 = add i32 %r82,1
    br label %L14
L20:
    br label %L13
L21:
    br label %L17
}
define i32 @rotate(i32 %r0,i32 %r1,float %r2)
{
L0:
    br label %L1
L1:
    %r8 = call float @my_sin(float %r2)
    br label %L10
L2:
    ret i32 0
L3:
    %r87 = load i32, ptr @width
    %r88 = mul i32 %r55,%r87
    %r90 = add i32 %r88,%r41
    %r91 = getelementptr [1048576 x i32], ptr @image, i32 0, i32 %r90
    %r92 = load i32, ptr %r91
    ret i32 %r92
L4:
    %r78 = load i32, ptr @height
    %r79 = icmp sge i32 %r55,%r78
    br i1 %r79, label %L2, label %L3
L6:
    %r71 = icmp slt i32 %r55,0
    br i1 %r71, label %L2, label %L4
L8:
    %r62 = load i32, ptr @width
    %r63 = icmp sge i32 %r41,%r62
    br i1 %r63, label %L2, label %L6
L10:
    br label %L12
L11:
    %r13 = load i32, ptr @width
    %r15 = sdiv i32 %r13,2
    %r17 = load i32, ptr @height
    %r19 = sdiv i32 %r17,2
    %r23 = sub i32 %r0,%r15
    %r27 = sub i32 %r1,%r19
    %r31 = sitofp i32 %r23 to float
    %r32 = fmul float %r31,%r97
    %r35 = sitofp i32 %r27 to float
    %r36 = fmul float %r35,%r8
    %r37 = fsub float %r32,%r36
    %r39 = sitofp i32 %r15 to float
    %r40 = fadd float %r37,%r39
    %r41 = fptosi float %r40 to i32
    %r46 = fmul float %r31,%r8
    %r50 = fmul float %r35,%r97
    %r51 = fadd float %r46,%r50
    %r53 = sitofp i32 %r19 to float
    %r54 = fadd float %r51,%r53
    %r55 = fptosi float %r54 to i32
    %r58 = icmp slt i32 %r41,0
    br i1 %r58, label %L2, label %L8
L12:
    %r93 = fadd float 0x0,0x400921fb60000000
    %r94 = sitofp i32 2 to float
    %r95 = fdiv float %r93,%r94
    %r96 = fadd float %r2,%r95
    %r97 = call float @my_sin(float %r96)
    br label %L11
}
