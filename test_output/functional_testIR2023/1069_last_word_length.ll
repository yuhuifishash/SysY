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
define i32 @lengthOfLastWord(ptr %r0,i32 %r1)
{
L0:
    %r56 = alloca i32
    %r9 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    %r3 = load i32, ptr %r2
    %r4 = add i32 0,0
    %r5 = icmp eq i32 %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r8 = add i32 0,0
    ret i32 %r8
L3:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r2
    %r12 = add i32 0,1
    %r13 = sub i32 %r11,%r12
    store i32 %r13, ptr %r9
    %r14 = load i32, ptr %r9
    %r15 = add i32 0,1
    %r16 = sub i32 0,%r15
    %r17 = icmp sgt i32 %r14,%r16
    br i1 %r17, label %L8, label %L7
L5:
    %r30 = load i32, ptr %r9
    %r31 = add i32 0,1
    %r32 = sub i32 %r30,%r31
    store i32 %r32, ptr %r9
    br label %L6
L6:
    %r33 = load i32, ptr %r9
    %r34 = add i32 0,1
    %r35 = sub i32 0,%r34
    %r36 = icmp sgt i32 %r33,%r35
    br i1 %r36, label %L10, label %L7
L7:
    %r49 = load i32, ptr %r9
    %r50 = add i32 0,1
    %r51 = sub i32 0,%r50
    %r52 = icmp eq i32 %r49,%r51
    br i1 %r52, label %L12, label %L13
L8:
    %r20 = load i32, ptr %r9
    %r21 = getelementptr i32, ptr %r0, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = add i32 0,0
    %r24 = icmp eq i32 %r22,%r23
    br i1 %r24, label %L5, label %L7
L10:
    %r39 = load i32, ptr %r9
    %r40 = getelementptr i32, ptr %r0, i32 %r39
    %r41 = load i32, ptr %r40
    %r42 = add i32 0,0
    %r43 = icmp eq i32 %r41,%r42
    br i1 %r43, label %L5, label %L7
L12:
    %r55 = add i32 0,0
    ret i32 %r55
L13:
    %r57 = add i32 0,0
    store i32 %r57, ptr %r56
    %r58 = load i32, ptr %r9
    store i32 %r58, ptr %r56
    %r59 = load i32, ptr %r56
    %r60 = add i32 0,1
    %r61 = sub i32 0,%r60
    %r62 = icmp sgt i32 %r59,%r61
    br i1 %r62, label %L15, label %L17
L15:
    %r65 = load i32, ptr %r56
    %r66 = getelementptr i32, ptr %r0, i32 %r65
    %r67 = load i32, ptr %r66
    %r68 = add i32 0,0
    %r69 = icmp eq i32 %r67,%r68
    br i1 %r69, label %L18, label %L19
L16:
    %r86 = load i32, ptr %r56
    %r87 = add i32 0,1
    %r88 = sub i32 0,%r87
    %r89 = icmp sgt i32 %r86,%r88
    br i1 %r89, label %L15, label %L17
L17:
    %r92 = load i32, ptr %r9
    %r93 = load i32, ptr %r56
    %r94 = sub i32 %r92,%r93
    ret i32 %r94
L18:
    %r72 = load i32, ptr %r2
    %r73 = load i32, ptr %r56
    %r74 = sub i32 %r72,%r73
    %r75 = add i32 0,1
    %r76 = sub i32 %r74,%r75
    %r77 = load i32, ptr %r2
    %r78 = add i32 0,1
    %r79 = sub i32 %r77,%r78
    %r80 = load i32, ptr %r9
    %r81 = sub i32 %r79,%r80
    %r82 = sub i32 %r76,%r81
    ret i32 %r82
L19:
    %r83 = load i32, ptr %r56
    %r84 = add i32 0,1
    %r85 = sub i32 %r83,%r84
    store i32 %r85, ptr %r56
    br label %L16
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
    %r3 = add i32 0,4
    %r4 = sub i32 0,%r3
    %r5 = add i32 0,0
    %r6 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r5
    store i32 %r4, ptr %r6
    %r7 = add i32 0,3
    %r8 = add i32 0,1
    %r9 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r8
    store i32 %r7, ptr %r9
    %r10 = add i32 0,9
    %r11 = add i32 0,2
    %r12 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r11
    store i32 %r10, ptr %r12
    %r13 = add i32 0,2
    %r14 = sub i32 0,%r13
    %r15 = add i32 0,3
    %r16 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = add i32 0,0
    %r18 = add i32 0,4
    %r19 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r18
    store i32 %r17, ptr %r19
    %r20 = add i32 0,1
    %r21 = add i32 0,5
    %r22 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r21
    store i32 %r20, ptr %r22
    %r23 = add i32 0,6
    %r24 = sub i32 0,%r23
    %r25 = add i32 0,6
    %r26 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r25
    store i32 %r24, ptr %r26
    %r27 = add i32 0,5
    %r28 = add i32 0,7
    %r29 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r28
    store i32 %r27, ptr %r29
    %r30 = add i32 0,7
    %r31 = add i32 0,8
    %r32 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r31
    store i32 %r30, ptr %r32
    %r33 = add i32 0,8
    %r34 = add i32 0,9
    %r35 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r34
    store i32 %r33, ptr %r35
    %r36 = add i32 0,10
    store i32 %r36, ptr %r0
    %r37 = getelementptr i32, ptr %r2, i32 0
    %r38 = load i32, ptr %r0
    %r39 = call i32 @lengthOfLastWord(ptr %r37,i32 %r38)
    store i32 %r39, ptr %r0
    %r40 = load i32, ptr %r0
    ret i32 %r40
}
