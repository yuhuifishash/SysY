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
@buf = global [2x [100x i32]] zeroinitializer
define void @merge_sort(i32 %r0,i32 %r1)
{
L0:
    %r25 = alloca i32
    %r23 = alloca i32
    %r21 = alloca i32
    %r11 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,1
    %r6 = add i32 %r4,%r5
    %r7 = load i32, ptr %r3
    %r8 = icmp sge i32 %r6,%r7
    br i1 %r8, label %L1, label %L2
L1:
    ret void
L2:
    %r12 = load i32, ptr %r2
    %r13 = load i32, ptr %r3
    %r14 = add i32 %r12,%r13
    %r15 = add i32 0,2
    %r16 = sdiv i32 %r14,%r15
    store i32 %r16, ptr %r11
    %r17 = load i32, ptr %r2
    %r18 = load i32, ptr %r11
    call void @merge_sort(i32 %r17,i32 %r18)
    %r19 = load i32, ptr %r11
    %r20 = load i32, ptr %r3
    call void @merge_sort(i32 %r19,i32 %r20)
    %r22 = load i32, ptr %r2
    store i32 %r22, ptr %r21
    %r24 = load i32, ptr %r11
    store i32 %r24, ptr %r23
    %r26 = load i32, ptr %r2
    store i32 %r26, ptr %r25
    br label %L3
L3:
    %r27 = load i32, ptr %r21
    %r28 = load i32, ptr %r11
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L6, label %L5
L4:
    %r40 = add i32 0,0
    %r41 = load i32, ptr %r21
    %r42 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r40, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = add i32 0,0
    %r45 = load i32, ptr %r23
    %r46 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r44, i32 %r45
    %r47 = load i32, ptr %r46
    %r48 = icmp slt i32 %r43,%r47
    br i1 %r48, label %L8, label %L9
L5:
    br label %L11
L6:
    %r32 = load i32, ptr %r23
    %r33 = load i32, ptr %r3
    %r34 = icmp slt i32 %r32,%r33
    br i1 %r34, label %L4, label %L5
L8:
    %r51 = add i32 0,0
    %r52 = load i32, ptr %r21
    %r53 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r51, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = add i32 0,1
    %r56 = load i32, ptr %r25
    %r57 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r55, i32 %r56
    store i32 %r54, ptr %r57
    %r58 = load i32, ptr %r21
    %r59 = add i32 0,1
    %r60 = add i32 %r58,%r59
    store i32 %r60, ptr %r21
    br label %L10
L9:
    %r61 = add i32 0,0
    %r62 = load i32, ptr %r23
    %r63 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r61, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = add i32 0,1
    %r66 = load i32, ptr %r25
    %r67 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r65, i32 %r66
    store i32 %r64, ptr %r67
    %r68 = load i32, ptr %r23
    %r69 = add i32 0,1
    %r70 = add i32 %r68,%r69
    store i32 %r70, ptr %r23
    br label %L10
L10:
    %r71 = load i32, ptr %r25
    %r72 = add i32 0,1
    %r73 = add i32 %r71,%r72
    store i32 %r73, ptr %r25
    br label %L3
L11:
    %r74 = load i32, ptr %r21
    %r75 = load i32, ptr %r11
    %r76 = icmp slt i32 %r74,%r75
    br i1 %r76, label %L12, label %L13
L12:
    %r79 = add i32 0,0
    %r80 = load i32, ptr %r21
    %r81 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r79, i32 %r80
    %r82 = load i32, ptr %r81
    %r83 = add i32 0,1
    %r84 = load i32, ptr %r25
    %r85 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r83, i32 %r84
    store i32 %r82, ptr %r85
    %r86 = load i32, ptr %r21
    %r87 = add i32 0,1
    %r88 = add i32 %r86,%r87
    store i32 %r88, ptr %r21
    %r89 = load i32, ptr %r25
    %r90 = add i32 0,1
    %r91 = add i32 %r89,%r90
    store i32 %r91, ptr %r25
    br label %L11
L13:
    br label %L14
L14:
    %r92 = load i32, ptr %r23
    %r93 = load i32, ptr %r3
    %r94 = icmp slt i32 %r92,%r93
    br i1 %r94, label %L15, label %L16
L15:
    %r97 = add i32 0,0
    %r98 = load i32, ptr %r23
    %r99 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r97, i32 %r98
    %r100 = load i32, ptr %r99
    %r101 = add i32 0,1
    %r102 = load i32, ptr %r25
    %r103 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r101, i32 %r102
    store i32 %r100, ptr %r103
    %r104 = load i32, ptr %r23
    %r105 = add i32 0,1
    %r106 = add i32 %r104,%r105
    store i32 %r106, ptr %r23
    %r107 = load i32, ptr %r25
    %r108 = add i32 0,1
    %r109 = add i32 %r107,%r108
    store i32 %r109, ptr %r25
    br label %L14
L16:
    br label %L17
L17:
    %r110 = load i32, ptr %r2
    %r111 = load i32, ptr %r3
    %r112 = icmp slt i32 %r110,%r111
    br i1 %r112, label %L18, label %L19
L18:
    %r115 = add i32 0,1
    %r116 = load i32, ptr %r2
    %r117 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r115, i32 %r116
    %r118 = load i32, ptr %r117
    %r119 = add i32 0,0
    %r120 = load i32, ptr %r2
    %r121 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r119, i32 %r120
    store i32 %r118, ptr %r121
    %r122 = load i32, ptr %r2
    %r123 = add i32 0,1
    %r124 = add i32 %r122,%r123
    store i32 %r124, ptr %r2
    br label %L17
L19:
    ret void
}
define i32 @main()
{
L0:
    %r0 = alloca i32
    %r1 = add i32 0,0
    %r2 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r1
    %r3 = call i32 @getarray(ptr %r2)
    store i32 %r3, ptr %r0
    %r4 = add i32 0,0
    %r5 = load i32, ptr %r0
    call void @merge_sort(i32 %r4,i32 %r5)
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,0
    %r8 = getelementptr [2 x [100 x i32]], ptr @buf, i32 0, i32 %r7
    call void @putarray(i32 %r6,ptr %r8)
    %r9 = add i32 0,0
    ret i32 %r9
}
