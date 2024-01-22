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
@n = global i32 zeroinitializer
@m = global i32 zeroinitializer
@fa = global [100005x i32] zeroinitializer
define i32 @quick_read()
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = call i32 @getch()
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L1
L1:
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,48
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L2, label %L4
L2:
    %r19 = load i32, ptr %r0
    %r20 = add i32 0,45
    %r21 = icmp eq i32 %r19,%r20
    br i1 %r21, label %L6, label %L7
L3:
    br label %L8
L4:
    %r11 = load i32, ptr %r0
    %r12 = add i32 0,57
    %r13 = icmp sgt i32 %r11,%r12
    br i1 %r13, label %L2, label %L3
L6:
    %r24 = add i32 0,1
    store i32 %r24, ptr %r4
    br label %L7
L7:
    %r25 = call i32 @getch()
    store i32 %r25, ptr %r0
    br label %L1
L8:
    %r26 = load i32, ptr %r0
    %r27 = add i32 0,48
    %r28 = icmp sge i32 %r26,%r27
    br i1 %r28, label %L11, label %L10
L9:
    %r39 = load i32, ptr %r2
    %r40 = add i32 0,10
    %r41 = mul i32 %r39,%r40
    %r42 = load i32, ptr %r0
    %r43 = add i32 %r41,%r42
    %r44 = add i32 0,48
    %r45 = sub i32 %r43,%r44
    store i32 %r45, ptr %r2
    %r46 = call i32 @getch()
    store i32 %r46, ptr %r0
    br label %L8
L10:
    %r47 = load i32, ptr %r4
    %r48 = icmp ne i32 %r47,0
    br i1 %r48, label %L13, label %L14
L11:
    %r31 = load i32, ptr %r0
    %r32 = add i32 0,57
    %r33 = icmp sle i32 %r31,%r32
    br i1 %r33, label %L9, label %L10
L13:
    %r49 = load i32, ptr %r2
    %r50 = sub i32 0,%r49
    ret i32 %r50
L14:
    %r51 = load i32, ptr %r2
    ret i32 %r51
}
define void @init()
{
L0:
    %r0 = alloca i32
    %r1 = add i32 0,1
    store i32 %r1, ptr %r0
    br label %L1
L1:
    %r2 = load i32, ptr %r0
    %r3 = load i32, ptr @n
    %r4 = icmp sle i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r7 = load i32, ptr %r0
    %r8 = load i32, ptr %r0
    %r9 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r8
    store i32 %r7, ptr %r9
    %r10 = load i32, ptr %r0
    %r11 = add i32 0,1
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r0
    br label %L1
L3:
    ret void
}
define i32 @find(i32 %r0)
{
L0:
    %r10 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r2
    %r4 = load i32, ptr %r3
    %r5 = load i32, ptr %r1
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L1, label %L2
L1:
    %r9 = load i32, ptr %r1
    ret i32 %r9
L2:
    %r11 = load i32, ptr %r1
    %r12 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = call i32 @find(i32 %r13)
    store i32 %r14, ptr %r10
    %r15 = load i32, ptr %r10
    %r16 = load i32, ptr %r1
    %r17 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r16
    store i32 %r15, ptr %r17
    %r18 = load i32, ptr %r10
    ret i32 %r18
}
define i32 @same(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r2
    %r5 = call i32 @find(i32 %r4)
    %r6 = load i32, ptr %r3
    %r7 = call i32 @find(i32 %r6)
    %r8 = icmp eq i32 %r5,%r7
    br i1 %r8, label %L1, label %L2
L1:
    %r11 = add i32 0,1
    ret i32 %r11
L2:
    %r12 = add i32 0,0
    ret i32 %r12
}
define i32 @main()
{
L0:
    %r36 = alloca i32
    %r33 = alloca i32
    %r27 = alloca i32
    %r25 = alloca i32
    %r4 = alloca i32
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    %r1 = call i32 @quick_read()
    store i32 %r1, ptr @m
    call void @init()
    br label %L1
L1:
    %r2 = load i32, ptr @m
    %r3 = icmp ne i32 %r2,0
    br i1 %r3, label %L2, label %L3
L2:
    %r5 = call i32 @getch()
    store i32 %r5, ptr %r4
    br label %L4
L3:
    %r45 = add i32 0,0
    ret i32 %r45
L4:
    %r6 = load i32, ptr %r4
    %r7 = add i32 0,81
    %r8 = icmp ne i32 %r6,%r7
    br i1 %r8, label %L7, label %L6
L5:
    %r19 = call i32 @getch()
    store i32 %r19, ptr %r4
    br label %L4
L6:
    %r20 = load i32, ptr %r4
    %r21 = add i32 0,81
    %r22 = icmp eq i32 %r20,%r21
    br i1 %r22, label %L9, label %L10
L7:
    %r11 = load i32, ptr %r4
    %r12 = add i32 0,85
    %r13 = icmp ne i32 %r11,%r12
    br i1 %r13, label %L5, label %L6
L9:
    %r26 = call i32 @quick_read()
    store i32 %r26, ptr %r25
    %r28 = call i32 @quick_read()
    store i32 %r28, ptr %r27
    %r29 = load i32, ptr %r25
    %r30 = load i32, ptr %r27
    %r31 = call i32 @same(i32 %r29,i32 %r30)
    call void @putint(i32 %r31)
    %r32 = add i32 0,10
    call void @putch(i32 %r32)
    br label %L11
L10:
    %r34 = call i32 @quick_read()
    %r35 = call i32 @find(i32 %r34)
    store i32 %r35, ptr %r33
    %r37 = call i32 @quick_read()
    %r38 = call i32 @find(i32 %r37)
    store i32 %r38, ptr %r36
    %r39 = load i32, ptr %r36
    %r40 = load i32, ptr %r33
    %r41 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r40
    store i32 %r39, ptr %r41
    br label %L11
L11:
    %r42 = load i32, ptr @m
    %r43 = add i32 0,1
    %r44 = sub i32 %r42,%r43
    store i32 %r44, ptr @m
    br label %L1
}
