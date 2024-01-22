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
define void @move(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r2
    call void @putint(i32 %r4)
    %r5 = add i32 0,32
    call void @putch(i32 %r5)
    %r6 = load i32, ptr %r3
    call void @putint(i32 %r6)
    %r7 = add i32 0,44
    call void @putch(i32 %r7)
    %r8 = add i32 0,32
    call void @putch(i32 %r8)
    ret void
}
define void @hanoi(i32 %r0,i32 %r1,i32 %r2,i32 %r3)
{
L0:
    %r4 = alloca i32
    store i32 %r0, ptr %r4
    %r5 = alloca i32
    store i32 %r1, ptr %r5
    %r6 = alloca i32
    store i32 %r2, ptr %r6
    %r7 = alloca i32
    store i32 %r3, ptr %r7
    %r8 = load i32, ptr %r4
    %r9 = add i32 0,1
    %r10 = icmp eq i32 %r8,%r9
    br i1 %r10, label %L1, label %L2
L1:
    %r13 = load i32, ptr %r5
    %r14 = load i32, ptr %r7
    call void @move(i32 %r13,i32 %r14)
    br label %L3
L2:
    %r15 = load i32, ptr %r4
    %r16 = add i32 0,1
    %r17 = sub i32 %r15,%r16
    %r18 = load i32, ptr %r5
    %r19 = load i32, ptr %r7
    %r20 = load i32, ptr %r6
    call void @hanoi(i32 %r17,i32 %r18,i32 %r19,i32 %r20)
    %r21 = load i32, ptr %r5
    %r22 = load i32, ptr %r7
    call void @move(i32 %r21,i32 %r22)
    %r23 = load i32, ptr %r4
    %r24 = add i32 0,1
    %r25 = sub i32 %r23,%r24
    %r26 = load i32, ptr %r6
    %r27 = load i32, ptr %r5
    %r28 = load i32, ptr %r7
    call void @hanoi(i32 %r25,i32 %r26,i32 %r27,i32 %r28)
    br label %L3
L3:
    ret void
}
define i32 @main()
{
L0:
    %r0 = alloca i32
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    br label %L1
L1:
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,0
    %r4 = icmp sgt i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r7 = call i32 @getint()
    %r8 = add i32 0,1
    %r9 = add i32 0,2
    %r10 = add i32 0,3
    call void @hanoi(i32 %r7,i32 %r8,i32 %r9,i32 %r10)
    %r11 = add i32 0,10
    call void @putch(i32 %r11)
    %r12 = load i32, ptr %r0
    %r13 = add i32 0,1
    %r14 = sub i32 %r12,%r13
    store i32 %r14, ptr %r0
    br label %L1
L3:
    %r15 = add i32 0,0
    ret i32 %r15
}
