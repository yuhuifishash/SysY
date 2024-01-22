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
@n = global i32 zeroinitializer
define i32 @main()
{
L0:
    br label %L1
L1:
    %r4 = call i32 @getint()
    %r5 = call i32 @getint()
    call void @putint(i32 %r5)
    call void @putch(i32 10)
    call void @putint(i32 %r4)
    call void @putch(i32 10)
    ret i32 0
}
