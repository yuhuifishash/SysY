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
define i32 @canJump(ptr %r0,i32 %r1)
{
L0:
    %r57 = alloca i32
    %r20 = alloca i32
    %r19 = alloca [10 x i32]
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    %r3 = load i32, ptr %r2
    %r4 = add i32 0,1
    %r5 = icmp eq i32 %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = add i32 0,1
    ret i32 %r8
L3:
    %r9 = add i32 0,0
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = load i32, ptr %r2
    %r13 = add i32 0,2
    %r14 = sub i32 %r12,%r13
    %r15 = icmp sgt i32 %r11,%r14
    br i1 %r15, label %L4, label %L5
L4:
    %r18 = add i32 0,1
    ret i32 %r18
L5:
    %r21 = add i32 0,0
    store i32 %r21, ptr %r20
    %r22 = add i32 0,0
    store i32 %r22, ptr %r20
    %r23 = load i32, ptr %r20
    %r24 = load i32, ptr %r2
    %r25 = add i32 0,1
    %r26 = sub i32 %r24,%r25
    %r27 = icmp slt i32 %r23,%r26
    br i1 %r27, label %L7, label %L9
L7:
    %r30 = add i32 0,0
    %r31 = load i32, ptr %r20
    %r32 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r31
    store i32 %r30, ptr %r32
    %r33 = load i32, ptr %r20
    %r34 = add i32 0,1
    %r35 = add i32 %r33,%r34
    store i32 %r35, ptr %r20
    br label %L8
L8:
    %r36 = load i32, ptr %r20
    %r37 = load i32, ptr %r2
    %r38 = add i32 0,1
    %r39 = sub i32 %r37,%r38
    %r40 = icmp slt i32 %r36,%r39
    br i1 %r40, label %L7, label %L9
L9:
    %r43 = add i32 0,1
    %r44 = load i32, ptr %r2
    %r45 = add i32 0,1
    %r46 = sub i32 %r44,%r45
    %r47 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r46
    store i32 %r43, ptr %r47
    %r48 = load i32, ptr %r2
    %r49 = add i32 0,2
    %r50 = sub i32 %r48,%r49
    store i32 %r50, ptr %r20
    %r51 = load i32, ptr %r20
    %r52 = add i32 0,1
    %r53 = sub i32 0,%r52
    %r54 = icmp sgt i32 %r51,%r53
    br i1 %r54, label %L11, label %L13
L11:
    %r58 = add i32 0,0
    store i32 %r58, ptr %r57
    %r59 = load i32, ptr %r20
    %r60 = getelementptr i32, ptr %r0, i32 %r59
    %r61 = load i32, ptr %r60
    %r62 = load i32, ptr %r2
    %r63 = add i32 0,1
    %r64 = sub i32 %r62,%r63
    %r65 = load i32, ptr %r20
    %r66 = sub i32 %r64,%r65
    %r67 = icmp slt i32 %r61,%r66
    br i1 %r67, label %L14, label %L15
L12:
    %r108 = load i32, ptr %r20
    %r109 = add i32 0,1
    %r110 = sub i32 0,%r109
    %r111 = icmp sgt i32 %r108,%r110
    br i1 %r111, label %L11, label %L13
L13:
    %r114 = add i32 0,0
    %r115 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r114
    %r116 = load i32, ptr %r115
    ret i32 %r116
L14:
    %r70 = load i32, ptr %r20
    %r71 = getelementptr i32, ptr %r0, i32 %r70
    %r72 = load i32, ptr %r71
    store i32 %r72, ptr %r57
    br label %L16
L15:
    %r73 = load i32, ptr %r2
    %r74 = add i32 0,1
    %r75 = sub i32 %r73,%r74
    %r76 = load i32, ptr %r20
    %r77 = sub i32 %r75,%r76
    store i32 %r77, ptr %r57
    br label %L16
L16:
    %r78 = load i32, ptr %r57
    %r79 = add i32 0,1
    %r80 = sub i32 0,%r79
    %r81 = icmp sgt i32 %r78,%r80
    br i1 %r81, label %L18, label %L20
L18:
    %r84 = load i32, ptr %r20
    %r85 = load i32, ptr %r57
    %r86 = add i32 %r84,%r85
    %r87 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r86
    %r88 = load i32, ptr %r87
    %r89 = add i32 0,0
    %r90 = icmp ne i32 %r88,%r89
    br i1 %r90, label %L21, label %L22
L19:
    %r99 = load i32, ptr %r57
    %r100 = add i32 0,1
    %r101 = sub i32 0,%r100
    %r102 = icmp sgt i32 %r99,%r101
    br i1 %r102, label %L18, label %L20
L20:
    %r105 = load i32, ptr %r20
    %r106 = add i32 0,1
    %r107 = sub i32 %r105,%r106
    store i32 %r107, ptr %r20
    br label %L12
L21:
    %r93 = add i32 0,1
    %r94 = load i32, ptr %r20
    %r95 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r94
    store i32 %r93, ptr %r95
    br label %L22
L22:
    %r96 = load i32, ptr %r57
    %r97 = add i32 0,1
    %r98 = sub i32 %r96,%r97
    store i32 %r98, ptr %r57
    br label %L19
}
define i32 @main()
{
L0:
    %r2 = alloca [10 x i32]
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,3
    %r4 = add i32 0,0
    %r5 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r4
    store i32 %r3, ptr %r5
    %r6 = add i32 0,3
    %r7 = add i32 0,1
    %r8 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r7
    store i32 %r6, ptr %r8
    %r9 = add i32 0,9
    %r10 = add i32 0,2
    %r11 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r10
    store i32 %r9, ptr %r11
    %r12 = add i32 0,0
    %r13 = add i32 0,3
    %r14 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r13
    store i32 %r12, ptr %r14
    %r15 = add i32 0,0
    %r16 = add i32 0,4
    %r17 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r16
    store i32 %r15, ptr %r17
    %r18 = add i32 0,1
    %r19 = add i32 0,5
    %r20 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r19
    store i32 %r18, ptr %r20
    %r21 = add i32 0,1
    %r22 = add i32 0,6
    %r23 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r22
    store i32 %r21, ptr %r23
    %r24 = add i32 0,5
    %r25 = add i32 0,7
    %r26 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r25
    store i32 %r24, ptr %r26
    %r27 = add i32 0,7
    %r28 = add i32 0,8
    %r29 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r28
    store i32 %r27, ptr %r29
    %r30 = add i32 0,8
    %r31 = add i32 0,9
    %r32 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r31
    store i32 %r30, ptr %r32
    %r33 = add i32 0,10
    store i32 %r33, ptr %r0
    %r34 = getelementptr i32, ptr %r2, i32 0
    %r35 = load i32, ptr %r0
    %r36 = call i32 @canJump(ptr %r34,i32 %r35)
    store i32 %r36, ptr %r0
    %r37 = load i32, ptr %r0
    ret i32 %r37
}
