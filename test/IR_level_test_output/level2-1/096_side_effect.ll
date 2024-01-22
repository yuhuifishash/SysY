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
@a = global i32 -1
@b = global i32 1
define i32 @inc_a()
{
L0:
    %r0 = alloca i32
    %r1 = load i32, ptr @a
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,1
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr %r0
    %r5 = load i32, ptr %r0
    store i32 %r5, ptr @a
    %r6 = load i32, ptr @a
    ret i32 %r6
}
define i32 @main()
{
L0:
    %r0 = alloca i32
    %r1 = add i32 0,5
    store i32 %r1, ptr %r0
    br label %L1
L1:
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,0
    %r4 = icmp sge i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r7 = call i32 @inc_a()
    %r8 = icmp ne i32 %r7,0
    br i1 %r8, label %L8, label %L5
L3:
    %r51 = load i32, ptr @a
    call void @putint(i32 %r51)
    %r52 = add i32 0,32
    call void @putch(i32 %r52)
    %r53 = load i32, ptr @b
    call void @putint(i32 %r53)
    %r54 = add i32 0,10
    call void @putch(i32 %r54)
    %r55 = load i32, ptr @a
    ret i32 %r55
L4:
    %r19 = load i32, ptr @a
    call void @putint(i32 %r19)
    %r20 = add i32 0,32
    call void @putch(i32 %r20)
    %r21 = load i32, ptr @b
    call void @putint(i32 %r21)
    %r22 = add i32 0,10
    call void @putch(i32 %r22)
    br label %L5
L5:
    %r23 = call i32 @inc_a()
    %r24 = add i32 0,14
    %r25 = icmp slt i32 %r23,%r24
    br i1 %r25, label %L10, label %L13
L6:
    %r14 = call i32 @inc_a()
    %r15 = icmp ne i32 %r14,0
    br i1 %r15, label %L4, label %L5
L8:
    %r9 = call i32 @inc_a()
    %r10 = icmp ne i32 %r9,0
    br i1 %r10, label %L6, label %L5
L10:
    %r42 = load i32, ptr @a
    call void @putint(i32 %r42)
    %r43 = add i32 0,10
    call void @putch(i32 %r43)
    %r44 = load i32, ptr @b
    %r45 = add i32 0,2
    %r46 = mul i32 %r44,%r45
    store i32 %r46, ptr @b
    br label %L12
L11:
    %r47 = call i32 @inc_a()
    br label %L12
L12:
    %r48 = load i32, ptr %r0
    %r49 = add i32 0,1
    %r50 = sub i32 %r48,%r49
    store i32 %r50, ptr %r0
    br label %L1
L13:
    %r28 = call i32 @inc_a()
    %r29 = icmp ne i32 %r28,0
    br i1 %r29, label %L15, label %L11
L15:
    %r30 = call i32 @inc_a()
    %r31 = call i32 @inc_a()
    %r32 = sub i32 %r30,%r31
    %r33 = add i32 0,1
    %r34 = add i32 %r32,%r33
    %r35 = icmp ne i32 %r34,0
    br i1 %r35, label %L10, label %L11
}
