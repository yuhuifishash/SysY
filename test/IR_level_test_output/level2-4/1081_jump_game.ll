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
define i32 @canJump(ptr %r0,i32 %r1)
{
L0:
    %r50 = alloca i32
    %r20 = alloca i32
    %r19 = alloca [10 x i32]
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    %r3 = load i32, ptr %r2
    %r4 = add i32 0,1
    %r5 = icmp eq i32 %r3,%r4
    br i1 %r5, label %L1, label %L2
L1:
    %r8 = add i32 0,1
    ret i32 %r8
L2:
    %r9 = add i32 0,0
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = load i32, ptr %r2
    %r13 = add i32 0,2
    %r14 = sub i32 %r12,%r13
    %r15 = icmp sgt i32 %r11,%r14
    br i1 %r15, label %L3, label %L4
L3:
    %r18 = add i32 0,1
    ret i32 %r18
L4:
    %r21 = add i32 0,0
    store i32 %r21, ptr %r20
    %r22 = add i32 0,0
    store i32 %r22, ptr %r20
    br label %L5
L5:
    %r23 = load i32, ptr %r20
    %r24 = load i32, ptr %r2
    %r25 = add i32 0,1
    %r26 = sub i32 %r24,%r25
    %r27 = icmp slt i32 %r23,%r26
    br i1 %r27, label %L6, label %L7
L6:
    %r30 = add i32 0,0
    %r31 = load i32, ptr %r20
    %r32 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r31
    store i32 %r30, ptr %r32
    %r33 = load i32, ptr %r20
    %r34 = add i32 0,1
    %r35 = add i32 %r33,%r34
    store i32 %r35, ptr %r20
    br label %L5
L7:
    %r36 = add i32 0,1
    %r37 = load i32, ptr %r2
    %r38 = add i32 0,1
    %r39 = sub i32 %r37,%r38
    %r40 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r39
    store i32 %r36, ptr %r40
    %r41 = load i32, ptr %r2
    %r42 = add i32 0,2
    %r43 = sub i32 %r41,%r42
    store i32 %r43, ptr %r20
    br label %L8
L8:
    %r44 = load i32, ptr %r20
    %r45 = add i32 0,1
    %r46 = sub i32 0,%r45
    %r47 = icmp sgt i32 %r44,%r46
    br i1 %r47, label %L9, label %L10
L9:
    %r51 = add i32 0,0
    store i32 %r51, ptr %r50
    %r52 = load i32, ptr %r20
    %r53 = getelementptr i32, ptr %r0, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = load i32, ptr %r2
    %r56 = add i32 0,1
    %r57 = sub i32 %r55,%r56
    %r58 = load i32, ptr %r20
    %r59 = sub i32 %r57,%r58
    %r60 = icmp slt i32 %r54,%r59
    br i1 %r60, label %L11, label %L12
L10:
    %r95 = add i32 0,0
    %r96 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r95
    %r97 = load i32, ptr %r96
    ret i32 %r97
L11:
    %r63 = load i32, ptr %r20
    %r64 = getelementptr i32, ptr %r0, i32 %r63
    %r65 = load i32, ptr %r64
    store i32 %r65, ptr %r50
    br label %L13
L12:
    %r66 = load i32, ptr %r2
    %r67 = add i32 0,1
    %r68 = sub i32 %r66,%r67
    %r69 = load i32, ptr %r20
    %r70 = sub i32 %r68,%r69
    store i32 %r70, ptr %r50
    br label %L13
L13:
    br label %L14
L14:
    %r71 = load i32, ptr %r50
    %r72 = add i32 0,1
    %r73 = sub i32 0,%r72
    %r74 = icmp sgt i32 %r71,%r73
    br i1 %r74, label %L15, label %L16
L15:
    %r77 = load i32, ptr %r20
    %r78 = load i32, ptr %r50
    %r79 = add i32 %r77,%r78
    %r80 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r79
    %r81 = load i32, ptr %r80
    %r82 = add i32 0,0
    %r83 = icmp ne i32 %r81,%r82
    br i1 %r83, label %L17, label %L18
L16:
    %r92 = load i32, ptr %r20
    %r93 = add i32 0,1
    %r94 = sub i32 %r92,%r93
    store i32 %r94, ptr %r20
    br label %L8
L17:
    %r86 = add i32 0,1
    %r87 = load i32, ptr %r20
    %r88 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r87
    store i32 %r86, ptr %r88
    br label %L18
L18:
    %r89 = load i32, ptr %r50
    %r90 = add i32 0,1
    %r91 = sub i32 %r89,%r90
    store i32 %r91, ptr %r50
    br label %L14
}
define i32 @main()
{
L0:
    %r2 = alloca [10 x i32]
    %r0 = alloca i32
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
