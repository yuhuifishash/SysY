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
define i32 @lengthOfLastWord(ptr %r0,i32 %r1)
{
L0:
    %r40 = alloca i32
    %r9 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    %r3 = load i32, ptr %r2
    %r4 = add i32 0,0
    %r5 = icmp eq i32 %r3,%r4
    br i1 %r5, label %L1, label %L2
L1:
    %r8 = add i32 0,0
    ret i32 %r8
L2:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r2
    %r12 = add i32 0,1
    %r13 = sub i32 %r11,%r12
    store i32 %r13, ptr %r9
    br label %L3
L3:
    %r14 = load i32, ptr %r9
    %r15 = add i32 0,1
    %r16 = sub i32 0,%r15
    %r17 = icmp sgt i32 %r14,%r16
    br i1 %r17, label %L6, label %L5
L4:
    %r30 = load i32, ptr %r9
    %r31 = add i32 0,1
    %r32 = sub i32 %r30,%r31
    store i32 %r32, ptr %r9
    br label %L3
L5:
    %r33 = load i32, ptr %r9
    %r34 = add i32 0,1
    %r35 = sub i32 0,%r34
    %r36 = icmp eq i32 %r33,%r35
    br i1 %r36, label %L8, label %L9
L6:
    %r20 = load i32, ptr %r9
    %r21 = getelementptr i32, ptr %r0, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = add i32 0,0
    %r24 = icmp eq i32 %r22,%r23
    br i1 %r24, label %L4, label %L5
L8:
    %r39 = add i32 0,0
    ret i32 %r39
L9:
    %r41 = add i32 0,0
    store i32 %r41, ptr %r40
    %r42 = load i32, ptr %r9
    store i32 %r42, ptr %r40
    br label %L10
L10:
    %r43 = load i32, ptr %r40
    %r44 = add i32 0,1
    %r45 = sub i32 0,%r44
    %r46 = icmp sgt i32 %r43,%r45
    br i1 %r46, label %L11, label %L12
L11:
    %r49 = load i32, ptr %r40
    %r50 = getelementptr i32, ptr %r0, i32 %r49
    %r51 = load i32, ptr %r50
    %r52 = add i32 0,0
    %r53 = icmp eq i32 %r51,%r52
    br i1 %r53, label %L13, label %L14
L12:
    %r70 = load i32, ptr %r9
    %r71 = load i32, ptr %r40
    %r72 = sub i32 %r70,%r71
    ret i32 %r72
L13:
    %r56 = load i32, ptr %r2
    %r57 = load i32, ptr %r40
    %r58 = sub i32 %r56,%r57
    %r59 = add i32 0,1
    %r60 = sub i32 %r58,%r59
    %r61 = load i32, ptr %r2
    %r62 = add i32 0,1
    %r63 = sub i32 %r61,%r62
    %r64 = load i32, ptr %r9
    %r65 = sub i32 %r63,%r64
    %r66 = sub i32 %r60,%r65
    ret i32 %r66
L14:
    %r67 = load i32, ptr %r40
    %r68 = add i32 0,1
    %r69 = sub i32 %r67,%r68
    store i32 %r69, ptr %r40
    br label %L10
}
define i32 @main()
{
L0:
    %r2 = alloca [10 x i32]
    %r0 = alloca i32
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
