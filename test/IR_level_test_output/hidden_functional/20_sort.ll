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
declare void @starttime()
declare void @stoptime()
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
    %r1 = call i32 @getch()
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L1
L1:
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,48
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L2, label %L4
L2:
    %r19 = load i32, ptr %r0
    %r20 = add i32 0,45
    %r21 = icmp eq i32 %r19,%r20
    br i1 %r21, label %L6, label %L7
L3:
    br label %L8
L4:
    %r11 = load i32, ptr %r0
    %r12 = add i32 0,57
    %r13 = icmp sgt i32 %r11,%r12
    br i1 %r13, label %L2, label %L3
L6:
    %r24 = add i32 0,1
    store i32 %r24, ptr %r4
    br label %L7
L7:
    %r25 = call i32 @getch()
    store i32 %r25, ptr %r0
    br label %L1
L8:
    %r26 = load i32, ptr %r0
    %r27 = add i32 0,48
    %r28 = icmp sge i32 %r26,%r27
    br i1 %r28, label %L11, label %L10
L9:
    %r39 = load i32, ptr %r2
    %r40 = add i32 0,10
    %r41 = mul i32 %r39,%r40
    %r42 = load i32, ptr %r0
    %r43 = add i32 %r41,%r42
    %r44 = add i32 0,48
    %r45 = sub i32 %r43,%r44
    store i32 %r45, ptr %r2
    %r46 = call i32 @getch()
    store i32 %r46, ptr %r0
    br label %L8
L10:
    %r47 = load i32, ptr %r4
    %r48 = icmp ne i32 %r47,0
    br i1 %r48, label %L13, label %L14
L11:
    %r31 = load i32, ptr %r0
    %r32 = add i32 0,57
    %r33 = icmp sle i32 %r31,%r32
    br i1 %r33, label %L9, label %L10
L13:
    %r49 = load i32, ptr %r2
    %r50 = sub i32 0,%r49
    ret i32 %r50
