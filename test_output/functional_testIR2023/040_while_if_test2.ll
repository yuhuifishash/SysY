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
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,0
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 3,0
    store i32 %r5, ptr %r3
    %r6 = load i32, ptr %r0
    %r7 = add i32 5,0
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    br label %L5
L3:
    br label %L8
L4:
    %r27 = load i32, ptr %r3
    ret i32 %r27
L5:
    %r9 = load i32, ptr %r3
    %r10 = add i32 2,0
    %r11 = icmp eq i32 %r9,%r10
    br i1 %r11, label %L6, label %L7
L6:
    %r12 = load i32, ptr %r3
    %r13 = add i32 2,0
    %r14 = add i32 %r12,%r13
    store i32 %r14, ptr %r3
    br label %L5
L7:
    %r15 = load i32, ptr %r3
    %r16 = add i32 25,0
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r3
    br label %L4
L8:
    %r18 = load i32, ptr %r0
    %r19 = add i32 5,0
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L9, label %L10
L9:
    %r21 = load i32, ptr %r3
    %r22 = add i32 2,0
    %r23 = mul i32 %r21,%r22
    store i32 %r23, ptr %r3
    %r24 = load i32, ptr %r0
    %r25 = add i32 1,0
    %r26 = add i32 %r24,%r25
    store i32 %r26, ptr %r0
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
