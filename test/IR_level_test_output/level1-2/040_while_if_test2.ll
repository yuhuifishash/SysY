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
declare void @starttime()
declare void @stoptime()
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
define i32 @ifWhile()
{
L0:
    %r3 = alloca i32
    %r0 = alloca i32
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
    br i1 %r8, label %L1, label %L2
L1:
    br label %L4
L2:
    br label %L7
L3:
    %r33 = load i32, ptr %r3
    ret i32 %r33
L4:
    %r11 = load i32, ptr %r3
    %r12 = add i32 0,2
    %r13 = icmp eq i32 %r11,%r12
    br i1 %r13, label %L5, label %L6
L5:
    %r16 = load i32, ptr %r3
    %r17 = add i32 0,2
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r3
    br label %L4
L6:
    %r19 = load i32, ptr %r3
    %r20 = add i32 0,25
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r3
    br label %L3
L7:
    %r22 = load i32, ptr %r0
    %r23 = add i32 0,5
    %r24 = icmp slt i32 %r22,%r23
    br i1 %r24, label %L8, label %L9
L8:
    %r27 = load i32, ptr %r3
    %r28 = add i32 0,2
    %r29 = mul i32 %r27,%r28
    store i32 %r29, ptr %r3
    %r30 = load i32, ptr %r0
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r0
    br label %L7
L9:
    br label %L3
}
define i32 @main()
{
L0:
    %r0 = call i32 @ifWhile()
    ret i32 %r0
}
