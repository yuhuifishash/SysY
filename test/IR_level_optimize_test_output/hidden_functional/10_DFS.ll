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
define void @init()
{
L0:
    br label %L1
L1:
    br label %L6
L3:
    %r19 = phi i32 [%r13,%L4],[0,%L6]
    %r10 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r19
    store i32 -1, ptr %r10
    %r13 = add i32 %r19,1
    br label %L4
L4:
    %r16 = icmp slt i32 %r13,1005
    br i1 %r16, label %L3, label %L5
L5:
    ret void
L6:
    br label %L3
}
define void @add_edge(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r5 = load i32, ptr @cnt
    %r6 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r5
    store i32 %r1, ptr %r6
    %r8 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r0
    %r9 = load i32, ptr %r8
    %r10 = load i32, ptr @cnt
    %r11 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r10
    store i32 %r9, ptr %r11
    %r12 = load i32, ptr @cnt
    store i32 %r12, ptr %r8
    %r15 = load i32, ptr @cnt
    %r17 = add i32 %r15,1
    store i32 %r17, ptr @cnt
    %r19 = load i32, ptr @cnt
    %r20 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r19
    store i32 %r0, ptr %r20
    %r22 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r1
    %r23 = load i32, ptr %r22
    %r24 = load i32, ptr @cnt
    %r25 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    %r26 = load i32, ptr @cnt
    %r28 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r1
    store i32 %r26, ptr %r28
    %r29 = load i32, ptr @cnt
    %r31 = add i32 %r29,1
    store i32 %r31, ptr @cnt
    ret void
}
define void @clear()
{
L0:
    br label %L1
L1:
    %r3 = load i32, ptr @n
    %r4 = icmp sle i32 1,%r3
    br i1 %r4, label %L6, label %L5
L3:
    %r18 = phi i32 [%r12,%L4],[1,%L6]
    %r9 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r18
    store i32 0, ptr %r9
    %r12 = add i32 %r18,1
    br label %L4
L4:
    %r15 = icmp sle i32 %r12,%r14
    br i1 %r15, label %L3, label %L5
L5:
    ret void
L6:
    %r14 = load i32, ptr @n
    br label %L3
}
define i32 @same(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r0
    store i32 1, ptr %r6
    %r9 = icmp eq i32 %r0,%r1
    br i1 %r9, label %L2, label %L3
L2:
    ret i32 1
L3:
    %r15 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r0
    %r16 = load i32, ptr %r15
    %r20 = icmp ne i32 %r16,-1
    br i1 %r20, label %L12, label %L7
L5:
    %r51 = phi i32 [%r16,%L12],[%r43,%L6]
    %r25 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r51
    %r26 = load i32, ptr %r25
    %r28 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r26
    %r29 = load i32, ptr %r28
    %r30 = icmp eq i32 %r29,0
    br i1 %r30, label %L10, label %L9
L6:
    %r47 = icmp ne i32 %r43,-1
    br i1 %r47, label %L5, label %L7
L7:
    ret i32 0
L8:
    ret i32 1
L9:
    %r42 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r51
    %r43 = load i32, ptr %r42
    br label %L6
L10:
    %r35 = call i32 @same(i32 %r26,i32 %r1)
    %r36 = icmp ne i32 %r35,0
    br i1 %r36, label %L8, label %L9
L12:
    br label %L5
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
    br label %L17
L3:
    %r5 = call i32 @getch()
    %r8 = icmp ne i32 %r5,81
    br i1 %r8, label %L10, label %L9
L4:
    %r55 = load i32, ptr @m
    %r56 = icmp ne i32 %r55,0
    br i1 %r56, label %L3, label %L5
L5:
    ret i32 0
L7:
    %r19 = call i32 @getch()
    br label %L8
L8:
    %r22 = icmp ne i32 %r19,81
    br i1 %r22, label %L12, label %L9
L9:
    %r61 = phi i32 [%r5,%L3],[%r5,%L10],[%r19,%L8],[%r19,%L12]
    %r35 = icmp eq i32 %r61,81
    br i1 %r35, label %L14, label %L15
L10:
    %r13 = icmp ne i32 %r5,85
    br i1 %r13, label %L30, label %L9
L12:
    %r27 = icmp ne i32 %r19,85
    br i1 %r27, label %L7, label %L9
L14:
    %r39 = call i32 @quick_read()
    %r41 = call i32 @quick_read()
    br label %L23
L15:
    %r47 = call i32 @quick_read()
    %r49 = call i32 @quick_read()
    call void @add_edge(i32 %r47,i32 %r49)
    br label %L16
L16:
    %r52 = load i32, ptr @m
    %r54 = sub i32 %r52,1
    store i32 %r54, ptr @m
    br label %L4
L17:
    br label %L19
L18:
    %r2 = load i32, ptr @m
    %r3 = icmp ne i32 %r2,0
    br i1 %r3, label %L29, label %L5
L19:
    br label %L31
L20:
    %r63 = phi i32 [0,%L31],[%r62,%L21]
    %r64 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r63
    store i32 -1, ptr %r64
    %r62 = add i32 %r63,1
    br label %L21
L21:
    %r65 = icmp slt i32 %r62,1005
    br i1 %r65, label %L20, label %L22
L22:
    br label %L18
L23:
    br label %L25
L24:
    %r44 = call i32 @same(i32 %r39,i32 %r41)
    call void @putint(i32 %r44)
    call void @putch(i32 10)
    br label %L16
L25:
    %r67 = load i32, ptr @n
    %r68 = icmp sle i32 1,%r67
    br i1 %r68, label %L32, label %L28
L26:
    %r70 = phi i32 [%r69,%L27],[1,%L32]
    %r71 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r70
    store i32 0, ptr %r71
    %r69 = add i32 %r70,1
    br label %L27
L27:
    %r73 = icmp sle i32 %r69,%r72
    br i1 %r73, label %L26, label %L28
L28:
    br label %L24
L29:
    br label %L3
L30:
    br label %L7
L31:
    br label %L20
L32:
    %r72 = load i32, ptr @n
    br label %L26
}
