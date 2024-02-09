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
define i32 @func(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = add i32 50,0
    %r4 = icmp sle i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r5 = load i32, ptr %r1
    call void @putint(i32 %r5)
    %r6 = add i32 1,0
    ret i32 %r6
    br label %L4
L3:
    %r7 = load i32, ptr %r1
    call void @putint(i32 %r7)
    %r8 = add i32 0,0
    ret i32 %r8
    br label %L4
L4:
    ret i32 0
}
define i32 @main()
{
L0:
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r1 = add i32 0,0
    %r2 = call i32 @func(i32 %r1)
    %r3 = add i32 1,0
    %r4 = icmp eq i32 %r2,%r3
    br i1 %r4, label %L2, label %L5
L2:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r0
    br label %L4
L3:
    %r14 = add i32 1,0
    store i32 %r14, ptr %r0
    br label %L4
L4:
    %r15 = add i32 50,0
    %r16 = call i32 @func(i32 %r15)
    %r17 = add i32 1,0
    %r18 = icmp eq i32 %r16,%r17
    br i1 %r18, label %L11, label %L10
L5:
    %r5 = add i32 50,0
    %r6 = call i32 @func(i32 %r5)
    %r7 = add i32 1,0
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L6, label %L3
L6:
    %r9 = add i32 100,0
    %r10 = call i32 @func(i32 %r9)
    %r11 = add i32 0,0
    %r12 = icmp eq i32 %r10,%r11
    br i1 %r12, label %L2, label %L3
L7:
    %r27 = add i32 0,0
    store i32 %r27, ptr %r0
    br label %L9
L8:
    %r28 = add i32 1,0
    store i32 %r28, ptr %r0
    br label %L9
L9:
    %r29 = add i32 0,0
    ret i32 %r29
L10:
    %r23 = add i32 1,0
    %r24 = call i32 @func(i32 %r23)
    %r25 = add i32 1,0
    %r26 = icmp eq i32 %r24,%r25
    br i1 %r26, label %L7, label %L8
L11:
    %r19 = add i32 40,0
    %r20 = call i32 @func(i32 %r19)
    %r21 = add i32 1,0
    %r22 = icmp eq i32 %r20,%r21
    br i1 %r22, label %L7, label %L10
}
