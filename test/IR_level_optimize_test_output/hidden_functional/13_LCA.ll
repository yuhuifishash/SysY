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
define i32 @LCA(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r5 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r0
    %r6 = load i32, ptr %r5
    %r8 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r1
    %r9 = load i32, ptr %r8
    %r10 = icmp slt i32 %r6,%r9
    br i1 %r10, label %L2, label %L3
L2:
    br label %L3
L3:
    %r118 = phi i32 [%r1,%L1],[%r0,%L2]
    %r111 = phi i32 [%r0,%L1],[%r1,%L2]
    %r20 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r111
    %r21 = load i32, ptr %r20
    %r23 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r118
    %r24 = load i32, ptr %r23
    %r25 = icmp sgt i32 %r21,%r24
    br i1 %r25, label %L20, label %L7
L5:
    %r113 = phi i32 [%r112,%L6],[%r111,%L20]
    %r107 = phi i32 [%r54,%L6],[19,%L20]
    %r30 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r113, i32 %r107
    %r31 = load i32, ptr %r30
    %r32 = icmp ne i32 %r31,0
    br i1 %r32, label %L10, label %L9
L6:
    %r56 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r112
    %r57 = load i32, ptr %r56
    %r60 = load i32, ptr %r59
    %r61 = icmp sgt i32 %r57,%r60
    br i1 %r61, label %L5, label %L7
L7:
    %r114 = phi i32 [%r111,%L3],[%r112,%L6]
    %r66 = icmp eq i32 %r114,%r118
    br i1 %r66, label %L12, label %L13
L8:
    %r50 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r113, i32 %r107
    %r51 = load i32, ptr %r50
    br label %L9
L9:
    %r112 = phi i32 [%r113,%L5],[%r113,%L10],[%r51,%L8]
    %r54 = sub i32 %r107,1
    br label %L6
L10:
    %r35 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r113, i32 %r107
    %r36 = load i32, ptr %r35
    %r37 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    %r40 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r118
    %r41 = load i32, ptr %r40
    %r42 = icmp sge i32 %r38,%r41
    br i1 %r42, label %L8, label %L9
L12:
    ret i32 %r114
L13:
    br label %L21
L15:
    %r120 = phi i32 [%r119,%L16],[%r118,%L21]
    %r116 = phi i32 [%r115,%L16],[%r114,%L21]
    %r109 = phi i32 [%r97,%L16],[19,%L21]
    %r78 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r116, i32 %r109
    %r79 = load i32, ptr %r78
    %r82 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r120, i32 %r109
    %r83 = load i32, ptr %r82
    %r84 = icmp ne i32 %r79,%r83
    br i1 %r84, label %L18, label %L19
L16:
    %r100 = icmp sge i32 %r97,0
    br i1 %r100, label %L15, label %L17
L17:
    %r105 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r115, i32 0
    %r106 = load i32, ptr %r105
    ret i32 %r106
L18:
    %r89 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r116, i32 %r109
    %r90 = load i32, ptr %r89
    %r93 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r120, i32 %r109
    %r94 = load i32, ptr %r93
    br label %L19
L19:
    %r119 = phi i32 [%r120,%L15],[%r94,%L18]
    %r115 = phi i32 [%r116,%L15],[%r90,%L18]
    %r97 = sub i32 %r109,1
    br label %L16
L20:
    %r59 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r118
    br label %L5
L21:
    br label %L15
}
define i32 @quick_read()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getch()
    %r8 = icmp slt i32 %r1,48
    br i1 %r8, label %L23, label %L6
L3:
    %r83 = phi i32 [%r25,%L4],[%r25,%L10],[%r87,%L23]
    %r79 = phi i32 [%r78,%L4],[%r78,%L10],[%r88,%L23]
    %r21 = icmp eq i32 %r83,45
    br i1 %r21, label %L8, label %L9
L4:
    %r28 = icmp slt i32 %r25,48
    br i1 %r28, label %L3, label %L10
L5:
    %r84 = phi i32 [%r1,%L6],[%r25,%L10]
    %r80 = phi i32 [0,%L6],[%r78,%L10]
    %r41 = icmp sge i32 %r84,48
    br i1 %r41, label %L16, label %L15
L6:
    %r13 = icmp sgt i32 %r1,57
    br i1 %r13, label %L23, label %L5
L8:
    br label %L9
L9:
    %r78 = phi i32 [%r79,%L3],[1,%L8]
    %r25 = call i32 @getch()
    br label %L4
L10:
    %r33 = icmp sgt i32 %r25,57
    br i1 %r33, label %L3, label %L5
L13:
    %r85 = phi i32 [%r59,%L18],[%r84,%L24]
    %r81 = phi i32 [%r58,%L18],[0,%L24]
    %r54 = mul i32 %r81,10
    %r56 = add i32 %r54,%r85
    %r58 = sub i32 %r56,48
    %r59 = call i32 @getch()
    br label %L14
L14:
    %r62 = icmp sge i32 %r59,48
    br i1 %r62, label %L18, label %L15
L15:
    %r82 = phi i32 [0,%L5],[0,%L16],[%r58,%L14],[%r58,%L18]
    %r74 = icmp ne i32 %r80,0
    br i1 %r74, label %L20, label %L21
L16:
    %r46 = icmp sle i32 %r84,57
    br i1 %r46, label %L24, label %L15
