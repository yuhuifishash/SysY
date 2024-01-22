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
define i32 @QuickSort(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r93 = alloca i32
    %r16 = alloca i32
    %r13 = alloca i32
    %r10 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = alloca i32
    store i32 %r2, ptr %r4
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr %r4
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L1, label %L2
L1:
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    %r12 = load i32, ptr %r3
    store i32 %r12, ptr %r10
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    %r15 = load i32, ptr %r4
    store i32 %r15, ptr %r13
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r3
    %r19 = getelementptr i32, ptr %r0, i32 %r18
    %r20 = load i32, ptr %r19
    store i32 %r20, ptr %r16
    br label %L3
L2:
    %r109 = add i32 0,0
    ret i32 %r109
L3:
    %r21 = load i32, ptr %r10
    %r22 = load i32, ptr %r13
    %r23 = icmp slt i32 %r21,%r22
    br i1 %r23, label %L4, label %L5
L4:
    br label %L6
L5:
    %r90 = load i32, ptr %r16
    %r91 = load i32, ptr %r10
    %r92 = getelementptr i32, ptr %r0, i32 %r91
    store i32 %r90, ptr %r92
    %r94 = add i32 0,0
    store i32 %r94, ptr %r93
    %r95 = load i32, ptr %r10
    %r96 = add i32 0,1
    %r97 = sub i32 %r95,%r96
    store i32 %r97, ptr %r93
    %r98 = getelementptr i32, ptr %r0
    %r99 = load i32, ptr %r3
    %r100 = load i32, ptr %r93
    %r101 = call i32 @QuickSort(ptr %r98,i32 %r99,i32 %r100)
    store i32 %r101, ptr %r93
    %r102 = load i32, ptr %r10
    %r103 = add i32 0,1
    %r104 = add i32 %r102,%r103
    store i32 %r104, ptr %r93
    %r105 = getelementptr i32, ptr %r0
    %r106 = load i32, ptr %r93
    %r107 = load i32, ptr %r4
    %r108 = call i32 @QuickSort(ptr %r105,i32 %r106,i32 %r107)
    store i32 %r108, ptr %r93
    br label %L2
L6:
    %r26 = load i32, ptr %r10
    %r27 = load i32, ptr %r13
    %r28 = icmp slt i32 %r26,%r27
    br i1 %r28, label %L9, label %L8
L7:
    %r43 = load i32, ptr %r13
    %r44 = add i32 0,1
    %r45 = sub i32 %r43,%r44
    store i32 %r45, ptr %r13
    br label %L6
L8:
    %r46 = load i32, ptr %r10
    %r47 = load i32, ptr %r13
    %r48 = icmp slt i32 %r46,%r47
    br i1 %r48, label %L11, label %L12
L9:
    %r31 = load i32, ptr %r13
    %r32 = getelementptr i32, ptr %r0, i32 %r31
    %r33 = load i32, ptr %r32
    %r34 = load i32, ptr %r16
    %r35 = add i32 0,1
    %r36 = sub i32 %r34,%r35
    %r37 = icmp sgt i32 %r33,%r36
    br i1 %r37, label %L7, label %L8
L11:
    %r51 = load i32, ptr %r13
    %r52 = getelementptr i32, ptr %r0, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = load i32, ptr %r10
    %r55 = getelementptr i32, ptr %r0, i32 %r54
    store i32 %r53, ptr %r55
    %r56 = load i32, ptr %r10
    %r57 = add i32 0,1
    %r58 = add i32 %r56,%r57
    store i32 %r58, ptr %r10
    br label %L12
L12:
    br label %L13
L13:
    %r59 = load i32, ptr %r10
    %r60 = load i32, ptr %r13
    %r61 = icmp slt i32 %r59,%r60
    br i1 %r61, label %L16, label %L15
L14:
    %r74 = load i32, ptr %r10
    %r75 = add i32 0,1
    %r76 = add i32 %r74,%r75
    store i32 %r76, ptr %r10
    br label %L13
L15:
    %r77 = load i32, ptr %r10
    %r78 = load i32, ptr %r13
    %r79 = icmp slt i32 %r77,%r78
    br i1 %r79, label %L18, label %L19
L16:
    %r64 = load i32, ptr %r10
    %r65 = getelementptr i32, ptr %r0, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = load i32, ptr %r16
    %r68 = icmp slt i32 %r66,%r67
    br i1 %r68, label %L14, label %L15
L18:
    %r82 = load i32, ptr %r10
    %r83 = getelementptr i32, ptr %r0, i32 %r82
    %r84 = load i32, ptr %r83
    %r85 = load i32, ptr %r13
    %r86 = getelementptr i32, ptr %r0, i32 %r85
    store i32 %r84, ptr %r86
    %r87 = load i32, ptr %r13
    %r88 = add i32 0,1
    %r89 = sub i32 %r87,%r88
    store i32 %r89, ptr %r13
    br label %L19
L19:
    br label %L3
}
define i32 @main()
{
L0:
    %r47 = alloca i32
    %r35 = alloca i32
    %r32 = alloca i32
    %r1 = alloca [10 x i32]
    %r0 = add i32 0,10
    store i32 %r0, ptr @n
    %r2 = add i32 0,4
    %r3 = add i32 0,0
    %r4 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r3
    store i32 %r2, ptr %r4
    %r5 = add i32 0,3
    %r6 = add i32 0,1
    %r7 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r6
    store i32 %r5, ptr %r7
    %r8 = add i32 0,9
    %r9 = add i32 0,2
    %r10 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r9
    store i32 %r8, ptr %r10
    %r11 = add i32 0,2
    %r12 = add i32 0,3
    %r13 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r12
    store i32 %r11, ptr %r13
    %r14 = add i32 0,0
    %r15 = add i32 0,4
    %r16 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = add i32 0,1
    %r18 = add i32 0,5
    %r19 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r18
    store i32 %r17, ptr %r19
    %r20 = add i32 0,6
    %r21 = add i32 0,6
    %r22 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r21
    store i32 %r20, ptr %r22
    %r23 = add i32 0,5
    %r24 = add i32 0,7
    %r25 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    %r26 = add i32 0,7
    %r27 = add i32 0,8
    %r28 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r27
    store i32 %r26, ptr %r28
    %r29 = add i32 0,8
    %r30 = add i32 0,9
    %r31 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r30
    store i32 %r29, ptr %r31
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r34 = add i32 0,0
    store i32 %r34, ptr %r32
    %r36 = add i32 0,0
    store i32 %r36, ptr %r35
    %r37 = add i32 0,9
    store i32 %r37, ptr %r35
    %r38 = getelementptr i32, ptr %r1, i32 0
    %r39 = load i32, ptr %r32
    %r40 = load i32, ptr %r35
    %r41 = call i32 @QuickSort(ptr %r38,i32 %r39,i32 %r40)
    store i32 %r41, ptr %r32
    br label %L1
L1:
    %r42 = load i32, ptr %r32
    %r43 = load i32, ptr @n
    %r44 = icmp slt i32 %r42,%r43
    br i1 %r44, label %L2, label %L3
L2:
    %r48 = add i32 0,0
    store i32 %r48, ptr %r47
    %r49 = load i32, ptr %r32
    %r50 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r49
    %r51 = load i32, ptr %r50
    store i32 %r51, ptr %r47
    %r52 = load i32, ptr %r47
    call void @putint(i32 %r52)
    %r53 = add i32 0,10
    store i32 %r53, ptr %r47
    %r54 = load i32, ptr %r47
    call void @putch(i32 %r54)
    %r55 = load i32, ptr %r32
    %r56 = add i32 0,1
    %r57 = add i32 %r55,%r56
    store i32 %r57, ptr %r32
    br label %L1
L3:
    %r58 = add i32 0,0
    ret i32 %r58
}
