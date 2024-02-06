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
    %r9 = alloca i32
    %r7 = alloca i32
    %r5 = alloca i32
    %r4 = alloca [10 x i32]
    %r3 = alloca i32
    store i32 %r2, ptr %r3
    br label %L1
L1:
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
    %r14 = load i32, ptr %r9
    %r15 = add i32 0,10
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L3, label %L5
L3:
    %r19 = add i32 0,0
    %r20 = load i32, ptr %r9
    %r21 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r20
    store i32 %r19, ptr %r21
    %r22 = load i32, ptr %r9
    %r23 = add i32 0,1
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r9
    br label %L4
L4:
    %r25 = load i32, ptr %r9
    %r26 = add i32 0,10
    %r27 = icmp slt i32 %r25,%r26
    br i1 %r27, label %L3, label %L5
L5:
    %r30 = load i32, ptr %r5
    %r31 = load i32, ptr %r3
    %r32 = icmp slt i32 %r30,%r31
    br i1 %r32, label %L7, label %L9
L7:
    %r35 = load i32, ptr %r5
    %r36 = getelementptr i32, ptr %r0, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r37
    %r39 = load i32, ptr %r38
    %r40 = add i32 0,1
    %r41 = add i32 %r39,%r40
    %r42 = load i32, ptr %r5
    %r43 = getelementptr i32, ptr %r0, i32 %r42
    %r44 = load i32, ptr %r43
    %r45 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r44
    store i32 %r41, ptr %r45
    %r46 = load i32, ptr %r5
    %r47 = add i32 0,1
    %r48 = add i32 %r46,%r47
    store i32 %r48, ptr %r5
    br label %L8
L8:
    %r49 = load i32, ptr %r5
    %r50 = load i32, ptr %r3
    %r51 = icmp slt i32 %r49,%r50
    br i1 %r51, label %L7, label %L9
L9:
    %r54 = add i32 0,1
    store i32 %r54, ptr %r9
    %r55 = load i32, ptr %r9
    %r56 = add i32 0,10
    %r57 = icmp slt i32 %r55,%r56
    br i1 %r57, label %L11, label %L13
L11:
    %r60 = load i32, ptr %r9
    %r61 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r60
    %r62 = load i32, ptr %r61
    %r63 = load i32, ptr %r9
    %r64 = add i32 0,1
    %r65 = sub i32 %r63,%r64
    %r66 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r65
    %r67 = load i32, ptr %r66
    %r68 = add i32 %r62,%r67
    %r69 = load i32, ptr %r9
    %r70 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r69
    store i32 %r68, ptr %r70
    %r71 = load i32, ptr %r9
    %r72 = add i32 0,1
    %r73 = add i32 %r71,%r72
    store i32 %r73, ptr %r9
    br label %L12
L12:
    %r74 = load i32, ptr %r9
    %r75 = add i32 0,10
    %r76 = icmp slt i32 %r74,%r75
    br i1 %r76, label %L11, label %L13
L13:
    %r79 = load i32, ptr %r3
    store i32 %r79, ptr %r7
    %r80 = load i32, ptr %r7
    %r81 = add i32 0,0
    %r82 = icmp sgt i32 %r80,%r81
    br i1 %r82, label %L15, label %L17
L15:
    %r85 = load i32, ptr %r7
    %r86 = add i32 0,1
    %r87 = sub i32 %r85,%r86
    %r88 = getelementptr i32, ptr %r0, i32 %r87
    %r89 = load i32, ptr %r88
    %r90 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r89
    %r91 = load i32, ptr %r90
    %r92 = add i32 0,1
    %r93 = sub i32 %r91,%r92
    %r94 = load i32, ptr %r7
    %r95 = add i32 0,1
    %r96 = sub i32 %r94,%r95
    %r97 = getelementptr i32, ptr %r0, i32 %r96
    %r98 = load i32, ptr %r97
    %r99 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r98
    store i32 %r93, ptr %r99
    %r100 = load i32, ptr %r7
    %r101 = add i32 0,1
    %r102 = sub i32 %r100,%r101
    %r103 = getelementptr i32, ptr %r0, i32 %r102
    %r104 = load i32, ptr %r103
    %r105 = load i32, ptr %r7
    %r106 = add i32 0,1
    %r107 = sub i32 %r105,%r106
    %r108 = getelementptr i32, ptr %r0, i32 %r107
    %r109 = load i32, ptr %r108
    %r110 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r109
    %r111 = load i32, ptr %r110
    %r112 = getelementptr i32, ptr %r1, i32 %r111
    store i32 %r104, ptr %r112
    %r113 = load i32, ptr %r7
    %r114 = add i32 0,1
    %r115 = sub i32 %r113,%r114
    store i32 %r115, ptr %r7
    br label %L16
L16:
    %r116 = load i32, ptr %r7
    %r117 = add i32 0,0
    %r118 = icmp sgt i32 %r116,%r117
    br i1 %r118, label %L15, label %L17
L17:
    %r121 = add i32 0,0
    ret i32 %r121
}
define i32 @main()
{
L0:
    %r45 = alloca i32
    %r35 = alloca [10 x i32]
    %r32 = alloca i32
    %r1 = alloca [10 x i32]
    br label %L1
L1:
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
    %r40 = load i32, ptr %r32
    %r41 = load i32, ptr @n
    %r42 = icmp slt i32 %r40,%r41
    br i1 %r42, label %L3, label %L5
L3:
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
    br label %L4
L4:
    %r56 = load i32, ptr %r32
    %r57 = load i32, ptr @n
    %r58 = icmp slt i32 %r56,%r57
    br i1 %r58, label %L3, label %L5
L5:
    %r61 = add i32 0,0
    ret i32 %r61
}
