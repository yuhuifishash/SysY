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
@maxn = global i32 100005
@cnt = global [400020x i32] zeroinitializer
@x = global [100005x i32] zeroinitializer
@a = global [100005x i32] zeroinitializer
@b = global [100005x i32] zeroinitializer
@c = global [100005x i32] zeroinitializer
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
define void @sortA(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r41 = phi i32 [0,%L1],[%r38,%L7]
    %r6 = load i32, ptr @n
    %r7 = icmp slt i32 %r41,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;
    %r10 = add i32 %r41,1
    br label %L5
L4:  ;
    ret void
L5:  ;
    %r40 = phi i32 [%r10,%L3],[%r35,%L9]
    %r12 = load i32, ptr @n
    %r13 = icmp slt i32 %r40,%r12
    br i1 %r13, label %L6, label %L7
L6:  ;
    %r15 = getelementptr i32, ptr %r0, i32 %r41
    %r16 = load i32, ptr %r15
    %r18 = getelementptr i32, ptr %r0, i32 %r40
    %r19 = load i32, ptr %r18
    %r20 = icmp sgt i32 %r16,%r19
    br i1 %r20, label %L8, label %L9
L7:  ;
    %r38 = add i32 %r41,1
    br label %L2
L8:  ;
    %r23 = getelementptr i32, ptr %r0, i32 %r41
    %r24 = load i32, ptr %r23
    %r28 = getelementptr i32, ptr %r0, i32 %r40
    %r29 = load i32, ptr %r28
    store i32 %r29, ptr %r23
    store i32 %r24, ptr %r28
    br label %L9
L9:  ;
    %r35 = add i32 %r40,1
    br label %L5
}
define void @sortB(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r61 = phi i32 [0,%L1],[%r30,%L6]
    %r60 = phi i32 [-100,%L1],[%r59,%L6]
    %r7 = load i32, ptr @n
    %r8 = icmp slt i32 %r61,%r7
    br i1 %r8, label %L3, label %L4
L3:  ;
    %r10 = getelementptr i32, ptr %r0, i32 %r61
    %r11 = load i32, ptr %r10
    %r12 = getelementptr [400020 x i32], ptr @cnt, i32 0, i32 %r11
    %r17 = load i32, ptr %r12
    %r19 = add i32 %r17,1
    store i32 %r19, ptr %r12
    %r24 = icmp sgt i32 %r11,%r60
    br i1 %r24, label %L5, label %L6
L4:  ;
    br label %L7
L5:  ;
    %r26 = getelementptr i32, ptr %r0, i32 %r61
    %r27 = load i32, ptr %r26
    br label %L6
L6:  ;
    %r59 = phi i32 [%r60,%L3],[%r27,%L5]
    %r30 = add i32 %r61,1
    br label %L2
L7:  ;
    %r62 = phi i32 [0,%L4],[%r54,%L12]
    %r58 = phi i32 [0,%L4],[%r57,%L12]
    %r36 = icmp sle i32 %r62,%r60
    br i1 %r36, label %L8, label %L9
L8:  ;
    %r39 = getelementptr [400020 x i32], ptr @cnt, i32 0, i32 %r62
    %r40 = load i32, ptr %r39
    br label %L10
L9:  ;
    ret void
L10:  ;
    %r57 = phi i32 [%r58,%L8],[%r48,%L11]
    %r56 = phi i32 [%r40,%L8],[%r51,%L11]
    %r42 = icmp ne i32 %r56,0
    br i1 %r42, label %L11, label %L12
L11:  ;
    %r44 = getelementptr i32, ptr %r0, i32 %r57
    store i32 %r62, ptr %r44
    %r48 = add i32 %r57,1
    %r51 = sub i32 %r56,1
    br label %L10
L12:  ;
    %r54 = add i32 %r62,1
    br label %L7
}
define void @sortC(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r46 = phi i32 [0,%L1],[%r40,%L7]
    %r4 = load i32, ptr @n
    %r5 = icmp slt i32 %r46,%r4
    br i1 %r5, label %L3, label %L4
L3:  ;
    %r11 = add i32 %r46,1
    br label %L5
L4:  ;
    ret void
L5:  ;
    %r45 = phi i32 [%r46,%L3],[%r44,%L9]
    %r42 = phi i32 [%r11,%L3],[%r25,%L9]
    %r13 = load i32, ptr @n
    %r14 = icmp slt i32 %r42,%r13
    br i1 %r14, label %L6, label %L7
L6:  ;
    %r16 = getelementptr i32, ptr %r0, i32 %r42
    %r17 = load i32, ptr %r16
    %r19 = getelementptr i32, ptr %r0, i32 %r45
    %r20 = load i32, ptr %r19
    %r21 = icmp slt i32 %r17,%r20
    br i1 %r21, label %L8, label %L9
L7:  ;
    %r28 = getelementptr i32, ptr %r0, i32 %r46
    %r29 = load i32, ptr %r28
    %r33 = getelementptr i32, ptr %r0, i32 %r45
    %r34 = load i32, ptr %r33
    store i32 %r34, ptr %r28
    store i32 %r29, ptr %r33
    %r40 = add i32 %r46,1
    br label %L2
L8:  ;
    br label %L9
L9:  ;
    %r44 = phi i32 [%r45,%L6],[%r42,%L8]
    %r25 = add i32 %r42,1
    br label %L5
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    br label %L2
L2:  ;
    %r75 = phi i32 [0,%L1],[%r21,%L3]
    %r4 = load i32, ptr @n
    %r5 = icmp ne i32 %r75,%r4
    br i1 %r5, label %L3, label %L4
L3:  ;
    %r7 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r75
    %r8 = call i32 @quick_read()
    store i32 %r8, ptr %r7
    %r10 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r75
    %r13 = load i32, ptr %r7
    store i32 %r13, ptr %r10
    %r15 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r75
    %r18 = load i32, ptr %r10
    store i32 %r18, ptr %r15
    %r21 = add i32 %r75,1
    br label %L2
L4:  ;
    %r22 = getelementptr [100005 x i32], ptr @a, i32 0
    call void @sortA(ptr %r22)
    %r23 = getelementptr [100005 x i32], ptr @b, i32 0
    call void @sortB(ptr %r23)
    %r24 = getelementptr [100005 x i32], ptr @c, i32 0
    call void @sortC(ptr %r24)
    br label %L5
L5:  ;
    %r76 = phi i32 [0,%L4],[%r54,%L6]
    %r26 = load i32, ptr @n
    %r28 = sub i32 %r26,%r76
    %r29 = icmp ne i32 %r28,0
    br i1 %r29, label %L6, label %L7
L6:  ;
    %r31 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r76
    %r34 = load i32, ptr %r31
    %r36 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r76
    %r37 = load i32, ptr %r36
    %r38 = sub i32 %r34,%r37
    store i32 %r38, ptr %r31
    %r40 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r76
    %r43 = load i32, ptr %r40
    %r46 = load i32, ptr %r31
    %r47 = sub i32 %r43,%r46
    %r51 = sub i32 %r47,%r37
    store i32 %r51, ptr %r40
    %r54 = add i32 %r76,1
    br label %L5
L7:  ;
    br label %L8
L8:  ;
    %r77 = phi i32 [0,%L7],[%r72,%L14]
    %r57 = load i32, ptr @n
    %r58 = sub i32 %r77,%r57
    %r59 = icmp ne i32 %r58,0
    br i1 %r59, label %L9, label %L10
L9:  ;
    %r61 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r77
    %r62 = load i32, ptr %r61
    %r63 = icmp ne i32 %r62,0
    br i1 %r63, label %L11, label %L12
L10:  ;
    ret i32 -123
L11:  ;
    ret i32 1
L12:  ;
    %r66 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r77
    %r67 = load i32, ptr %r66
    %r68 = icmp ne i32 %r67,0
    br i1 %r68, label %L13, label %L14
L13:  ;
    ret i32 2
L14:  ;
    %r72 = add i32 %r77,1
    br label %L8
}
