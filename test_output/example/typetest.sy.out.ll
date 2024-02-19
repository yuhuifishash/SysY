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
define i32 @main()
{
L0:  ;
    %r0 = alloca [100 x i32]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 400,i1 0)
    %r2 = call i32 @getint()
    %r4 = getelementptr [100 x i32], ptr %r0, i32 0, i32 %r2
    %r8 = load i32, ptr %r4
    %r9 = mul i32 3,%r8
    %r13 = sdiv i32 %r9,%r8
    %r17 = add i32 %r13,%r8
    store i32 %r17, ptr %r4
    %r20 = load i32, ptr %r4
    ret i32 %r20
}
