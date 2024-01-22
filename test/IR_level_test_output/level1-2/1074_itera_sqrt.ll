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
define i32 @fsqrt(i32 %r0)
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = load i32, ptr %r1
    %r7 = add i32 0,2
    %r8 = sdiv i32 %r6,%r7
    store i32 %r8, ptr %r4
    br label %L1
L1:
    %r9 = load i32, ptr %r2
    %r10 = load i32, ptr %r4
    %r11 = sub i32 %r9,%r10
    %r12 = add i32 0,0
    %r13 = icmp ne i32 %r11,%r12
    br i1 %r13, label %L2, label %L3
L2:
    %r16 = load i32, ptr %r4
    store i32 %r16, ptr %r2
    %r17 = load i32, ptr %r2
    %r18 = load i32, ptr %r1
    %r19 = load i32, ptr %r2
    %r20 = sdiv i32 %r18,%r19
    %r21 = add i32 %r17,%r20
    store i32 %r21, ptr %r4
    %r22 = load i32, ptr %r4
    %r23 = add i32 0,2
    %r24 = sdiv i32 %r22,%r23
    store i32 %r24, ptr %r4
    br label %L1
L3:
    %r25 = load i32, ptr %r4
    ret i32 %r25
}
define i32 @main()
{
L0:
    %r3 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,400
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr %r0
    %r6 = call i32 @fsqrt(i32 %r5)
    store i32 %r6, ptr %r3
    %r7 = load i32, ptr %r3
    call void @putint(i32 %r7)
    %r8 = add i32 0,10
    store i32 %r8, ptr %r3
    %r9 = load i32, ptr %r3
    call void @putch(i32 %r9)
    %r10 = add i32 0,0
    ret i32 %r10
}
