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
    %r15 = alloca i32
    %r13 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 3,0
    store i32 %r1, ptr %r0
    %r3 = add i32 5,0
    store i32 %r3, ptr %r2
    br label %L2
L2:
    %r4 = load i32, ptr %r2
    %r5 = icmp ne i32 %r4,0
    br i1 %r5, label %L3, label %L4
L3:
    %r6 = load i32, ptr %r2
    %r7 = add i32 1,0
    %r8 = sub i32 %r6,%r7
    store i32 %r8, ptr %r2
    br label %L2
L4:
    %r12 = load i32, ptr %r0
    ret i32 %r12
}