L18:
    %r67 = icmp sle i32 %r59,57
    br i1 %r67, label %L13, label %L15
L20:
    %r76 = sub i32 0,%r82
    ret i32 %r76
L21:
    ret i32 %r82
L23:
    %r88 = phi i32 [0,%L1],[0,%L6]
    %r87 = phi i32 [%r1,%L1],[%r1,%L6]
    br label %L3
L24:
    br label %L13
}
define void @add_edge(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r5 = load i32, ptr @cnt
    %r6 = getelementptr [10005 x i32], ptr @to, i32 0, i32 %r5
    store i32 %r1, ptr %r6
    %r8 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r0
    %r9 = load i32, ptr %r8
    %r10 = load i32, ptr @cnt
    %r11 = getelementptr [10005 x i32], ptr @next, i32 0, i32 %r10
    store i32 %r9, ptr %r11
    %r12 = load i32, ptr @cnt
    store i32 %r12, ptr %r8
    %r15 = load i32, ptr @cnt
    %r17 = add i32 %r15,1
    store i32 %r17, ptr @cnt
    %r21 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r1, i32 0
    store i32 %r0, ptr %r21
    ret void
}
define void @init()
{
L0:
    br label %L1
L1:
    %r2 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 0
    store i32 1061109567, ptr %r2
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 1,%r6
    br i1 %r7, label %L6, label %L5
L3:
    %r22 = phi i32 [%r16,%L4],[1,%L6]
    %r13 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r22
    store i32 -1, ptr %r13
    %r16 = add i32 %r22,1
    br label %L4
L4:
    %r19 = icmp sle i32 %r16,%r18
    br i1 %r19, label %L3, label %L5
L5:
    ret void
L6:
    %r18 = load i32, ptr @n
    br label %L3
}
define void @tree(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = getelementptr [10005 x i32], ptr @dep, i32 0, i32 %r0
    store i32 %r1, ptr %r6
    %r11 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r0, i32 0
    %r12 = load i32, ptr %r11
    %r13 = icmp ne i32 %r12,0
    br i1 %r13, label %L10, label %L5
L3:
    %r60 = phi i32 [%r24,%L4],[0,%L10]
    %r16 = getelementptr i32, ptr %r65, i32 %r60
    %r17 = load i32, ptr %r16
    %r19 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r17, i32 %r60
    %r20 = load i32, ptr %r19
    %r24 = add i32 %r60,1
    %r25 = getelementptr i32, ptr %r65, i32 %r24
    store i32 %r20, ptr %r25
    br label %L4
L4:
    %r31 = getelementptr i32, ptr %r65, i32 %r24
    %r32 = load i32, ptr %r31
    %r33 = icmp ne i32 %r32,0
    br i1 %r33, label %L3, label %L5
L5:
    %r35 = getelementptr [10005 x i32], ptr @head, i32 0, i32 %r0
    %r36 = load i32, ptr %r35
    %r40 = icmp ne i32 %r36,-1
    br i1 %r40, label %L11, label %L9
L7:
    %r62 = phi i32 [%r53,%L8],[%r36,%L11]
    %r45 = getelementptr [10005 x i32], ptr @to, i32 0, i32 %r62
    %r46 = load i32, ptr %r45
    call void @tree(i32 %r46,i32 %r50)
    %r52 = getelementptr [10005 x i32], ptr @next, i32 0, i32 %r62
    %r53 = load i32, ptr %r52
    br label %L8
L8:
    %r57 = icmp ne i32 %r53,-1
    br i1 %r57, label %L7, label %L9
L9:
    ret void
L10:
    %r65 = getelementptr [10005 x [20 x i32]], ptr @f, i32 0, i32 %r0
    br label %L3
L11:
    %r50 = add i32 %r1,1
    br label %L7
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    %r1 = call i32 @quick_read()
    store i32 %r1, ptr @m
    call void @init()
    %r5 = load i32, ptr @n
    %r6 = icmp ne i32 1,%r5
    br i1 %r6, label %L10, label %L5
L3:
    %r41 = phi i32 [%r17,%L4],[1,%L10]
    %r10 = call i32 @quick_read()
    %r12 = call i32 @quick_read()
    call void @add_edge(i32 %r10,i32 %r12)
    %r17 = add i32 %r41,1
    br label %L4
L4:
    %r19 = load i32, ptr @n
    %r20 = icmp ne i32 %r17,%r19
    br i1 %r20, label %L3, label %L5
L5:
    call void @tree(i32 1,i32 1)
    %r25 = load i32, ptr @m
    %r26 = icmp ne i32 %r25,0
    br i1 %r26, label %L11, label %L9
L7:
    %r28 = call i32 @quick_read()
    %r30 = call i32 @quick_read()
    %r33 = call i32 @LCA(i32 %r28,i32 %r30)
    call void @putint(i32 %r33)
    call void @putch(i32 10)
    %r35 = load i32, ptr @m
    %r37 = sub i32 %r35,1
    store i32 %r37, ptr @m
    br label %L8
L8:
    %r38 = load i32, ptr @m
    %r39 = icmp ne i32 %r38,0
    br i1 %r39, label %L7, label %L9
L9:
    ret i32 0
L10:
    br label %L3
L11:
    br label %L7
}
