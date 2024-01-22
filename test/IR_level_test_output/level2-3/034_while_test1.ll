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
define i32 @doubleWhile()
{
L0:
    %r3 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,5
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,7
    store i32 %r5, ptr %r3
    br label %L1
L1:
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,100
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r11 = load i32, ptr %r0
    %r12 = add i32 0,30
    %r13 = add i32 %r11,%r12
    store i32 %r13, ptr %r0
    br label %L4
L3:
    %r25 = load i32, ptr %r3
    ret i32 %r25
L4:
    %r14 = load i32, ptr %r3
    %r15 = add i32 0,100
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L5, label %L6
L5:
    %r19 = load i32, ptr %r3
    %r20 = add i32 0,6
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r3
    br label %L4
L6:
    %r22 = load i32, ptr %r3
    %r23 = add i32 0,100
    %r24 = sub i32 %r22,%r23
    store i32 %r24, ptr %r3
    br label %L1
}
define i32 @main()
{
L0:
    %r0 = call i32 @doubleWhile()
    ret i32 %r0
}
