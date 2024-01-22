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
@g = global i32 0
define i32 @func(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr @g
    %r3 = load i32, ptr %r1
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr @g
    %r5 = load i32, ptr @g
    call void @putint(i32 %r5)
    %r6 = load i32, ptr @g
    ret i32 %r6
}
define i32 @main()
{
L0:
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = call i32 @getint()
    store i32 %r2, ptr %r0
    %r3 = load i32, ptr %r0
    %r4 = add i32 0,10
    %r5 = icmp sgt i32 %r3,%r4
    br i1 %r5, label %L4, label %L2
L1:
    %r14 = add i32 0,1
    store i32 %r14, ptr %r0
    br label %L3
L2:
    %r15 = add i32 0,0
    store i32 %r15, ptr %r0
    br label %L3
L3:
    %r16 = call i32 @getint()
    store i32 %r16, ptr %r0
    %r17 = load i32, ptr %r0
    %r18 = add i32 0,11
    %r19 = icmp sgt i32 %r17,%r18
    br i1 %r19, label %L9, label %L7
L4:
    %r8 = load i32, ptr %r0
    %r9 = call i32 @func(i32 %r8)
    %r10 = icmp ne i32 %r9,0
    br i1 %r10, label %L1, label %L2
L6:
    %r28 = add i32 0,1
    store i32 %r28, ptr %r0
    br label %L8
L7:
    %r29 = add i32 0,0
    store i32 %r29, ptr %r0
    br label %L8
L8:
    %r30 = call i32 @getint()
    store i32 %r30, ptr %r0
    %r31 = load i32, ptr %r0
    %r32 = add i32 0,99
    %r33 = icmp sle i32 %r31,%r32
    br i1 %r33, label %L11, label %L14
L9:
    %r22 = load i32, ptr %r0
    %r23 = call i32 @func(i32 %r22)
    %r24 = icmp ne i32 %r23,0
    br i1 %r24, label %L6, label %L7
L11:
    %r42 = add i32 0,1
    store i32 %r42, ptr %r0
    br label %L13
L12:
    %r43 = add i32 0,0
    store i32 %r43, ptr %r0
    br label %L13
L13:
    %r44 = call i32 @getint()
    store i32 %r44, ptr %r0
    %r45 = load i32, ptr %r0
    %r46 = add i32 0,100
    %r47 = icmp sle i32 %r45,%r46
    br i1 %r47, label %L16, label %L19
L14:
    %r36 = load i32, ptr %r0
    %r37 = call i32 @func(i32 %r36)
    %r38 = icmp ne i32 %r37,0
    br i1 %r38, label %L11, label %L12
L16:
    %r56 = add i32 0,1
    store i32 %r56, ptr %r0
    br label %L18
L17:
    %r57 = add i32 0,0
    store i32 %r57, ptr %r0
    br label %L18
L18:
    %r58 = add i32 0,99
    %r59 = call i32 @func(i32 %r58)
    %r60 = icmp eq i32 %r59,0
    br i1 %r60, label %L24, label %L22
L19:
    %r50 = load i32, ptr %r0
    %r51 = call i32 @func(i32 %r50)
    %r52 = icmp ne i32 %r51,0
    br i1 %r52, label %L16, label %L17
L21:
    %r69 = add i32 0,1
    store i32 %r69, ptr %r0
    br label %L23
L22:
    %r70 = add i32 0,0
    store i32 %r70, ptr %r0
    br label %L23
L23:
    %r71 = add i32 0,0
    ret i32 %r71
L24:
    %r63 = add i32 0,100
    %r64 = call i32 @func(i32 %r63)
    %r65 = icmp ne i32 %r64,0
    br i1 %r65, label %L21, label %L22
}
