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
@array = global [110x i32] zeroinitializer
@n = global i32 zeroinitializer
define void @init(i32 %r0)
{
L0:  ;
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r3 = add i32 1,0
    store i32 %r3, ptr %r2
    br label %L2
L2:  ;
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr %r1
    %r6 = load i32, ptr %r1
    %r7 = mul i32 %r5,%r6
    %r8 = add i32 1,0
    %r9 = add i32 %r7,%r8
    %r10 = icmp sle i32 %r4,%r9
    br i1 %r10, label %L3, label %L4
L3:  ;
    %r11 = load i32, ptr %r2
    %r12 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r11
    %r13 = add i32 1,0
    %r14 = sub i32 0,%r13
    store i32 %r14, ptr %r12
    %r15 = load i32, ptr %r2
    %r16 = add i32 1,0
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r2
    br label %L2
L4:  ;
    ret void
}
define i32 @findfa(i32 %r0)
{
L0:  ;
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load i32, ptr %r1
    %r3 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r2
    %r4 = load i32, ptr %r3
    %r5 = load i32, ptr %r1
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:  ;
    %r7 = load i32, ptr %r1
    ret i32 %r7
L3:  ;
    %r8 = load i32, ptr %r1
    %r9 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r8
    %r10 = load i32, ptr %r1
    %r11 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = call i32 @findfa(i32 %r12)
    store i32 %r13, ptr %r9
    %r14 = load i32, ptr %r1
    %r15 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r14
    %r16 = load i32, ptr %r15
    ret i32 %r16
}
define void @mmerge(i32 %r0,i32 %r1)
{
L0:  ;
    %r7 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
    %r5 = load i32, ptr %r2
    %r6 = call i32 @findfa(i32 %r5)
    store i32 %r6, ptr %r4
    %r8 = load i32, ptr %r3
    %r9 = call i32 @findfa(i32 %r8)
    store i32 %r9, ptr %r7
    %r10 = load i32, ptr %r4
    %r11 = load i32, ptr %r7
    %r12 = icmp ne i32 %r10,%r11
    br i1 %r12, label %L2, label %L3
L2:  ;
    %r13 = load i32, ptr %r4
    %r14 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r13
    %r15 = load i32, ptr %r7
    store i32 %r15, ptr %r14
    br label %L3
L3:  ;
    ret void
}
define i32 @main()
{
L0:  ;
    %r139 = alloca i32
    %r34 = alloca i32
    %r21 = alloca i32
    %r18 = alloca i32
    %r16 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = add i32 1,0
    store i32 %r8, ptr %r0
    br label %L2
L2:  ;
    %r9 = load i32, ptr %r0
    %r10 = icmp ne i32 %r9,0
    br i1 %r10, label %L3, label %L4
L3:  ;
    %r11 = load i32, ptr %r0
    %r12 = add i32 1,0
    %r13 = sub i32 %r11,%r12
    store i32 %r13, ptr %r0
    %r14 = add i32 4,0
    store i32 %r14, ptr @n
    %r15 = add i32 10,0
    store i32 %r15, ptr %r2
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr @n
    call void @init(i32 %r20)
    %r22 = load i32, ptr @n
    %r23 = load i32, ptr @n
    %r24 = mul i32 %r22,%r23
    %r25 = add i32 1,0
    %r26 = add i32 %r24,%r25
    store i32 %r26, ptr %r21
    br label %L5
L4:  ;
    %r153 = add i32 0,0
    ret i32 %r153
L5:  ;
    %r27 = load i32, ptr %r16
    %r28 = load i32, ptr %r2
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L6, label %L7
L6:  ;
    %r30 = call i32 @getint()
    store i32 %r30, ptr %r4
    %r31 = call i32 @getint()
    store i32 %r31, ptr %r6
    %r32 = load i32, ptr %r18
    %r33 = icmp eq i32 %r32,0
    br i1 %r33, label %L8, label %L9
L7:  ;
    %r148 = load i32, ptr %r18
    %r149 = icmp eq i32 %r148,0
    br i1 %r149, label %L30, label %L31
L8:  ;
    %r35 = load i32, ptr @n
    %r36 = load i32, ptr %r4
    %r37 = add i32 1,0
    %r38 = sub i32 %r36,%r37
    %r39 = mul i32 %r35,%r38
    %r40 = load i32, ptr %r6
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r34
    %r42 = load i32, ptr %r34
    %r43 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r42
    %r44 = load i32, ptr %r34
    store i32 %r44, ptr %r43
    %r45 = load i32, ptr %r4
    %r46 = add i32 1,0
    %r47 = icmp eq i32 %r45,%r46
    br i1 %r47, label %L10, label %L11
L9:  ;
    %r145 = load i32, ptr %r16
    %r146 = add i32 1,0
    %r147 = add i32 %r145,%r146
    store i32 %r147, ptr %r16
    br label %L5
L10:  ;
    %r48 = add i32 0,0
    %r49 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r48
    %r50 = add i32 0,0
    store i32 %r50, ptr %r49
    %r51 = load i32, ptr %r34
    %r52 = add i32 0,0
    call void @mmerge(i32 %r51,i32 %r52)
    br label %L11
L11:  ;
    %r53 = load i32, ptr %r4
    %r54 = load i32, ptr @n
    %r55 = icmp eq i32 %r53,%r54
    br i1 %r55, label %L12, label %L13
L12:  ;
    %r56 = load i32, ptr %r21
    %r57 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r56
    %r58 = load i32, ptr %r21
    store i32 %r58, ptr %r57
    %r59 = load i32, ptr %r34
    %r60 = load i32, ptr %r21
    call void @mmerge(i32 %r59,i32 %r60)
    br label %L13
L13:  ;
    %r61 = load i32, ptr %r6
    %r62 = load i32, ptr @n
    %r63 = icmp slt i32 %r61,%r62
    br i1 %r63, label %L16, label %L15
L14:  ;
    %r72 = load i32, ptr %r34
    %r73 = load i32, ptr %r34
    %r74 = add i32 1,0
    %r75 = add i32 %r73,%r74
    call void @mmerge(i32 %r72,i32 %r75)
    br label %L15
L15:  ;
    %r76 = load i32, ptr %r6
    %r77 = add i32 1,0
    %r78 = icmp sgt i32 %r76,%r77
    br i1 %r78, label %L19, label %L18
L16:  ;
    %r64 = load i32, ptr %r34
    %r65 = add i32 1,0
    %r66 = add i32 %r64,%r65
    %r67 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = add i32 1,0
    %r70 = sub i32 0,%r69
    %r71 = icmp ne i32 %r68,%r70
    br i1 %r71, label %L14, label %L15
L17:  ;
    %r87 = load i32, ptr %r34
    %r88 = load i32, ptr %r34
    %r89 = add i32 1,0
    %r90 = sub i32 %r88,%r89
    call void @mmerge(i32 %r87,i32 %r90)
    br label %L18
L18:  ;
    %r91 = load i32, ptr %r4
    %r92 = load i32, ptr @n
    %r93 = icmp slt i32 %r91,%r92
    br i1 %r93, label %L22, label %L21
L19:  ;
    %r79 = load i32, ptr %r34
    %r80 = add i32 1,0
    %r81 = sub i32 %r79,%r80
    %r82 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = add i32 1,0
    %r85 = sub i32 0,%r84
    %r86 = icmp ne i32 %r83,%r85
    br i1 %r86, label %L17, label %L18
L20:  ;
    %r102 = load i32, ptr %r34
    %r103 = load i32, ptr %r34
    %r104 = load i32, ptr @n
    %r105 = add i32 %r103,%r104
    call void @mmerge(i32 %r102,i32 %r105)
    br label %L21
L21:  ;
    %r106 = load i32, ptr %r4
    %r107 = add i32 1,0
    %r108 = icmp sgt i32 %r106,%r107
    br i1 %r108, label %L25, label %L24
L22:  ;
    %r94 = load i32, ptr %r34
    %r95 = load i32, ptr @n
    %r96 = add i32 %r94,%r95
    %r97 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r96
    %r98 = load i32, ptr %r97
    %r99 = add i32 1,0
    %r100 = sub i32 0,%r99
    %r101 = icmp ne i32 %r98,%r100
    br i1 %r101, label %L20, label %L21
L23:  ;
    %r117 = load i32, ptr %r34
    %r118 = load i32, ptr %r34
    %r119 = load i32, ptr @n
    %r120 = sub i32 %r118,%r119
    call void @mmerge(i32 %r117,i32 %r120)
    br label %L24
L24:  ;
    %r121 = add i32 0,0
    %r122 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r121
    %r123 = load i32, ptr %r122
    %r124 = add i32 1,0
    %r125 = sub i32 0,%r124
    %r126 = icmp ne i32 %r123,%r125
    br i1 %r126, label %L29, label %L27
L25:  ;
    %r109 = load i32, ptr %r34
    %r110 = load i32, ptr @n
    %r111 = sub i32 %r109,%r110
    %r112 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r111
    %r113 = load i32, ptr %r112
    %r114 = add i32 1,0
    %r115 = sub i32 0,%r114
    %r116 = icmp ne i32 %r113,%r115
    br i1 %r116, label %L23, label %L24
L26:  ;
    %r138 = add i32 1,0
    store i32 %r138, ptr %r18
    %r140 = load i32, ptr %r16
    %r141 = add i32 1,0
    %r142 = add i32 %r140,%r141
    store i32 %r142, ptr %r139
    %r143 = load i32, ptr %r139
    call void @putint(i32 %r143)
    %r144 = add i32 10,0
    call void @putch(i32 %r144)
    br label %L27
L27:  ;
    br label %L9
L28:  ;
    %r133 = add i32 0,0
    %r134 = call i32 @findfa(i32 %r133)
    %r135 = load i32, ptr %r21
    %r136 = call i32 @findfa(i32 %r135)
    %r137 = icmp eq i32 %r134,%r136
    br i1 %r137, label %L26, label %L27
L29:  ;
    %r127 = load i32, ptr %r21
    %r128 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r127
    %r129 = load i32, ptr %r128
    %r130 = add i32 1,0
    %r131 = sub i32 0,%r130
    %r132 = icmp ne i32 %r129,%r131
    br i1 %r132, label %L28, label %L27
L30:  ;
    %r150 = add i32 1,0
    %r151 = sub i32 0,%r150
    call void @putint(i32 %r151)
    %r152 = add i32 10,0
    call void @putch(i32 %r152)
    br label %L31
L31:  ;
    br label %L2
}
