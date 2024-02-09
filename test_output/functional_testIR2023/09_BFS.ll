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
@maxn = global i32 1005
@maxm = global i32 5005
@to = global [5005x i32] zeroinitializer
@next = global [5005x i32] zeroinitializer
@head = global [1005x i32] zeroinitializer
@cnt = global i32 0
@que = global [1005x i32] zeroinitializer
@h = global i32 zeroinitializer
@tail = global i32 zeroinitializer
@inq = global [1005x i32] zeroinitializer
define void @inqueue(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r2
    %r4 = add i32 1,0
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr @tail
    %r6 = add i32 1,0
    %r7 = add i32 %r5,%r6
    store i32 %r7, ptr @tail
    %r8 = load i32, ptr @tail
    %r9 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r8
    %r10 = load i32, ptr %r1
    store i32 %r10, ptr %r9
    ret void
}
define void @init()
{
L0:
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    br label %L2
L2:
    %r2 = load i32, ptr %r0
    %r3 = load i32, ptr @maxn
    %r4 = icmp slt i32 %r2,%r3
    br i1 %r4, label %L3, label %L4
L3:
    %r5 = load i32, ptr %r0
    %r6 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r5
    %r7 = add i32 1,0
    %r8 = sub i32 0,%r7
    store i32 %r8, ptr %r6
    %r9 = load i32, ptr %r0
    %r10 = add i32 1,0
    %r11 = add i32 %r9,%r10
    store i32 %r11, ptr %r0
    br label %L2
L4:
    ret void
}
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
    br label %L14
L13:
    %r35 = load i32, ptr %r2
    ret i32 %r35
    br label %L14
L14:
    ret i32 0
}
define void @add_edge(i32 %r0,i32 %r1)
{
L0:
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr @cnt
    %r5 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r4
    %r6 = load i32, ptr %r3
    store i32 %r6, ptr %r5
    %r7 = load i32, ptr @cnt
    %r8 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r7
    %r9 = load i32, ptr %r2
    %r10 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r9
    %r11 = load i32, ptr %r10
    store i32 %r11, ptr %r8
    %r12 = load i32, ptr %r2
    %r13 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r12
    %r14 = load i32, ptr @cnt
    store i32 %r14, ptr %r13
    %r15 = load i32, ptr @cnt
    %r16 = add i32 1,0
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr @cnt
    %r18 = load i32, ptr @cnt
    %r19 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r18
    %r20 = load i32, ptr %r2
    store i32 %r20, ptr %r19
    %r21 = load i32, ptr @cnt
    %r22 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r21
    %r23 = load i32, ptr %r3
    %r24 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r23
    %r25 = load i32, ptr %r24
    store i32 %r25, ptr %r22
    %r26 = load i32, ptr %r3
    %r27 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r26
    %r28 = load i32, ptr @cnt
    store i32 %r28, ptr %r27
    %r29 = load i32, ptr @cnt
    %r30 = add i32 1,0
    %r31 = add i32 %r29,%r30
    store i32 %r31, ptr @cnt
    ret void
}
define i32 @pop_queue()
{
L0:
    %r3 = alloca i32
    br label %L1
L1:
    %r0 = load i32, ptr @h
    %r1 = add i32 1,0
    %r2 = add i32 %r0,%r1
    store i32 %r2, ptr @h
    %r4 = load i32, ptr @h
    %r5 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r4
    %r6 = load i32, ptr %r5
    store i32 %r6, ptr %r3
    %r7 = load i32, ptr @h
    %r8 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r7
    %r9 = load i32, ptr %r8
    ret i32 %r9
}
define i32 @same(i32 %r0,i32 %r1)
{
L0:
    %r38 = alloca i32
    %r18 = alloca i32
    %r12 = alloca i32
    %r7 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = add i32 0,0
    store i32 %r4, ptr @h
    %r5 = add i32 0,0
    store i32 %r5, ptr @tail
    %r6 = load i32, ptr %r2
    call void @inqueue(i32 %r6)
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    br label %L2
L2:
    %r9 = load i32, ptr @h
    %r10 = load i32, ptr @tail
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L3, label %L4
L3:
    %r13 = call i32 @pop_queue()
    store i32 %r13, ptr %r12
    %r14 = load i32, ptr %r12
    %r15 = load i32, ptr %r3
    %r16 = icmp eq i32 %r14,%r15
    br i1 %r16, label %L5, label %L6
L4:
    %r39 = add i32 0,0
    store i32 %r39, ptr %r38
    br label %L12
L5:
    %r17 = add i32 1,0
    store i32 %r17, ptr %r7
    br label %L6
L6:
    %r19 = load i32, ptr %r12
    %r20 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    store i32 %r21, ptr %r18
    br label %L7
L7:
    %r22 = load i32, ptr %r18
    %r23 = add i32 1,0
    %r24 = sub i32 0,%r23
    %r25 = icmp ne i32 %r22,%r24
    br i1 %r25, label %L8, label %L9
L8:
    %r26 = load i32, ptr %r18
    %r27 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = icmp eq i32 %r30,0
    br i1 %r31, label %L10, label %L11
L9:
    br label %L2
L10:
    %r32 = load i32, ptr %r18
    %r33 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    call void @inqueue(i32 %r34)
    br label %L11
L11:
    %r35 = load i32, ptr %r18
    %r36 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r35
    %r37 = load i32, ptr %r36
    store i32 %r37, ptr %r18
    br label %L7
L12:
    %r40 = load i32, ptr %r38
    %r41 = load i32, ptr @tail
    %r42 = icmp sle i32 %r40,%r41
    br i1 %r42, label %L13, label %L14
L13:
    %r43 = load i32, ptr %r38
    %r44 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    %r46 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r45
    %r47 = add i32 0,0
    store i32 %r47, ptr %r46
    %r48 = load i32, ptr %r38
    %r49 = add i32 1,0
    %r50 = add i32 %r48,%r49
    store i32 %r50, ptr %r38
    br label %L12
L14:
    %r51 = load i32, ptr %r7
    ret i32 %r51
}
define i32 @main()
{
L0:
    %r26 = alloca i32
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
    %r33 = add i32 0,0
    ret i32 %r33
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
    store i32 %r25, ptr %r24
    %r27 = call i32 @quick_read()
    store i32 %r27, ptr %r26
    %r28 = load i32, ptr %r24
    %r29 = load i32, ptr %r26
    call void @add_edge(i32 %r28,i32 %r29)
    br label %L11
L11:
    %r30 = load i32, ptr @m
    %r31 = add i32 1,0
    %r32 = sub i32 %r30,%r31
    store i32 %r32, ptr @m
    br label %L2
}
