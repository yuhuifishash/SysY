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
define i32 @f()
{
L0:  ;
    br label %L1
L1:  ;
    call void @putint(i32 12)
    ret i32 0
}
define i32 @g()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @f()
    ret i32 0
}
define i32 @h()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @g()
    ret i32 0
}
define i32 @ff()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @f()
    %r1 = call i32 @g()
    %r2 = call i32 @h()
    ret i32 0
}
define i32 @gg()
{
L0:  ;
    br label %L1
L1:  ;
    ret i32 3
}
define i32 @hh()
{
L0:  ;
    br label %L1
L1:  ;
    ret i32 0
}
define i32 @fff()
{
L0:  ;
    br label %L1
L1:  ;
    ret i32 0
}
define i32 @ggg()
{
L0:  ;
    br label %L1
L1:  ;
    %r2 = call i32 @ff()
    ret i32 0
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @g()
    %r1 = call i32 @ff()
    ret i32 0
}
