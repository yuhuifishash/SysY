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
define i32 @find(i32 %r0)
{
L0:
    %r10 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = load i32, ptr %r1
    %r4 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r3
    %r5 = load i32, ptr %r4
    %r6 = icmp eq i32 %r2,%r5
    br i1 %r6, label %L1, label %L2
L1:
    %r9 = load i32, ptr %r1
    ret i32 %r9
L2:
    %r11 = load i32, ptr %r1
    %r12 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = call i32 @find(i32 %r13)
    store i32 %r14, ptr %r10
    %r15 = load i32, ptr %r10
    %r16 = load i32, ptr %r1
    %r17 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r16
    store i32 %r15, ptr %r17
    %r18 = load i32, ptr %r10
    ret i32 %r18
}
define i32 @same(i32 %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r2
    %r5 = call i32 @find(i32 %r4)
    store i32 %r5, ptr %r2
    %r6 = load i32, ptr %r3
    %r7 = call i32 @find(i32 %r6)
    store i32 %r7, ptr %r3
    %r8 = load i32, ptr %r2
    %r9 = load i32, ptr %r3
    %r10 = icmp eq i32 %r8,%r9
    br i1 %r10, label %L1, label %L2
L1:
    %r13 = add i32 0,1
    ret i32 %r13
L2:
    %r14 = add i32 0,0
    ret i32 %r14
}
define i32 @prim()
{
L0:
    %r78 = alloca i32
    %r25 = alloca i32
    %r7 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    br label %L1
L1:
    %r2 = load i32, ptr %r0
    %r3 = load i32, ptr @m
    %r4 = icmp slt i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r8 = load i32, ptr %r0
    %r9 = add i32 0,1
    %r10 = add i32 %r8,%r9
    store i32 %r10, ptr %r7
    br label %L4
L3:
    %r65 = add i32 0,1
    store i32 %r65, ptr %r0
    br label %L9
L4:
    %r11 = load i32, ptr %r7
    %r12 = load i32, ptr @m
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L5, label %L6
L5:
    %r16 = load i32, ptr %r0
    %r17 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r16
    %r18 = load i32, ptr %r17
    %r19 = load i32, ptr %r7
    %r20 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = icmp sgt i32 %r18,%r21
    br i1 %r22, label %L7, label %L8
L6:
    %r62 = load i32, ptr %r0
    %r63 = add i32 0,1
    %r64 = add i32 %r62,%r63
    store i32 %r64, ptr %r0
    br label %L1
L7:
    %r26 = load i32, ptr %r0
    %r27 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r26
    %r28 = load i32, ptr %r27
    store i32 %r28, ptr %r25
    %r29 = load i32, ptr %r7
    %r30 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = load i32, ptr %r0
    %r33 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r32
    store i32 %r31, ptr %r33
    %r34 = load i32, ptr %r25
    %r35 = load i32, ptr %r7
    %r36 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r35
    store i32 %r34, ptr %r36
    %r37 = load i32, ptr %r0
    %r38 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r37
    %r39 = load i32, ptr %r38
    store i32 %r39, ptr %r25
    %r40 = load i32, ptr %r7
    %r41 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r40
    %r42 = load i32, ptr %r41
    %r43 = load i32, ptr %r0
    %r44 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r43
    store i32 %r42, ptr %r44
    %r45 = load i32, ptr %r25
    %r46 = load i32, ptr %r7
    %r47 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r46
    store i32 %r45, ptr %r47
    %r48 = load i32, ptr %r0
    %r49 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    store i32 %r50, ptr %r25
    %r51 = load i32, ptr %r7
    %r52 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = load i32, ptr %r0
    %r55 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r54
    store i32 %r53, ptr %r55
    %r56 = load i32, ptr %r25
    %r57 = load i32, ptr %r7
    %r58 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r57
    store i32 %r56, ptr %r58
    br label %L8
L8:
    %r59 = load i32, ptr %r7
    %r60 = add i32 0,1
    %r61 = add i32 %r59,%r60
    store i32 %r61, ptr %r7
    br label %L4
L9:
    %r66 = load i32, ptr %r0
    %r67 = load i32, ptr @n
    %r68 = icmp sle i32 %r66,%r67
    br i1 %r68, label %L10, label %L11
L10:
    %r71 = load i32, ptr %r0
    %r72 = load i32, ptr %r0
    %r73 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r72
    store i32 %r71, ptr %r73
    %r74 = load i32, ptr %r0
    %r75 = add i32 0,1
    %r76 = add i32 %r74,%r75
    store i32 %r76, ptr %r0
    br label %L9
L11:
    %r77 = add i32 0,0
    store i32 %r77, ptr %r0
    %r79 = add i32 0,0
    store i32 %r79, ptr %r78
    br label %L12
L12:
    %r80 = load i32, ptr %r0
    %r81 = load i32, ptr @m
    %r82 = icmp slt i32 %r80,%r81
    br i1 %r82, label %L13, label %L14
L13:
    %r85 = load i32, ptr %r0
    %r86 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r85
    %r87 = load i32, ptr %r86
    %r88 = load i32, ptr %r0
    %r89 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r88
    %r90 = load i32, ptr %r89
    %r91 = call i32 @same(i32 %r87,i32 %r90)
    %r92 = icmp ne i32 %r91,0
    br i1 %r92, label %L15, label %L16
L14:
    %r109 = load i32, ptr %r78
    ret i32 %r109
L15:
    br label %L12
L16:
    %r93 = load i32, ptr %r78
    %r94 = load i32, ptr %r0
    %r95 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r94
    %r96 = load i32, ptr %r95
    %r97 = add i32 %r93,%r96
    store i32 %r97, ptr %r78
    %r98 = load i32, ptr %r0
    %r99 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r98
    %r100 = load i32, ptr %r99
    %r101 = load i32, ptr %r0
    %r102 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r101
    %r103 = load i32, ptr %r102
    %r104 = call i32 @find(i32 %r103)
    %r105 = getelementptr [1005 x i32], ptr @fa, i32 0, i32 %r104
    store i32 %r100, ptr %r105
    %r106 = load i32, ptr %r0
    %r107 = add i32 0,1
    %r108 = add i32 %r106,%r107
    store i32 %r108, ptr %r0
    br label %L12
}
define i32 @main()
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = call i32 @quick_read()
    store i32 %r1, ptr %r0
    %r3 = call i32 @quick_read()
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L1
L1:
    %r6 = load i32, ptr %r4
    %r7 = load i32, ptr %r2
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r11 = call i32 @quick_read()
    %r12 = load i32, ptr %r4
    %r13 = getelementptr [1005 x i32], ptr @u, i32 0, i32 %r12
    store i32 %r11, ptr %r13
    %r14 = call i32 @quick_read()
    %r15 = load i32, ptr %r4
    %r16 = getelementptr [1005 x i32], ptr @v, i32 0, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = call i32 @quick_read()
    %r18 = load i32, ptr %r4
    %r19 = getelementptr [1005 x i32], ptr @c, i32 0, i32 %r18
    store i32 %r17, ptr %r19
    %r20 = load i32, ptr %r4
    %r21 = add i32 0,1
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r4
    br label %L1
L3:
    %r23 = call i32 @prim()
    ret i32 %r23
}
