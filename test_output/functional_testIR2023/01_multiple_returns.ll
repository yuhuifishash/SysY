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
    %r9 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r2 = add i32 8,0
    store i32 %r2, ptr %r1
    %r4 = add i32 12,0
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr %r1
    %r6 = load i32, ptr %r3
    %r7 = add i32 %r5,%r6
    store i32 %r7, ptr %r0
    %r8 = load i32, ptr %r0
    ret i32 %r8
    %r10 = add i32 9,0
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r0
    %r12 = load i32, ptr %r9
    %r13 = mul i32 %r11,%r12
    store i32 %r13, ptr %r0
    %r14 = load i32, ptr %r0
    ret i32 %r14
    %r16 = add i32 4,0
    store i32 %r16, ptr %r15
    %r17 = load i32, ptr %r15
    %r18 = load i32, ptr %r1
    %r19 = sub i32 %r17,%r18
    %r20 = load i32, ptr %r3
    %r21 = mul i32 %r19,%r20
    store i32 %r21, ptr %r0
    %r22 = load i32, ptr %r0
    ret i32 %r22
    %r23 = load i32, ptr %r0
    ret i32 %r23
}
