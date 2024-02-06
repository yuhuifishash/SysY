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
    %r4 = add i32 0,3
    store i32 %r4, ptr %r2
    %r5 = load i32, ptr %r2
    %r6 = load i32, ptr %r2
    %r7 = call i32 @uniquePaths(i32 %r5,i32 %r6)
    store i32 %r7, ptr %r0
    %r8 = load i32, ptr %r0
    ret i32 %r8
}
define i32 @uniquePaths(i32 %r0,i32 %r1)
{
L0:
    %r21 = alloca i32
    %r19 = alloca i32
    %r18 = alloca [9 x i32]
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,1
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L4
L2:
    %r17 = add i32 0,1
    ret i32 %r17
L3:
    %r20 = add i32 0,0
    store i32 %r20, ptr %r19
    %r22 = add i32 0,0
    store i32 %r22, ptr %r21
    %r23 = add i32 0,0
    store i32 %r23, ptr %r19
    %r24 = load i32, ptr %r19
    %r25 = load i32, ptr %r2
    %r26 = icmp slt i32 %r24,%r25
    br i1 %r26, label %L7, label %L9
L4:
    %r9 = load i32, ptr %r3
    %r10 = add i32 0,1
    %r11 = icmp eq i32 %r9,%r10
    br i1 %r11, label %L2, label %L3
L7:
    %r29 = add i32 0,1
    %r30 = load i32, ptr %r19
    %r31 = add i32 0,3
    %r32 = mul i32 %r30,%r31
    %r33 = load i32, ptr %r3
    %r34 = add i32 %r32,%r33
    %r35 = add i32 0,1
    %r36 = sub i32 %r34,%r35
    %r37 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r36
    store i32 %r29, ptr %r37
    %r38 = load i32, ptr %r19
    %r39 = add i32 0,1
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r19
    br label %L8
L8:
    %r41 = load i32, ptr %r19
    %r42 = load i32, ptr %r2
    %r43 = icmp slt i32 %r41,%r42
    br i1 %r43, label %L7, label %L9
L9:
    %r46 = add i32 0,0
    store i32 %r46, ptr %r19
    %r47 = load i32, ptr %r19
    %r48 = load i32, ptr %r3
    %r49 = icmp slt i32 %r47,%r48
    br i1 %r49, label %L11, label %L13
L11:
    %r52 = add i32 0,1
    %r53 = load i32, ptr %r2
    %r54 = add i32 0,1
    %r55 = sub i32 %r53,%r54
    %r56 = add i32 0,3
    %r57 = mul i32 %r55,%r56
    %r58 = load i32, ptr %r19
    %r59 = add i32 %r57,%r58
    %r60 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r59
    store i32 %r52, ptr %r60
    %r61 = load i32, ptr %r19
    %r62 = add i32 0,1
    %r63 = add i32 %r61,%r62
    store i32 %r63, ptr %r19
    br label %L12
L12:
    %r64 = load i32, ptr %r19
    %r65 = load i32, ptr %r3
    %r66 = icmp slt i32 %r64,%r65
    br i1 %r66, label %L11, label %L13
L13:
    %r69 = load i32, ptr %r2
    %r70 = add i32 0,2
    %r71 = sub i32 %r69,%r70
    store i32 %r71, ptr %r19
    %r72 = load i32, ptr %r19
    %r73 = add i32 0,1
    %r74 = sub i32 0,%r73
    %r75 = icmp sgt i32 %r72,%r74
    br i1 %r75, label %L15, label %L17
L15:
    %r78 = load i32, ptr %r3
    %r79 = add i32 0,2
    %r80 = sub i32 %r78,%r79
    store i32 %r80, ptr %r21
    %r81 = load i32, ptr %r21
    %r82 = add i32 0,1
    %r83 = sub i32 0,%r82
    %r84 = icmp sgt i32 %r81,%r83
    br i1 %r84, label %L19, label %L21
L16:
    %r124 = load i32, ptr %r19
    %r125 = add i32 0,1
    %r126 = sub i32 0,%r125
    %r127 = icmp sgt i32 %r124,%r126
    br i1 %r127, label %L15, label %L17
L17:
    %r130 = add i32 0,0
    %r131 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r130
    %r132 = load i32, ptr %r131
    ret i32 %r132
L19:
    %r87 = load i32, ptr %r19
    %r88 = add i32 0,1
    %r89 = add i32 %r87,%r88
    %r90 = add i32 0,3
    %r91 = mul i32 %r89,%r90
    %r92 = load i32, ptr %r21
    %r93 = add i32 %r91,%r92
    %r94 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r93
    %r95 = load i32, ptr %r94
    %r96 = load i32, ptr %r19
    %r97 = add i32 0,3
    %r98 = mul i32 %r96,%r97
    %r99 = load i32, ptr %r21
    %r100 = add i32 %r98,%r99
    %r101 = add i32 0,1
    %r102 = add i32 %r100,%r101
    %r103 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r102
    %r104 = load i32, ptr %r103
    %r105 = add i32 %r95,%r104
    %r106 = load i32, ptr %r19
    %r107 = add i32 0,3
    %r108 = mul i32 %r106,%r107
    %r109 = load i32, ptr %r21
    %r110 = add i32 %r108,%r109
    %r111 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r110
    store i32 %r105, ptr %r111
    %r112 = load i32, ptr %r21
    %r113 = add i32 0,1
    %r114 = sub i32 %r112,%r113
    store i32 %r114, ptr %r21
    br label %L20
L20:
    %r115 = load i32, ptr %r21
    %r116 = add i32 0,1
    %r117 = sub i32 0,%r116
    %r118 = icmp sgt i32 %r115,%r117
    br i1 %r118, label %L19, label %L21
L21:
    %r121 = load i32, ptr %r19
    %r122 = add i32 0,1
    %r123 = sub i32 %r121,%r122
    store i32 %r123, ptr %r19
    br label %L16
}
