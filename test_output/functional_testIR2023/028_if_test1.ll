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
    store i32 0, ptr %r0
    %r1 = add i32 5,0
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr %r0
    %r3 = add i32 5,0
    %r4 = icmp eq i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r5 = add i32 25,0
    store i32 %r5, ptr %r0
    br label %L4
L3:
    %r6 = load i32, ptr %r0
    %r7 = add i32 2,0
    %r8 = mul i32 %r6,%r7
    store i32 %r8, ptr %r0
    br label %L4
L4:
    %r9 = load i32, ptr %r0
    ret i32 %r9
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @ifElse()
    ret i32 %r0
}
