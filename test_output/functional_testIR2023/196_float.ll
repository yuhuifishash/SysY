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
@RADIUS = global float 0x4016000000000000
@PI = global float 0x400921fb60000000
@EPS = global float 0x3eb0c6f7a0000000
@PI_HEX = global float 0x400921fb60000000
@HEX2 = global float 0x3fb4000000000000
@FACT = global float 0x40e01d0000000000
@EVAL1 = global float 0x4057c21fc0000000
@EVAL2 = global float 0x4041475ce0000000
@EVAL3 = global float 0x4041475ce0000000
@CONV1 = global float 0x406d200000000000
@CONV2 = global float 0x40affe0000000000
@MAX = global i32 1000000000
@TWO = global i32 2
@THREE = global i32 3
@FIVE = global i32 5
define float @float_abs(float %r0)
{
L0:
    br label %L1
L1:
    %r4 = sitofp i32 0 to float
    %r5 = fcmp olt float %r0,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r7 = fsub float 0x0,%r0
    ret float %r7
L3:
    ret float %r0
}
define void @error()
{
L0:
    br label %L1
L1:
    call void @putch(i32 101)
    call void @putch(i32 114)
    call void @putch(i32 114)
    call void @putch(i32 111)
    call void @putch(i32 114)
    call void @putch(i32 10)
    ret void
}
define float @circle_area(i32 %r0)
{
L0:
    br label %L1
L1:
    %r2 = fadd float 0x0,0x400921fb60000000
    %r4 = sitofp i32 %r0 to float
    %r5 = fmul float %r2,%r4
    %r7 = sitofp i32 %r0 to float
    %r8 = fmul float %r5,%r7
    %r11 = mul i32 %r0,%r0
    %r12 = fadd float 0x0,0x400921fb60000000
    %r13 = sitofp i32 %r11 to float
    %r14 = fmul float %r13,%r12
    %r15 = fadd float %r8,%r14
    %r17 = sitofp i32 2 to float
    %r18 = fdiv float %r15,%r17
    ret float %r18
}
define i32 @float_eq(float %r0,float %r1)
{
L0:
    br label %L1
L1:
    %r6 = fsub float %r0,%r1
    %r7 = call float @float_abs(float %r6)
    %r8 = fadd float 0x0,0x3eb0c6f7a0000000
    %r9 = fcmp olt float %r7,%r8
    br i1 %r9, label %L2, label %L3
L2:
    %r11 = fadd float 0x4000000000000000,0x0
    %r12 = sitofp i32 1 to float
    %r13 = fmul float %r12,%r11
    %r15 = sitofp i32 2 to float
    %r16 = fdiv float %r13,%r15
    %r17 = fptosi float %r16 to i32
    ret i32 %r17
L3:
    ret i32 0
}
define void @ok()
{
L0:
    br label %L1
L1:
    call void @putch(i32 111)
    call void @putch(i32 107)
    call void @putch(i32 10)
    ret void
}
define void @assert(i32 %r0)
{
L0:
    br label %L1
L1:
    %r3 = icmp eq i32 %r0,0
    br i1 %r3, label %L2, label %L3
L2:
    call void @error()
    br label %L4
L3:
    call void @ok()
    br label %L4
L4:
    ret void
}
define i32 @main()
{
L0:
    %r42 = alloca [10 x float]
    br label %L1
L1:
    %r0 = fadd float 0x0,0x3fb4000000000000
    %r1 = fadd float 0x0,0x40e01d0000000000
    %r2 = call i32 @float_eq(float %r0,float %r1)
    %r3 = icmp eq i32 %r2,0
    %r4 = zext i1 %r3 to i32
    call void @assert(i32 %r4)
    %r5 = fadd float 0x0,0x4057c21fc0000000
    %r6 = fadd float 0x0,0x4041475ce0000000
    %r7 = call i32 @float_eq(float %r5,float %r6)
    %r8 = icmp eq i32 %r7,0
    %r9 = zext i1 %r8 to i32
    call void @assert(i32 %r9)
    %r10 = fadd float 0x0,0x4041475ce0000000
    %r11 = fadd float 0x0,0x4041475ce0000000
    %r12 = call i32 @float_eq(float %r10,float %r11)
    call void @assert(i32 %r12)
    %r13 = fadd float 0x0,0x4016000000000000
    %r14 = fptosi float %r13 to i32
    %r15 = call float @circle_area(i32 %r14)
    %r17 = call float @circle_area(i32 5)
    %r18 = call i32 @float_eq(float %r15,float %r17)
    call void @assert(i32 %r18)
    %r19 = fadd float 0x0,0x406d200000000000
    %r20 = fadd float 0x0,0x40affe0000000000
    %r21 = call i32 @float_eq(float %r19,float %r20)
    %r22 = icmp eq i32 %r21,0
    %r23 = zext i1 %r22 to i32
    call void @assert(i32 %r23)
    %r24 = fadd float 0x3ff8000000000000,0x0
    %r25 = fcmp one float %r24,0x0
    br i1 %r25, label %L2, label %L3
L2:
    call void @ok()
    br label %L3
L3:
    %r26 = fadd float 0x400a666660000000,0x0
    %r27 = fcmp oeq float %r26,0x0
    %r28 = zext i1 %r27 to i32
    %r29 = icmp eq i32 %r28,0
    br i1 %r29, label %L4, label %L5
L4:
    call void @ok()
    br label %L5
L5:
    %r30 = fadd float 0x0,0x0
    %r31 = fcmp one float %r30,0x0
    br i1 %r31, label %L8, label %L7
L6:
    call void @error()
    br label %L7
L7:
    br label %L11
L8:
    br label %L6
L9:
    call void @ok()
    br label %L10
L10:
    call void @llvm.memset.p0.i32(ptr %r42,i8 0,i32 40,i1 0)
    %r43 = fadd float 0x3ff0000000000000,0x0
    %r44 = getelementptr [10 x float], ptr %r42, i32 0, i32 0
    store float %r43, ptr %r44
    %r46 = sitofp i32 2 to float
    %r47 = getelementptr [10 x float], ptr %r42, i32 0, i32 1
    store float %r46, ptr %r47
    %r49 = getelementptr [10 x float], ptr %r42, i32 0
    %r50 = call i32 @getfarray(ptr %r49)
    br label %L12
L11:
    %r36 = fadd float 0x3fd3333340000000,0x0
    %r37 = fcmp one float %r36,0x0
    br i1 %r37, label %L9, label %L10
L12:
    %r92 = phi i32 [1,%L10],[%r84,%L13]
    %r91 = phi i32 [0,%L10],[%r87,%L13]
    %r53 = icmp slt i32 %r92,1000000000
    br i1 %r53, label %L13, label %L14
L13:
    %r55 = call float @getfloat()
    %r57 = fadd float 0x0,0x400921fb60000000
    %r59 = fmul float %r57,%r55
    %r61 = fmul float %r59,%r55
    %r64 = fptosi float %r55 to i32
    %r65 = call float @circle_area(i32 %r64)
    %r67 = getelementptr [10 x float], ptr %r42, i32 0, i32 %r91
    %r69 = getelementptr [10 x float], ptr %r42, i32 0, i32 %r91
    %r70 = load float, ptr %r69
    %r72 = fadd float %r70,%r55
    store float %r72, ptr %r67
    call void @putfloat(float %r61)
    call void @putch(i32 32)
    %r76 = fptosi float %r65 to i32
    call void @putint(i32 %r76)
    call void @putch(i32 10)
    %r79 = fadd float 0x4024000000000000,0x0
    %r80 = fsub float 0x0,%r79
    %r81 = fsub float 0x0,%r80
    %r82 = sitofp i32 %r92 to float
    %r83 = fmul float %r82,%r81
    %r84 = fptosi float %r83 to i32
    %r87 = add i32 %r91,1
    br label %L12
L14:
    %r89 = getelementptr [10 x float], ptr %r42, i32 0
    call void @putfarray(i32 %r50,ptr %r89)
    ret i32 0
}
