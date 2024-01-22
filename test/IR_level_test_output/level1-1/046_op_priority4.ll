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
@a = global i32 zeroinitializer
@b = global i32 zeroinitializer
@c = global i32 zeroinitializer
@d = global i32 zeroinitializer
@e = global i32 zeroinitializer
define i32 @main()
{
L0:
    %r5 = alloca i32
    %r0 = call i32 @getint()
    store i32 %r0, ptr @a
    %r1 = call i32 @getint()
    store i32 %r1, ptr @b
    %r2 = call i32 @getint()
    store i32 %r2, ptr @c
    %r3 = call i32 @getint()
    store i32 %r3, ptr @d
    %r4 = call i32 @getint()
    store i32 %r4, ptr @e
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = load i32, ptr @a
    %r8 = load i32, ptr @b
    %r9 = load i32, ptr @c
    %r10 = mul i32 %r8,%r9
    %r11 = sub i32 %r7,%r10
    %r12 = load i32, ptr @d
    %r13 = load i32, ptr @a
    %r14 = load i32, ptr @c
    %r15 = sdiv i32 %r13,%r14
    %r16 = sub i32 %r12,%r15
    %r17 = icmp ne i32 %r11,%r16
    br i1 %r17, label %L1, label %L5
L1:
    %r48 = add i32 0,1
    store i32 %r48, ptr %r5
    br label %L2
L2:
    %r49 = load i32, ptr %r5
    ret i32 %r49
L3:
    %r34 = load i32, ptr @a
    %r35 = load i32, ptr @b
    %r36 = add i32 %r34,%r35
    %r37 = load i32, ptr @c
    %r38 = add i32 %r36,%r37
    %r39 = load i32, ptr @d
    %r40 = load i32, ptr @e
    %r41 = add i32 %r39,%r40
    %r42 = icmp eq i32 %r38,%r41
    br i1 %r42, label %L1, label %L2
L5:
    %r20 = load i32, ptr @a
    %r21 = load i32, ptr @b
    %r22 = mul i32 %r20,%r21
    %r23 = load i32, ptr @c
    %r24 = sdiv i32 %r22,%r23
    %r25 = load i32, ptr @e
    %r26 = load i32, ptr @d
    %r27 = add i32 %r25,%r26
    %r28 = icmp eq i32 %r24,%r27
    br i1 %r28, label %L1, label %L3
}
