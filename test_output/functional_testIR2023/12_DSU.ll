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
L7:  ;
    %r36 = phi i32 [%r37,%L3],[1,%L6]
    %r16 = call i32 @getch()
    br label %L2
L8:  ;
    %r40 = phi i32 [%r39,%L4],[%r30,%L9]
    %r38 = phi i32 [0,%L4],[%r29,%L9]
    %r19 = icmp sge i32 %r40,48
    br i1 %r19, label %L11, label %L10
L9:  ;
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
define void @init()
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r11 = phi i32 [1,%L1],[%r10,%L3]
    %r3 = load i32, ptr @n
    %r4 = icmp sle i32 %r11,%r3
    br i1 %r4, label %L3, label %L4
L3:  ;
    %r6 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r11
    store i32 %r11, ptr %r6
    %r10 = add i32 %r11,1
    br label %L2
L4:  ;
    ret void
}
define i32 @find(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r0
    %r4 = load i32, ptr %r3
    %r6 = icmp eq i32 %r4,%r0
    br i1 %r6, label %L2, label %L3
L2:  ;
    ret i32 %r0
L3:  ;
    %r10 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r0
    %r11 = load i32, ptr %r10
    %r12 = call i32 @find(i32 %r11)
    store i32 %r12, ptr %r10
    ret i32 %r12
}
define i32 @same(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r5 = call i32 @find(i32 %r0)
    %r7 = call i32 @find(i32 %r1)
    %r8 = icmp eq i32 %r5,%r7
    br i1 %r8, label %L2, label %L3
L2:  ;
    ret i32 1
L3:  ;
    ret i32 0
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
    %r38 = phi i32 [%r5,%L3],[%r12,%L6]
    %r8 = icmp ne i32 %r38,81
    br i1 %r8, label %L8, label %L7
L6:  ;
    %r12 = call i32 @getch()
    br label %L5
L7:  ;
    %r15 = icmp eq i32 %r38,81
    br i1 %r15, label %L9, label %L10
L8:  ;
    %r11 = icmp ne i32 %r38,85
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
    %r26 = call i32 @find(i32 %r25)
    %r28 = call i32 @quick_read()
    %r29 = call i32 @find(i32 %r28)
    %r31 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r26
    store i32 %r29, ptr %r31
    br label %L11
L11:  ;
    %r33 = load i32, ptr @m
    %r35 = sub i32 %r33,1
    store i32 %r35, ptr @m
    br label %L2
}
