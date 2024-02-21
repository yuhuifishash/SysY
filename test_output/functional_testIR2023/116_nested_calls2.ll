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
L0:  ;
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr %r3
    %r6 = mul i32 %r4,%r5
    ret i32 %r6
}
define i32 @g(i32 %r0,i32 %r1)
{
L0:  ;
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr %r3
    %r6 = srem i32 %r4,%r5
    ret i32 %r6
}
define i32 @h(i32 %r0,i32 %r1)
{
L0:  ;
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
    %r4 = add i32 2,0
    %r5 = load i32, ptr %r2
    %r6 = load i32, ptr %r3
    %r7 = call i32 @g(i32 %r5,i32 %r6)
    %r8 = call i32 @f(i32 %r4,i32 %r7)
    %r9 = load i32, ptr %r2
    %r10 = load i32, ptr %r3
    %r11 = call i32 @f(i32 %r9,i32 %r10)
    %r12 = add i32 4,0
    %r13 = call i32 @g(i32 %r11,i32 %r12)
    %r14 = call i32 @f(i32 %r8,i32 %r13)
    ret i32 %r14
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = add i32 11,0
    %r1 = add i32 3,0
    %r2 = call i32 @h(i32 %r0,i32 %r1)
    call void @putint(i32 %r2)
    %r3 = add i32 0,0
    ret i32 %r3
}
