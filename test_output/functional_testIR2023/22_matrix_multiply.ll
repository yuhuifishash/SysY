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
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r46 = phi i32 [0,%L1],[%r40,%L7]
    %r3 = load i32, ptr @m1
    %r4 = icmp slt i32 %r46,%r3
    br i1 %r4, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    ret void
L5:  ;
    %r45 = phi i32 [0,%L3],[%r37,%L10]
    %r8 = load i32, ptr @n2
    %r9 = icmp slt i32 %r45,%r8
    br i1 %r9, label %L6, label %L7
L6:  ;
    br label %L8
L7:  ;
    %r40 = add i32 %r46,1
    br label %L2
L8:  ;
    %r43 = phi i32 [0,%L6],[%r34,%L9]
    %r13 = load i32, ptr @n1
    %r14 = icmp slt i32 %r43,%r13
    br i1 %r14, label %L9, label %L10
L9:  ;
    %r17 = getelementptr [100 x [100 x i32]], ptr @res, i32 0, i32 %r46, i32 %r45
    %r20 = getelementptr [100 x [100 x i32]], ptr @res, i32 0, i32 %r46, i32 %r45
    %r21 = load i32, ptr %r20
    %r24 = getelementptr [100 x [100 x i32]], ptr @a, i32 0, i32 %r46, i32 %r43
    %r25 = load i32, ptr %r24
    %r28 = getelementptr [100 x [100 x i32]], ptr @b, i32 0, i32 %r43, i32 %r45
    %r29 = load i32, ptr %r28
    %r30 = mul i32 %r25,%r29
    %r31 = add i32 %r21,%r30
    store i32 %r31, ptr %r17
    %r34 = add i32 %r43,1
    br label %L8
L10:  ;
    %r37 = add i32 %r45,1
    br label %L5
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = call i32 @getint()
    store i32 %r4, ptr @m1
    %r5 = call i32 @getint()
    store i32 %r5, ptr @n1
    br label %L2
L2:  ;
    %r71 = phi i32 [0,%L1],[%r23,%L7]
    %r8 = load i32, ptr @m1
    %r9 = icmp slt i32 %r71,%r8
    br i1 %r9, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    %r24 = call i32 @getint()
    store i32 %r24, ptr @m2
    %r25 = call i32 @getint()
    store i32 %r25, ptr @n2
    br label %L8
L5:  ;
    %r66 = phi i32 [0,%L3],[%r20,%L6]
    %r12 = load i32, ptr @n1
    %r13 = icmp slt i32 %r66,%r12
    br i1 %r13, label %L6, label %L7
L6:  ;
    %r16 = getelementptr [100 x [100 x i32]], ptr @a, i32 0, i32 %r71, i32 %r66
    %r17 = call i32 @getint()
    store i32 %r17, ptr %r16
    %r20 = add i32 %r66,1
    br label %L5
L7:  ;
    %r23 = add i32 %r71,1
    br label %L2
L8:  ;
    %r72 = phi i32 [0,%L4],[%r43,%L13]
    %r28 = load i32, ptr @m2
    %r29 = icmp slt i32 %r72,%r28
    br i1 %r29, label %L9, label %L10
L9:  ;
    br label %L11
L10:  ;
    call void @matrix_multiply()
    br label %L14
L11:  ;
    %r68 = phi i32 [0,%L9],[%r40,%L12]
    %r32 = load i32, ptr @n2
    %r33 = icmp slt i32 %r68,%r32
    br i1 %r33, label %L12, label %L13
L12:  ;
    %r36 = getelementptr [100 x [100 x i32]], ptr @b, i32 0, i32 %r72, i32 %r68
    %r37 = call i32 @getint()
    store i32 %r37, ptr %r36
    %r40 = add i32 %r68,1
    br label %L11
L13:  ;
    %r43 = add i32 %r72,1
    br label %L8
L14:  ;
    %r73 = phi i32 [0,%L10],[%r63,%L19]
    %r46 = load i32, ptr @m1
    %r47 = icmp slt i32 %r73,%r46
    br i1 %r47, label %L15, label %L16
L15:  ;
    br label %L17
L16:  ;
    ret i32 0
L17:  ;
    %r70 = phi i32 [0,%L15],[%r59,%L18]
    %r50 = load i32, ptr @n2
    %r51 = icmp slt i32 %r70,%r50
    br i1 %r51, label %L18, label %L19
L18:  ;
    %r54 = getelementptr [100 x [100 x i32]], ptr @res, i32 0, i32 %r73, i32 %r70
    %r55 = load i32, ptr %r54
    call void @putint(i32 %r55)
    call void @putch(i32 32)
    %r59 = add i32 %r70,1
    br label %L17
L19:  ;
    call void @putch(i32 10)
    %r63 = add i32 %r73,1
    br label %L14
}
