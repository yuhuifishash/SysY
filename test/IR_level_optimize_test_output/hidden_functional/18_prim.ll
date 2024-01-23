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
@maxm = global i32 1005
@maxn = global i32 105
@n = global i32 zeroinitializer
@m = global i32 zeroinitializer
@u = global [1005x i32] zeroinitializer
@v = global [1005x i32] zeroinitializer
@c = global [1005x i32] zeroinitializer
@fa = global [1005x i32] zeroinitializer
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
define i32 @find(i32 %r0)
{
L0:
    br label %L1
L1:
    %r4 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r0
    %r5 = load i32, ptr %r4
    %r6 = icmp eq i32 %r0,%r5
    br i1 %r6, label %L2, label %L3
L2:
    ret i32 %r0
L3:
    %r12 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r0
    %r13 = load i32, ptr %r12
    %r14 = call i32 @find(i32 %r13)
    store i32 %r14, ptr %r12
    ret i32 %r14
}
define i32 @same(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r5 = call i32 @find(i32 %r0)
    %r7 = call i32 @find(i32 %r1)
    %r10 = icmp eq i32 %r5,%r7
    br i1 %r10, label %L2, label %L3
L2:
    ret i32 1
L3:
    ret i32 0
}
define i32 @prim()
{
L0:
    br label %L1
L1:
    %r3 = load i32, ptr @m
    %r4 = icmp slt i32 0,%r3
    br i1 %r4, label %L28, label %L5
L3:
    %r137 = phi i32 [%r69,%L4],[0,%L28]
    %r10 = add i32 %r137,1
    %r13 = icmp slt i32 %r10,%r12
    br i1 %r13, label %L29, label %L9
L4:
    %r72 = icmp slt i32 %r69,%r12
    br i1 %r72, label %L3, label %L5
L5:
    %r77 = load i32, ptr @n
    %r78 = icmp sle i32 1,%r77
    br i1 %r78, label %L30, label %L15
L7:
    %r135 = phi i32 [%r10,%L29],[%r61,%L8]
    %r18 = load i32, ptr %r17
    %r20 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r135
    %r21 = load i32, ptr %r20
    %r22 = icmp sgt i32 %r18,%r21
    br i1 %r22, label %L10, label %L11
L8:
    %r64 = icmp slt i32 %r61,%r63
    br i1 %r64, label %L7, label %L9
L9:
    %r69 = add i32 %r137,1
    br label %L4
L10:
    %r27 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r137
    %r28 = load i32, ptr %r27
    %r30 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r135
    %r31 = load i32, ptr %r30
    store i32 %r31, ptr %r27
    store i32 %r28, ptr %r30
    %r38 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r137
    %r39 = load i32, ptr %r38
    %r41 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r135
    %r42 = load i32, ptr %r41
    store i32 %r42, ptr %r38
    %r47 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r135
    store i32 %r39, ptr %r47
    %r49 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r137
    %r50 = load i32, ptr %r49
    %r52 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r135
    %r53 = load i32, ptr %r52
    store i32 %r53, ptr %r49
    %r58 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r135
    store i32 %r50, ptr %r58
    br label %L11
L11:
    %r61 = add i32 %r135,1
    br label %L8
L13:
    %r139 = phi i32 [%r86,%L14],[1,%L30]
    %r83 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r139
    store i32 %r139, ptr %r83
    %r86 = add i32 %r139,1
    br label %L14
L14:
    %r89 = icmp sle i32 %r86,%r88
    br i1 %r89, label %L13, label %L15
L15:
    %r96 = load i32, ptr @m
    %r97 = icmp slt i32 0,%r96
    br i1 %r97, label %L31, label %L19
L17:
    %r142 = phi i32 [0,%L31],[%r141,%L18]
    %r131 = phi i32 [0,%L31],[%r130,%L18]
    %r101 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r142
    %r102 = load i32, ptr %r101
    %r104 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r142
    %r105 = load i32, ptr %r104
    br label %L23
L18:
    %r141 = phi i32 [%r142,%L20],[%r123,%L21]
    %r130 = phi i32 [%r131,%L20],[%r112,%L21]
    %r125 = load i32, ptr @m
    %r126 = icmp slt i32 %r141,%r125
    br i1 %r126, label %L17, label %L19
L19:
    %r132 = phi i32 [0,%L15],[%r130,%L18]
    ret i32 %r132
L20:
    br label %L18
L21:
    %r110 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r142
    %r111 = load i32, ptr %r110
    %r112 = add i32 %r131,%r111
    %r114 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r142
    %r115 = load i32, ptr %r114
    %r117 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r142
    %r118 = load i32, ptr %r117
    %r119 = call i32 @find(i32 %r118)
    %r120 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r119
    store i32 %r115, ptr %r120
    %r123 = add i32 %r142,1
    br label %L18
L23:
    br label %L25
L24:
    %r106 = phi i32 [1,%L26],[0,%L27]
    %r107 = icmp ne i32 %r106,0
    br i1 %r107, label %L20, label %L21
L25:
    %r144 = call i32 @find(i32 %r102)
    %r145 = call i32 @find(i32 %r105)
    %r146 = icmp eq i32 %r144,%r145
    br i1 %r146, label %L26, label %L27
L26:
    br label %L24
L27:
    br label %L24
L28:
    %r12 = load i32, ptr @m
    br label %L3
L29:
    %r17 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r137
    %r63 = load i32, ptr @m
    br label %L7
L30:
    %r88 = load i32, ptr @n
    br label %L13
L31:
    br label %L17
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @quick_read()
    %r3 = call i32 @quick_read()
    %r8 = icmp slt i32 0,%r3
    br i1 %r8, label %L6, label %L5
L3:
    %r29 = phi i32 [%r22,%L4],[0,%L6]
    %r11 = call i32 @quick_read()
    %r13 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r29
    store i32 %r11, ptr %r13
    %r14 = call i32 @quick_read()
    %r16 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r29
    store i32 %r14, ptr %r16
    %r17 = call i32 @quick_read()
    %r19 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r29
    store i32 %r17, ptr %r19
    %r22 = add i32 %r29,1
    br label %L4
L4:
    %r25 = icmp slt i32 %r22,%r3
    br i1 %r25, label %L3, label %L5
L5:
    %r28 = call i32 @prim()
    ret i32 %r28
L6:
    br label %L3
}
