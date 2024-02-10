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
    %r41 = alloca i32
    %r16 = alloca i32
    %r15 = alloca [10 x i32]
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    %r3 = load i32, ptr %r2
    %r4 = add i32 1,0
    %r5 = icmp eq i32 %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r6 = add i32 1,0
    ret i32 %r6
L3:
    %r7 = add i32 0,0
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = load i32, ptr %r8
    %r10 = load i32, ptr %r2
    %r11 = add i32 2,0
    %r12 = sub i32 %r10,%r11
    %r13 = icmp sgt i32 %r9,%r12
    br i1 %r13, label %L4, label %L5
L4:
    %r14 = add i32 1,0
    ret i32 %r14
L5:
    store i32 0, ptr %r16
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    br label %L6
L6:
    %r18 = load i32, ptr %r16
    %r19 = load i32, ptr %r2
    %r20 = add i32 1,0
    %r21 = sub i32 %r19,%r20
    %r22 = icmp slt i32 %r18,%r21
    br i1 %r22, label %L7, label %L8
L7:
    %r23 = load i32, ptr %r16
    %r24 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r23
    %r25 = add i32 0,0
    store i32 %r25, ptr %r24
    %r26 = load i32, ptr %r16
    %r27 = add i32 1,0
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r16
    br label %L6
L8:
    %r29 = load i32, ptr %r2
    %r30 = add i32 1,0
    %r31 = sub i32 %r29,%r30
    %r32 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r31
    %r33 = add i32 1,0
    store i32 %r33, ptr %r32
    %r34 = load i32, ptr %r2
    %r35 = add i32 2,0
    %r36 = sub i32 %r34,%r35
    store i32 %r36, ptr %r16
    br label %L9
L9:
    %r37 = load i32, ptr %r16
    %r38 = add i32 1,0
    %r39 = sub i32 0,%r38
    %r40 = icmp sgt i32 %r37,%r39
    br i1 %r40, label %L10, label %L11
L10:
    store i32 0, ptr %r41
    %r42 = load i32, ptr %r16
    %r43 = getelementptr i32, ptr %r0, i32 %r42
    %r44 = load i32, ptr %r43
    %r45 = load i32, ptr %r2
    %r46 = add i32 1,0
    %r47 = sub i32 %r45,%r46
    %r48 = load i32, ptr %r16
    %r49 = sub i32 %r47,%r48
    %r50 = icmp slt i32 %r44,%r49
    br i1 %r50, label %L12, label %L13
L11:
    %r79 = add i32 0,0
    %r80 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r79
    %r81 = load i32, ptr %r80
    ret i32 %r81
L12:
    %r51 = load i32, ptr %r16
    %r52 = getelementptr i32, ptr %r0, i32 %r51
    %r53 = load i32, ptr %r52
    store i32 %r53, ptr %r41
    br label %L14
L13:
    %r54 = load i32, ptr %r2
    %r55 = add i32 1,0
    %r56 = sub i32 %r54,%r55
    %r57 = load i32, ptr %r16
    %r58 = sub i32 %r56,%r57
    store i32 %r58, ptr %r41
    br label %L14
L14:
    br label %L15
L15:
    %r59 = load i32, ptr %r41
    %r60 = add i32 1,0
    %r61 = sub i32 0,%r60
    %r62 = icmp sgt i32 %r59,%r61
    br i1 %r62, label %L16, label %L17
L16:
    %r63 = load i32, ptr %r16
    %r64 = load i32, ptr %r41
    %r65 = add i32 %r63,%r64
    %r66 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r65
    %r67 = load i32, ptr %r66
    %r68 = add i32 0,0
    %r69 = icmp ne i32 %r67,%r68
    br i1 %r69, label %L18, label %L19
L17:
    %r76 = load i32, ptr %r16
    %r77 = add i32 1,0
    %r78 = sub i32 %r76,%r77
    store i32 %r78, ptr %r16
    br label %L9
L18:
    %r70 = load i32, ptr %r16
    %r71 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r70
    %r72 = add i32 1,0
    store i32 %r72, ptr %r71
    br label %L19
L19:
    %r73 = load i32, ptr %r41
    %r74 = add i32 1,0
    %r75 = sub i32 %r73,%r74
    store i32 %r75, ptr %r41
    br label %L15
}
define i32 @main()
{
L0:
    %r1 = alloca [10 x i32]
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r2 = add i32 0,0
    %r3 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r2
    %r4 = add i32 3,0
    store i32 %r4, ptr %r3
    %r5 = add i32 1,0
    %r6 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r5
    %r7 = add i32 3,0
    store i32 %r7, ptr %r6
    %r8 = add i32 2,0
    %r9 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r8
    %r10 = add i32 9,0
    store i32 %r10, ptr %r9
    %r11 = add i32 3,0
    %r12 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r11
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = add i32 4,0
    %r15 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r14
    %r16 = add i32 0,0
    store i32 %r16, ptr %r15
    %r17 = add i32 5,0
    %r18 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r17
    %r19 = add i32 1,0
    store i32 %r19, ptr %r18
    %r20 = add i32 6,0
    %r21 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r20
    %r22 = add i32 1,0
    store i32 %r22, ptr %r21
    %r23 = add i32 7,0
    %r24 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r23
    %r25 = add i32 5,0
    store i32 %r25, ptr %r24
    %r26 = add i32 8,0
    %r27 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r26
    %r28 = add i32 7,0
    store i32 %r28, ptr %r27
    %r29 = add i32 9,0
    %r30 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r29
    %r31 = add i32 8,0
    store i32 %r31, ptr %r30
    %r32 = add i32 10,0
    store i32 %r32, ptr %r0
    %r33 = getelementptr [10 x i32], ptr %r1, i32 0
    %r34 = load i32, ptr %r0
    %r35 = call i32 @canJump(ptr %r33,i32 %r34)
    store i32 %r35, ptr %r0
    %r36 = load i32, ptr %r0
    ret i32 %r36
}
