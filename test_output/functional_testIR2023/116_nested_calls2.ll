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
define i32 @f(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = mul i32 %r0,%r1
    ret i32 %r6
}
define i32 @g(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = srem i32 %r0,%r1
    ret i32 %r6
}
define i32 @h(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r7 = call i32 @g(i32 %r0,i32 %r1)
    %r8 = call i32 @f(i32 2,i32 %r7)
    %r11 = call i32 @f(i32 %r0,i32 %r1)
    %r13 = call i32 @g(i32 %r11,i32 4)
    %r14 = call i32 @f(i32 %r8,i32 %r13)
    ret i32 %r14
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r2 = call i32 @h(i32 11,i32 3)
    call void @putint(i32 %r2)
    ret i32 0
}
