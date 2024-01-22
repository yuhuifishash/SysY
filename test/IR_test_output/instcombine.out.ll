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
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,1
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr %r0
    %r5 = load i32, ptr %r0
    %r6 = add i32 0,1
    %r7 = add i32 %r5,%r6
    store i32 %r7, ptr %r0
    %r8 = load i32, ptr %r0
    %r9 = add i32 0,1
    %r10 = add i32 %r8,%r9
    store i32 %r10, ptr %r0
    %r11 = load i32, ptr %r0
    ret i32 %r11
}
