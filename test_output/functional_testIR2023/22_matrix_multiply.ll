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
    %r10 = alloca i32
    %r5 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    br label %L2
L2:
    %r2 = load i32, ptr %r0
    %r3 = load i32, ptr @m1
    %r4 = icmp slt i32 %r2,%r3
    br i1 %r4, label %L3, label %L4
L3:
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    br label %L5
L4:
    ret void
L5:
    %r7 = load i32, ptr %r5
    %r8 = load i32, ptr @n2
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L6, label %L7
L6:
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    br label %L8
L7:
    %r38 = load i32, ptr %r0
    %r39 = add i32 1,0
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r0
    br label %L2
L8:
    %r12 = load i32, ptr %r10
    %r13 = load i32, ptr @n1
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L9, label %L10
L9:
    %r15 = load i32, ptr %r0
    %r16 = load i32, ptr %r5
    %r17 = getelementptr [100 x [100 x i32]], ptr @res, i32 0, i32 %r15, i32 %r16
    %r18 = load i32, ptr %r0
    %r19 = load i32, ptr %r5
    %r20 = getelementptr [100 x [100 x i32]], ptr @res, i32 0, i32 %r18, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r0
    %r23 = load i32, ptr %r10
    %r24 = getelementptr [100 x [100 x i32]], ptr @a, i32 0, i32 %r22, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = load i32, ptr %r10
    %r27 = load i32, ptr %r5
    %r28 = getelementptr [100 x [100 x i32]], ptr @b, i32 0, i32 %r26, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = mul i32 %r25,%r29
    %r31 = add i32 %r21,%r30
    store i32 %r31, ptr %r17
    %r32 = load i32, ptr %r10
    %r33 = add i32 1,0
    %r34 = add i32 %r32,%r33
    store i32 %r34, ptr %r10
    br label %L8
L10:
    %r35 = load i32, ptr %r5
    %r36 = add i32 1,0
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r5
    br label %L5
}
define i32 @main()
{
L0:
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    store i32 0, ptr %r1
    %r2 = call i32 @getint()
    store i32 %r2, ptr @m1
    %r3 = call i32 @getint()
    store i32 %r3, ptr @n1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r0
    br label %L2
L2:
    %r5 = load i32, ptr %r0
    %r6 = load i32, ptr @m1
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:
    %r8 = add i32 0,0
    store i32 %r8, ptr %r1
    br label %L5
L4:
    %r22 = call i32 @getint()
    store i32 %r22, ptr @m2
    %r23 = call i32 @getint()
    store i32 %r23, ptr @n2
    %r24 = add i32 0,0
    store i32 %r24, ptr %r0
    br label %L8
L5:
    %r9 = load i32, ptr %r1
    %r10 = load i32, ptr @n1
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L6, label %L7
L6:
    %r12 = load i32, ptr %r0
    %r13 = load i32, ptr %r1
    %r14 = getelementptr [100 x [100 x i32]], ptr @a, i32 0, i32 %r12, i32 %r13
    %r15 = call i32 @getint()
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r1
    %r17 = add i32 1,0
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r1
    br label %L5
L7:
    %r19 = load i32, ptr %r0
    %r20 = add i32 1,0
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r0
    br label %L2
L8:
    %r25 = load i32, ptr %r0
    %r26 = load i32, ptr @m2
    %r27 = icmp slt i32 %r25,%r26
    br i1 %r27, label %L9, label %L10
L9:
    %r28 = add i32 0,0
    store i32 %r28, ptr %r1
    br label %L11
L10:
    call void @matrix_multiply()
    %r42 = add i32 0,0
    store i32 %r42, ptr %r0
    br label %L14
L11:
    %r29 = load i32, ptr %r1
    %r30 = load i32, ptr @n2
    %r31 = icmp slt i32 %r29,%r30
    br i1 %r31, label %L12, label %L13
L12:
    %r32 = load i32, ptr %r0
    %r33 = load i32, ptr %r1
    %r34 = getelementptr [100 x [100 x i32]], ptr @b, i32 0, i32 %r32, i32 %r33
    %r35 = call i32 @getint()
    store i32 %r35, ptr %r34
    %r36 = load i32, ptr %r1
    %r37 = add i32 1,0
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r1
    br label %L11
L13:
    %r39 = load i32, ptr %r0
    %r40 = add i32 1,0
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r0
    br label %L8
L14:
    %r43 = load i32, ptr %r0
    %r44 = load i32, ptr @m1
    %r45 = icmp slt i32 %r43,%r44
    br i1 %r45, label %L15, label %L16
L15:
    %r46 = add i32 0,0
    store i32 %r46, ptr %r1
    br label %L17
L16:
    %r62 = add i32 0,0
    ret i32 %r62
L17:
    %r47 = load i32, ptr %r1
    %r48 = load i32, ptr @n2
    %r49 = icmp slt i32 %r47,%r48
    br i1 %r49, label %L18, label %L19
L18:
    %r50 = load i32, ptr %r0
    %r51 = load i32, ptr %r1
    %r52 = getelementptr [100 x [100 x i32]], ptr @res, i32 0, i32 %r50, i32 %r51
    %r53 = load i32, ptr %r52
    call void @putint(i32 %r53)
    %r54 = add i32 32,0
    call void @putch(i32 %r54)
    %r55 = load i32, ptr %r1
    %r56 = add i32 1,0
    %r57 = add i32 %r55,%r56
    store i32 %r57, ptr %r1
    br label %L17
L19:
    %r58 = add i32 10,0
    call void @putch(i32 %r58)
    %r59 = load i32, ptr %r0
    %r60 = add i32 1,0
    %r61 = add i32 %r59,%r60
    store i32 %r61, ptr %r0
    br label %L14
}
