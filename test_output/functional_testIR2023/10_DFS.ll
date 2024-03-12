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
@vis = global [1005x i32] zeroinitializer
define i32 @quick_read()
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    %r1 = call i32 @getch()
    br label %L2
L2:  ;  header0
    %r42 = phi i32 [%r1,%L1],[%r16,%L7]
    %r40 = phi i32 [0,%L1],[%r39,%L7]
    %r8 = icmp slt i32 %r42,48
    br i1 %r8, label %L3, label %L5
L3:  ;
    %r14 = icmp eq i32 %r42,45
    br i1 %r14, label %L6, label %L7
L4:  ;  preheader1
    br label %L8
L5:  ;  exiting0
    %r11 = icmp sgt i32 %r42,57
    br i1 %r11, label %L3, label %L4
L6:  ;
    br label %L7
L7:  ;  latch0
    %r39 = phi i32 [%r40,%L3],[1,%L6]
    %r16 = call i32 @getch()
    br label %L2
L8:  ;  exiting1  header1
    %r43 = phi i32 [%r42,%L4],[%r30,%L9]
    %r41 = phi i32 [0,%L4],[%r29,%L9]
    %r19 = icmp sge i32 %r43,48
    br i1 %r19, label %L11, label %L10
L9:  ;  latch1
    %r25 = mul i32 %r41,10
    %r27 = add i32 %r25,%r43
    %r29 = sub i32 %r27,48
    %r30 = call i32 @getch()
    br label %L8
L10:  ;
    %r32 = icmp ne i32 %r40,0
    br i1 %r32, label %L12, label %L13
L11:  ;  exiting1
    %r22 = icmp sle i32 %r43,57
    br i1 %r22, label %L9, label %L10
L12:  ;
    %r34 = sub i32 0,%r41
    br label %L15
L13:  ;
    br label %L15
L15:  ;
    %r38 = phi i32 [%r34,%L12],[%r41,%L13]
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
L1:  ;  preheader0
    br label %L2
L2:  ;  exiting0  header0
    %r12 = phi i32 [0,%L1],[%r11,%L3]
    %r4 = icmp slt i32 %r12,1005
    br i1 %r4, label %L3, label %L4
L3:  ;  latch0
    %r6 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r12
    store i32 -1, ptr %r6
    %r11 = add i32 %r12,1
    br label %L2
L4:  ;
    ret void
}
define void @clear()
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    br label %L2
L2:  ;  exiting0  header0
    %r11 = phi i32 [1,%L1],[%r10,%L3]
    %r3 = load i32, ptr @n
    %r4 = icmp sle i32 %r11,%r3
    br i1 %r4, label %L3, label %L4
L3:  ;  latch0
    %r6 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r11
    store i32 0, ptr %r6
    %r10 = add i32 %r11,1
    br label %L2
L4:  ;
    ret void
}
define i32 @same(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r5 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r0
    store i32 1, ptr %r5
    %r9 = icmp eq i32 %r0,%r1
    br i1 %r9, label %L2, label %L3
L2:  ;
    br label %L10
L3:  ;  preheader0
    %r13 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r0
    %r14 = load i32, ptr %r13
    br label %L4
L4:  ;  exiting0  header0
    %r40 = phi i32 [%r14,%L3],[%r34,%L8]
    %r18 = icmp ne i32 %r40,-1
    br i1 %r18, label %L5, label %L6
L5:  ;
    %r21 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r40
    %r22 = load i32, ptr %r21
    %r24 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r22
    %r25 = load i32, ptr %r24
    %r26 = icmp eq i32 %r25,0
    br i1 %r26, label %L9, label %L8
L6:  ;
    br label %L10
L7:  ;
    br label %L10
L8:  ;  latch0
    %r33 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r40
    %r34 = load i32, ptr %r33
    br label %L4
L9:  ;  exiting0
    %r29 = call i32 @same(i32 %r22,i32 %r1)
    %r30 = icmp ne i32 %r29,0
    br i1 %r30, label %L7, label %L8
L10:  ;
    %r38 = phi i32 [1,%L2],[0,%L6],[1,%L7]
    ret i32 %r38
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;  preheader1
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    %r1 = call i32 @quick_read()
    store i32 %r1, ptr @m
    call void @init()
    br label %L2
L2:  ;  exiting1  header1
    %r2 = load i32, ptr @m
    %r3 = icmp ne i32 %r2,0
    br i1 %r3, label %L3, label %L4
L3:  ;  preheader0
    %r5 = call i32 @getch()
    br label %L5
L4:  ;
    ret i32 0
L5:  ;  exiting0  header0
    %r35 = phi i32 [%r5,%L3],[%r12,%L6]
    %r8 = icmp ne i32 %r35,81
    br i1 %r8, label %L8, label %L7
L6:  ;  latch0
    %r12 = call i32 @getch()
    br label %L5
L7:  ;
    %r15 = icmp eq i32 %r35,81
    br i1 %r15, label %L9, label %L10
L8:  ;  exiting0
    %r11 = icmp ne i32 %r35,85
    br i1 %r11, label %L6, label %L7
L9:  ;
    %r17 = call i32 @quick_read()
    %r19 = call i32 @quick_read()
    call void @clear()
    %r22 = call i32 @same(i32 %r17,i32 %r19)
    call void @putint(i32 %r22)
    call void @putch(i32 10)
    br label %L11
L10:  ;
    %r25 = call i32 @quick_read()
    %r27 = call i32 @quick_read()
    call void @add_edge(i32 %r25,i32 %r27)
    br label %L11
L11:  ;  latch1
    %r30 = load i32, ptr @m
    %r32 = sub i32 %r30,1
    store i32 %r32, ptr @m
    br label %L2
}
