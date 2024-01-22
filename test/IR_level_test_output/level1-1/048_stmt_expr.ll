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
@k = global i32 zeroinitializer
@n = global i32 10
define i32 @main()
{
L0:
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,1
    store i32 %r2, ptr @k
    br label %L1
L1:
    %r3 = load i32, ptr %r0
    %r4 = load i32, ptr @n
    %r5 = add i32 0,1
    %r6 = sub i32 %r4,%r5
    %r7 = icmp sle i32 %r3,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r10 = load i32, ptr %r0
    %r11 = add i32 0,1
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r0
    %r13 = load i32, ptr @k
    %r14 = add i32 0,1
    %r15 = add i32 %r13,%r14
    %r16 = load i32, ptr @k
    %r17 = load i32, ptr @k
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr @k
    br label %L1
L3:
    %r19 = load i32, ptr @k
    call void @putint(i32 %r19)
    %r20 = load i32, ptr @k
    ret i32 %r20
}
