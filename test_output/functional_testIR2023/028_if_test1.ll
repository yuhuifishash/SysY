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
L0:
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,5
    store i32 %r2, ptr %r0
    %r3 = load i32, ptr %r0
    %r4 = add i32 0,5
    %r5 = icmp eq i32 %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = add i32 0,25
    store i32 %r8, ptr %r0
    br label %L4
L3:
    %r9 = load i32, ptr %r0
    %r10 = add i32 0,2
    %r11 = mul i32 %r9,%r10
    store i32 %r11, ptr %r0
    br label %L4
L4:
    %r12 = load i32, ptr %r0
    ret i32 %r12
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @ifElse()
    ret i32 %r0
}
