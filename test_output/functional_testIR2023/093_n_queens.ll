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
@ans = global [50x i32] zeroinitializer
@sum = global i32 0
@n = global i32 zeroinitializer
@row = global [50x i32] zeroinitializer
@line1 = global [50x i32] zeroinitializer
@line2 = global [100x i32] zeroinitializer
define void @printans()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = load i32, ptr @sum
    %r2 = add i32 %r0,1
    store i32 %r2, ptr @sum
    br label %L2
L2:  ;
    %r19 = phi i32 [1,%L1],[%r18,%L7]
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r19,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;
    %r9 = getelementptr [50 x i32], ptr @ans, i32 0, i32 %r19
    %r10 = load i32, ptr %r9
    call void @putint(i32 %r10)
    %r12 = load i32, ptr @n
    %r13 = icmp eq i32 %r19,%r12
    br i1 %r13, label %L5, label %L6
L4:  ;
    ret void
L5:  ;
    call void @putch(i32 10)
    ret void
L6:  ;
    call void @putch(i32 32)
    br label %L7
L7:  ;
    %r18 = add i32 %r19,1
    br label %L2
}
define void @f(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r69 = phi i32 [1,%L1],[%r68,%L6]
    %r5 = load i32, ptr @n
    %r6 = icmp sle i32 %r69,%r5
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r8 = getelementptr [50 x i32], ptr @row, i32 0, i32 %r69
    %r9 = load i32, ptr %r8
    %r11 = icmp ne i32 %r9,1
    br i1 %r11, label %L8, label %L6
L4:  ;
    ret void
L5:  ;
    %r28 = getelementptr [50 x i32], ptr @ans, i32 0, i32 %r0
    store i32 %r69, ptr %r28
    %r31 = load i32, ptr @n
    %r32 = icmp eq i32 %r0,%r31
    br i1 %r32, label %L9, label %L10
L6:  ;
    %r68 = add i32 %r69,1
    br label %L2
L7:  ;
    %r19 = load i32, ptr @n
    %r21 = add i32 %r19,%r0
    %r23 = sub i32 %r21,%r69
    %r24 = getelementptr [100 x i32], ptr @line2, i32 0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = icmp eq i32 %r25,0
    br i1 %r26, label %L5, label %L6
L8:  ;
    %r14 = add i32 %r0,%r69
    %r15 = getelementptr [50 x i32], ptr @line1, i32 0, i32 %r14
    %r16 = load i32, ptr %r15
    %r18 = icmp eq i32 %r16,0
    br i1 %r18, label %L7, label %L6
L9:  ;
    call void @printans()
    br label %L10
L10:  ;
    %r34 = getelementptr [50 x i32], ptr @row, i32 0, i32 %r69
    store i32 1, ptr %r34
    %r38 = add i32 %r0,%r69
    %r39 = getelementptr [50 x i32], ptr @line1, i32 0, i32 %r38
    store i32 1, ptr %r39
    %r41 = load i32, ptr @n
    %r43 = add i32 %r41,%r0
    %r45 = sub i32 %r43,%r69
    %r46 = getelementptr [100 x i32], ptr @line2, i32 0, i32 %r45
    store i32 1, ptr %r46
    %r50 = add i32 %r0,1
    call void @f(i32 %r50)
    store i32 0, ptr %r34
    store i32 0, ptr %r39
    store i32 0, ptr %r46
    br label %L6
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = call i32 @getint()
    br label %L2
L2:  ;
    %r11 = phi i32 [%r1,%L1],[%r9,%L3]
    %r4 = icmp sgt i32 %r11,0
    br i1 %r4, label %L3, label %L4
L3:  ;
    %r5 = call i32 @getint()
    store i32 %r5, ptr @n
    call void @f(i32 1)
    %r9 = sub i32 %r11,1
    br label %L2
L4:  ;
    %r10 = load i32, ptr @sum
    ret i32 %r10
}
