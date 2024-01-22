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
    %r0 = alloca i32
    %r1 = add i32 0,10
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,2
    %r4 = mul i32 %r2,%r3
    %r5 = add i32 0,1
    %r6 = add i32 %r4,%r5
    ret i32 %r6
}
