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
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getch()
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,48
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L6
L3:
    %r19 = load i32, ptr %r0
    %r20 = add i32 0,45
    %r21 = icmp eq i32 %r19,%r20
    br i1 %r21, label %L8, label %L9
L4:
    %r26 = load i32, ptr %r0
    %r27 = add i32 0,48
    %r28 = icmp slt i32 %r26,%r27
    br i1 %r28, label %L3, label %L10
L5:
    %r39 = load i32, ptr %r0
    %r40 = add i32 0,48
    %r41 = icmp sge i32 %r39,%r40
    br i1 %r41, label %L16, label %L15
L6:
    %r11 = load i32, ptr %r0
    %r12 = add i32 0,57
    %r13 = icmp sgt i32 %r11,%r12
    br i1 %r13, label %L3, label %L5
L8:
    %r24 = add i32 0,1
    store i32 %r24, ptr %r4
    br label %L9
L9:
    %r25 = call i32 @getch()
    store i32 %r25, ptr %r0
    br label %L4
L10:
    %r31 = load i32, ptr %r0
    %r32 = add i32 0,57
    %r33 = icmp sgt i32 %r31,%r32
    br i1 %r33, label %L3, label %L5
L13:
    %r52 = load i32, ptr %r2
    %r53 = add i32 0,10
    %r54 = mul i32 %r52,%r53
    %r55 = load i32, ptr %r0
    %r56 = add i32 %r54,%r55
    %r57 = add i32 0,48
    %r58 = sub i32 %r56,%r57
    store i32 %r58, ptr %r2
    %r59 = call i32 @getch()
    store i32 %r59, ptr %r0
    br label %L14
L14:
    %r60 = load i32, ptr %r0
    %r61 = add i32 0,48
    %r62 = icmp sge i32 %r60,%r61
    br i1 %r62, label %L18, label %L15
L15:
    %r73 = load i32, ptr %r4
    %r74 = icmp ne i32 %r73,0
    br i1 %r74, label %L20, label %L21
L16:
    %r44 = load i32, ptr %r0
    %r45 = add i32 0,57
    %r46 = icmp sle i32 %r44,%r45
    br i1 %r46, label %L13, label %L15
L18:
    %r65 = load i32, ptr %r0
    %r66 = add i32 0,57
    %r67 = icmp sle i32 %r65,%r66
    br i1 %r67, label %L13, label %L15
L20:
    %r75 = load i32, ptr %r2
    %r76 = sub i32 0,%r75
    ret i32 %r76
