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
L0:
    br label %L1
L1:
    %r4 = sitofp i32 0 to float
    %r5 = fcmp ogt float %r0,%r4
    br i1 %r5, label %L2, label %L3
L2:
    ret float %r0
L3:
    %r8 = fsub float 0x0,%r0
    ret float %r8
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
define float @my_sin_impl(float %r0)
{
L0:
    br label %L1
L1:
    %r3 = call float @my_fabs(float %r0)
    %r4 = fadd float 0x0,0x3eb0c6f7a0000000
    %r5 = fcmp ole float %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
    ret float %r0
L3:
    %r8 = fadd float 0x4008000000000000,0x0
    %r9 = fdiv float %r0,%r8
    %r10 = call float @my_sin_impl(float %r9)
    %r11 = call float @p(float %r10)
    ret float %r11
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
    %r11 = fadd float 0x0,0x401921fb60000000
    %r12 = fdiv float %r0,%r11
    %r13 = fptosi float %r12 to i32
    %r16 = fadd float 0x0,0x401921fb60000000
    %r17 = sitofp i32 %r13 to float
    %r18 = fmul float %r17,%r16
    %r19 = fsub float %r0,%r18
    br label %L3
L3:
    %r35 = phi float [%r19,%L2],[%r0,%L4]
    %r21 = fadd float 0x0,0x400921fb60000000
    %r22 = fcmp ogt float %r35,%r21
    br i1 %r22, label %L5, label %L6
L4:
    %r6 = fadd float 0x0,0x401921fb60000000
    %r7 = fsub float 0x0,%r6
    %r8 = fcmp olt float %r0,%r7
    br i1 %r8, label %L2, label %L3
L5:
    %r24 = fadd float 0x0,0x401921fb60000000
    %r25 = fsub float %r35,%r24
    br label %L6
L6:
    %r36 = phi float [%r35,%L3],[%r25,%L5]
    %r27 = fadd float 0x0,0x400921fb60000000
    %r28 = fsub float 0x0,%r27
    %r29 = fcmp olt float %r36,%r28
    br i1 %r29, label %L7, label %L8
L7:
    %r31 = fadd float 0x0,0x401921fb60000000
    %r32 = fadd float %r36,%r31
    br label %L8
L8:
    %r37 = phi float [%r36,%L6],[%r32,%L7]
    %r34 = call float @my_sin_impl(float %r37)
    ret float %r34
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
    %r8 = call i32 @getint()
    store i32 %r8, ptr @width
    %r9 = call i32 @getint()
    store i32 %r9, ptr @height
    %r10 = load i32, ptr @width
    %r12 = icmp sgt i32 %r10,1024
    br i1 %r12, label %L5, label %L8
L4:
    %r3 = call i32 @getch()
    %r5 = icmp ne i32 %r3,50
    br i1 %r5, label %L2, label %L3
L5:
    ret i32 -1
L6:
    br label %L9
L7:
    %r16 = call i32 @getint()
    %r18 = icmp ne i32 %r16,255
    br i1 %r18, label %L5, label %L6
L8:
    %r13 = load i32, ptr @height
    %r15 = icmp sgt i32 %r13,1024
    br i1 %r15, label %L5, label %L7
L9:
    %r47 = phi i32 [0,%L6],[%r43,%L14]
    %r24 = load i32, ptr @height
    %r25 = icmp slt i32 %r47,%r24
    br i1 %r25, label %L10, label %L11
L10:
    br label %L12
L11:
    ret i32 0
L12:
    %r46 = phi i32 [0,%L10],[%r40,%L13]
    %r29 = load i32, ptr @width
    %r30 = icmp slt i32 %r46,%r29
    br i1 %r30, label %L13, label %L14
L13:
    %r32 = load i32, ptr @width
    %r33 = mul i32 %r47,%r32
    %r35 = add i32 %r33,%r46
    %r36 = getelementptr [1048576 x i32], ptr @image, i32 0, i32 %r35
    %r37 = call i32 @getint()
    store i32 %r37, ptr %r36
    %r40 = add i32 %r46,1
    br label %L12
L14:
    %r43 = add i32 %r47,1
    br label %L9
}
define i32 @rotate(i32 %r0,i32 %r1,float %r2)
{
L0:
    br label %L1
L1:
    %r8 = call float @my_sin(float %r2)
    %r11 = call float @my_cos(float %r2)
    %r13 = load i32, ptr @width
    %r15 = sdiv i32 %r13,2
    %r17 = load i32, ptr @height
    %r19 = sdiv i32 %r17,2
    %r23 = sub i32 %r0,%r15
    %r27 = sub i32 %r1,%r19
    %r31 = sitofp i32 %r23 to float
    %r32 = fmul float %r31,%r11
    %r35 = sitofp i32 %r27 to float
    %r36 = fmul float %r35,%r8
    %r37 = fsub float %r32,%r36
    %r39 = sitofp i32 %r15 to float
    %r40 = fadd float %r37,%r39
    %r41 = fptosi float %r40 to i32
    %r45 = sitofp i32 %r23 to float
    %r46 = fmul float %r45,%r8
    %r49 = sitofp i32 %r27 to float
    %r50 = fmul float %r49,%r11
    %r51 = fadd float %r46,%r50
    %r53 = sitofp i32 %r19 to float
    %r54 = fadd float %r51,%r53
    %r55 = fptosi float %r54 to i32
    %r58 = icmp slt i32 %r41,0
    br i1 %r58, label %L2, label %L6
L2:
    ret i32 0
L3:
    %r70 = load i32, ptr @width
    %r71 = mul i32 %r55,%r70
    %r73 = add i32 %r71,%r41
    %r74 = getelementptr [1048576 x i32], ptr @image, i32 0, i32 %r73
    %r75 = load i32, ptr %r74
    ret i32 %r75
L4:
    %r66 = load i32, ptr @height
    %r67 = icmp sge i32 %r55,%r66
    br i1 %r67, label %L2, label %L3
L5:
    %r64 = icmp slt i32 %r55,0
    br i1 %r64, label %L2, label %L4
L6:
    %r60 = load i32, ptr @width
    %r61 = icmp sge i32 %r41,%r60
    br i1 %r61, label %L2, label %L5
}
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
    br label %L2
L2:
    %r35 = phi i32 [0,%L1],[%r32,%L7]
    %r14 = load i32, ptr @height
    %r15 = icmp slt i32 %r35,%r14
    br i1 %r15, label %L3, label %L4
L3:
    br label %L5
L4:
    ret void
L5:
    %r34 = phi i32 [0,%L3],[%r28,%L6]
    %r19 = load i32, ptr @width
    %r20 = icmp slt i32 %r34,%r19
    br i1 %r20, label %L6, label %L7
L6:
    %r24 = call i32 @rotate(i32 %r34,i32 %r35,float %r0)
    call void @putint(i32 %r24)
    call void @putch(i32 32)
    %r28 = add i32 %r34,1
    br label %L5
L7:
    call void @putch(i32 10)
    %r32 = add i32 %r35,1
    br label %L2
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
