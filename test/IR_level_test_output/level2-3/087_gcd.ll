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
define i32 @gcd(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r3
    %r5 = add i32 0,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L1, label %L2
L1:
    %r9 = load i32, ptr %r2
    ret i32 %r9
L2:
    %r10 = load i32, ptr %r3
    %r11 = load i32, ptr %r2
    %r12 = load i32, ptr %r3
    %r13 = srem i32 %r11,%r12
    %r14 = call i32 @gcd(i32 %r10,i32 %r13)
    ret i32 %r14
}
define i32 @main()
{
L0:
    %r9 = alloca i32
    %r7 = alloca i32
    %r0 = alloca i32
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    br label %L1
L1:
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,0
    %r4 = icmp sgt i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r8 = call i32 @getint()
    store i32 %r8, ptr %r7
    %r10 = call i32 @getint()
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r7
    %r12 = load i32, ptr %r9
    %r13 = call i32 @gcd(i32 %r11,i32 %r12)
    call void @putint(i32 %r13)
    %r14 = add i32 0,10
    call void @putch(i32 %r14)
    %r15 = load i32, ptr %r0
    %r16 = add i32 0,1
    %r17 = sub i32 %r15,%r16
    store i32 %r17, ptr %r0
    br label %L1
L3:
    %r18 = add i32 0,0
    ret i32 %r18
}
