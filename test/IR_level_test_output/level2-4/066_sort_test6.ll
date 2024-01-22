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
define i32 @counting_sort(ptr %r0,ptr %r1,i32 %r2)
{
L0:
    %r9 = alloca i32
    %r7 = alloca i32
    %r5 = alloca i32
    %r4 = alloca [10 x i32]
    %r3 = alloca i32
    store i32 %r2, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    %r12 = add i32 0,0
    store i32 %r12, ptr %r5
    %r13 = add i32 0,0
    store i32 %r13, ptr %r7
    br label %L1
L1:
    %r14 = load i32, ptr %r9
    %r15 = add i32 0,10
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L2, label %L3
L2:
    %r19 = add i32 0,0
    %r20 = load i32, ptr %r9
    %r21 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r20
    store i32 %r19, ptr %r21
    %r22 = load i32, ptr %r9
    %r23 = add i32 0,1
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r9
    br label %L1
L3:
    br label %L4
L4:
    %r25 = load i32, ptr %r5
    %r26 = load i32, ptr %r3
    %r27 = icmp slt i32 %r25,%r26
    br i1 %r27, label %L5, label %L6
L5:
    %r30 = load i32, ptr %r5
    %r31 = getelementptr i32, ptr %r0, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = add i32 0,1
    %r36 = add i32 %r34,%r35
    %r37 = load i32, ptr %r5
    %r38 = getelementptr i32, ptr %r0, i32 %r37
    %r39 = load i32, ptr %r38
    %r40 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r39
    store i32 %r36, ptr %r40
    %r41 = load i32, ptr %r5
    %r42 = add i32 0,1
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r5
    br label %L4
L6:
    %r44 = add i32 0,1
    store i32 %r44, ptr %r9
    br label %L7
L7:
    %r45 = load i32, ptr %r9
    %r46 = add i32 0,10
    %r47 = icmp slt i32 %r45,%r46
    br i1 %r47, label %L8, label %L9
L8:
    %r50 = load i32, ptr %r9
    %r51 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r50
    %r52 = load i32, ptr %r51
    %r53 = load i32, ptr %r9
    %r54 = add i32 0,1
    %r55 = sub i32 %r53,%r54
    %r56 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r55
    %r57 = load i32, ptr %r56
    %r58 = add i32 %r52,%r57
    %r59 = load i32, ptr %r9
    %r60 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r59
    store i32 %r58, ptr %r60
    %r61 = load i32, ptr %r9
    %r62 = add i32 0,1
    %r63 = add i32 %r61,%r62
    store i32 %r63, ptr %r9
    br label %L7
L9:
    %r64 = load i32, ptr %r3
    store i32 %r64, ptr %r7
    br label %L10
L10:
    %r65 = load i32, ptr %r7
    %r66 = add i32 0,0
    %r67 = icmp sgt i32 %r65,%r66
    br i1 %r67, label %L11, label %L12
L11:
    %r70 = load i32, ptr %r7
    %r71 = add i32 0,1
    %r72 = sub i32 %r70,%r71
    %r73 = getelementptr i32, ptr %r0, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r74
    %r76 = load i32, ptr %r75
    %r77 = add i32 0,1
    %r78 = sub i32 %r76,%r77
    %r79 = load i32, ptr %r7
    %r80 = add i32 0,1
    %r81 = sub i32 %r79,%r80
    %r82 = getelementptr i32, ptr %r0, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r83
    store i32 %r78, ptr %r84
    %r85 = load i32, ptr %r7
    %r86 = add i32 0,1
    %r87 = sub i32 %r85,%r86
    %r88 = getelementptr i32, ptr %r0, i32 %r87
    %r89 = load i32, ptr %r88
    %r90 = load i32, ptr %r7
    %r91 = add i32 0,1
    %r92 = sub i32 %r90,%r91
    %r93 = getelementptr i32, ptr %r0, i32 %r92
    %r94 = load i32, ptr %r93
    %r95 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r94
    %r96 = load i32, ptr %r95
    %r97 = getelementptr i32, ptr %r1, i32 %r96
    store i32 %r89, ptr %r97
    %r98 = load i32, ptr %r7
    %r99 = add i32 0,1
    %r100 = sub i32 %r98,%r99
    store i32 %r100, ptr %r7
    br label %L10
L12:
    %r101 = add i32 0,0
    ret i32 %r101
}
define i32 @main()
{
L0:
    %r45 = alloca i32
    %r35 = alloca [10 x i32]
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
    %r36 = getelementptr i32, ptr %r1, i32 0
    %r37 = getelementptr i32, ptr %r35, i32 0
    %r38 = load i32, ptr @n
    %r39 = call i32 @counting_sort(ptr %r36,ptr %r37,i32 %r38)
    store i32 %r39, ptr %r32
    br label %L1
L1:
    %r40 = load i32, ptr %r32
    %r41 = load i32, ptr @n
    %r42 = icmp slt i32 %r40,%r41
    br i1 %r42, label %L2, label %L3
L2:
    %r46 = add i32 0,0
    store i32 %r46, ptr %r45
    %r47 = load i32, ptr %r32
    %r48 = getelementptr [10 x i32], ptr %r35, i32 0, i32 %r47
    %r49 = load i32, ptr %r48
    store i32 %r49, ptr %r45
    %r50 = load i32, ptr %r45
    call void @putint(i32 %r50)
    %r51 = add i32 0,10
    store i32 %r51, ptr %r45
    %r52 = load i32, ptr %r45
    call void @putch(i32 %r52)
    %r53 = load i32, ptr %r32
    %r54 = add i32 0,1
    %r55 = add i32 %r53,%r54
    store i32 %r55, ptr %r32
    br label %L1
L3:
    %r56 = add i32 0,0
    ret i32 %r56
}
