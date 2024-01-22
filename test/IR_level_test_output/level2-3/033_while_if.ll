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
define i32 @get_one(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = add i32 0,1
    ret i32 %r2
}
define i32 @deepWhileBr(i32 %r0,i32 %r1)
{
L0:
    %r30 = alloca i32
    %r14 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = load i32, ptr %r2
    %r7 = load i32, ptr %r3
    %r8 = add i32 %r6,%r7
    store i32 %r8, ptr %r4
    br label %L1
L1:
    %r9 = load i32, ptr %r4
    %r10 = add i32 0,75
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L2, label %L3
L2:
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r16 = add i32 0,42
    store i32 %r16, ptr %r14
    %r17 = load i32, ptr %r4
    %r18 = add i32 0,100
    %r19 = icmp slt i32 %r17,%r18
    br i1 %r19, label %L4, label %L5
L3:
    %r44 = load i32, ptr %r4
    ret i32 %r44
L4:
    %r22 = load i32, ptr %r4
    %r23 = load i32, ptr %r14
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r4
    %r25 = load i32, ptr %r4
    %r26 = add i32 0,99
    %r27 = icmp sgt i32 %r25,%r26
    br i1 %r27, label %L6, label %L7
L5:
    br label %L1
L6:
    %r31 = add i32 0,0
    store i32 %r31, ptr %r30
    %r32 = load i32, ptr %r14
    %r33 = add i32 0,2
    %r34 = mul i32 %r32,%r33
    store i32 %r34, ptr %r30
    %r35 = add i32 0,0
    %r36 = call i32 @get_one(i32 %r35)
    %r37 = add i32 0,1
    %r38 = icmp eq i32 %r36,%r37
    br i1 %r38, label %L8, label %L9
L7:
    br label %L5
L8:
    %r41 = load i32, ptr %r30
    %r42 = add i32 0,2
    %r43 = mul i32 %r41,%r42
    store i32 %r43, ptr %r4
    br label %L9
L9:
    br label %L7
}
define i32 @main()
{
L0:
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,2
    store i32 %r2, ptr %r0
    %r3 = load i32, ptr %r0
    %r4 = load i32, ptr %r0
    %r5 = call i32 @deepWhileBr(i32 %r3,i32 %r4)
    store i32 %r5, ptr %r0
    %r6 = load i32, ptr %r0
    call void @putint(i32 %r6)
    %r7 = add i32 0,0
    ret i32 %r7
}
