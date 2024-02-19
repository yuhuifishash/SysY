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
define void @add_edge(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = load i32, ptr @cnt
    %r5 = getelementptr [10005 x i32], ptr @to, i32 0, i32 %r4
    store i32 %r1, ptr %r5
    %r8 = getelementptr [10005 x i32], ptr @next, i32 0, i32 %r4
    %r10 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r0
    %r11 = load i32, ptr %r10
    store i32 %r11, ptr %r8
    store i32 %r4, ptr %r10
    %r17 = add i32 %r4,1
    store i32 %r17, ptr @cnt
    %r20 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r1, i32 0
    store i32 %r0, ptr %r20
    ret void
}
define void @init()
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 0
    store i32 1061109567, ptr %r1
    br label %L2
L2:  ;
    %r15 = phi i32 [1,%L1],[%r14,%L3]
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r15,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;
    %r9 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r15
    store i32 -1, ptr %r9
    %r14 = add i32 %r15,1
    br label %L2
L4:  ;
    ret void
}
define void @tree(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r5 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r0
    store i32 %r1, ptr %r5
    br label %L2
L2:  ;
    %r47 = phi i32 [0,%L1],[%r17,%L3]
    %r11 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r0, i32 %r47
    %r12 = load i32, ptr %r11
    %r13 = icmp ne i32 %r12,0
    br i1 %r13, label %L3, label %L4
L3:  ;
    %r17 = add i32 %r47,1
    %r18 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r0, i32 %r17
    %r22 = load i32, ptr %r11
    %r24 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r22, i32 %r47
    %r25 = load i32, ptr %r24
    store i32 %r25, ptr %r18
    br label %L2
L4:  ;
    %r30 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r0
    %r31 = load i32, ptr %r30
    br label %L5
L5:  ;
    %r48 = phi i32 [%r31,%L4],[%r46,%L6]
    %r35 = icmp ne i32 %r48,-1
    br i1 %r35, label %L6, label %L7
L6:  ;
    %r38 = getelementptr [10005 x i32], ptr @to, i32 0, i32 %r48
    %r39 = load i32, ptr %r38
    %r43 = add i32 %r1,1
    call void @tree(i32 %r39,i32 %r43)
    %r45 = getelementptr [10005 x i32], ptr @next, i32 0, i32 %r48
    %r46 = load i32, ptr %r45
    br label %L5
L7:  ;
    ret void
}
define i32 @LCA(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r5 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r0
    %r6 = load i32, ptr %r5
    %r8 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r1
    %r9 = load i32, ptr %r8
    %r10 = icmp slt i32 %r6,%r9
    br i1 %r10, label %L2, label %L3
L2:  ;
    br label %L3
L3:  ;
    %r83 = phi i32 [%r0,%L1],[%r1,%L2]
    %r80 = phi i32 [%r1,%L1],[%r0,%L2]
    br label %L4
L4:  ;
    %r85 = phi i32 [%r83,%L3],[%r84,%L8]
    %r78 = phi i32 [19,%L3],[%r45,%L8]
    %r18 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r85
    %r19 = load i32, ptr %r18
    %r21 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r80
    %r22 = load i32, ptr %r21
    %r23 = icmp sgt i32 %r19,%r22
    br i1 %r23, label %L5, label %L6
L5:  ;
    %r26 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r85, i32 %r78
    %r27 = load i32, ptr %r26
    %r28 = icmp ne i32 %r27,0
    br i1 %r28, label %L9, label %L8
L6:  ;
    %r48 = icmp eq i32 %r85,%r80
    br i1 %r48, label %L10, label %L11
L7:  ;
    %r42 = load i32, ptr %r26
    br label %L8
L8:  ;
    %r84 = phi i32 [%r85,%L5],[%r85,%L9],[%r42,%L7]
    %r45 = sub i32 %r78,1
    br label %L4
L9:  ;
    %r32 = load i32, ptr %r26
    %r33 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    %r37 = load i32, ptr %r21
    %r38 = icmp sge i32 %r34,%r37
    br i1 %r38, label %L7, label %L8
L10:  ;
    ret i32 %r85
L11:  ;
    br label %L12
L12:  ;
    %r87 = phi i32 [%r85,%L11],[%r86,%L16]
    %r82 = phi i32 [%r80,%L11],[%r81,%L16]
    %r79 = phi i32 [19,%L11],[%r73,%L16]
    %r53 = icmp sge i32 %r79,0
    br i1 %r53, label %L13, label %L14
L13:  ;
    %r56 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r87, i32 %r79
    %r57 = load i32, ptr %r56
    %r60 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r82, i32 %r79
    %r61 = load i32, ptr %r60
    %r62 = icmp ne i32 %r57,%r61
    br i1 %r62, label %L15, label %L16
L14:  ;
    %r76 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r87, i32 0
    %r77 = load i32, ptr %r76
    ret i32 %r77
L15:  ;
    %r66 = load i32, ptr %r56
    %r70 = load i32, ptr %r60
    br label %L16
L16:  ;
    %r86 = phi i32 [%r87,%L13],[%r66,%L15]
    %r81 = phi i32 [%r82,%L13],[%r70,%L15]
    %r73 = sub i32 %r79,1
    br label %L12
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
    %r32 = phi i32 [1,%L1],[%r15,%L3]
    %r5 = load i32, ptr @n
    %r6 = icmp ne i32 %r32,%r5
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r8 = call i32 @quick_read()
    %r10 = call i32 @quick_read()
    call void @add_edge(i32 %r8,i32 %r10)
    %r15 = add i32 %r32,1
    br label %L2
L4:  ;
    call void @tree(i32 1,i32 1)
    br label %L5
L5:  ;
    %r18 = load i32, ptr @m
    %r19 = icmp ne i32 %r18,0
    br i1 %r19, label %L6, label %L7
L6:  ;
    %r21 = call i32 @quick_read()
    %r23 = call i32 @quick_read()
    %r26 = call i32 @LCA(i32 %r21,i32 %r23)
    call void @putint(i32 %r26)
    call void @putch(i32 10)
    %r28 = load i32, ptr @m
    %r30 = sub i32 %r28,1
    store i32 %r30, ptr @m
    br label %L5
L7:  ;
    ret i32 0
}
