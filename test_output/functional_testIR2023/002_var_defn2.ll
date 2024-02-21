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
@a = global i32 3
@b = global i32 5
define i32 @main()
{
L0:  ;
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 5,0
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr %r0
    %r3 = load i32, ptr @b
<<<<<<< HEAD
    %r4 = add i32 %r2,%r3
=======
    %r4 = add i32 %r3,5
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    ret i32 %r4
}
