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
define i32 @ifElse()
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    br label %L4
L4:  ;
    ret i32 25
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @ifElse()
    ret i32 %r0
}
