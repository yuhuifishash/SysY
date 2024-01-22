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
    %r4 = add i32 0,10
    store i32 %r4, ptr %r0
    %r5 = add i32 0,30
    store i32 %r5, ptr %r2
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,5
    %r8 = sub i32 0,%r7
    %r9 = sub i32 %r6,%r8
    %r10 = load i32, ptr %r2
    %r11 = add i32 %r9,%r10
    %r12 = add i32 0,5
    %r13 = sub i32 0,%r12
    %r14 = add i32 %r11,%r13
    ret i32 %r14
}
