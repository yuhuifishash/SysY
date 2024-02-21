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
@a = global [5 x i32] [i32 0,i32 1,i32 2,i32 3,i32 4]
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = add i32 4,0
    %r1 = getelementptr [5 x i32], ptr @a, i32 0, i32 %r0
    %r2 = load i32, ptr %r1
    ret i32 %r2
}
