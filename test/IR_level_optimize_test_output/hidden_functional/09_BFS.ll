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
define i32 @pop_queue()
{
L0:
    br label %L1
L1:
    %r0 = load i32, ptr @h
    %r2 = add i32 %r0,1
    store i32 %r2, ptr @h
    %r4 = load i32, ptr @h
    %r5 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r4
    %r6 = load i32, ptr %r5
    ret i32 %r6
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
define void @inqueue(i32 %r0)
{
L0:
    br label %L1
L1:
    %r4 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r0
    store i32 1, ptr %r4
    %r5 = load i32, ptr @tail
    %r7 = add i32 %r5,1
    store i32 %r7, ptr @tail
    %r9 = load i32, ptr @tail
    %r10 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r9
    store i32 %r0, ptr %r10
    ret void
}
define i32 @same(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    store i32 0, ptr @h
    store i32 0, ptr @tail
    br label %L18
L3:
    %r85 = phi i32 [%r84,%L4],[0,%L27]
    br label %L21
L4:
    %r52 = load i32, ptr @h
    %r53 = load i32, ptr @tail
    %r54 = icmp slt i32 %r52,%r53
    br i1 %r54, label %L3, label %L5
L5:
    %r86 = phi i32 [0,%L19],[%r84,%L4]
    %r60 = load i32, ptr @tail
    %r61 = icmp sle i32 0,%r60
    br i1 %r61, label %L29, label %L17
L6:
    br label %L7
L7:
    %r84 = phi i32 [%r85,%L22],[1,%L6]
    %r24 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r96
    %r25 = load i32, ptr %r24
    %r29 = icmp ne i32 %r25,-1
    br i1 %r29, label %L28, label %L11
L9:
    %r82 = phi i32 [%r45,%L10],[%r25,%L28]
    %r33 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r82
    %r34 = load i32, ptr %r33
    %r35 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = icmp eq i32 %r36,0
    br i1 %r37, label %L12, label %L13
L10:
    %r49 = icmp ne i32 %r45,-1
    br i1 %r49, label %L9, label %L11
L11:
    br label %L4
L12:
    %r41 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r82
    %r42 = load i32, ptr %r41
    br label %L24
L13:
    %r44 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r82
    %r45 = load i32, ptr %r44
    br label %L10
L15:
    %r78 = phi i32 [%r71,%L16],[0,%L29]
    %r66 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r78
    %r67 = load i32, ptr %r66
    %r68 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r67
    store i32 0, ptr %r68
    %r71 = add i32 %r78,1
    br label %L16
L16:
    %r74 = icmp sle i32 %r71,%r73
    br i1 %r74, label %L15, label %L17
L17:
    ret i32 %r86
L18:
    br label %L20
L19:
    %r9 = load i32, ptr @h
    %r10 = load i32, ptr @tail
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L27, label %L5
L20:
    %r87 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r0
    store i32 1, ptr %r87
    %r88 = load i32, ptr @tail
    %r89 = add i32 %r88,1
    store i32 %r89, ptr @tail
    %r90 = load i32, ptr @tail
    %r91 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r90
    store i32 %r0, ptr %r91
    br label %L19
L21:
    br label %L23
L22:
    %r18 = icmp eq i32 %r96,%r1
    br i1 %r18, label %L6, label %L7
L23:
    %r92 = load i32, ptr @h
    %r93 = add i32 %r92,1
    store i32 %r93, ptr @h
    %r94 = load i32, ptr @h
    %r95 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r94
    %r96 = load i32, ptr %r95
    br label %L22
L24:
    br label %L26
L25:
    br label %L13
L26:
    %r97 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r42
    store i32 1, ptr %r97
    %r98 = load i32, ptr @tail
    %r99 = add i32 %r98,1
    store i32 %r99, ptr @tail
    %r100 = load i32, ptr @tail
    %r101 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r100
    store i32 %r42, ptr %r101
    br label %L25
L27:
    br label %L3
L28:
    br label %L9
L29:
    %r73 = load i32, ptr @tail
    br label %L15
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
    br i1 %r13, label %L24, label %L9
L12:
    %r27 = icmp ne i32 %r19,85
    br i1 %r27, label %L7, label %L9
L14:
    %r39 = call i32 @quick_read()
    %r41 = call i32 @quick_read()
    %r44 = call i32 @same(i32 %r39,i32 %r41)
    call void @putint(i32 %r44)
    call void @putch(i32 10)
    br label %L16
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
    br i1 %r3, label %L23, label %L5
L19:
    br label %L25
L20:
    %r63 = phi i32 [%r62,%L21],[0,%L25]
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
    br label %L3
L24:
    br label %L7
L25:
    br label %L20
}
