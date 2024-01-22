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
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r0
    %r5 = add i32 0,998244353
    %r6 = srem i32 %r4,%r5
    %r7 = load i32, ptr %r2
    %r8 = add i32 0,32
    %r9 = srem i32 %r7,%r8
    %r10 = add i32 %r6,%r9
    ret i32 %r10
}
