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
@FACT = global float 0xc0e01d0000000000
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
    %r1 = alloca float
    store float %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr %r1
    %r3 = add i32 0,0
    %r4 = sitofp i32 %r3 to float
    %r5 = fcmp olt float %r2,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = load float, ptr %r1
    %r9 = fsub float 0x0,%r8
    ret float %r9
L3:
    %r10 = load float, ptr %r1
    ret float %r10
}
define float @circle_area(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load float, ptr @PI
    %r3 = load i32, ptr %r1
    %r4 = sitofp i32 %r3 to float
    %r5 = fmul float %r2,%r4
    %r6 = load i32, ptr %r1
    %r7 = sitofp i32 %r6 to float
    %r8 = fmul float %r5,%r7
    %r9 = load i32, ptr %r1
    %r10 = load i32, ptr %r1
    %r11 = mul i32 %r9,%r10
    %r12 = load float, ptr @PI
    %r13 = sitofp i32 %r11 to float
    %r14 = fmul float %r13,%r12
    %r15 = fadd float %r8,%r14
    %r16 = add i32 0,2
    %r17 = sitofp i32 %r16 to float
    %r18 = fdiv float %r15,%r17
    ret float %r18
}
define i32 @float_eq(float %r0,float %r1)
{
L0:
    %r2 = alloca float
    store float %r0, ptr %r2
    %r3 = alloca float
    store float %r1, ptr %r3
    br label %L1
L1:
    %r4 = load float, ptr %r2
    %r5 = load float, ptr %r3
    %r6 = fsub float %r4,%r5
    %r7 = call float @float_abs(float %r6)
    %r8 = load float, ptr @EPS
    %r9 = fcmp olt float %r7,%r8
    br i1 %r9, label %L2, label %L3
L2:
    %r12 = add i32 0,1
    %r13 = fadd float 0x0,0x4000000000000000
    %r14 = sitofp i32 %r12 to float
    %r15 = fmul float %r14,%r13
    %r16 = add i32 0,2
    %r17 = sitofp i32 %r16 to float
    %r18 = fdiv float %r15,%r17
    %r19 = fptosi float %r18 to i32
    ret i32 %r19
L3:
    %r20 = add i32 0,0
    ret i32 %r20
}
define void @error()
{
L0:
    br label %L1
L1:
    %r0 = add i32 0,101
    call void @putch(i32 %r0)
    %r1 = add i32 0,114
    call void @putch(i32 %r1)
    %r2 = add i32 0,114
    call void @putch(i32 %r2)
    %r3 = add i32 0,111
    call void @putch(i32 %r3)
    %r4 = add i32 0,114
    call void @putch(i32 %r4)
    %r5 = add i32 0,10
    call void @putch(i32 %r5)
    ret void
}
define void @ok()
{
L0:
    br label %L1
L1:
    %r0 = add i32 0,111
    call void @putch(i32 %r0)
    %r1 = add i32 0,107
    call void @putch(i32 %r1)
    %r2 = add i32 0,10
    call void @putch(i32 %r2)
    ret void
}
define void @assert(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = icmp eq i32 %r2,0
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
    %r72 = alloca float
    %r66 = alloca float
    %r64 = alloca float
    %r56 = alloca i32
    %r50 = alloca [10 x float]
    %r48 = alloca i32
    %r46 = alloca i32
    br label %L1
L1:
    %r0 = load float, ptr @HEX2
    %r1 = load float, ptr @FACT
    %r2 = call i32 @float_eq(float %r0,float %r1)
    %r3 = icmp eq i32 %r2,0
    %r4 = zext i1 %r3 to i32
    call void @assert(i32 %r4)
    %r5 = load float, ptr @EVAL1
    %r6 = load float, ptr @EVAL2
    %r7 = call i32 @float_eq(float %r5,float %r6)
    %r8 = icmp eq i32 %r7,0
    %r9 = zext i1 %r8 to i32
    call void @assert(i32 %r9)
    %r10 = load float, ptr @EVAL2
    %r11 = load float, ptr @EVAL3
    %r12 = call i32 @float_eq(float %r10,float %r11)
    call void @assert(i32 %r12)
    %r13 = load float, ptr @RADIUS
    %r14 = fptosi float %r13 to i32
    %r15 = call float @circle_area(i32 %r14)
    %r16 = load i32, ptr @FIVE
    %r17 = call float @circle_area(i32 %r16)
    %r18 = call i32 @float_eq(float %r15,float %r17)
    call void @assert(i32 %r18)
    %r19 = load float, ptr @CONV1
    %r20 = load float, ptr @CONV2
    %r21 = call i32 @float_eq(float %r19,float %r20)
    %r22 = icmp eq i32 %r21,0
    %r23 = zext i1 %r22 to i32
    call void @assert(i32 %r23)
    %r24 = fadd float 0x0,0x3ff8000000000000
    %r25 = fcmp one float %r24,0x0
    br i1 %r25, label %L2, label %L3
L2:
    call void @ok()
    br label %L3
L3:
    %r26 = fadd float 0x0,0x400a666660000000
    %r27 = fcmp oeq float %r26,0x0
    %r28 = zext i1 %r27 to i32
    %r29 = icmp eq i32 %r28,0
    br i1 %r29, label %L4, label %L5
L4:
    call void @ok()
    br label %L5
L5:
    %r32 = fadd float 0x0,0x0
    %r33 = fcmp one float %r32,0x0
    br i1 %r33, label %L8, label %L7
L6:
    call void @error()
    br label %L7
L7:
    %r39 = add i32 0,0
    %r40 = icmp eq i32 %r39,0
    br i1 %r40, label %L12, label %L10
L8:
    %r34 = add i32 0,3
    %r35 = icmp ne i32 %r34,0
    br i1 %r35, label %L6, label %L7
L10:
    call void @ok()
    br label %L11
L11:
    %r47 = add i32 0,1
    store i32 %r47, ptr %r46
    %r49 = add i32 0,0
    store i32 %r49, ptr %r48
    call void @llvm.memset.p0.i32(ptr %r50,i8 0,i32 40,i1 0)
    %r51 = fadd float 0x0,0x3ff0000000000000
    %r52 = getelementptr [10 x float], ptr %r50, i32 0, i32 0
    store float %r51, ptr %r52
    %r53 = add i32 0,2
    %r54 = sitofp i32 %r53 to float
    %r55 = getelementptr [10 x float], ptr %r50, i32 0, i32 1
    store float %r54, ptr %r55
    %r57 = getelementptr float, ptr %r50, i32 0
    %r58 = call i32 @getfarray(ptr %r57)
    store i32 %r58, ptr %r56
    %r59 = load i32, ptr %r46
    %r60 = load i32, ptr @MAX
    %r61 = icmp slt i32 %r59,%r60
    br i1 %r61, label %L15, label %L17
L12:
    %r41 = fadd float 0x0,0x3fd3333340000000
    %r42 = fcmp one float %r41,0x0
    br i1 %r42, label %L10, label %L11
L15:
    %r65 = call float @getfloat()
    store float %r65, ptr %r64
    %r67 = load float, ptr @PI
    %r68 = load float, ptr %r64
    %r69 = fmul float %r67,%r68
    %r70 = load float, ptr %r64
    %r71 = fmul float %r69,%r70
    store float %r71, ptr %r66
    %r73 = load float, ptr %r64
    %r74 = fptosi float %r73 to i32
    %r75 = call float @circle_area(i32 %r74)
    store float %r75, ptr %r72
    %r76 = load i32, ptr %r48
    %r77 = getelementptr [10 x float], ptr %r50, i32 0, i32 %r76
    %r78 = load float, ptr %r77
    %r79 = load float, ptr %r64
    %r80 = fadd float %r78,%r79
    %r81 = load i32, ptr %r48
    %r82 = getelementptr [10 x float], ptr %r50, i32 0, i32 %r81
    store float %r80, ptr %r82
    %r83 = load float, ptr %r66
    call void @putfloat(float %r83)
    %r84 = add i32 0,32
    call void @putch(i32 %r84)
    %r85 = load float, ptr %r72
    %r86 = fptosi float %r85 to i32
    call void @putint(i32 %r86)
    %r87 = add i32 0,10
    call void @putch(i32 %r87)
    %r88 = load i32, ptr %r46
    %r89 = fadd float 0x0,0x4024000000000000
    %r90 = fsub float 0x0,%r89
    %r91 = fsub float 0x0,%r90
    %r92 = sitofp i32 %r88 to float
    %r93 = fmul float %r92,%r91
    %r94 = fptosi float %r93 to i32
    store i32 %r94, ptr %r46
    %r95 = load i32, ptr %r48
    %r96 = add i32 0,1
    %r97 = add i32 %r95,%r96
    store i32 %r97, ptr %r48
    br label %L16
L16:
    %r98 = load i32, ptr %r46
    %r99 = load i32, ptr @MAX
    %r100 = icmp slt i32 %r98,%r99
    br i1 %r100, label %L15, label %L17
L17:
    %r103 = load i32, ptr %r56
    %r104 = getelementptr float, ptr %r50, i32 0
    call void @putfarray(i32 %r103,ptr %r104)
    %r105 = add i32 0,0
    ret i32 %r105
}
