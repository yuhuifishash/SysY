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
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = add i32 0,10
    store i32 %r8, ptr %r0
    %r9 = add i32 0,4
    store i32 %r9, ptr %r2
    %r10 = add i32 0,2
    store i32 %r10, ptr %r4
    %r11 = add i32 0,2
    store i32 %r11, ptr %r6
    %r12 = load i32, ptr %r4
    %r13 = load i32, ptr %r0
    %r14 = add i32 %r12,%r13
    %r15 = load i32, ptr %r2
    %r16 = load i32, ptr %r6
    %r17 = sub i32 %r15,%r16
    %r18 = mul i32 %r14,%r17
    ret i32 %r18
}
