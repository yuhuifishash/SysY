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
@N = global i32 10000
define i32 @long_array(i32 %r0)
{
L0:  ;
    %r103 = alloca i32
    %r80 = alloca i32
    %r60 = alloca i32
    %r5 = alloca i32
    %r4 = alloca [10000 x i32]
    %r3 = alloca [10000 x i32]
    %r2 = alloca [10000 x i32]
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    br label %L2
L2:  ;
    %r7 = load i32, ptr %r5
    %r8 = add i32 0,10000
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L3, label %L4
L3:  ;
    %r10 = load i32, ptr %r5
    %r11 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r10
    %r12 = load i32, ptr %r5
    %r13 = load i32, ptr %r5
    %r14 = mul i32 %r12,%r13
    %r15 = add i32 10,0
    %r16 = srem i32 %r14,%r15
    store i32 %r16, ptr %r11
    %r17 = load i32, ptr %r5
    %r18 = add i32 1,0
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r5
    br label %L2
L4:  ;
    %r20 = add i32 0,0
    store i32 %r20, ptr %r5
    br label %L5
L5:  ;
    %r21 = load i32, ptr %r5
    %r22 = add i32 0,10000
    %r23 = icmp slt i32 %r21,%r22
    br i1 %r23, label %L6, label %L7
L6:  ;
    %r24 = load i32, ptr %r5
    %r25 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r24
    %r26 = load i32, ptr %r5
    %r27 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = load i32, ptr %r5
    %r30 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = mul i32 %r28,%r31
    %r33 = add i32 10,0
    %r34 = srem i32 %r32,%r33
    store i32 %r34, ptr %r25
    %r35 = load i32, ptr %r5
    %r36 = add i32 1,0
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r5
    br label %L5
L7:  ;
    %r38 = add i32 0,0
    store i32 %r38, ptr %r5
    br label %L8
L8:  ;
    %r39 = load i32, ptr %r5
    %r40 = add i32 0,10000
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L9, label %L10
L9:  ;
    %r42 = load i32, ptr %r5
    %r43 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r42
    %r44 = load i32, ptr %r5
    %r45 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = load i32, ptr %r5
    %r48 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r47
    %r49 = load i32, ptr %r48
    %r50 = mul i32 %r46,%r49
    %r51 = add i32 100,0
    %r52 = srem i32 %r50,%r51
    %r53 = load i32, ptr %r5
    %r54 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = add i32 %r52,%r55
    store i32 %r56, ptr %r43
    %r57 = load i32, ptr %r5
    %r58 = add i32 1,0
    %r59 = add i32 %r57,%r58
    store i32 %r59, ptr %r5
    br label %L8
L10:  ;
    %r61 = add i32 0,0
    store i32 %r61, ptr %r60
    %r62 = add i32 0,0
    store i32 %r62, ptr %r5
    br label %L11
L11:  ;
    %r63 = load i32, ptr %r5
    %r64 = add i32 0,10000
    %r65 = icmp slt i32 %r63,%r64
    br i1 %r65, label %L12, label %L13
L12:  ;
    %r66 = load i32, ptr %r5
    %r67 = add i32 10,0
    %r68 = icmp slt i32 %r66,%r67
    br i1 %r68, label %L14, label %L15
L13:  ;
    %r152 = load i32, ptr %r60
    ret i32 %r152
L14:  ;
    %r69 = load i32, ptr %r60
    %r70 = load i32, ptr %r5
    %r71 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = add i32 %r69,%r72
    %r74 = add i32 1333,0
    %r75 = srem i32 %r73,%r74
    store i32 %r75, ptr %r60
    %r76 = load i32, ptr %r60
    call void @putint(i32 %r76)
    br label %L16
L15:  ;
    %r77 = load i32, ptr %r5
    %r78 = add i32 20,0
    %r79 = icmp slt i32 %r77,%r78
    br i1 %r79, label %L17, label %L18
L16:  ;
    %r149 = load i32, ptr %r5
    %r150 = add i32 1,0
    %r151 = add i32 %r149,%r150
    store i32 %r151, ptr %r5
    br label %L11
L17:  ;
    %r81 = add i32 0,10000
    %r82 = add i32 2,0
    %r83 = sdiv i32 %r81,%r82
    store i32 %r83, ptr %r80
    br label %L20
L18:  ;
    %r100 = load i32, ptr %r5
    %r101 = add i32 30,0
    %r102 = icmp slt i32 %r100,%r101
    br i1 %r102, label %L23, label %L24
L19:  ;
    br label %L16
L20:  ;
    %r84 = load i32, ptr %r80
    %r85 = add i32 0,10000
    %r86 = icmp slt i32 %r84,%r85
    br i1 %r86, label %L21, label %L22
L21:  ;
    %r87 = load i32, ptr %r60
    %r88 = load i32, ptr %r5
    %r89 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r88
    %r90 = load i32, ptr %r89
    %r91 = add i32 %r87,%r90
    %r92 = load i32, ptr %r80
    %r93 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r92
    %r94 = load i32, ptr %r93
    %r95 = sub i32 %r91,%r94
    store i32 %r95, ptr %r60
    %r96 = load i32, ptr %r80
    %r97 = add i32 1,0
    %r98 = add i32 %r96,%r97
    store i32 %r98, ptr %r80
    br label %L20
L22:  ;
    %r99 = load i32, ptr %r60
    call void @putint(i32 %r99)
    br label %L19
L23:  ;
    %r104 = add i32 0,10000
    %r105 = add i32 2,0
    %r106 = sdiv i32 %r104,%r105
    store i32 %r106, ptr %r103
    br label %L26
L24:  ;
    %r140 = load i32, ptr %r60
    %r141 = load i32, ptr %r5
    %r142 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r141
    %r143 = load i32, ptr %r142
    %r144 = load i32, ptr %r1
    %r145 = mul i32 %r143,%r144
    %r146 = add i32 %r140,%r145
    %r147 = add i32 99988,0
    %r148 = srem i32 %r146,%r147
    store i32 %r148, ptr %r60
    br label %L25
L25:  ;
    br label %L19
L26:  ;
    %r107 = load i32, ptr %r103
    %r108 = add i32 0,10000
    %r109 = icmp slt i32 %r107,%r108
    br i1 %r109, label %L27, label %L28
L27:  ;
    %r110 = load i32, ptr %r103
    %r111 = add i32 2233,0
    %r112 = icmp sgt i32 %r110,%r111
    br i1 %r112, label %L29, label %L30
L28:  ;
    %r139 = load i32, ptr %r60
    call void @putint(i32 %r139)
    br label %L25
L29:  ;
    %r113 = load i32, ptr %r60
    %r114 = load i32, ptr %r5
    %r115 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r114
    %r116 = load i32, ptr %r115
    %r117 = add i32 %r113,%r116
    %r118 = load i32, ptr %r103
    %r119 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r118
    %r120 = load i32, ptr %r119
    %r121 = sub i32 %r117,%r120
    store i32 %r121, ptr %r60
    %r122 = load i32, ptr %r103
    %r123 = add i32 1,0
    %r124 = add i32 %r122,%r123
    store i32 %r124, ptr %r103
    br label %L31
L30:  ;
    %r125 = load i32, ptr %r60
    %r126 = load i32, ptr %r5
    %r127 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r126
    %r128 = load i32, ptr %r127
    %r129 = add i32 %r125,%r128
    %r130 = load i32, ptr %r103
    %r131 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r130
    %r132 = load i32, ptr %r131
    %r133 = add i32 %r129,%r132
    %r134 = add i32 13333,0
    %r135 = srem i32 %r133,%r134
    store i32 %r135, ptr %r60
    %r136 = load i32, ptr %r103
    %r137 = add i32 2,0
    %r138 = add i32 %r136,%r137
    store i32 %r138, ptr %r103
    br label %L31
L31:  ;
    br label %L26
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = add i32 9,0
    %r1 = call i32 @long_array(i32 %r0)
    ret i32 %r1
}
