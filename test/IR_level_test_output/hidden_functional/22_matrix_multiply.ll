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
@MAX_SIZE = global i32 100
@a = global [100x [100x i32]] zeroinitializer
@b = global [100x [100x i32]] zeroinitializer
@res = global [100x [100x i32]] zeroinitializer
@n1 = global i32 zeroinitializer
@m1 = global i32 zeroinitializer
@n2 = global i32 zeroinitializer
@m2 = global i32 zeroinitializer
define void @matrix_multiply()
{
L0:
    %r14 = alloca i32
    %r7 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    br label %L1
L1:
    %r2 = load i32, ptr %r0
    %r3 = load i32, ptr @m1
    %r4 = icmp slt i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    br label %L4
L3:
    ret void
L4:
    %r9 = load i32, ptr %r7
    %r10 = load i32, ptr @n2
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L5, label %L6
L5:
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    br label %L7
L6:
    %r44 = load i32, ptr %r0
    %r45 = add i32 0,1
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r0
    br label %L1
L7:
    %r16 = load i32, ptr %r14
    %r17 = load i32, ptr @n1
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L8, label %L9
L8:
    %r21 = load i32, ptr %r0
    %r22 = load i32, ptr %r7
    %r23 = getelementptr [100 x [100 x i32]], ptr @res, i32 0, i32 %r21, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = load i32, ptr %r0
    %r26 = load i32, ptr %r14
    %r27 = getelementptr [100 x [100 x i32]], ptr @a, i32 0, i32 %r25, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = load i32, ptr %r14
    %r30 = load i32, ptr %r7
    %r31 = getelementptr [100 x [100 x i32]], ptr @b, i32 0, i32 %r29, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = mul i32 %r28,%r32
    %r34 = add i32 %r24,%r33
    %r35 = load i32, ptr %r0
    %r36 = load i32, ptr %r7
    %r37 = getelementptr [100 x [100 x i32]], ptr @res, i32 0, i32 %r35, i32 %r36
    store i32 %r34, ptr %r37
    %r38 = load i32, ptr %r14
    %r39 = add i32 0,1
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r14
    br label %L7
L9:
    %r41 = load i32, ptr %r7
    %r42 = add i32 0,1
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r7
    br label %L4
}
define i32 @main()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = call i32 @getint()
    store i32 %r4, ptr @m1
    %r5 = call i32 @getint()
    store i32 %r5, ptr @n1
    %r6 = add i32 0,0
    store i32 %r6, ptr %r0
    br label %L1
L1:
    %r7 = load i32, ptr %r0
    %r8 = load i32, ptr @m1
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
L2:
    %r12 = add i32 0,0
    store i32 %r12, ptr %r2
    br label %L4
L3:
    %r28 = call i32 @getint()
    store i32 %r28, ptr @m2
    %r29 = call i32 @getint()
    store i32 %r29, ptr @n2
    %r30 = add i32 0,0
    store i32 %r30, ptr %r0
    br label %L7
L4:
    %r13 = load i32, ptr %r2
    %r14 = load i32, ptr @n1
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L5, label %L6
L5:
    %r18 = call i32 @getint()
    %r19 = load i32, ptr %r0
    %r20 = load i32, ptr %r2
    %r21 = getelementptr [100 x [100 x i32]], ptr @a, i32 0, i32 %r19, i32 %r20
    store i32 %r18, ptr %r21
    %r22 = load i32, ptr %r2
    %r23 = add i32 0,1
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r2
    br label %L4
L6:
    %r25 = load i32, ptr %r0
    %r26 = add i32 0,1
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r0
    br label %L1
L7:
    %r31 = load i32, ptr %r0
    %r32 = load i32, ptr @m2
    %r33 = icmp slt i32 %r31,%r32
    br i1 %r33, label %L8, label %L9
L8:
    %r36 = add i32 0,0
    store i32 %r36, ptr %r2
    br label %L10
L9:
    call void @matrix_multiply()
    %r52 = add i32 0,0
    store i32 %r52, ptr %r0
    br label %L13
L10:
    %r37 = load i32, ptr %r2
    %r38 = load i32, ptr @n2
    %r39 = icmp slt i32 %r37,%r38
    br i1 %r39, label %L11, label %L12
L11:
    %r42 = call i32 @getint()
    %r43 = load i32, ptr %r0
    %r44 = load i32, ptr %r2
    %r45 = getelementptr [100 x [100 x i32]], ptr @b, i32 0, i32 %r43, i32 %r44
    store i32 %r42, ptr %r45
    %r46 = load i32, ptr %r2
    %r47 = add i32 0,1
    %r48 = add i32 %r46,%r47
    store i32 %r48, ptr %r2
    br label %L10
L12:
    %r49 = load i32, ptr %r0
    %r50 = add i32 0,1
    %r51 = add i32 %r49,%r50
    store i32 %r51, ptr %r0
    br label %L7
L13:
    %r53 = load i32, ptr %r0
    %r54 = load i32, ptr @m1
    %r55 = icmp slt i32 %r53,%r54
    br i1 %r55, label %L14, label %L15
L14:
    %r58 = add i32 0,0
    store i32 %r58, ptr %r2
    br label %L16
L15:
    %r76 = add i32 0,0
    ret i32 %r76
L16:
    %r59 = load i32, ptr %r2
    %r60 = load i32, ptr @n2
    %r61 = icmp slt i32 %r59,%r60
    br i1 %r61, label %L17, label %L18
L17:
    %r64 = load i32, ptr %r0
    %r65 = load i32, ptr %r2
    %r66 = getelementptr [100 x [100 x i32]], ptr @res, i32 0, i32 %r64, i32 %r65
    %r67 = load i32, ptr %r66
    call void @putint(i32 %r67)
    %r68 = add i32 0,32
    call void @putch(i32 %r68)
    %r69 = load i32, ptr %r2
    %r70 = add i32 0,1
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r2
    br label %L16
L18:
    %r72 = add i32 0,10
    call void @putch(i32 %r72)
    %r73 = load i32, ptr %r0
    %r74 = add i32 0,1
    %r75 = add i32 %r73,%r74
    store i32 %r75, ptr %r0
    br label %L13
}
