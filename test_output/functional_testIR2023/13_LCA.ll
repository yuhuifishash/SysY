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
@maxn = global i32 10005
@n = global i32 zeroinitializer
@m = global i32 zeroinitializer
@f = global [10005x [20x i32]] zeroinitializer
@dep = global [10005x i32] zeroinitializer
@to = global [10005x i32] zeroinitializer
@next = global [10005x i32] zeroinitializer
@head = global [10005x i32] zeroinitializer
@cnt = global i32 0
define i32 @quick_read()
{
L0:  ;
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = call i32 @getch()
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L2
L2:  ;
    %r6 = load i32, ptr %r0
    %r7 = add i32 48,0
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L5
L3:  ;
    %r12 = load i32, ptr %r0
    %r13 = add i32 45,0
    %r14 = icmp eq i32 %r12,%r13
    br i1 %r14, label %L6, label %L7
L4:  ;
    br label %L8
L5:  ;
    %r9 = load i32, ptr %r0
    %r10 = add i32 57,0
    %r11 = icmp sgt i32 %r9,%r10
    br i1 %r11, label %L3, label %L4
L6:  ;
    %r15 = add i32 1,0
    store i32 %r15, ptr %r4
    br label %L7
L7:  ;
    %r16 = call i32 @getch()
    store i32 %r16, ptr %r0
    br label %L2
L8:  ;
    %r17 = load i32, ptr %r0
    %r18 = add i32 48,0
    %r19 = icmp sge i32 %r17,%r18
    br i1 %r19, label %L11, label %L10
L9:  ;
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
L10:  ;
    %r31 = load i32, ptr %r4
    %r32 = icmp ne i32 %r31,0
    br i1 %r32, label %L12, label %L13
L11:  ;
    %r20 = load i32, ptr %r0
    %r21 = add i32 57,0
    %r22 = icmp sle i32 %r20,%r21
    br i1 %r22, label %L9, label %L10
L12:  ;
    %r33 = load i32, ptr %r2
    %r34 = sub i32 0,%r33
    ret i32 %r34
L13:  ;
    %r35 = load i32, ptr %r2
    ret i32 %r35
}
define void @add_edge(i32 %r0,i32 %r1)
{
L0:  ;
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
    %r4 = load i32, ptr @cnt
    %r5 = getelementptr [10005 x i32], ptr @to, i32 0, i32 %r4
<<<<<<< HEAD
    %r6 = load i32, ptr %r3
    store i32 %r6, ptr %r5
    %r7 = load i32, ptr @cnt
    %r8 = getelementptr [10005 x i32], ptr @next, i32 0, i32 %r7
    %r9 = load i32, ptr %r2
    %r10 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r9
    %r11 = load i32, ptr %r10
    store i32 %r11, ptr %r8
    %r12 = load i32, ptr %r2
    %r13 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r12
    %r14 = load i32, ptr @cnt
    store i32 %r14, ptr %r13
    %r15 = load i32, ptr @cnt
    %r16 = add i32 1,0
    %r17 = add i32 %r15,%r16
=======
    store i32 %r1, ptr %r5
    %r8 = getelementptr [10005 x i32], ptr @next, i32 0, i32 %r4
    %r10 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r0
    %r11 = load i32, ptr %r10
    store i32 %r11, ptr %r8
    store i32 %r4, ptr %r10
    %r17 = add i32 %r4,1
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    store i32 %r17, ptr @cnt
    %r18 = load i32, ptr %r3
    %r19 = add i32 0,0
    %r20 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r18, i32 %r19
    %r21 = load i32, ptr %r2
    store i32 %r21, ptr %r20
    ret void
}
define void @init()
{
L0:  ;
    %r3 = alloca i32
    br label %L1
L1:  ;
    %r0 = add i32 0,0
    %r1 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r0
    %r2 = add i32 1061109567,0
    store i32 %r2, ptr %r1
    %r4 = add i32 1,0
    store i32 %r4, ptr %r3
    br label %L2
L2:  ;
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;
    %r8 = load i32, ptr %r3
    %r9 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r8
    %r10 = add i32 1,0
    %r11 = sub i32 0,%r10
    store i32 %r11, ptr %r9
    %r12 = load i32, ptr %r3
    %r13 = add i32 1,0
    %r14 = add i32 %r12,%r13
    store i32 %r14, ptr %r3
    br label %L2
L4:  ;
    ret void
}
define void @tree(i32 %r0,i32 %r1)
{
L0:  ;
    %r36 = alloca i32
    %r7 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
    %r4 = load i32, ptr %r2
    %r5 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r4
    %r6 = load i32, ptr %r3
    store i32 %r6, ptr %r5
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    br label %L2
L2:  ;
<<<<<<< HEAD
    %r9 = load i32, ptr %r2
    %r10 = load i32, ptr %r7
    %r11 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r9, i32 %r10
=======
    %r47 = phi i32 [0,%L1],[%r17,%L3]
    %r11 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r0, i32 %r47
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r12 = load i32, ptr %r11
    %r13 = icmp ne i32 %r12,0
    br i1 %r13, label %L3, label %L4
L3:  ;
<<<<<<< HEAD
    %r14 = load i32, ptr %r2
    %r15 = load i32, ptr %r7
    %r16 = add i32 1,0
    %r17 = add i32 %r15,%r16
    %r18 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r14, i32 %r17
    %r19 = load i32, ptr %r2
    %r20 = load i32, ptr %r7
    %r21 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r19, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = load i32, ptr %r7
    %r24 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r22, i32 %r23
    %r25 = load i32, ptr %r24
    store i32 %r25, ptr %r18
    %r26 = load i32, ptr %r7
    %r27 = add i32 1,0
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r7
=======
    %r17 = add i32 %r47,1
    %r18 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r0, i32 %r17
    %r22 = load i32, ptr %r11
    %r24 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r22, i32 %r47
    %r25 = load i32, ptr %r24
    store i32 %r25, ptr %r18
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br label %L2
L4:  ;
    %r29 = load i32, ptr %r2
    %r30 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    store i32 %r31, ptr %r7
    br label %L5
L5:  ;
    %r32 = load i32, ptr %r7
    %r33 = add i32 1,0
    %r34 = sub i32 0,%r33
    %r35 = icmp ne i32 %r32,%r34
    br i1 %r35, label %L6, label %L7
L6:  ;
    %r37 = load i32, ptr %r7
    %r38 = getelementptr [10005 x i32], ptr @to, i32 0, i32 %r37
    %r39 = load i32, ptr %r38
    store i32 %r39, ptr %r36
    %r40 = load i32, ptr %r36
    %r41 = load i32, ptr %r3
    %r42 = add i32 1,0
    %r43 = add i32 %r41,%r42
    call void @tree(i32 %r40,i32 %r43)
    %r44 = load i32, ptr %r7
    %r45 = getelementptr [10005 x i32], ptr @next, i32 0, i32 %r44
    %r46 = load i32, ptr %r45
    store i32 %r46, ptr %r7
    br label %L5
L7:  ;
    ret void
}
define i32 @LCA(i32 %r0,i32 %r1)
{
L0:  ;
    %r15 = alloca i32
    %r11 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
    %r4 = load i32, ptr %r2
    %r5 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r4
    %r6 = load i32, ptr %r5
    %r7 = load i32, ptr %r3
    %r8 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r7
    %r9 = load i32, ptr %r8
    %r10 = icmp slt i32 %r6,%r9
    br i1 %r10, label %L2, label %L3
L2:  ;
    %r12 = load i32, ptr %r2
    store i32 %r12, ptr %r11
    %r13 = load i32, ptr %r3
    store i32 %r13, ptr %r2
    %r14 = load i32, ptr %r11
    store i32 %r14, ptr %r3
    br label %L3
L3:  ;
    %r16 = add i32 19,0
    store i32 %r16, ptr %r15
    br label %L4
L4:  ;
    %r17 = load i32, ptr %r2
    %r18 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = load i32, ptr %r3
    %r21 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = icmp sgt i32 %r19,%r22
    br i1 %r23, label %L5, label %L6
L5:  ;
    %r24 = load i32, ptr %r2
    %r25 = load i32, ptr %r15
    %r26 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r24, i32 %r25
    %r27 = load i32, ptr %r26
    %r28 = icmp ne i32 %r27,0
    br i1 %r28, label %L9, label %L8
L6:  ;
    %r46 = load i32, ptr %r2
    %r47 = load i32, ptr %r3
    %r48 = icmp eq i32 %r46,%r47
    br i1 %r48, label %L10, label %L11
L7:  ;
<<<<<<< HEAD
    %r39 = load i32, ptr %r2
    %r40 = load i32, ptr %r15
    %r41 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r39, i32 %r40
    %r42 = load i32, ptr %r41
    store i32 %r42, ptr %r2
=======
    %r42 = load i32, ptr %r26
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br label %L8
L8:  ;
    %r43 = load i32, ptr %r15
    %r44 = add i32 1,0
    %r45 = sub i32 %r43,%r44
    store i32 %r45, ptr %r15
    br label %L4
L9:  ;
<<<<<<< HEAD
    %r29 = load i32, ptr %r2
    %r30 = load i32, ptr %r15
    %r31 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r29, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = load i32, ptr %r3
    %r36 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r35
    %r37 = load i32, ptr %r36
=======
    %r32 = load i32, ptr %r26
    %r33 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    %r37 = load i32, ptr %r21
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r38 = icmp sge i32 %r34,%r37
    br i1 %r38, label %L7, label %L8
L10:  ;
    %r49 = load i32, ptr %r2
    ret i32 %r49
L11:  ;
    %r50 = add i32 19,0
    store i32 %r50, ptr %r15
    br label %L12
L12:  ;
    %r51 = load i32, ptr %r15
    %r52 = add i32 0,0
    %r53 = icmp sge i32 %r51,%r52
    br i1 %r53, label %L13, label %L14
L13:  ;
    %r54 = load i32, ptr %r2
    %r55 = load i32, ptr %r15
    %r56 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r54, i32 %r55
    %r57 = load i32, ptr %r56
    %r58 = load i32, ptr %r3
    %r59 = load i32, ptr %r15
    %r60 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r58, i32 %r59
    %r61 = load i32, ptr %r60
    %r62 = icmp ne i32 %r57,%r61
    br i1 %r62, label %L15, label %L16
L14:  ;
    %r74 = load i32, ptr %r2
    %r75 = add i32 0,0
    %r76 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r74, i32 %r75
    %r77 = load i32, ptr %r76
    ret i32 %r77
L15:  ;
<<<<<<< HEAD
    %r63 = load i32, ptr %r2
    %r64 = load i32, ptr %r15
    %r65 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r63, i32 %r64
    %r66 = load i32, ptr %r65
    store i32 %r66, ptr %r2
    %r67 = load i32, ptr %r3
    %r68 = load i32, ptr %r15
    %r69 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r67, i32 %r68
    %r70 = load i32, ptr %r69
    store i32 %r70, ptr %r3
=======
    %r66 = load i32, ptr %r56
    %r70 = load i32, ptr %r60
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br label %L16
L16:  ;
    %r71 = load i32, ptr %r15
    %r72 = add i32 1,0
    %r73 = sub i32 %r71,%r72
    store i32 %r73, ptr %r15
    br label %L12
}
define i32 @main()
{
L0:  ;
    %r22 = alloca i32
    %r20 = alloca i32
    %r9 = alloca i32
    %r7 = alloca i32
    %r2 = alloca i32
    br label %L1
L1:  ;
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    %r1 = call i32 @quick_read()
    store i32 %r1, ptr @m
    call void @init()
    %r3 = add i32 1,0
    store i32 %r3, ptr %r2
    br label %L2
L2:  ;
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr @n
    %r6 = icmp ne i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r8 = call i32 @quick_read()
    store i32 %r8, ptr %r7
    %r10 = call i32 @quick_read()
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r7
    %r12 = load i32, ptr %r9
    call void @add_edge(i32 %r11,i32 %r12)
    %r13 = load i32, ptr %r2
    %r14 = add i32 1,0
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr %r2
    br label %L2
L4:  ;
    %r16 = add i32 1,0
    %r17 = add i32 1,0
    call void @tree(i32 %r16,i32 %r17)
    br label %L5
L5:  ;
    %r18 = load i32, ptr @m
    %r19 = icmp ne i32 %r18,0
    br i1 %r19, label %L6, label %L7
L6:  ;
    %r21 = call i32 @quick_read()
    store i32 %r21, ptr %r20
    %r23 = call i32 @quick_read()
    store i32 %r23, ptr %r22
    %r24 = load i32, ptr %r20
    %r25 = load i32, ptr %r22
    %r26 = call i32 @LCA(i32 %r24,i32 %r25)
    call void @putint(i32 %r26)
    %r27 = add i32 10,0
    call void @putch(i32 %r27)
    %r28 = load i32, ptr @m
    %r29 = add i32 1,0
    %r30 = sub i32 %r28,%r29
    store i32 %r30, ptr @m
    br label %L5
L7:  ;
    %r31 = add i32 0,0
    ret i32 %r31
}
