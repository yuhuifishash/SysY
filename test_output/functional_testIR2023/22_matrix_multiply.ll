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
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
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
    br label %L2
L2:
    %r7 = load i32, ptr %r0
    %r8 = load i32, ptr @m1
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L3, label %L4
L3:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r2
    br label %L5
L4:
    %r24 = call i32 @getint()
    store i32 %r24, ptr @m2
    %r25 = call i32 @getint()
    store i32 %r25, ptr @n2
    %r26 = add i32 0,0
    store i32 %r26, ptr %r0
    br label %L8
L5:
    %r11 = load i32, ptr %r2
    %r12 = load i32, ptr @n1
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L6, label %L7
L6:
    %r14 = load i32, ptr %r0
    %r15 = load i32, ptr %r2
    %r16 = getelementptr [100 x [100 x i32]], ptr @a, i32 0, i32 %r14, i32 %r15
    %r17 = call i32 @getint()
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r2
    %r19 = add i32 1,0
    %r20 = add i32 %r18,%r19
    store i32 %r20, ptr %r2
    br label %L5
L7:
    %r21 = load i32, ptr %r0
    %r22 = add i32 1,0
    %r23 = add i32 %r21,%r22
    store i32 %r23, ptr %r0
    br label %L2
L8:
    %r27 = load i32, ptr %r0
    %r28 = load i32, ptr @m2
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L9, label %L10
L9:
    %r30 = add i32 0,0
    store i32 %r30, ptr %r2
    br label %L11
L10:
    call void @matrix_multiply()
    %r44 = add i32 0,0
    store i32 %r44, ptr %r0
    br label %L14
L11:
    %r31 = load i32, ptr %r2
    %r32 = load i32, ptr @n2
    %r33 = icmp slt i32 %r31,%r32
    br i1 %r33, label %L12, label %L13
L12:
    %r34 = load i32, ptr %r0
    %r35 = load i32, ptr %r2
    %r36 = getelementptr [100 x [100 x i32]], ptr @b, i32 0, i32 %r34, i32 %r35
    %r37 = call i32 @getint()
    store i32 %r37, ptr %r36
    %r38 = load i32, ptr %r2
    %r39 = add i32 1,0
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r2
    br label %L11
L13:
    %r41 = load i32, ptr %r0
    %r42 = add i32 1,0
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r0
    br label %L8
L14:
    %r45 = load i32, ptr %r0
    %r46 = load i32, ptr @m1
    %r47 = icmp slt i32 %r45,%r46
    br i1 %r47, label %L15, label %L16
L15:
    %r48 = add i32 0,0
    store i32 %r48, ptr %r2
    br label %L17
L16:
    %r64 = add i32 0,0
    ret i32 %r64
L17:
    %r49 = load i32, ptr %r2
    %r50 = load i32, ptr @n2
    %r51 = icmp slt i32 %r49,%r50
    br i1 %r51, label %L18, label %L19
L18:
    %r52 = load i32, ptr %r0
    %r53 = load i32, ptr %r2
    %r54 = getelementptr [100 x [100 x i32]], ptr @res, i32 0, i32 %r52, i32 %r53
    %r55 = load i32, ptr %r54
    call void @putint(i32 %r55)
    %r56 = add i32 32,0
    call void @putch(i32 %r56)
    %r57 = load i32, ptr %r2
    %r58 = add i32 1,0
    %r59 = add i32 %r57,%r58
    store i32 %r59, ptr %r2
    br label %L17
L19:
    %r60 = add i32 10,0
    call void @putch(i32 %r60)
    %r61 = load i32, ptr %r0
    %r62 = add i32 1,0
    %r63 = add i32 %r61,%r62
    store i32 %r63, ptr %r0
    br label %L14
}
