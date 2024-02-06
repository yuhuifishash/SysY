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
    %r5 = add i32 0,3
    store i32 %r5, ptr %r3
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,5
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r11 = load i32, ptr %r3
    %r12 = add i32 0,2
    %r13 = icmp eq i32 %r11,%r12
    br i1 %r13, label %L6, label %L8
L3:
    %r27 = load i32, ptr %r0
    %r28 = add i32 0,5
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L10, label %L12
L4:
    %r43 = load i32, ptr %r3
    ret i32 %r43
L6:
    %r16 = load i32, ptr %r3
    %r17 = add i32 0,2
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r3
    br label %L7
L7:
    %r19 = load i32, ptr %r3
    %r20 = add i32 0,2
    %r21 = icmp eq i32 %r19,%r20
    br i1 %r21, label %L6, label %L8
L8:
    %r24 = load i32, ptr %r3
    %r25 = add i32 0,25
    %r26 = add i32 %r24,%r25
    store i32 %r26, ptr %r3
    br label %L4
L10:
    %r32 = load i32, ptr %r3
    %r33 = add i32 0,2
    %r34 = mul i32 %r32,%r33
    store i32 %r34, ptr %r3
    %r35 = load i32, ptr %r0
    %r36 = add i32 0,1
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r0
    br label %L11
L11:
    %r38 = load i32, ptr %r0
    %r39 = add i32 0,5
    %r40 = icmp slt i32 %r38,%r39
    br i1 %r40, label %L10, label %L12
L12:
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
