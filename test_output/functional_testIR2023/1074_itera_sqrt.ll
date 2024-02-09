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
define i32 @fsqrt(i32 %r0)
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    store i32 0, ptr %r4
    %r5 = load i32, ptr %r1
    %r6 = add i32 2,0
    %r7 = sdiv i32 %r5,%r6
    store i32 %r7, ptr %r4
    br label %L2
L2:
    %r8 = load i32, ptr %r2
    %r9 = load i32, ptr %r4
    %r10 = sub i32 %r8,%r9
    %r11 = add i32 0,0
    %r12 = icmp ne i32 %r10,%r11
    br i1 %r12, label %L3, label %L4
L3:
    %r13 = load i32, ptr %r4
    store i32 %r13, ptr %r2
    %r14 = load i32, ptr %r2
    %r15 = load i32, ptr %r1
    %r16 = load i32, ptr %r2
    %r17 = sdiv i32 %r15,%r16
    %r18 = add i32 %r14,%r17
    store i32 %r18, ptr %r4
    %r19 = load i32, ptr %r4
    %r20 = add i32 2,0
    %r21 = sdiv i32 %r19,%r20
    store i32 %r21, ptr %r4
    br label %L2
L4:
    %r22 = load i32, ptr %r4
    ret i32 %r22
}
define i32 @main()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r1 = add i32 400,0
    store i32 %r1, ptr %r0
    store i32 0, ptr %r2
    %r3 = load i32, ptr %r0
    %r4 = call i32 @fsqrt(i32 %r3)
    store i32 %r4, ptr %r2
    %r5 = load i32, ptr %r2
    call void @putint(i32 %r5)
    %r6 = add i32 10,0
    store i32 %r6, ptr %r2
    %r7 = load i32, ptr %r2
    call void @putch(i32 %r7)
    %r8 = add i32 0,0
    ret i32 %r8
}
