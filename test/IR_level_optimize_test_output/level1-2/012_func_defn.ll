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
@a = global i32 zeroinitializer
define i32 @func(i32 %r0)
{
L0:
    br label %L1
L1:
    %r4 = sub i32 %r0,1
    ret i32 %r4
}
define i32 @main()
{
L0:
    br label %L1
L1:
    store i32 10, ptr @a
    %r3 = load i32, ptr @a
    br label %L2
L2:
    br label %L4
L3:
    ret i32 %r6
L4:
    %r6 = sub i32 %r3,1
    br label %L3
}
