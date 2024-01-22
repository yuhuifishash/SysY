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
    br label %L1
L1:
    %r12 = load i32, ptr %r0
    %r13 = add i32 0,20
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L2, label %L3
L2:
    %r17 = load i32, ptr %r0
    %r18 = add i32 0,3
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r0
    br label %L4
L3:
    %r97 = load i32, ptr %r0
    %r98 = load i32, ptr %r3
    %r99 = load i32, ptr %r9
    %r100 = add i32 %r98,%r99
    %r101 = add i32 %r97,%r100
    %r102 = load i32, ptr %r5
    %r103 = add i32 %r101,%r102
    %r104 = load i32, ptr @e
    %r105 = load i32, ptr %r9
    %r106 = add i32 %r104,%r105
    %r107 = load i32, ptr @g
    %r108 = sub i32 %r106,%r107
    %r109 = load i32, ptr @h
    %r110 = add i32 %r108,%r109
    %r111 = sub i32 %r103,%r110
    ret i32 %r111
L4:
    %r20 = load i32, ptr %r3
    %r21 = add i32 0,10
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L5, label %L6
L5:
    %r25 = load i32, ptr %r3
    %r26 = add i32 0,1
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r3
    br label %L7
L6:
    %r94 = load i32, ptr %r3
    %r95 = add i32 0,2
    %r96 = sub i32 %r94,%r95
    store i32 %r96, ptr %r3
    br label %L1
L7:
    %r28 = load i32, ptr %r5
    %r29 = add i32 0,7
    %r30 = icmp eq i32 %r28,%r29
    br i1 %r30, label %L8, label %L9
L8:
    %r33 = load i32, ptr %r5
    %r34 = add i32 0,1
    %r35 = sub i32 %r33,%r34
    store i32 %r35, ptr %r5
    br label %L10
L9:
    %r91 = load i32, ptr %r5
    %r92 = add i32 0,1
    %r93 = add i32 %r91,%r92
    store i32 %r93, ptr %r5
    br label %L4
L10:
    %r36 = load i32, ptr %r9
    %r37 = add i32 0,20
    %r38 = icmp slt i32 %r36,%r37
    br i1 %r38, label %L11, label %L12
L11:
    %r41 = load i32, ptr %r9
    %r42 = add i32 0,3
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r9
    br label %L13
L12:
    %r88 = load i32, ptr %r9
    %r89 = add i32 0,1
    %r90 = sub i32 %r88,%r89
    store i32 %r90, ptr %r9
    br label %L7
L13:
    %r44 = load i32, ptr @e
    %r45 = add i32 0,1
    %r46 = icmp sgt i32 %r44,%r45
    br i1 %r46, label %L14, label %L15
L14:
    %r49 = load i32, ptr @e
    %r50 = add i32 0,1
    %r51 = sub i32 %r49,%r50
    store i32 %r51, ptr @e
    br label %L16
L15:
    %r85 = load i32, ptr @e
    %r86 = add i32 0,1
    %r87 = add i32 %r85,%r86
    store i32 %r87, ptr @e
    br label %L10
L16:
    %r52 = load i32, ptr @f
    %r53 = add i32 0,2
    %r54 = icmp sgt i32 %r52,%r53
    br i1 %r54, label %L17, label %L18
L17:
    %r57 = load i32, ptr @f
    %r58 = add i32 0,2
    %r59 = sub i32 %r57,%r58
    store i32 %r59, ptr @f
    br label %L19
L18:
    %r82 = load i32, ptr @f
    %r83 = add i32 0,1
    %r84 = add i32 %r82,%r83
    store i32 %r84, ptr @f
    br label %L13
L19:
    %r60 = load i32, ptr @g
    %r61 = add i32 0,3
    %r62 = icmp slt i32 %r60,%r61
    br i1 %r62, label %L20, label %L21
L20:
    %r65 = load i32, ptr @g
    %r66 = add i32 0,10
    %r67 = add i32 %r65,%r66
    store i32 %r67, ptr @g
    br label %L22
L21:
    %r79 = load i32, ptr @g
    %r80 = add i32 0,8
    %r81 = sub i32 %r79,%r80
    store i32 %r81, ptr @g
    br label %L16
L22:
    %r68 = load i32, ptr @h
    %r69 = add i32 0,10
    %r70 = icmp slt i32 %r68,%r69
    br i1 %r70, label %L23, label %L24
L23:
    %r73 = load i32, ptr @h
    %r74 = add i32 0,8
    %r75 = add i32 %r73,%r74
    store i32 %r75, ptr @h
    br label %L22
L24:
    %r76 = load i32, ptr @h
    %r77 = add i32 0,1
    %r78 = sub i32 %r76,%r77
    store i32 %r78, ptr @h
    br label %L19
}
define i32 @main()
{
L0:
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
