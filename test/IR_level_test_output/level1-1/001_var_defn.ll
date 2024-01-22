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
@a = global i32 3
@b = global i32 5
define i32 @main()
{
L0:
    %r0 = load i32, ptr @a
    %r1 = load i32, ptr @b
    %r2 = add i32 %r0,%r1
    ret i32 %r2
}
