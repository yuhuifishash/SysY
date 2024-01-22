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
define i32 @func(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = add i32 0,50
    %r4 = icmp sle i32 %r2,%r3
    br i1 %r4, label %L1, label %L2
L1:
    %r7 = load i32, ptr %r1
    call void @putint(i32 %r7)
    %r8 = add i32 0,1
    ret i32 %r8
L2:
    %r9 = load i32, ptr %r1
    call void @putint(i32 %r9)
    %r10 = add i32 0,0
    ret i32 %r10
}
define i32 @main()
{
L0:
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,0
    %r3 = call i32 @func(i32 %r2)
    %r4 = add i32 0,1
    %r5 = icmp eq i32 %r3,%r4
    br i1 %r5, label %L1, label %L4
L1:
    %r26 = add i32 0,0
    store i32 %r26, ptr %r0
    br label %L3
L2:
    %r27 = add i32 0,1
    store i32 %r27, ptr %r0
    br label %L3
L3:
    %r28 = add i32 0,50
    %r29 = call i32 @func(i32 %r28)
    %r30 = add i32 0,1
    %r31 = icmp eq i32 %r29,%r30
    br i1 %r31, label %L13, label %L11
L4:
    %r8 = add i32 0,50
    %r9 = call i32 @func(i32 %r8)
    %r10 = add i32 0,1
    %r11 = icmp eq i32 %r9,%r10
    br i1 %r11, label %L6, label %L2
L6:
    %r14 = add i32 0,100
    %r15 = call i32 @func(i32 %r14)
    %r16 = add i32 0,0
    %r17 = icmp eq i32 %r15,%r16
    br i1 %r17, label %L1, label %L2
L8:
    %r52 = add i32 0,0
    store i32 %r52, ptr %r0
    br label %L10
L9:
    %r53 = add i32 0,1
    store i32 %r53, ptr %r0
    br label %L10
L10:
    %r54 = add i32 0,0
    ret i32 %r54
L11:
    %r43 = add i32 0,1
    %r44 = call i32 @func(i32 %r43)
    %r45 = add i32 0,1
    %r46 = icmp eq i32 %r44,%r45
    br i1 %r46, label %L8, label %L9
L13:
    %r34 = add i32 0,40
    %r35 = call i32 @func(i32 %r34)
    %r36 = add i32 0,1
    %r37 = icmp eq i32 %r35,%r36
    br i1 %r37, label %L8, label %L11
}
