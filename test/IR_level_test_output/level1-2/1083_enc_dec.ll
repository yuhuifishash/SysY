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
define i32 @enc(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = add i32 0,25
    %r4 = icmp sgt i32 %r2,%r3
    br i1 %r4, label %L1, label %L2
L1:
    %r7 = load i32, ptr %r1
    %r8 = add i32 0,60
    %r9 = add i32 %r7,%r8
    store i32 %r9, ptr %r1
    br label %L3
L2:
    %r10 = load i32, ptr %r1
    %r11 = add i32 0,15
    %r12 = sub i32 %r10,%r11
    store i32 %r12, ptr %r1
    br label %L3
L3:
    %r13 = load i32, ptr %r1
    ret i32 %r13
}
define i32 @dec(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = add i32 0,85
    %r4 = icmp sgt i32 %r2,%r3
    br i1 %r4, label %L1, label %L2
L1:
    %r7 = load i32, ptr %r1
    %r8 = add i32 0,59
    %r9 = sub i32 %r7,%r8
    store i32 %r9, ptr %r1
    br label %L3
L2:
    %r10 = load i32, ptr %r1
    %r11 = add i32 0,14
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r1
    br label %L3
L3:
    %r13 = load i32, ptr %r1
    ret i32 %r13
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
    %r6 = call i32 @enc(i32 %r5)
    store i32 %r6, ptr %r3
    %r7 = load i32, ptr %r3
    %r8 = call i32 @dec(i32 %r7)
    store i32 %r8, ptr %r3
    %r9 = load i32, ptr %r3
    call void @putint(i32 %r9)
    %r10 = add i32 0,10
    store i32 %r10, ptr %r3
    %r11 = load i32, ptr %r3
    call void @putch(i32 %r11)
    %r12 = add i32 0,0
    ret i32 %r12
}
