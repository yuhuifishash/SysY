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
define i32 @main()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 0,56
    store i32 %r4, ptr %r0
    %r5 = add i32 0,4
    store i32 %r5, ptr %r2
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,4
    %r8 = sub i32 0,%r7
    %r9 = sub i32 %r6,%r8
    %r10 = load i32, ptr %r2
    %r11 = add i32 0,%r10
    %r12 = add i32 %r9,%r11
    store i32 %r12, ptr %r0
    %r13 = load i32, ptr %r0
    %r14 = icmp eq i32 %r13,0
    %r15 = zext i1 %r14 to i32
    %r16 = icmp eq i32 %r15,0
    %r17 = zext i1 %r16 to i32
    %r18 = icmp eq i32 %r17,0
    %r19 = zext i1 %r18 to i32
    %r20 = sub i32 0,%r19
    %r21 = add i32 0,%r20
    %r22 = icmp ne i32 %r21,0
    br i1 %r22, label %L1, label %L2
L1:
    %r23 = add i32 0,1
    %r24 = sub i32 0,%r23
    %r25 = sub i32 0,%r24
    %r26 = sub i32 0,%r25
    store i32 %r26, ptr %r0
    br label %L3
L2:
    %r27 = add i32 0,0
    %r28 = load i32, ptr %r2
    %r29 = add i32 0,%r28
    %r30 = add i32 %r27,%r29
    store i32 %r30, ptr %r0
    br label %L3
L3:
    %r31 = load i32, ptr %r0
    call void @putint(i32 %r31)
    %r32 = add i32 0,0
    ret i32 %r32
}
