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
define i32 @main()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r0
    br label %L1
L1:
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,21
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r11 = load i32, ptr %r2
    %r12 = load i32, ptr %r0
    %r13 = mul i32 %r11,%r12
    store i32 %r13, ptr %r2
    %r14 = load i32, ptr %r0
    %r15 = add i32 0,1
    %r16 = add i32 %r14,%r15
    store i32 %r16, ptr %r0
    br label %L1
L3:
    %r17 = load i32, ptr %r2
    call void @putint(i32 %r17)
    %r18 = add i32 0,0
    ret i32 %r18
}
