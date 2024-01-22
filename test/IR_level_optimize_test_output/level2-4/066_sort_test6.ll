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
define i32 @counting_sort(ptr %r0,ptr %r1,i32 %r2)
{
L0:
    %r4 = alloca [10 x i32]
    br label %L1
L1:
    br label %L18
L3:
    %r122 = phi i32 [%r24,%L4],[0,%L18]
    %r21 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r122
    store i32 0, ptr %r21
    %r24 = add i32 %r122,1
    br label %L4
L4:
    %r27 = icmp slt i32 %r24,10
    br i1 %r27, label %L3, label %L5
L5:
    %r32 = icmp slt i32 0,%r2
    br i1 %r32, label %L19, label %L9
L7:
    %r128 = phi i32 [%r48,%L8],[0,%L19]
    %r36 = getelementptr i32, ptr %r0, i32 %r128
    %r37 = load i32, ptr %r36
    %r38 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r37
    %r39 = load i32, ptr %r38
    %r41 = add i32 %r39,1
    store i32 %r41, ptr %r38
    %r48 = add i32 %r128,1
    br label %L8
L8:
    %r51 = icmp slt i32 %r48,%r2
    br i1 %r51, label %L7, label %L9
L9:
    br label %L20
L11:
    %r124 = phi i32 [%r73,%L12],[1,%L20]
    %r61 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r124
    %r62 = load i32, ptr %r61
    %r65 = sub i32 %r124,1
    %r66 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r65
    %r67 = load i32, ptr %r66
    %r68 = add i32 %r62,%r67
    store i32 %r68, ptr %r61
    %r73 = add i32 %r124,1
    br label %L12
L12:
    %r76 = icmp slt i32 %r73,10
    br i1 %r76, label %L11, label %L13
L13:
    %r82 = icmp sgt i32 %r2,0
    br i1 %r82, label %L21, label %L17
L15:
    %r126 = phi i32 [%r87,%L16],[%r2,%L21]
    %r87 = sub i32 %r126,1
    %r88 = getelementptr i32, ptr %r0, i32 %r87
    %r89 = load i32, ptr %r88
    %r90 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r89
    %r91 = load i32, ptr %r90
    %r93 = sub i32 %r91,1
    store i32 %r93, ptr %r90
    %r104 = load i32, ptr %r88
    %r110 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r104
    %r111 = load i32, ptr %r110
    %r112 = getelementptr i32, ptr %r1, i32 %r111
    store i32 %r104, ptr %r112
    br label %L16
L16:
    %r118 = icmp sgt i32 %r87,0
    br i1 %r118, label %L15, label %L17
L17:
    ret i32 0
L18:
    br label %L3
L19:
    br label %L7
L20:
    br label %L11
L21:
    br label %L15
}
define i32 @main()
{
L0:
    %r35 = alloca [10 x i32]
    %r1 = alloca [10 x i32]
    br label %L1
L1:
    store i32 10, ptr @n
    %r4 = getelementptr [10 x i32], ptr %r1, i32 0, i32 0
    store i32 4, ptr %r4
    %r7 = getelementptr [10 x i32], ptr %r1, i32 0, i32 1
    store i32 3, ptr %r7
    %r10 = getelementptr [10 x i32], ptr %r1, i32 0, i32 2
    store i32 9, ptr %r10
    %r13 = getelementptr [10 x i32], ptr %r1, i32 0, i32 3
    store i32 2, ptr %r13
    %r16 = getelementptr [10 x i32], ptr %r1, i32 0, i32 4
    store i32 0, ptr %r16
    %r19 = getelementptr [10 x i32], ptr %r1, i32 0, i32 5
    store i32 1, ptr %r19
    %r22 = getelementptr [10 x i32], ptr %r1, i32 0, i32 6
    store i32 6, ptr %r22
    %r25 = getelementptr [10 x i32], ptr %r1, i32 0, i32 7
    store i32 5, ptr %r25
    %r28 = getelementptr [10 x i32], ptr %r1, i32 0, i32 8
    store i32 7, ptr %r28
    %r31 = getelementptr [10 x i32], ptr %r1, i32 0, i32 9
    store i32 8, ptr %r31
    %r36 = getelementptr i32, ptr %r1, i32 0
    %r37 = getelementptr i32, ptr %r35, i32 0
    %r38 = load i32, ptr @n
    %r39 = call i32 @counting_sort(ptr %r36,ptr %r37,i32 %r38)
    %r42 = icmp slt i32 %r39,%r38
    br i1 %r42, label %L6, label %L5
L3:
    %r62 = phi i32 [%r39,%L6],[%r55,%L4]
    %r48 = getelementptr [10 x i32], ptr %r35, i32 0, i32 %r62
    %r49 = load i32, ptr %r48
    call void @putint(i32 %r49)
    call void @putch(i32 10)
    %r55 = add i32 %r62,1
    br label %L4
L4:
    %r57 = load i32, ptr @n
    %r58 = icmp slt i32 %r55,%r57
    br i1 %r58, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L3
}
