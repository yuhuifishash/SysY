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
L0:  ;
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load i32, ptr %r1
    %r3 = add i32 1,0
    %r4 = sub i32 %r2,%r3
    store i32 %r4, ptr %r1
    %r5 = load i32, ptr %r1
    ret i32 %r5
}
define i32 @main()
{
L0:  ;
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 10,0
    store i32 %r2, ptr @a
    %r3 = load i32, ptr @a
    %r4 = call i32 @func(i32 %r3)
    store i32 %r4, ptr %r0
    %r5 = load i32, ptr %r0
    ret i32 %r5
}
