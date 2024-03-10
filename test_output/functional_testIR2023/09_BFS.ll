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
define i32 @quick_read()
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = call i32 @getch()
    br label %L2
L2:  ;
    %r39 = phi i32 [%r1,%L1],[%r16,%L7]
    %r37 = phi i32 [0,%L1],[%r36,%L7]
    %r8 = icmp slt i32 %r39,48
    br i1 %r8, label %L3, label %L5
L3:  ;
    %r14 = icmp eq i32 %r39,45
    br i1 %r14, label %L6, label %L7
L4:  ;
    br label %L8
L5:  ;
    %r11 = icmp sgt i32 %r39,57
    br i1 %r11, label %L3, label %L4
L6:  ;
    br label %L7
L7:  ;latch
    %r36 = phi i32 [%r37,%L3],[1,%L6]
    %r16 = call i32 @getch()
    br label %L2
L8:  ;
    %r40 = phi i32 [%r39,%L4],[%r30,%L9]
    %r38 = phi i32 [0,%L4],[%r29,%L9]
    %r19 = icmp sge i32 %r40,48
    br i1 %r19, label %L11, label %L10
L9:  ;latch
    %r25 = mul i32 %r38,10
    %r27 = add i32 %r25,%r40
    %r29 = sub i32 %r27,48
    %r30 = call i32 @getch()
    br label %L8
L10:  ;
    %r32 = icmp ne i32 %r37,0
    br i1 %r32, label %L12, label %L13
L11:  ;
    %r22 = icmp sle i32 %r40,57
    br i1 %r22, label %L9, label %L10
L12:  ;
    %r34 = sub i32 0,%r38
    ret i32 %r34
L13:  ;
    ret i32 %r38
}
define void @add_edge(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = load i32, ptr @cnt
    %r5 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r4
    store i32 %r1, ptr %r5
    %r8 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r4
    %r10 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r0
    %r11 = load i32, ptr %r10
    store i32 %r11, ptr %r8
    store i32 %r4, ptr %r10
    %r17 = add i32 %r4,1
    store i32 %r17, ptr @cnt
    %r18 = load i32, ptr @cnt
    %r19 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r18
    store i32 %r0, ptr %r19
    %r22 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r18
    %r24 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r1
    %r25 = load i32, ptr %r24
    store i32 %r25, ptr %r22
    store i32 %r18, ptr %r24
    %r31 = add i32 %r18,1
    store i32 %r31, ptr @cnt
    ret void
}
define void @init()
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r12 = phi i32 [0,%L1],[%r11,%L3]
    %r4 = icmp slt i32 %r12,1005
    br i1 %r4, label %L3, label %L4
L3:  ;latch
    %r6 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r12
    store i32 -1, ptr %r6
    %r11 = add i32 %r12,1
    br label %L2
L4:  ;
    ret void
}
define void @inqueue(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r0
    store i32 1, ptr %r3
    %r5 = load i32, ptr @tail
    %r7 = add i32 %r5,1
    store i32 %r7, ptr @tail
    %r8 = load i32, ptr @tail
    %r9 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r8
    store i32 %r0, ptr %r9
    ret void
}
define i32 @pop_queue()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = load i32, ptr @h
    %r2 = add i32 %r0,1
    store i32 %r2, ptr @h
    %r7 = load i32, ptr @h
    %r8 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r7
    %r9 = load i32, ptr %r8
    ret i32 %r9
}
define i32 @same(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    store i32 0, ptr @h
    store i32 0, ptr @tail
    call void @inqueue(i32 %r0)
    br label %L2
L2:  ;
    %r56 = phi i32 [0,%L1],[%r55,%L9]
    %r9 = load i32, ptr @h
    %r10 = load i32, ptr @tail
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L3, label %L4
L3:  ;
    %r13 = call i32 @pop_queue()
    %r16 = icmp eq i32 %r13,%r1
    br i1 %r16, label %L5, label %L6
L4:  ;
    br label %L12
L5:  ;
    br label %L6
L6:  ;
    %r55 = phi i32 [%r56,%L3],[1,%L5]
    %r20 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r13
    %r21 = load i32, ptr %r20
    br label %L7
L7:  ;
    %r54 = phi i32 [%r21,%L6],[%r37,%L11]
    %r25 = icmp ne i32 %r54,-1
    br i1 %r25, label %L8, label %L9
L8:  ;
    %r27 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r54
    %r28 = load i32, ptr %r27
    %r29 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = icmp eq i32 %r30,0
    br i1 %r31, label %L10, label %L11
L9:  ;latch
    br label %L2
L10:  ;
    %r34 = load i32, ptr %r27
    call void @inqueue(i32 %r34)
    br label %L11
L11:  ;latch
    %r36 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r54
    %r37 = load i32, ptr %r36
    br label %L7
L12:  ;
    %r52 = phi i32 [0,%L4],[%r50,%L13]
    %r41 = load i32, ptr @tail
    %r42 = icmp sle i32 %r52,%r41
    br i1 %r42, label %L13, label %L14
L13:  ;latch
    %r44 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r52
    %r45 = load i32, ptr %r44
    %r46 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r45
    store i32 0, ptr %r46
    %r50 = add i32 %r52,1
    br label %L12
L14:  ;
    ret i32 %r56
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    %r1 = call i32 @quick_read()
    store i32 %r1, ptr @m
    call void @init()
    br label %L2
L2:  ;
    %r2 = load i32, ptr @m
    %r3 = icmp ne i32 %r2,0
    br i1 %r3, label %L3, label %L4
L3:  ;
    %r5 = call i32 @getch()
    br label %L5
L4:  ;
    ret i32 0
L5:  ;
    %r35 = phi i32 [%r5,%L3],[%r12,%L6]
    %r8 = icmp ne i32 %r35,81
    br i1 %r8, label %L8, label %L7
L6:  ;latch
    %r12 = call i32 @getch()
    br label %L5
L7:  ;
    %r15 = icmp eq i32 %r35,81
    br i1 %r15, label %L9, label %L10
L8:  ;
    %r11 = icmp ne i32 %r35,85
    br i1 %r11, label %L6, label %L7
L9:  ;
    %r17 = call i32 @quick_read()
    %r19 = call i32 @quick_read()
    %r22 = call i32 @same(i32 %r17,i32 %r19)
    call void @putint(i32 %r22)
    call void @putch(i32 10)
    br label %L11
L10:  ;
    %r25 = call i32 @quick_read()
    %r27 = call i32 @quick_read()
    call void @add_edge(i32 %r25,i32 %r27)
    br label %L11
L11:  ;latch
    %r30 = load i32, ptr @m
    %r32 = sub i32 %r30,1
    store i32 %r32, ptr @m
    br label %L2
}