L21:
    %r77 = load i32, ptr %r2
    ret i32 %r77
}
define void @sortA(ptr %r0)
{
L0:
    %r27 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr %r1
    %r6 = load i32, ptr @n
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L3, label %L5
L3:
    %r10 = load i32, ptr %r1
    %r11 = add i32 0,1
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r3
    %r13 = load i32, ptr %r3
    %r14 = load i32, ptr @n
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L7, label %L9
L4:
    %r50 = load i32, ptr %r1
    %r51 = load i32, ptr @n
    %r52 = icmp slt i32 %r50,%r51
    br i1 %r52, label %L3, label %L5
L5:
    ret void
L7:
    %r18 = load i32, ptr %r1
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = load i32, ptr %r3
    %r22 = getelementptr i32, ptr %r0, i32 %r21
    %r23 = load i32, ptr %r22
    %r24 = icmp sgt i32 %r20,%r23
    br i1 %r24, label %L10, label %L11
L8:
    %r42 = load i32, ptr %r3
    %r43 = load i32, ptr @n
    %r44 = icmp slt i32 %r42,%r43
    br i1 %r44, label %L7, label %L9
L9:
    %r47 = load i32, ptr %r1
    %r48 = add i32 0,1
    %r49 = add i32 %r47,%r48
    store i32 %r49, ptr %r1
    br label %L4
L10:
    %r28 = load i32, ptr %r1
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r29
    store i32 %r30, ptr %r27
    %r31 = load i32, ptr %r3
    %r32 = getelementptr i32, ptr %r0, i32 %r31
    %r33 = load i32, ptr %r32
    %r34 = load i32, ptr %r1
    %r35 = getelementptr i32, ptr %r0, i32 %r34
    store i32 %r33, ptr %r35
    %r36 = load i32, ptr %r27
    %r37 = load i32, ptr %r3
    %r38 = getelementptr i32, ptr %r0, i32 %r37
    store i32 %r36, ptr %r38
    br label %L11
L11:
    %r39 = load i32, ptr %r3
    %r40 = add i32 0,1
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r3
    br label %L8
}
define void @sortB(ptr %r0)
{
L0:
    %r48 = alloca i32
    %r41 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 0,100
    %r5 = sub i32 0,%r4
    store i32 %r5, ptr %r3
    %r6 = load i32, ptr %r1
    %r7 = load i32, ptr @n
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L5
L3:
    %r11 = load i32, ptr %r1
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = getelementptr [400020 x i32], ptr @cnt, i32 0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = add i32 0,1
    %r17 = add i32 %r15,%r16
    %r18 = load i32, ptr %r1
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = getelementptr [400020 x i32], ptr @cnt, i32 0, i32 %r20
    store i32 %r17, ptr %r21
    %r22 = load i32, ptr %r1
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = load i32, ptr %r3
    %r26 = icmp sgt i32 %r24,%r25
    br i1 %r26, label %L6, label %L7
L4:
    %r35 = load i32, ptr %r1
    %r36 = load i32, ptr @n
    %r37 = icmp slt i32 %r35,%r36
    br i1 %r37, label %L3, label %L5
L5:
    %r40 = add i32 0,0
    store i32 %r40, ptr %r1
    %r42 = add i32 0,0
    store i32 %r42, ptr %r41
    %r43 = load i32, ptr %r1
    %r44 = load i32, ptr %r3
    %r45 = icmp sle i32 %r43,%r44
    br i1 %r45, label %L9, label %L11
L6:
    %r29 = load i32, ptr %r1
    %r30 = getelementptr i32, ptr %r0, i32 %r29
    %r31 = load i32, ptr %r30
    store i32 %r31, ptr %r3
    br label %L7
L7:
    %r32 = load i32, ptr %r1
    %r33 = add i32 0,1
    %r34 = add i32 %r32,%r33
    store i32 %r34, ptr %r1
    br label %L4
L9:
    %r49 = load i32, ptr %r1
    %r50 = getelementptr [400020 x i32], ptr @cnt, i32 0, i32 %r49
    %r51 = load i32, ptr %r50
    store i32 %r51, ptr %r48
    %r52 = load i32, ptr %r48
    %r53 = icmp ne i32 %r52,0
    br i1 %r53, label %L13, label %L15
L10:
    %r68 = load i32, ptr %r1
    %r69 = load i32, ptr %r3
    %r70 = icmp sle i32 %r68,%r69
    br i1 %r70, label %L9, label %L11
L11:
    ret void
L13:
    %r54 = load i32, ptr %r1
    %r55 = load i32, ptr %r41
    %r56 = getelementptr i32, ptr %r0, i32 %r55
    store i32 %r54, ptr %r56
    %r57 = load i32, ptr %r41
    %r58 = add i32 0,1
    %r59 = add i32 %r57,%r58
    store i32 %r59, ptr %r41
    %r60 = load i32, ptr %r48
    %r61 = add i32 0,1
    %r62 = sub i32 %r60,%r61
    store i32 %r62, ptr %r48
    br label %L14
L14:
    %r63 = load i32, ptr %r48
    %r64 = icmp ne i32 %r63,0
    br i1 %r64, label %L13, label %L15
L15:
    %r65 = load i32, ptr %r1
    %r66 = add i32 0,1
    %r67 = add i32 %r65,%r66
    store i32 %r67, ptr %r1
    br label %L10
}
define void @sortC(ptr %r0)
{
L0:
    %r37 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r3 = load i32, ptr %r1
    %r4 = load i32, ptr @n
    %r5 = icmp slt i32 %r3,%r4
    br i1 %r5, label %L3, label %L5
L3:
    %r9 = load i32, ptr %r1
    store i32 %r9, ptr %r8
    %r11 = load i32, ptr %r1
    %r12 = add i32 0,1
    %r13 = add i32 %r11,%r12
    store i32 %r13, ptr %r10
    %r14 = load i32, ptr %r10
    %r15 = load i32, ptr @n
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L7, label %L9
L4:
    %r52 = load i32, ptr %r1
    %r53 = load i32, ptr @n
    %r54 = icmp slt i32 %r52,%r53
    br i1 %r54, label %L3, label %L5
L5:
    ret void
L7:
    %r19 = load i32, ptr %r10
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r8
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = icmp slt i32 %r21,%r24
    br i1 %r25, label %L10, label %L11
L8:
    %r32 = load i32, ptr %r10
    %r33 = load i32, ptr @n
    %r34 = icmp slt i32 %r32,%r33
    br i1 %r34, label %L7, label %L9
L9:
    %r38 = load i32, ptr %r1
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r39
    store i32 %r40, ptr %r37
    %r41 = load i32, ptr %r8
    %r42 = getelementptr i32, ptr %r0, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = load i32, ptr %r1
    %r45 = getelementptr i32, ptr %r0, i32 %r44
    store i32 %r43, ptr %r45
    %r46 = load i32, ptr %r37
    %r47 = load i32, ptr %r8
    %r48 = getelementptr i32, ptr %r0, i32 %r47
    store i32 %r46, ptr %r48
    %r49 = load i32, ptr %r1
    %r50 = add i32 0,1
    %r51 = add i32 %r49,%r50
    store i32 %r51, ptr %r1
    br label %L4
L10:
    %r28 = load i32, ptr %r10
    store i32 %r28, ptr %r8
    br label %L11
L11:
    %r29 = load i32, ptr %r10
    %r30 = add i32 0,1
    %r31 = add i32 %r29,%r30
    store i32 %r31, ptr %r10
    br label %L8
}
define i32 @main()
{
L0:
    %r1 = alloca i32
    br label %L1
L1:
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r3 = load i32, ptr %r1
    %r4 = load i32, ptr @n
    %r5 = icmp ne i32 %r3,%r4
    br i1 %r5, label %L3, label %L5
L3:
    %r8 = call i32 @quick_read()
    %r9 = load i32, ptr %r1
    %r10 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r9
    store i32 %r8, ptr %r10
    %r11 = load i32, ptr %r1
    %r12 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = load i32, ptr %r1
    %r15 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r14
    store i32 %r13, ptr %r15
    %r16 = load i32, ptr %r1
    %r17 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r16
    %r18 = load i32, ptr %r17
    %r19 = load i32, ptr %r1
    %r20 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r19
    store i32 %r18, ptr %r20
    %r21 = load i32, ptr %r1
    %r22 = add i32 0,1
    %r23 = add i32 %r21,%r22
    store i32 %r23, ptr %r1
    br label %L4
L4:
    %r24 = load i32, ptr %r1
    %r25 = load i32, ptr @n
    %r26 = icmp ne i32 %r24,%r25
    br i1 %r26, label %L3, label %L5
L5:
    %r29 = getelementptr i32, ptr @a, i32 0
    call void @sortA(ptr %r29)
    %r30 = getelementptr i32, ptr @b, i32 0
    call void @sortB(ptr %r30)
    %r31 = getelementptr i32, ptr @c, i32 0
    call void @sortC(ptr %r31)
    %r32 = add i32 0,0
    store i32 %r32, ptr %r1
    %r33 = load i32, ptr @n
    %r34 = load i32, ptr %r1
    %r35 = sub i32 %r33,%r34
    %r36 = icmp ne i32 %r35,0
    br i1 %r36, label %L7, label %L9
L7:
    %r37 = load i32, ptr %r1
    %r38 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r37
    %r39 = load i32, ptr %r38
    %r40 = load i32, ptr %r1
    %r41 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r40
    %r42 = load i32, ptr %r41
    %r43 = sub i32 %r39,%r42
    %r44 = load i32, ptr %r1
    %r45 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r44
    store i32 %r43, ptr %r45
    %r46 = load i32, ptr %r1
    %r47 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = load i32, ptr %r1
    %r50 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r49
    %r51 = load i32, ptr %r50
    %r52 = sub i32 %r48,%r51
    %r53 = load i32, ptr %r1
    %r54 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = sub i32 %r52,%r55
    %r57 = load i32, ptr %r1
    %r58 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r57
    store i32 %r56, ptr %r58
    %r59 = load i32, ptr %r1
    %r60 = add i32 0,1
    %r61 = add i32 %r59,%r60
    store i32 %r61, ptr %r1
    br label %L8
L8:
    %r62 = load i32, ptr @n
    %r63 = load i32, ptr %r1
    %r64 = sub i32 %r62,%r63
    %r65 = icmp ne i32 %r64,0
    br i1 %r65, label %L7, label %L9
L9:
    %r66 = add i32 0,0
    store i32 %r66, ptr %r1
    %r67 = load i32, ptr %r1
    %r68 = load i32, ptr @n
    %r69 = sub i32 %r67,%r68
    %r70 = icmp ne i32 %r69,0
    br i1 %r70, label %L11, label %L13
L11:
    %r71 = load i32, ptr %r1
    %r72 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r71
    %r73 = load i32, ptr %r72
    %r74 = icmp ne i32 %r73,0
    br i1 %r74, label %L14, label %L15
L12:
    %r84 = load i32, ptr %r1
    %r85 = load i32, ptr @n
    %r86 = sub i32 %r84,%r85
    %r87 = icmp ne i32 %r86,0
    br i1 %r87, label %L11, label %L13
L13:
    %r88 = add i32 0,123
    %r89 = sub i32 0,%r88
    ret i32 %r89
L14:
    %r75 = add i32 0,1
    ret i32 %r75
L15:
    %r76 = load i32, ptr %r1
    %r77 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r76
    %r78 = load i32, ptr %r77
    %r79 = icmp ne i32 %r78,0
    br i1 %r79, label %L16, label %L17
L16:
    %r80 = add i32 0,2
    ret i32 %r80
L17:
    %r81 = load i32, ptr %r1
    %r82 = add i32 0,1
    %r83 = add i32 %r81,%r82
    store i32 %r83, ptr %r1
    br label %L12
}
