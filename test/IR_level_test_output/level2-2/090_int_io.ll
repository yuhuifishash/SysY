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
@ascii_0 = global i32 48
define i32 @my_getint()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L1
L1:
    %r4 = add i32 0,1
    %r5 = icmp ne i32 %r4,0
    br i1 %r5, label %L2, label %L3
L2:
    %r6 = call i32 @getch()
    %r7 = load i32, ptr @ascii_0
    %r8 = sub i32 %r6,%r7
    store i32 %r8, ptr %r2
    %r9 = load i32, ptr %r2
    %r10 = add i32 0,0
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L4, label %L7
L3:
    %r22 = load i32, ptr %r2
    store i32 %r22, ptr %r0
    br label %L11
L4:
    br label %L1
L5:
    br label %L3
L7:
    %r14 = load i32, ptr %r2
    %r15 = add i32 0,9
    %r16 = icmp sgt i32 %r14,%r15
    br i1 %r16, label %L4, label %L5
L11:
    %r23 = add i32 0,1
    %r24 = icmp ne i32 %r23,0
    br i1 %r24, label %L12, label %L13
L12:
    %r25 = call i32 @getch()
    %r26 = load i32, ptr @ascii_0
    %r27 = sub i32 %r25,%r26
    store i32 %r27, ptr %r2
    %r28 = load i32, ptr %r2
    %r29 = add i32 0,0
    %r30 = icmp sge i32 %r28,%r29
    br i1 %r30, label %L17, label %L15
L13:
    %r46 = load i32, ptr %r0
    ret i32 %r46
L14:
    %r41 = load i32, ptr %r0
    %r42 = add i32 0,10
    %r43 = mul i32 %r41,%r42
    %r44 = load i32, ptr %r2
    %r45 = add i32 %r43,%r44
    store i32 %r45, ptr %r0
    br label %L16
L15:
    br label %L13
L16:
    br label %L11
L17:
    %r33 = load i32, ptr %r2
    %r34 = add i32 0,9
    %r35 = icmp sle i32 %r33,%r34
    br i1 %r35, label %L14, label %L15
}
define void @my_putint(i32 %r0)
{
L0:
    %r3 = alloca i32
    %r2 = alloca [16 x i32]
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    br label %L1
L1:
    %r5 = load i32, ptr %r1
    %r6 = add i32 0,0
    %r7 = icmp sgt i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r10 = load i32, ptr %r1
    %r11 = add i32 0,10
    %r12 = srem i32 %r10,%r11
    %r13 = load i32, ptr @ascii_0
    %r14 = add i32 %r12,%r13
    %r15 = load i32, ptr %r3
    %r16 = getelementptr [16 x i32], ptr %r2, i32 0, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = load i32, ptr %r1
    %r18 = add i32 0,10
    %r19 = sdiv i32 %r17,%r18
    store i32 %r19, ptr %r1
    %r20 = load i32, ptr %r3
    %r21 = add i32 0,1
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r3
    br label %L1
L3:
    br label %L4
L4:
    %r23 = load i32, ptr %r3
    %r24 = add i32 0,0
    %r25 = icmp sgt i32 %r23,%r24
    br i1 %r25, label %L5, label %L6
L5:
    %r28 = load i32, ptr %r3
    %r29 = add i32 0,1
    %r30 = sub i32 %r28,%r29
    store i32 %r30, ptr %r3
    %r31 = load i32, ptr %r3
    %r32 = getelementptr [16 x i32], ptr %r2, i32 0, i32 %r31
    %r33 = load i32, ptr %r32
    call void @putch(i32 %r33)
    br label %L4
L6:
    ret void
}
define i32 @main()
{
L0:
    %r7 = alloca i32
    %r0 = alloca i32
    %r1 = call i32 @my_getint()
    store i32 %r1, ptr %r0
    br label %L1
L1:
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,0
    %r4 = icmp sgt i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r8 = call i32 @my_getint()
    store i32 %r8, ptr %r7
    %r9 = load i32, ptr %r7
    call void @my_putint(i32 %r9)
    %r10 = add i32 0,10
    call void @putch(i32 %r10)
    %r11 = load i32, ptr %r0
    %r12 = add i32 0,1
    %r13 = sub i32 %r11,%r12
    store i32 %r13, ptr %r0
    br label %L1
L3:
    %r14 = add i32 0,0
    ret i32 %r14
}
