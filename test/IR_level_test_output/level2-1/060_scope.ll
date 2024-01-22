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
@a = global i32 7
define i32 @main()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,100
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r9 = call i32 @func()
    %r10 = add i32 0,1
    %r11 = icmp eq i32 %r9,%r10
    br i1 %r11, label %L4, label %L5
L3:
    %r20 = load i32, ptr %r0
    %r21 = add i32 0,100
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L6, label %L7
L4:
    %r14 = load i32, ptr %r0
    %r15 = add i32 0,1
    %r16 = add i32 %r14,%r15
    store i32 %r16, ptr %r0
    br label %L5
L5:
    %r17 = load i32, ptr %r2
    %r18 = add i32 0,1
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r2
    br label %L1
L6:
    %r25 = add i32 0,1
    call void @putint(i32 %r25)
    br label %L8
L7:
    %r26 = add i32 0,0
    call void @putint(i32 %r26)
    br label %L8
L8:
    %r27 = add i32 0,0
    ret i32 %r27
}
define i32 @func()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = load i32, ptr @a
    store i32 %r1, ptr %r0
    %r3 = add i32 0,1
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr %r0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L1, label %L2
L1:
    %r9 = load i32, ptr %r2
    %r10 = add i32 0,1
    %r11 = add i32 %r9,%r10
    store i32 %r11, ptr %r2
    %r12 = add i32 0,1
    ret i32 %r12
L2:
    %r13 = add i32 0,0
    ret i32 %r13
}
