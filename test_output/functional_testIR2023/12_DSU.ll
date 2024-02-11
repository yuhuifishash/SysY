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
@n = global i32 zeroinitializer
@m = global i32 zeroinitializer
@fa = global [100005x i32] zeroinitializer
define i32 @quick_read()
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getch()
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L2
L2:
    %r6 = load i32, ptr %r0
    %r7 = add i32 48,0
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L5
L3:
    %r12 = load i32, ptr %r0
    %r13 = add i32 45,0
    %r14 = icmp eq i32 %r12,%r13
    br i1 %r14, label %L6, label %L7
L4:
    br label %L8
L5:
    %r9 = load i32, ptr %r0
    %r10 = add i32 57,0
    %r11 = icmp sgt i32 %r9,%r10
    br i1 %r11, label %L3, label %L4
L6:
    %r15 = add i32 1,0
    store i32 %r15, ptr %r4
    br label %L7
L7:
    %r16 = call i32 @getch()
    store i32 %r16, ptr %r0
    br label %L2
L8:
    %r17 = load i32, ptr %r0
    %r18 = add i32 48,0
    %r19 = icmp sge i32 %r17,%r18
    br i1 %r19, label %L11, label %L10
L9:
    %r23 = load i32, ptr %r2
    %r24 = add i32 10,0
    %r25 = mul i32 %r23,%r24
    %r26 = load i32, ptr %r0
    %r27 = add i32 %r25,%r26
    %r28 = add i32 48,0
    %r29 = sub i32 %r27,%r28
    store i32 %r29, ptr %r2
    %r30 = call i32 @getch()
    store i32 %r30, ptr %r0
    br label %L8
L10:
    %r31 = load i32, ptr %r4
    %r32 = icmp ne i32 %r31,0
    br i1 %r32, label %L12, label %L13
L11:
    %r20 = load i32, ptr %r0
    %r21 = add i32 57,0
    %r22 = icmp sle i32 %r20,%r21
    br i1 %r22, label %L9, label %L10
L12:
    %r33 = load i32, ptr %r2
    %r34 = sub i32 0,%r33
    ret i32 %r34
L13:
    %r35 = load i32, ptr %r2
    ret i32 %r35
}
define void @init()
{
L0:
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 1,0
    store i32 %r1, ptr %r0
    br label %L2
L2:
    %r2 = load i32, ptr %r0
    %r3 = load i32, ptr @n
    %r4 = icmp sle i32 %r2,%r3
    br i1 %r4, label %L3, label %L4
L3:
    %r5 = load i32, ptr %r0
    %r6 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r5
    %r7 = load i32, ptr %r0
    store i32 %r7, ptr %r6
    %r8 = load i32, ptr %r0
    %r9 = add i32 1,0
    %r10 = add i32 %r8,%r9
    store i32 %r10, ptr %r0
    br label %L2
L4:
    ret void
}
define i32 @find(i32 %r0)
{
L0:
    %r8 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r2
    %r4 = load i32, ptr %r3
    %r5 = load i32, ptr %r1
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r7 = load i32, ptr %r1
    ret i32 %r7
L3:
    %r9 = load i32, ptr %r1
    %r10 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = call i32 @find(i32 %r11)
    store i32 %r12, ptr %r8
    %r13 = load i32, ptr %r1
    %r14 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r13
    %r15 = load i32, ptr %r8
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r8
    ret i32 %r16
}
define i32 @same(i32 %r0,i32 %r1)
{
L0:
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = call i32 @find(i32 %r4)
    %r6 = load i32, ptr %r3
    %r7 = call i32 @find(i32 %r6)
    %r8 = icmp eq i32 %r5,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r9 = add i32 1,0
    ret i32 %r9
L3:
    %r10 = add i32 0,0
    ret i32 %r10
}
define i32 @main()
{
L0:
    %r27 = alloca i32
    %r24 = alloca i32
    %r18 = alloca i32
    %r16 = alloca i32
    %r4 = alloca i32
    br label %L1
L1:
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    %r1 = call i32 @quick_read()
    store i32 %r1, ptr @m
    call void @init()
    br label %L2
L2:
    %r2 = load i32, ptr @m
    %r3 = icmp ne i32 %r2,0
    br i1 %r3, label %L3, label %L4
L3:
    %r5 = call i32 @getch()
    store i32 %r5, ptr %r4
    br label %L5
L4:
    %r36 = add i32 0,0
    ret i32 %r36
L5:
    %r6 = load i32, ptr %r4
    %r7 = add i32 81,0
    %r8 = icmp ne i32 %r6,%r7
    br i1 %r8, label %L8, label %L7
L6:
    %r12 = call i32 @getch()
    store i32 %r12, ptr %r4
    br label %L5
L7:
    %r13 = load i32, ptr %r4
    %r14 = add i32 81,0
    %r15 = icmp eq i32 %r13,%r14
    br i1 %r15, label %L9, label %L10
L8:
    %r9 = load i32, ptr %r4
    %r10 = add i32 85,0
    %r11 = icmp ne i32 %r9,%r10
    br i1 %r11, label %L6, label %L7
L9:
    %r17 = call i32 @quick_read()
    store i32 %r17, ptr %r16
    %r19 = call i32 @quick_read()
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr %r16
    %r21 = load i32, ptr %r18
    %r22 = call i32 @same(i32 %r20,i32 %r21)
    call void @putint(i32 %r22)
    %r23 = add i32 10,0
    call void @putch(i32 %r23)
    br label %L11
L10:
    %r25 = call i32 @quick_read()
    %r26 = call i32 @find(i32 %r25)
    store i32 %r26, ptr %r24
    %r28 = call i32 @quick_read()
    %r29 = call i32 @find(i32 %r28)
    store i32 %r29, ptr %r27
    %r30 = load i32, ptr %r24
    %r31 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r30
    %r32 = load i32, ptr %r27
    store i32 %r32, ptr %r31
    br label %L11
L11:
    %r33 = load i32, ptr @m
    %r34 = add i32 1,0
    %r35 = sub i32 %r33,%r34
    store i32 %r35, ptr @m
    br label %L2
}
