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
    %r20 = alloca i32
    %r8 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,5
    store i32 %r1, ptr %r0
    %r3 = add i32 0,7
    store i32 %r3, ptr %r2
    %r5 = load i32, ptr %r0
    %r6 = load i32, ptr %r2
    %r7 = add i32 %r5,%r6
    store i32 %r7, ptr %r4
    %r9 = add i32 0,23
    store i32 %r9, ptr %r8
    %r10 = load i32, ptr %r4
    %r11 = icmp ne i32 %r10,0
    br i1 %r11, label %L2, label %L3
L2:
    %r12 = add i32 0,389
    store i32 %r12, ptr %r8
    br label %L3
L3:
    %r13 = load i32, ptr %r4
    %r14 = icmp eq i32 %r13,0
    br i1 %r14, label %L4, label %L5
L4:
    %r17 = add i32 0,3
    %r18 = add i32 0,5
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r8
    br label %L5
L5:
    %r21 = add i32 0,3
    %r22 = load i32, ptr %r8
    %r23 = mul i32 %r21,%r22
    store i32 %r23, ptr %r20
    %r24 = load i32, ptr %r20
    ret i32 %r24
}
