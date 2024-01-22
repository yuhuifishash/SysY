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
define void @sortA(ptr %r0)
{
L0:
    br label %L1
L1:
    %r6 = load i32, ptr @n
    %r7 = icmp slt i32 0,%r6
    br i1 %r7, label %L12, label %L5
L3:
    %r59 = phi i32 [%r49,%L4],[0,%L12]
    %r12 = add i32 %r59,1
    %r15 = icmp slt i32 %r12,%r14
    br i1 %r15, label %L13, label %L9
L4:
    %r52 = icmp slt i32 %r49,%r14
    br i1 %r52, label %L3, label %L5
L5:
    ret void
L7:
    %r57 = phi i32 [%r41,%L8],[%r12,%L13]
    %r20 = load i32, ptr %r19
    %r22 = getelementptr i32, ptr %r0, i32 %r57
    %r23 = load i32, ptr %r22
    %r24 = icmp sgt i32 %r20,%r23
    br i1 %r24, label %L10, label %L11
L8:
    %r44 = icmp slt i32 %r41,%r43
    br i1 %r44, label %L7, label %L9
L9:
    %r49 = add i32 %r59,1
    br label %L4
L10:
    %r29 = getelementptr i32, ptr %r0, i32 %r59
    %r30 = load i32, ptr %r29
    %r32 = getelementptr i32, ptr %r0, i32 %r57
    %r33 = load i32, ptr %r32
    store i32 %r33, ptr %r29
    store i32 %r30, ptr %r32
    br label %L11
L11:
    %r41 = add i32 %r57,1
    br label %L8
L12:
    %r14 = load i32, ptr @n
    br label %L3
L13:
    %r19 = getelementptr i32, ptr %r0, i32 %r59
    %r43 = load i32, ptr @n
    br label %L7
}
define void @sortB(ptr %r0)
{
L0:
    br label %L1
L1:
    %r7 = load i32, ptr @n
    %r8 = icmp slt i32 0,%r7
    br i1 %r8, label %L16, label %L5
L3:
    %r84 = phi i32 [%r34,%L4],[0,%L16]
    %r82 = phi i32 [%r81,%L4],[-100,%L16]
    %r12 = getelementptr i32, ptr %r0, i32 %r84
    %r13 = load i32, ptr %r12
    %r14 = getelementptr [400020 x i32], ptr @cnt, i32 0, i32 %r13
    %r15 = load i32, ptr %r14
    %r17 = add i32 %r15,1
    store i32 %r17, ptr %r14
    %r24 = load i32, ptr %r12
    %r26 = icmp sgt i32 %r24,%r82
    br i1 %r26, label %L6, label %L7
L4:
    %r37 = icmp slt i32 %r34,%r36
    br i1 %r37, label %L3, label %L5
L5:
    %r83 = phi i32 [-100,%L1],[%r81,%L4]
    %r45 = icmp sle i32 0,%r83
    br i1 %r45, label %L17, label %L11
L6:
    %r30 = getelementptr i32, ptr %r0, i32 %r84
    %r31 = load i32, ptr %r30
    br label %L7
L7:
    %r81 = phi i32 [%r82,%L3],[%r31,%L6]
    %r34 = add i32 %r84,1
    br label %L4
L9:
    %r86 = phi i32 [%r67,%L10],[0,%L17]
    %r79 = phi i32 [%r78,%L10],[0,%L17]
    %r50 = getelementptr [400020 x i32], ptr @cnt, i32 0, i32 %r86
    %r51 = load i32, ptr %r50
    %r53 = icmp ne i32 %r51,0
    br i1 %r53, label %L18, label %L15
L10:
    %r70 = icmp sle i32 %r67,%r83
    br i1 %r70, label %L9, label %L11
L11:
    ret void
L13:
    %r77 = phi i32 [%r59,%L14],[%r79,%L18]
    %r75 = phi i32 [%r62,%L14],[%r51,%L18]
    %r56 = getelementptr i32, ptr %r0, i32 %r77
    store i32 %r86, ptr %r56
    %r59 = add i32 %r77,1
    %r62 = sub i32 %r75,1
    br label %L14
L14:
    %r64 = icmp ne i32 %r62,0
    br i1 %r64, label %L13, label %L15
L15:
    %r78 = phi i32 [%r79,%L9],[%r59,%L14]
    %r67 = add i32 %r86,1
    br label %L10
L16:
    %r36 = load i32, ptr @n
    br label %L3
L17:
    br label %L9
L18:
    br label %L13
}
define void @sortC(ptr %r0)
{
L0:
    br label %L1
L1:
    %r4 = load i32, ptr @n
    %r5 = icmp slt i32 0,%r4
    br i1 %r5, label %L12, label %L5
L3:
    %r66 = phi i32 [%r51,%L4],[0,%L12]
    %r13 = add i32 %r66,1
    %r16 = icmp slt i32 %r13,%r15
    br i1 %r16, label %L13, label %L9
L4:
    %r54 = icmp slt i32 %r51,%r15
    br i1 %r54, label %L3, label %L5
L5:
    ret void
L7:
    %r64 = phi i32 [%r63,%L8],[%r66,%L13]
    %r59 = phi i32 [%r31,%L8],[%r13,%L13]
    %r20 = getelementptr i32, ptr %r0, i32 %r59
    %r21 = load i32, ptr %r20
    %r23 = getelementptr i32, ptr %r0, i32 %r64
    %r24 = load i32, ptr %r23
    %r25 = icmp slt i32 %r21,%r24
    br i1 %r25, label %L10, label %L11
L8:
    %r34 = icmp slt i32 %r31,%r33
    br i1 %r34, label %L7, label %L9
L9:
    %r65 = phi i32 [%r66,%L3],[%r63,%L8]
    %r39 = getelementptr i32, ptr %r0, i32 %r66
    %r40 = load i32, ptr %r39
    %r42 = getelementptr i32, ptr %r0, i32 %r65
    %r43 = load i32, ptr %r42
    store i32 %r43, ptr %r39
    store i32 %r40, ptr %r42
    %r51 = add i32 %r66,1
    br label %L4
L10:
    br label %L11
L11:
    %r63 = phi i32 [%r64,%L7],[%r59,%L10]
    %r31 = add i32 %r59,1
    br label %L8
L12:
    %r15 = load i32, ptr @n
    br label %L3
L13:
    %r33 = load i32, ptr @n
    br label %L7
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    %r4 = load i32, ptr @n
    %r5 = icmp ne i32 0,%r4
    br i1 %r5, label %L18, label %L5
L3:
    %r90 = phi i32 [%r23,%L4],[0,%L18]
    %r8 = call i32 @quick_read()
    %r10 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r90
    store i32 %r8, ptr %r10
    %r13 = load i32, ptr %r10
    %r15 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r90
    store i32 %r13, ptr %r15
    %r18 = load i32, ptr %r15
    %r20 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r90
    store i32 %r18, ptr %r20
    %r23 = add i32 %r90,1
    br label %L4
L4:
    %r25 = load i32, ptr @n
    %r26 = icmp ne i32 %r23,%r25
    br i1 %r26, label %L3, label %L5
L5:
    %r29 = getelementptr i32, ptr @a, i32 0
    call void @sortA(ptr %r29)
    %r30 = getelementptr i32, ptr @b, i32 0
    call void @sortB(ptr %r30)
    %r31 = getelementptr i32, ptr @c, i32 0
    call void @sortC(ptr %r31)
    %r33 = load i32, ptr @n
    %r35 = sub i32 %r33,0
    %r36 = icmp ne i32 %r35,0
    br i1 %r36, label %L19, label %L9
L7:
    %r92 = phi i32 [%r61,%L8],[0,%L19]
    %r38 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r92
    %r39 = load i32, ptr %r38
    %r41 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r92
    %r42 = load i32, ptr %r41
    %r43 = sub i32 %r39,%r42
    store i32 %r43, ptr %r38
    %r47 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r92
    %r48 = load i32, ptr %r47
    %r51 = load i32, ptr %r38
    %r52 = sub i32 %r48,%r51
    %r55 = load i32, ptr %r41
    %r56 = sub i32 %r52,%r55
    store i32 %r56, ptr %r47
    %r61 = add i32 %r92,1
    br label %L8
L8:
    %r64 = sub i32 %r62,%r61
    %r65 = icmp ne i32 %r64,0
    br i1 %r65, label %L7, label %L9
L9:
    %r68 = load i32, ptr @n
    %r69 = sub i32 0,%r68
    %r70 = icmp ne i32 %r69,0
    br i1 %r70, label %L20, label %L13
L11:
    %r94 = phi i32 [%r83,%L12],[0,%L20]
    %r72 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r94
    %r73 = load i32, ptr %r72
    %r74 = icmp ne i32 %r73,0
    br i1 %r74, label %L14, label %L15
L12:
    %r85 = load i32, ptr @n
    %r86 = sub i32 %r83,%r85
    %r87 = icmp ne i32 %r86,0
    br i1 %r87, label %L11, label %L13
L13:
    ret i32 -123
L14:
    ret i32 1
L15:
    %r77 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r94
    %r78 = load i32, ptr %r77
    %r79 = icmp ne i32 %r78,0
    br i1 %r79, label %L16, label %L17
L16:
    ret i32 2
L17:
    %r83 = add i32 %r94,1
    br label %L12
L18:
    br label %L3
L19:
    %r62 = load i32, ptr @n
    br label %L7
L20:
    br label %L11
}
