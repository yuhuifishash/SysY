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
define i32 @ifWhile()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    store i32 0, ptr %r2
    %r3 = add i32 3,0
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r0
    %r5 = add i32 5,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    br label %L5
L3:
    br label %L8
L4:
    %r25 = load i32, ptr %r2
    ret i32 %r25
L5:
    %r7 = load i32, ptr %r2
    %r8 = add i32 2,0
    %r9 = icmp eq i32 %r7,%r8
    br i1 %r9, label %L6, label %L7
L6:
    %r10 = load i32, ptr %r2
    %r11 = add i32 2,0
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r2
    br label %L5
L7:
    %r13 = load i32, ptr %r2
    %r14 = add i32 25,0
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr %r2
    br label %L4
L8:
    %r16 = load i32, ptr %r0
    %r17 = add i32 5,0
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L9, label %L10
L9:
    %r19 = load i32, ptr %r2
    %r20 = add i32 2,0
    %r21 = mul i32 %r19,%r20
    store i32 %r21, ptr %r2
    %r22 = load i32, ptr %r0
    %r23 = add i32 1,0
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r0
    br label %L8
L10:
    br label %L4
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @ifWhile()
    ret i32 %r0
}