L14:
    %r51 = load i32, ptr %r2
    ret i32 %r51
}
define void @sortA(ptr %r0)
{
L0:
    %r27 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    br label %L1
L1:
    %r5 = load i32, ptr %r1
    %r6 = load i32, ptr @n
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r10 = load i32, ptr %r1
    %r11 = add i32 0,1
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r3
    br label %L4
L3:
    ret void
L4:
    %r13 = load i32, ptr %r3
    %r14 = load i32, ptr @n
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L5, label %L6
L5:
    %r18 = load i32, ptr %r1
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = load i32, ptr %r3
    %r22 = getelementptr i32, ptr %r0, i32 %r21
    %r23 = load i32, ptr %r22
    %r24 = icmp sgt i32 %r20,%r23
    br i1 %r24, label %L7, label %L8
L6:
    %r42 = load i32, ptr %r1
    %r43 = add i32 0,1
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r1
    br label %L1
L7:
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
    br label %L8
L8:
    %r39 = load i32, ptr %r3
    %r40 = add i32 0,1
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r3
    br label %L4
}
define void @sortB(ptr %r0)
{
L0:
    %r43 = alloca i32
    %r36 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 0,100
    %r5 = sub i32 0,%r4
    store i32 %r5, ptr %r3
    br label %L1
L1:
    %r6 = load i32, ptr %r1
    %r7 = load i32, ptr @n
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
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
    br i1 %r26, label %L4, label %L5
L3:
    %r35 = add i32 0,0
    store i32 %r35, ptr %r1
    %r37 = add i32 0,0
    store i32 %r37, ptr %r36
    br label %L6
L4:
    %r29 = load i32, ptr %r1
    %r30 = getelementptr i32, ptr %r0, i32 %r29
    %r31 = load i32, ptr %r30
    store i32 %r31, ptr %r3
    br label %L5
L5:
    %r32 = load i32, ptr %r1
    %r33 = add i32 0,1
    %r34 = add i32 %r32,%r33
    store i32 %r34, ptr %r1
    br label %L1
L6:
    %r38 = load i32, ptr %r1
    %r39 = load i32, ptr %r3
    %r40 = icmp sle i32 %r38,%r39
    br i1 %r40, label %L7, label %L8
L7:
    %r44 = load i32, ptr %r1
    %r45 = getelementptr [400020 x i32], ptr @cnt, i32 0, i32 %r44
    %r46 = load i32, ptr %r45
    store i32 %r46, ptr %r43
    br label %L9
L8:
    ret void
L9:
    %r47 = load i32, ptr %r43
    %r48 = icmp ne i32 %r47,0
    br i1 %r48, label %L10, label %L11
L10:
    %r49 = load i32, ptr %r1
    %r50 = load i32, ptr %r36
    %r51 = getelementptr i32, ptr %r0, i32 %r50
    store i32 %r49, ptr %r51
    %r52 = load i32, ptr %r36
    %r53 = add i32 0,1
    %r54 = add i32 %r52,%r53
    store i32 %r54, ptr %r36
    %r55 = load i32, ptr %r43
    %r56 = add i32 0,1
    %r57 = sub i32 %r55,%r56
    store i32 %r57, ptr %r43
    br label %L9
L11:
    %r58 = load i32, ptr %r1
    %r59 = add i32 0,1
    %r60 = add i32 %r58,%r59
    store i32 %r60, ptr %r1
    br label %L6
}
define void @sortC(ptr %r0)
{
L0:
    %r32 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r1 = alloca i32
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    br label %L1
L1:
    %r3 = load i32, ptr %r1
    %r4 = load i32, ptr @n
    %r5 = icmp slt i32 %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r9 = load i32, ptr %r1
    store i32 %r9, ptr %r8
    %r11 = load i32, ptr %r1
    %r12 = add i32 0,1
    %r13 = add i32 %r11,%r12
    store i32 %r13, ptr %r10
    br label %L4
L3:
    ret void
L4:
    %r14 = load i32, ptr %r10
    %r15 = load i32, ptr @n
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L5, label %L6
L5:
    %r19 = load i32, ptr %r10
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r8
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = icmp slt i32 %r21,%r24
    br i1 %r25, label %L7, label %L8
L6:
    %r33 = load i32, ptr %r1
    %r34 = getelementptr i32, ptr %r0, i32 %r33
    %r35 = load i32, ptr %r34
    store i32 %r35, ptr %r32
    %r36 = load i32, ptr %r8
    %r37 = getelementptr i32, ptr %r0, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = load i32, ptr %r1
    %r40 = getelementptr i32, ptr %r0, i32 %r39
    store i32 %r38, ptr %r40
    %r41 = load i32, ptr %r32
    %r42 = load i32, ptr %r8
    %r43 = getelementptr i32, ptr %r0, i32 %r42
    store i32 %r41, ptr %r43
    %r44 = load i32, ptr %r1
    %r45 = add i32 0,1
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r1
    br label %L1
L7:
    %r28 = load i32, ptr %r10
    store i32 %r28, ptr %r8
    br label %L8
L8:
    %r29 = load i32, ptr %r10
    %r30 = add i32 0,1
    %r31 = add i32 %r29,%r30
    store i32 %r31, ptr %r10
    br label %L4
}
define i32 @main()
{
L0:
    %r1 = alloca i32
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    br label %L1
L1:
    %r3 = load i32, ptr %r1
    %r4 = load i32, ptr @n
    %r5 = icmp ne i32 %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
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
    br label %L1
L3:
    %r24 = getelementptr i32, ptr @a, i32 0
    call void @sortA(ptr %r24)
    %r25 = getelementptr i32, ptr @b, i32 0
    call void @sortB(ptr %r25)
    %r26 = getelementptr i32, ptr @c, i32 0
    call void @sortC(ptr %r26)
    %r27 = add i32 0,0
    store i32 %r27, ptr %r1
    br label %L4
L4:
    %r28 = load i32, ptr @n
    %r29 = load i32, ptr %r1
    %r30 = sub i32 %r28,%r29
    %r31 = icmp ne i32 %r30,0
    br i1 %r31, label %L5, label %L6
L5:
    %r32 = load i32, ptr %r1
    %r33 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = load i32, ptr %r1
    %r36 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = sub i32 %r34,%r37
    %r39 = load i32, ptr %r1
    %r40 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r39
    store i32 %r38, ptr %r40
    %r41 = load i32, ptr %r1
    %r42 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = load i32, ptr %r1
    %r45 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = sub i32 %r43,%r46
    %r48 = load i32, ptr %r1
    %r49 = getelementptr [100005 x i32], ptr @a, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = sub i32 %r47,%r50
    %r52 = load i32, ptr %r1
    %r53 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r52
    store i32 %r51, ptr %r53
    %r54 = load i32, ptr %r1
    %r55 = add i32 0,1
    %r56 = add i32 %r54,%r55
    store i32 %r56, ptr %r1
    br label %L4
L6:
    %r57 = add i32 0,0
    store i32 %r57, ptr %r1
    br label %L7
L7:
    %r58 = load i32, ptr %r1
    %r59 = load i32, ptr @n
    %r60 = sub i32 %r58,%r59
    %r61 = icmp ne i32 %r60,0
    br i1 %r61, label %L8, label %L9
L8:
    %r62 = load i32, ptr %r1
    %r63 = getelementptr [100005 x i32], ptr @b, i32 0, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = icmp ne i32 %r64,0
    br i1 %r65, label %L10, label %L11
L9:
    %r75 = add i32 0,123
    %r76 = sub i32 0,%r75
    ret i32 %r76
L10:
    %r66 = add i32 0,1
    ret i32 %r66
L11:
    %r67 = load i32, ptr %r1
    %r68 = getelementptr [100005 x i32], ptr @c, i32 0, i32 %r67
    %r69 = load i32, ptr %r68
    %r70 = icmp ne i32 %r69,0
    br i1 %r70, label %L12, label %L13
L12:
    %r71 = add i32 0,2
    ret i32 %r71
L13:
    %r72 = load i32, ptr %r1
    %r73 = add i32 0,1
    %r74 = add i32 %r72,%r73
    store i32 %r74, ptr %r1
    br label %L7
}
