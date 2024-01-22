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
@INF = global i32 1879048192
@size = global [10x i32] zeroinitializer
@to = global [10x [10x i32]] zeroinitializer
@cap = global [10x [10x i32]] zeroinitializer
@rev = global [10x [10x i32]] zeroinitializer
@used = global [10x i32] zeroinitializer
define void @add_node(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r9 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r0
    %r10 = load i32, ptr %r9
    %r11 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r0, i32 %r10
    store i32 %r1, ptr %r11
    %r16 = load i32, ptr %r9
    %r17 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r0, i32 %r16
    store i32 %r2, ptr %r17
    %r19 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r1
    %r20 = load i32, ptr %r19
    %r24 = load i32, ptr %r9
    %r25 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r0, i32 %r24
    store i32 %r20, ptr %r25
    %r30 = load i32, ptr %r19
    %r31 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r1, i32 %r30
    store i32 %r0, ptr %r31
    %r36 = load i32, ptr %r19
    %r37 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r1, i32 %r36
    store i32 0, ptr %r37
    %r40 = load i32, ptr %r9
    %r44 = load i32, ptr %r19
    %r45 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r1, i32 %r44
    store i32 %r40, ptr %r45
    %r48 = load i32, ptr %r9
    %r50 = add i32 %r48,1
    store i32 %r50, ptr %r9
    %r55 = load i32, ptr %r19
    %r57 = add i32 %r55,1
    store i32 %r57, ptr %r19
    ret void
}
define i32 @dfs(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r8 = icmp eq i32 %r0,%r1
    br i1 %r8, label %L2, label %L3
L2:
    ret i32 %r2
L3:
    %r14 = getelementptr [10 x i32], ptr @used, i32 0, i32 %r0
    store i32 1, ptr %r14
    %r19 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r0
    %r20 = load i32, ptr %r19
    %r21 = icmp slt i32 0,%r20
    br i1 %r21, label %L19, label %L7
L5:
    %r120 = phi i32 [%r119,%L6],[0,%L19]
    %r26 = getelementptr i32, ptr %r122, i32 %r120
    %r27 = load i32, ptr %r26
    %r28 = getelementptr [10 x i32], ptr @used, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = icmp ne i32 %r29,0
    br i1 %r30, label %L8, label %L9
L6:
    %r119 = phi i32 [%r33,%L8],[%r44,%L11],[%r106,%L18]
    %r109 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r0
    %r110 = load i32, ptr %r109
    %r111 = icmp slt i32 %r119,%r110
    br i1 %r111, label %L5, label %L7
L7:
    ret i32 0
L8:
    %r33 = add i32 %r120,1
    br label %L6
L9:
    %r36 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r0, i32 %r120
    %r37 = load i32, ptr %r36
    %r39 = icmp sle i32 %r37,0
    br i1 %r39, label %L11, label %L12
L11:
    %r44 = add i32 %r120,1
    br label %L6
L12:
    %r50 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r0, i32 %r120
    %r51 = load i32, ptr %r50
    %r52 = icmp slt i32 %r2,%r51
    br i1 %r52, label %L14, label %L15
L14:
    br label %L16
L15:
    %r58 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r0, i32 %r120
    %r59 = load i32, ptr %r58
    br label %L16
L16:
    %r118 = phi i32 [%r2,%L14],[%r59,%L15]
    %r63 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r0, i32 %r120
    %r64 = load i32, ptr %r63
    %r67 = call i32 @dfs(i32 %r64,i32 %r1,i32 %r118)
    %r70 = icmp sgt i32 %r67,0
    br i1 %r70, label %L17, label %L18
L17:
    %r75 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r0, i32 %r120
    %r76 = load i32, ptr %r75
    %r78 = sub i32 %r76,%r67
    store i32 %r78, ptr %r75
    %r84 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r0, i32 %r120
    %r85 = load i32, ptr %r84
    %r88 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r0, i32 %r120
    %r89 = load i32, ptr %r88
    %r130 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r85
    %r90 = getelementptr i32, ptr %r130, i32 %r89
    %r91 = load i32, ptr %r90
    %r93 = add i32 %r91,%r67
    %r102 = getelementptr i32, ptr %r130, i32 %r89
    store i32 %r93, ptr %r102
    ret i32 %r67
L18:
    %r106 = add i32 %r120,1
    br label %L6
L19:
    %r122 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r0
    br label %L5
}
define i32 @max_flow(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    br label %L15
L3:
    %r27 = phi i32 [%r24,%L4],[0,%L15]
    br label %L8
L4:
    br label %L3
L6:
    ret i32 %r27
L7:
    %r24 = add i32 %r27,%r15
    br label %L4
L8:
    br label %L10
L9:
    %r15 = call i32 @dfs(i32 %r0,i32 %r1,i32 1879048192)
    %r18 = icmp eq i32 %r15,0
    br i1 %r18, label %L6, label %L7
L10:
    br label %L14
L11:
    %r31 = phi i32 [%r30,%L12],[0,%L14]
    %r32 = getelementptr i32, ptr %r8, i32 %r31
    store i32 0, ptr %r32
    %r30 = add i32 %r31,1
    br label %L12
L12:
    %r33 = icmp slt i32 %r30,10
    br i1 %r33, label %L11, label %L13
L13:
    br label %L9
L14:
    br label %L11
L15:
    %r8 = getelementptr i32, ptr @used, i32 0
    br label %L3
}
define void @my_memset(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r9 = icmp slt i32 0,%r2
    br i1 %r9, label %L6, label %L5
L3:
    %r23 = phi i32 [%r17,%L4],[0,%L6]
    %r14 = getelementptr i32, ptr %r0, i32 %r23
    store i32 %r1, ptr %r14
    %r17 = add i32 %r23,1
    br label %L4
L4:
    %r20 = icmp slt i32 %r17,%r2
    br i1 %r20, label %L3, label %L5
L5:
    ret void
L6:
    br label %L3
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r4 = call i32 @getint()
    %r5 = call i32 @getint()
    %r6 = getelementptr i32, ptr @size, i32 0
    br label %L6
L3:
    %r38 = phi i32 [%r27,%L4],[%r5,%L25]
    %r18 = call i32 @getint()
    %r19 = call i32 @getint()
    %r21 = call i32 @getint()
    call void @add_node(i32 %r18,i32 %r19,i32 %r21)
    %r27 = sub i32 %r38,1
    br label %L4
L4:
    %r30 = icmp sgt i32 %r27,0
    br i1 %r30, label %L3, label %L5
L5:
    br label %L12
L6:
    br label %L8
L7:
    %r11 = icmp sgt i32 %r5,0
    br i1 %r11, label %L25, label %L5
L8:
    br label %L26
L9:
    %r42 = phi i32 [%r41,%L10],[0,%L26]
    %r43 = getelementptr i32, ptr %r6, i32 %r42
    store i32 0, ptr %r43
    %r41 = add i32 %r42,1
    br label %L10
L10:
    %r44 = icmp slt i32 %r41,10
    br i1 %r44, label %L9, label %L11
L11:
    br label %L7
L12:
    br label %L14
L13:
    call void @putint(i32 %r47)
    call void @putch(i32 10)
    ret i32 0
L14:
    br label %L27
L15:
    %r47 = phi i32 [%r46,%L16],[0,%L27]
    br label %L19
L16:
    br label %L15
L17:
    br label %L13
L18:
    %r46 = add i32 %r47,%r49
    br label %L16
L19:
    br label %L21
L20:
    %r49 = call i32 @dfs(i32 1,i32 %r4,i32 1879048192)
    %r50 = icmp eq i32 %r49,0
    br i1 %r50, label %L17, label %L18
L21:
    br label %L28
L22:
    %r53 = phi i32 [%r52,%L23],[0,%L28]
    %r54 = getelementptr i32, ptr %r48, i32 %r53
    store i32 0, ptr %r54
    %r52 = add i32 %r53,1
    br label %L23
L23:
    %r55 = icmp slt i32 %r52,10
    br i1 %r55, label %L22, label %L24
L24:
    br label %L20
L25:
    br label %L3
L26:
    br label %L9
L27:
    %r48 = getelementptr i32, ptr @used, i32 0
    br label %L15
L28:
    br label %L22
}
