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
define i32 @fun(i32 %r0,i32 %r1)
{
L0:  ;
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L2
L2:  ;
    %r6 = load i32, ptr %r3
    %r7 = add i32 0,0
    %r8 = icmp sgt i32 %r6,%r7
    br i1 %r8, label %L3, label %L4
L3:  ;
    %r9 = load i32, ptr %r2
    %r10 = load i32, ptr %r3
    %r11 = srem i32 %r9,%r10
    store i32 %r11, ptr %r4
    %r12 = load i32, ptr %r3
    store i32 %r12, ptr %r2
    %r13 = load i32, ptr %r4
    store i32 %r13, ptr %r3
    br label %L2
L4:  ;
    %r14 = load i32, ptr %r2
    ret i32 %r14
}
define i32 @main()
{
L0:  ;
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = call i32 @getint()
    store i32 %r6, ptr %r2
    %r7 = call i32 @getint()
    store i32 %r7, ptr %r0
    %r8 = load i32, ptr %r2
    %r9 = load i32, ptr %r0
    %r10 = call i32 @fun(i32 %r8,i32 %r9)
    store i32 %r10, ptr %r4
    %r11 = load i32, ptr %r4
    call void @putint(i32 %r11)
    %r12 = add i32 0,0
    ret i32 %r12
}
