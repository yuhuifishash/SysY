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
    br label %L2
L2:
    %r39 = phi i32 [%r1,%L1],[%r16,%L7]
    %r37 = phi i32 [0,%L1],[%r36,%L7]
    %r8 = icmp slt i32 %r39,48
    br i1 %r8, label %L3, label %L5
L3:
    %r14 = icmp eq i32 %r39,45
    br i1 %r14, label %L6, label %L7
L4:
    br label %L8
L5:
    %r11 = icmp sgt i32 %r39,57
    br i1 %r11, label %L3, label %L4
L6:
    br label %L7
L7:
    %r36 = phi i32 [%r37,%L3],[1,%L6]
    %r16 = call i32 @getch()
    br label %L2
L8:
    %r40 = phi i32 [%r39,%L4],[%r30,%L9]
    %r38 = phi i32 [0,%L4],[%r29,%L9]
    %r19 = icmp sge i32 %r40,48
    br i1 %r19, label %L11, label %L10
L9:
    %r25 = mul i32 %r38,10
    %r27 = add i32 %r25,%r40
    %r29 = sub i32 %r27,48
    %r30 = call i32 @getch()
    br label %L8
L10:
    %r32 = icmp ne i32 %r37,0
    br i1 %r32, label %L12, label %L13
L11:
    %r22 = icmp sle i32 %r40,57
    br i1 %r22, label %L9, label %L10
L12:
    %r34 = sub i32 0,%r38
    ret i32 %r34
L13:
    ret i32 %r38
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
    %r10 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r0
    %r11 = load i32, ptr %r10
    %r12 = call i32 @find(i32 %r11)
    %r14 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r0
    store i32 %r12, ptr %r14
    ret i32 %r12
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
    br label %L2
L2:
    %r103 = phi i32 [0,%L1],[%r58,%L7]
    %r3 = load i32, ptr @m
    %r4 = icmp slt i32 %r103,%r3
    br i1 %r4, label %L3, label %L4
L3:
    %r8 = add i32 %r103,1
    br label %L5
L4:
    br label %L10
L5:
    %r102 = phi i32 [%r8,%L3],[%r55,%L9]
    %r10 = load i32, ptr @m
    %r11 = icmp slt i32 %r102,%r10
    br i1 %r11, label %L6, label %L7
L6:
    %r13 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r103
    %r14 = load i32, ptr %r13
    %r16 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r102
    %r17 = load i32, ptr %r16
    %r18 = icmp sgt i32 %r14,%r17
    br i1 %r18, label %L8, label %L9
L7:
    %r58 = add i32 %r103,1
    br label %L2
L8:
    %r21 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r103
    %r22 = load i32, ptr %r21
    %r24 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r103
    %r26 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r102
    %r27 = load i32, ptr %r26
    store i32 %r27, ptr %r24
    %r29 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r102
    store i32 %r22, ptr %r29
    %r32 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r103
    %r33 = load i32, ptr %r32
    %r35 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r103
    %r37 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r102
    %r38 = load i32, ptr %r37
    store i32 %r38, ptr %r35
    %r40 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r102
    store i32 %r33, ptr %r40
    %r43 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r103
    %r44 = load i32, ptr %r43
    %r46 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r103
    %r48 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r102
    %r49 = load i32, ptr %r48
    store i32 %r49, ptr %r46
    %r51 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r102
    store i32 %r44, ptr %r51
    br label %L9
L9:
    %r55 = add i32 %r102,1
    br label %L5
L10:
    %r104 = phi i32 [1,%L4],[%r68,%L11]
    %r61 = load i32, ptr @n
    %r62 = icmp sle i32 %r104,%r61
    br i1 %r62, label %L11, label %L12
L11:
    %r64 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r104
    store i32 %r104, ptr %r64
    %r68 = add i32 %r104,1
    br label %L10
L12:
    br label %L13
L13:
    %r105 = phi i32 [0,%L12],[%r105,%L16],[%r98,%L17]
    %r100 = phi i32 [0,%L12],[%r100,%L16],[%r87,%L17]
    %r73 = load i32, ptr @m
    %r74 = icmp slt i32 %r105,%r73
    br i1 %r74, label %L14, label %L15
L14:
    %r76 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r105
    %r77 = load i32, ptr %r76
    %r79 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r105
    %r80 = load i32, ptr %r79
    %r81 = call i32 @same(i32 %r77,i32 %r80)
    %r82 = icmp ne i32 %r81,0
    br i1 %r82, label %L16, label %L17
L15:
    ret i32 %r100
L16:
    br label %L13
L17:
    %r85 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r105
    %r86 = load i32, ptr %r85
    %r87 = add i32 %r100,%r86
    %r89 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r105
    %r90 = load i32, ptr %r89
    %r91 = call i32 @find(i32 %r90)
    %r92 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r91
    %r94 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r105
    %r95 = load i32, ptr %r94
    store i32 %r95, ptr %r92
    %r98 = add i32 %r105,1
    br label %L13
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @quick_read()
    %r3 = call i32 @quick_read()
    br label %L2
L2:
    %r22 = phi i32 [0,%L1],[%r20,%L3]
    %r8 = icmp slt i32 %r22,%r3
    br i1 %r8, label %L3, label %L4
L3:
    %r10 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r22
    %r11 = call i32 @quick_read()
    store i32 %r11, ptr %r10
    %r13 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r22
    %r14 = call i32 @quick_read()
    store i32 %r14, ptr %r13
    %r16 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r22
    %r17 = call i32 @quick_read()
    store i32 %r17, ptr %r16
    %r20 = add i32 %r22,1
    br label %L2
L4:
    %r21 = call i32 @prim()
    ret i32 %r21
}
