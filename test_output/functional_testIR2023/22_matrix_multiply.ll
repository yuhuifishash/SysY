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
    %r14 = alloca i32
    %r7 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr %r0
    %r3 = load i32, ptr @m1
    %r4 = icmp slt i32 %r2,%r3
    br i1 %r4, label %L3, label %L5
L3:
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r9 = load i32, ptr %r7
    %r10 = load i32, ptr @n2
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L7, label %L9
L4:
    %r57 = load i32, ptr %r0
    %r58 = load i32, ptr @m1
    %r59 = icmp slt i32 %r57,%r58
    br i1 %r59, label %L3, label %L5
L5:
    ret void
L7:
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r14
    %r17 = load i32, ptr @n1
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L11, label %L13
L8:
    %r49 = load i32, ptr %r7
    %r50 = load i32, ptr @n2
    %r51 = icmp slt i32 %r49,%r50
    br i1 %r51, label %L7, label %L9
L9:
    %r54 = load i32, ptr %r0
    %r55 = add i32 0,1
    %r56 = add i32 %r54,%r55
    store i32 %r56, ptr %r0
    br label %L4
L11:
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
    br label %L12
L12:
    %r41 = load i32, ptr %r14
    %r42 = load i32, ptr @n1
    %r43 = icmp slt i32 %r41,%r42
    br i1 %r43, label %L11, label %L13
L13:
    %r46 = load i32, ptr %r7
    %r47 = add i32 0,1
    %r48 = add i32 %r46,%r47
    store i32 %r48, ptr %r7
    br label %L8
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
    %r7 = load i32, ptr %r0
    %r8 = load i32, ptr @m1
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L3, label %L5
L3:
    %r12 = add i32 0,0
    store i32 %r12, ptr %r2
    %r13 = load i32, ptr %r2
    %r14 = load i32, ptr @n1
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L7, label %L9
L4:
    %r33 = load i32, ptr %r0
    %r34 = load i32, ptr @m1
    %r35 = icmp slt i32 %r33,%r34
    br i1 %r35, label %L3, label %L5
L5:
    %r38 = call i32 @getint()
    store i32 %r38, ptr @m2
    %r39 = call i32 @getint()
    store i32 %r39, ptr @n2
    %r40 = add i32 0,0
    store i32 %r40, ptr %r0
    %r41 = load i32, ptr %r0
    %r42 = load i32, ptr @m2
    %r43 = icmp slt i32 %r41,%r42
    br i1 %r43, label %L11, label %L13
L7:
    %r18 = call i32 @getint()
    %r19 = load i32, ptr %r0
    %r20 = load i32, ptr %r2
    %r21 = getelementptr [100 x [100 x i32]], ptr @a, i32 0, i32 %r19, i32 %r20
    store i32 %r18, ptr %r21
    %r22 = load i32, ptr %r2
    %r23 = add i32 0,1
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r2
    br label %L8
L8:
    %r25 = load i32, ptr %r2
    %r26 = load i32, ptr @n1
    %r27 = icmp slt i32 %r25,%r26
    br i1 %r27, label %L7, label %L9
L9:
    %r30 = load i32, ptr %r0
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r0
    br label %L4
L11:
    %r46 = add i32 0,0
    store i32 %r46, ptr %r2
    %r47 = load i32, ptr %r2
    %r48 = load i32, ptr @n2
    %r49 = icmp slt i32 %r47,%r48
    br i1 %r49, label %L15, label %L17
L12:
    %r67 = load i32, ptr %r0
    %r68 = load i32, ptr @m2
    %r69 = icmp slt i32 %r67,%r68
    br i1 %r69, label %L11, label %L13
L13:
    call void @matrix_multiply()
    %r72 = add i32 0,0
    store i32 %r72, ptr %r0
    %r73 = load i32, ptr %r0
    %r74 = load i32, ptr @m1
    %r75 = icmp slt i32 %r73,%r74
    br i1 %r75, label %L19, label %L21
L15:
    %r52 = call i32 @getint()
    %r53 = load i32, ptr %r0
    %r54 = load i32, ptr %r2
    %r55 = getelementptr [100 x [100 x i32]], ptr @b, i32 0, i32 %r53, i32 %r54
    store i32 %r52, ptr %r55
    %r56 = load i32, ptr %r2
    %r57 = add i32 0,1
    %r58 = add i32 %r56,%r57
    store i32 %r58, ptr %r2
    br label %L16
L16:
    %r59 = load i32, ptr %r2
    %r60 = load i32, ptr @n2
    %r61 = icmp slt i32 %r59,%r60
    br i1 %r61, label %L15, label %L17
L17:
    %r64 = load i32, ptr %r0
    %r65 = add i32 0,1
    %r66 = add i32 %r64,%r65
    store i32 %r66, ptr %r0
    br label %L12
L19:
    %r78 = add i32 0,0
    store i32 %r78, ptr %r2
    %r79 = load i32, ptr %r2
    %r80 = load i32, ptr @n2
    %r81 = icmp slt i32 %r79,%r80
    br i1 %r81, label %L23, label %L25
L20:
    %r101 = load i32, ptr %r0
    %r102 = load i32, ptr @m1
    %r103 = icmp slt i32 %r101,%r102
    br i1 %r103, label %L19, label %L21
L21:
    %r106 = add i32 0,0
    ret i32 %r106
L23:
    %r84 = load i32, ptr %r0
    %r85 = load i32, ptr %r2
    %r86 = getelementptr [100 x [100 x i32]], ptr @res, i32 0, i32 %r84, i32 %r85
    %r87 = load i32, ptr %r86
    call void @putint(i32 %r87)
    %r88 = add i32 0,32
    call void @putch(i32 %r88)
    %r89 = load i32, ptr %r2
    %r90 = add i32 0,1
    %r91 = add i32 %r89,%r90
    store i32 %r91, ptr %r2
    br label %L24
L24:
    %r92 = load i32, ptr %r2
    %r93 = load i32, ptr @n2
    %r94 = icmp slt i32 %r92,%r93
    br i1 %r94, label %L23, label %L25
L25:
    %r97 = add i32 0,10
    call void @putch(i32 %r97)
    %r98 = load i32, ptr %r0
    %r99 = add i32 0,1
    %r100 = add i32 %r98,%r99
    store i32 %r100, ptr %r0
    br label %L20
}
