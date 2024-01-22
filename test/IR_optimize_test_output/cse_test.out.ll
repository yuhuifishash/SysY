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
@d = global i32 5
@A = global [100x [100x i32]] zeroinitializer
define i32 @main()
{
L0:
    br label %L1
L1:
    %r6 = getelementptr [100 x [100 x i32]], ptr @A, i32 0, i32 2, i32 3
    %r7 = load i32, ptr %r6
    %r12 = add i32 %r7,%r7
    %r14 = sub i32 %r12,2
    store i32 %r14, ptr %r6
    ret i32 0
}
