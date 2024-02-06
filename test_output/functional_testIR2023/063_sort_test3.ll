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
define i32 @QuickSort(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r130 = alloca i32
    %r16 = alloca i32
    %r13 = alloca i32
    %r10 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = alloca i32
    store i32 %r2, ptr %r4
    br label %L1
L1:
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr %r4
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
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
    %r21 = load i32, ptr %r10
    %r22 = load i32, ptr %r13
    %r23 = icmp slt i32 %r21,%r22
    br i1 %r23, label %L5, label %L7
L3:
    %r146 = add i32 0,0
    ret i32 %r146
L5:
    %r26 = load i32, ptr %r10
    %r27 = load i32, ptr %r13
    %r28 = icmp slt i32 %r26,%r27
    br i1 %r28, label %L12, label %L11
L6:
    %r122 = load i32, ptr %r10
    %r123 = load i32, ptr %r13
    %r124 = icmp slt i32 %r122,%r123
    br i1 %r124, label %L5, label %L7
L7:
    %r127 = load i32, ptr %r16
    %r128 = load i32, ptr %r10
    %r129 = getelementptr i32, ptr %r0, i32 %r128
    store i32 %r127, ptr %r129
    %r131 = add i32 0,0
    store i32 %r131, ptr %r130
    %r132 = load i32, ptr %r10
    %r133 = add i32 0,1
    %r134 = sub i32 %r132,%r133
    store i32 %r134, ptr %r130
    %r135 = getelementptr i32, ptr %r0
    %r136 = load i32, ptr %r3
    %r137 = load i32, ptr %r130
    %r138 = call i32 @QuickSort(ptr %r135,i32 %r136,i32 %r137)
    store i32 %r138, ptr %r130
    %r139 = load i32, ptr %r10
    %r140 = add i32 0,1
    %r141 = add i32 %r139,%r140
    store i32 %r141, ptr %r130
    %r142 = getelementptr i32, ptr %r0
    %r143 = load i32, ptr %r130
    %r144 = load i32, ptr %r4
    %r145 = call i32 @QuickSort(ptr %r142,i32 %r143,i32 %r144)
    store i32 %r145, ptr %r130
    br label %L3
L9:
    %r43 = load i32, ptr %r13
    %r44 = add i32 0,1
    %r45 = sub i32 %r43,%r44
    store i32 %r45, ptr %r13
    br label %L10
L10:
    %r46 = load i32, ptr %r10
    %r47 = load i32, ptr %r13
    %r48 = icmp slt i32 %r46,%r47
    br i1 %r48, label %L14, label %L11
L11:
    %r63 = load i32, ptr %r10
    %r64 = load i32, ptr %r13
    %r65 = icmp slt i32 %r63,%r64
    br i1 %r65, label %L16, label %L17
L12:
    %r31 = load i32, ptr %r13
    %r32 = getelementptr i32, ptr %r0, i32 %r31
    %r33 = load i32, ptr %r32
    %r34 = load i32, ptr %r16
    %r35 = add i32 0,1
    %r36 = sub i32 %r34,%r35
    %r37 = icmp sgt i32 %r33,%r36
    br i1 %r37, label %L9, label %L11
L14:
    %r51 = load i32, ptr %r13
    %r52 = getelementptr i32, ptr %r0, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = load i32, ptr %r16
    %r55 = add i32 0,1
    %r56 = sub i32 %r54,%r55
    %r57 = icmp sgt i32 %r53,%r56
    br i1 %r57, label %L9, label %L11
L16:
    %r68 = load i32, ptr %r13
    %r69 = getelementptr i32, ptr %r0, i32 %r68
    %r70 = load i32, ptr %r69
    %r71 = load i32, ptr %r10
    %r72 = getelementptr i32, ptr %r0, i32 %r71
    store i32 %r70, ptr %r72
    %r73 = load i32, ptr %r10
    %r74 = add i32 0,1
    %r75 = add i32 %r73,%r74
    store i32 %r75, ptr %r10
    br label %L17
L17:
    %r76 = load i32, ptr %r10
    %r77 = load i32, ptr %r13
    %r78 = icmp slt i32 %r76,%r77
    br i1 %r78, label %L22, label %L21
L19:
    %r91 = load i32, ptr %r10
    %r92 = add i32 0,1
    %r93 = add i32 %r91,%r92
    store i32 %r93, ptr %r10
    br label %L20
L20:
    %r94 = load i32, ptr %r10
    %r95 = load i32, ptr %r13
    %r96 = icmp slt i32 %r94,%r95
    br i1 %r96, label %L24, label %L21
L21:
    %r109 = load i32, ptr %r10
    %r110 = load i32, ptr %r13
    %r111 = icmp slt i32 %r109,%r110
    br i1 %r111, label %L26, label %L27
L22:
    %r81 = load i32, ptr %r10
    %r82 = getelementptr i32, ptr %r0, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = load i32, ptr %r16
    %r85 = icmp slt i32 %r83,%r84
    br i1 %r85, label %L19, label %L21
L24:
    %r99 = load i32, ptr %r10
    %r100 = getelementptr i32, ptr %r0, i32 %r99
    %r101 = load i32, ptr %r100
    %r102 = load i32, ptr %r16
    %r103 = icmp slt i32 %r101,%r102
    br i1 %r103, label %L19, label %L21
L26:
    %r114 = load i32, ptr %r10
    %r115 = getelementptr i32, ptr %r0, i32 %r114
    %r116 = load i32, ptr %r115
    %r117 = load i32, ptr %r13
    %r118 = getelementptr i32, ptr %r0, i32 %r117
    store i32 %r116, ptr %r118
    %r119 = load i32, ptr %r13
    %r120 = add i32 0,1
    %r121 = sub i32 %r119,%r120
    store i32 %r121, ptr %r13
    br label %L27
L27:
    br label %L6
}
define i32 @main()
{
L0:
    %r47 = alloca i32
    %r35 = alloca i32
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
    %r36 = add i32 0,0
    store i32 %r36, ptr %r35
    %r37 = add i32 0,9
    store i32 %r37, ptr %r35
    %r38 = getelementptr i32, ptr %r1, i32 0
    %r39 = load i32, ptr %r32
    %r40 = load i32, ptr %r35
    %r41 = call i32 @QuickSort(ptr %r38,i32 %r39,i32 %r40)
    store i32 %r41, ptr %r32
    %r42 = load i32, ptr %r32
    %r43 = load i32, ptr @n
    %r44 = icmp slt i32 %r42,%r43
    br i1 %r44, label %L3, label %L5
L3:
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
    br label %L4
L4:
    %r58 = load i32, ptr %r32
    %r59 = load i32, ptr @n
    %r60 = icmp slt i32 %r58,%r59
    br i1 %r60, label %L3, label %L5
L5:
    %r63 = add i32 0,0
    ret i32 %r63
}
