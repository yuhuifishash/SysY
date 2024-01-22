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
    br label %L1
L1:
    %r3 = load i32, ptr @m1
    %r4 = icmp slt i32 0,%r3
    br i1 %r4, label %L14, label %L5
L3:
    %r72 = phi i32 [%r56,%L4],[0,%L14]
    %r11 = icmp slt i32 0,%r10
    br i1 %r11, label %L15, label %L9
L4:
    %r59 = icmp slt i32 %r56,%r58
    br i1 %r59, label %L3, label %L5
L5:
    ret void
L7:
    %r70 = phi i32 [%r48,%L8],[0,%L15]
    %r18 = icmp slt i32 0,%r17
    br i1 %r18, label %L16, label %L13
L8:
    %r51 = icmp slt i32 %r48,%r50
    br i1 %r51, label %L7, label %L9
L9:
    %r56 = add i32 %r72,1
    br label %L4
L11:
    %r66 = phi i32 [%r40,%L12],[0,%L16]
    %r24 = load i32, ptr %r23
    %r27 = getelementptr i32, ptr %r75, i32 %r66
    %r28 = load i32, ptr %r27
    %r31 = getelementptr [100 x [100 x i32]], ptr @b, i32 0, i32 %r66, i32 %r70
    %r32 = load i32, ptr %r31
    %r33 = mul i32 %r28,%r32
    %r34 = add i32 %r24,%r33
    store i32 %r34, ptr %r23
    %r40 = add i32 %r66,1
    br label %L12
L12:
    %r43 = icmp slt i32 %r40,%r42
    br i1 %r43, label %L11, label %L13
L13:
    %r48 = add i32 %r70,1
    br label %L8
L14:
    %r10 = load i32, ptr @n2
    %r58 = load i32, ptr @m1
    br label %L3
L15:
    %r17 = load i32, ptr @n1
    %r50 = load i32, ptr @n2
    br label %L7
L16:
    %r23 = getelementptr [100 x [100 x i32]], ptr @res, i32 0, i32 %r72, i32 %r70
    %r75 = getelementptr [100 x [100 x i32]], ptr @a, i32 0, i32 %r72
    %r42 = load i32, ptr @n1
    br label %L11
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r4 = call i32 @getint()
    store i32 %r4, ptr @m1
    %r5 = call i32 @getint()
    store i32 %r5, ptr @n1
    %r8 = load i32, ptr @m1
    %r9 = icmp slt i32 0,%r8
    br i1 %r9, label %L26, label %L5
L3:
    %r119 = phi i32 [0,%L26],[%r32,%L4]
    %r14 = load i32, ptr @n1
    %r15 = icmp slt i32 0,%r14
    br i1 %r15, label %L27, label %L9
L4:
    %r34 = load i32, ptr @m1
    %r35 = icmp slt i32 %r32,%r34
    br i1 %r35, label %L3, label %L5
L5:
    %r38 = call i32 @getint()
    store i32 %r38, ptr @m2
    %r39 = call i32 @getint()
    store i32 %r39, ptr @n2
    %r42 = load i32, ptr @m2
    %r43 = icmp slt i32 0,%r42
    br i1 %r43, label %L28, label %L13
L7:
    %r109 = phi i32 [%r24,%L8],[0,%L27]
    %r18 = call i32 @getint()
    %r21 = getelementptr i32, ptr %r125, i32 %r109
    store i32 %r18, ptr %r21
    %r24 = add i32 %r109,1
    br label %L8
L8:
    %r26 = load i32, ptr @n1
    %r27 = icmp slt i32 %r24,%r26
    br i1 %r27, label %L7, label %L9
L9:
    %r32 = add i32 %r119,1
    br label %L4
L11:
    %r121 = phi i32 [%r66,%L12],[0,%L28]
    %r48 = load i32, ptr @n2
    %r49 = icmp slt i32 0,%r48
    br i1 %r49, label %L29, label %L17
L12:
    %r68 = load i32, ptr @m2
    %r69 = icmp slt i32 %r66,%r68
    br i1 %r69, label %L11, label %L13
L13:
    call void @matrix_multiply()
    %r74 = load i32, ptr @m1
    %r75 = icmp slt i32 0,%r74
    br i1 %r75, label %L30, label %L21
L15:
    %r113 = phi i32 [0,%L29],[%r58,%L16]
    %r52 = call i32 @getint()
    %r55 = getelementptr i32, ptr %r126, i32 %r113
    store i32 %r52, ptr %r55
    %r58 = add i32 %r113,1
    br label %L16
L16:
    %r60 = load i32, ptr @n2
    %r61 = icmp slt i32 %r58,%r60
    br i1 %r61, label %L15, label %L17
L17:
    %r66 = add i32 %r121,1
    br label %L12
L19:
    %r123 = phi i32 [%r100,%L20],[0,%L30]
    %r80 = load i32, ptr @n2
    %r81 = icmp slt i32 0,%r80
    br i1 %r81, label %L31, label %L25
L20:
    %r102 = load i32, ptr @m1
    %r103 = icmp slt i32 %r100,%r102
    br i1 %r103, label %L19, label %L21
L21:
    ret i32 0
L23:
    %r117 = phi i32 [%r91,%L24],[0,%L31]
    %r86 = getelementptr i32, ptr %r127, i32 %r117
    %r87 = load i32, ptr %r86
    call void @putint(i32 %r87)
    call void @putch(i32 32)
    %r91 = add i32 %r117,1
    br label %L24
L24:
    %r93 = load i32, ptr @n2
    %r94 = icmp slt i32 %r91,%r93
    br i1 %r94, label %L23, label %L25
L25:
    call void @putch(i32 10)
    %r100 = add i32 %r123,1
    br label %L20
L26:
    br label %L3
L27:
    %r125 = getelementptr [100 x [100 x i32]], ptr @a, i32 0, i32 %r119
    br label %L7
L28:
    br label %L11
L29:
    %r126 = getelementptr [100 x [100 x i32]], ptr @b, i32 0, i32 %r121
    br label %L15
L30:
    br label %L19
L31:
    %r127 = getelementptr [100 x [100 x i32]], ptr @res, i32 0, i32 %r123
    br label %L23
}
