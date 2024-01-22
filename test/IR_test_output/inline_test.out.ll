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
@d = global i32 0
define i32 @f()
{
L0:
    br label %L1
L1:
    %r0 = load i32, ptr @d
    %r1 = icmp ne i32 %r0,0
    br i1 %r1, label %L2, label %L3
L2:
    %r2 = add i32 0,3
    ret i32 %r2
L3:
    %r3 = add i32 0,15
    ret i32 %r3
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @f()
    ret i32 %r0
}
