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
@a = global i32 zeroinitializer
define i32 @main()
{
L0:
    %r0 = add i32 0,10
    store i32 %r0, ptr @a
    %r1 = load i32, ptr @a
    %r2 = add i32 0,0
    %r3 = icmp sgt i32 %r1,%r2
    br i1 %r3, label %L1, label %L2
L1:
    %r6 = add i32 0,1
    ret i32 %r6
L2:
    %r7 = add i32 0,0
    ret i32 %r7
}
