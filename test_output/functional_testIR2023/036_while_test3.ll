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
@g = global i32 zeroinitializer
@h = global i32 zeroinitializer
@f = global i32 zeroinitializer
@e = global i32 zeroinitializer
define i32 @EightWhile()
{
L0:
    %r9 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,5
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 0,6
    store i32 %r7, ptr %r3
    %r8 = add i32 0,7
    store i32 %r8, ptr %r5
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,10
    store i32 %r11, ptr %r9
    %r12 = load i32, ptr %r0
    %r13 = add i32 0,20
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L3, label %L5
L3:
    %r17 = load i32, ptr %r0
    %r18 = add i32 0,3
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r0
    %r20 = load i32, ptr %r3
    %r21 = add i32 0,10
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L7, label %L9
L4:
    %r132 = load i32, ptr %r0
    %r133 = add i32 0,20
    %r134 = icmp slt i32 %r132,%r133
    br i1 %r134, label %L3, label %L5
L5:
    %r137 = load i32, ptr %r0
    %r138 = load i32, ptr %r3
    %r139 = load i32, ptr %r9
    %r140 = add i32 %r138,%r139
    %r141 = add i32 %r137,%r140
    %r142 = load i32, ptr %r5
    %r143 = add i32 %r141,%r142
    %r144 = load i32, ptr @e
    %r145 = load i32, ptr %r9
    %r146 = add i32 %r144,%r145
    %r147 = load i32, ptr @g
    %r148 = sub i32 %r146,%r147
    %r149 = load i32, ptr @h
    %r150 = add i32 %r148,%r149
    %r151 = sub i32 %r143,%r150
    ret i32 %r151
L7:
    %r25 = load i32, ptr %r3
    %r26 = add i32 0,1
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r3
    %r28 = load i32, ptr %r5
    %r29 = add i32 0,7
    %r30 = icmp eq i32 %r28,%r29
    br i1 %r30, label %L11, label %L13
L8:
    %r124 = load i32, ptr %r3
    %r125 = add i32 0,10
    %r126 = icmp slt i32 %r124,%r125
    br i1 %r126, label %L7, label %L9
L9:
    %r129 = load i32, ptr %r3
    %r130 = add i32 0,2
    %r131 = sub i32 %r129,%r130
    store i32 %r131, ptr %r3
    br label %L4
L11:
    %r33 = load i32, ptr %r5
    %r34 = add i32 0,1
    %r35 = sub i32 %r33,%r34
    store i32 %r35, ptr %r5
    %r36 = load i32, ptr %r9
    %r37 = add i32 0,20
    %r38 = icmp slt i32 %r36,%r37
    br i1 %r38, label %L15, label %L17
L12:
    %r116 = load i32, ptr %r5
    %r117 = add i32 0,7
    %r118 = icmp eq i32 %r116,%r117
    br i1 %r118, label %L11, label %L13
L13:
    %r121 = load i32, ptr %r5
    %r122 = add i32 0,1
    %r123 = add i32 %r121,%r122
    store i32 %r123, ptr %r5
    br label %L8
L15:
    %r41 = load i32, ptr %r9
    %r42 = add i32 0,3
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r9
    %r44 = load i32, ptr @e
    %r45 = add i32 0,1
    %r46 = icmp sgt i32 %r44,%r45
    br i1 %r46, label %L19, label %L21
L16:
    %r108 = load i32, ptr %r9
    %r109 = add i32 0,20
    %r110 = icmp slt i32 %r108,%r109
    br i1 %r110, label %L15, label %L17
L17:
    %r113 = load i32, ptr %r9
    %r114 = add i32 0,1
    %r115 = sub i32 %r113,%r114
    store i32 %r115, ptr %r9
    br label %L12
L19:
    %r49 = load i32, ptr @e
    %r50 = add i32 0,1
    %r51 = sub i32 %r49,%r50
    store i32 %r51, ptr @e
    %r52 = load i32, ptr @f
    %r53 = add i32 0,2
    %r54 = icmp sgt i32 %r52,%r53
    br i1 %r54, label %L23, label %L25
L20:
    %r100 = load i32, ptr @e
    %r101 = add i32 0,1
    %r102 = icmp sgt i32 %r100,%r101
    br i1 %r102, label %L19, label %L21
L21:
    %r105 = load i32, ptr @e
    %r106 = add i32 0,1
    %r107 = add i32 %r105,%r106
    store i32 %r107, ptr @e
    br label %L16
L23:
    %r57 = load i32, ptr @f
    %r58 = add i32 0,2
    %r59 = sub i32 %r57,%r58
    store i32 %r59, ptr @f
    %r60 = load i32, ptr @g
    %r61 = add i32 0,3
    %r62 = icmp slt i32 %r60,%r61
    br i1 %r62, label %L27, label %L29
L24:
    %r92 = load i32, ptr @f
    %r93 = add i32 0,2
    %r94 = icmp sgt i32 %r92,%r93
    br i1 %r94, label %L23, label %L25
L25:
    %r97 = load i32, ptr @f
    %r98 = add i32 0,1
    %r99 = add i32 %r97,%r98
    store i32 %r99, ptr @f
    br label %L20
L27:
    %r65 = load i32, ptr @g
    %r66 = add i32 0,10
    %r67 = add i32 %r65,%r66
    store i32 %r67, ptr @g
    %r68 = load i32, ptr @h
    %r69 = add i32 0,10
    %r70 = icmp slt i32 %r68,%r69
    br i1 %r70, label %L31, label %L33
L28:
    %r84 = load i32, ptr @g
    %r85 = add i32 0,3
    %r86 = icmp slt i32 %r84,%r85
    br i1 %r86, label %L27, label %L29
L29:
    %r89 = load i32, ptr @g
    %r90 = add i32 0,8
    %r91 = sub i32 %r89,%r90
    store i32 %r91, ptr @g
    br label %L24
L31:
    %r73 = load i32, ptr @h
    %r74 = add i32 0,8
    %r75 = add i32 %r73,%r74
    store i32 %r75, ptr @h
    br label %L32
L32:
    %r76 = load i32, ptr @h
    %r77 = add i32 0,10
    %r78 = icmp slt i32 %r76,%r77
    br i1 %r78, label %L31, label %L33
L33:
    %r81 = load i32, ptr @h
    %r82 = add i32 0,1
    %r83 = sub i32 %r81,%r82
    store i32 %r83, ptr @h
    br label %L28
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = add i32 0,1
    store i32 %r0, ptr @g
    %r1 = add i32 0,2
    store i32 %r1, ptr @h
    %r2 = add i32 0,4
    store i32 %r2, ptr @e
    %r3 = add i32 0,6
    store i32 %r3, ptr @f
    %r4 = call i32 @EightWhile()
    ret i32 %r4
}
