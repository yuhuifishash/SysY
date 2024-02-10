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
    %r28 = alloca i32
    %r7 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    %r3 = load i32, ptr %r2
    %r4 = add i32 0,0
    %r5 = icmp eq i32 %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:
    %r6 = add i32 0,0
    ret i32 %r6
L3:
    store i32 0, ptr %r7
    %r8 = load i32, ptr %r2
    %r9 = add i32 1,0
    %r10 = sub i32 %r8,%r9
    store i32 %r10, ptr %r7
    br label %L4
L4:
    %r11 = load i32, ptr %r7
    %r12 = add i32 1,0
    %r13 = sub i32 0,%r12
    %r14 = icmp sgt i32 %r11,%r13
    br i1 %r14, label %L7, label %L6
L5:
    %r20 = load i32, ptr %r7
    %r21 = add i32 1,0
    %r22 = sub i32 %r20,%r21
    store i32 %r22, ptr %r7
    br label %L4
L6:
    %r23 = load i32, ptr %r7
    %r24 = add i32 1,0
    %r25 = sub i32 0,%r24
    %r26 = icmp eq i32 %r23,%r25
    br i1 %r26, label %L8, label %L9
L7:
    %r15 = load i32, ptr %r7
    %r16 = getelementptr i32, ptr %r0, i32 %r15
    %r17 = load i32, ptr %r16
    %r18 = add i32 0,0
    %r19 = icmp eq i32 %r17,%r18
    br i1 %r19, label %L5, label %L6
L8:
    %r27 = add i32 0,0
    ret i32 %r27
L9:
    store i32 0, ptr %r28
    %r29 = load i32, ptr %r7
    store i32 %r29, ptr %r28
    br label %L10
L10:
    %r30 = load i32, ptr %r28
    %r31 = add i32 1,0
    %r32 = sub i32 0,%r31
    %r33 = icmp sgt i32 %r30,%r32
    br i1 %r33, label %L11, label %L12
L11:
    %r34 = load i32, ptr %r28
    %r35 = getelementptr i32, ptr %r0, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = add i32 0,0
    %r38 = icmp eq i32 %r36,%r37
    br i1 %r38, label %L13, label %L14
L12:
    %r53 = load i32, ptr %r7
    %r54 = load i32, ptr %r28
    %r55 = sub i32 %r53,%r54
    ret i32 %r55
L13:
    %r39 = load i32, ptr %r2
    %r40 = load i32, ptr %r28
    %r41 = sub i32 %r39,%r40
    %r42 = add i32 1,0
    %r43 = sub i32 %r41,%r42
    %r44 = load i32, ptr %r2
    %r45 = add i32 1,0
    %r46 = sub i32 %r44,%r45
    %r47 = load i32, ptr %r7
    %r48 = sub i32 %r46,%r47
    %r49 = sub i32 %r43,%r48
    ret i32 %r49
L14:
    %r50 = load i32, ptr %r28
    %r51 = add i32 1,0
    %r52 = sub i32 %r50,%r51
    store i32 %r52, ptr %r28
    br label %L10
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
    %r4 = add i32 4,0
    %r5 = sub i32 0,%r4
    store i32 %r5, ptr %r3
    %r6 = add i32 1,0
    %r7 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r6
    %r8 = add i32 3,0
    store i32 %r8, ptr %r7
    %r9 = add i32 2,0
    %r10 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r9
    %r11 = add i32 9,0
    store i32 %r11, ptr %r10
    %r12 = add i32 3,0
    %r13 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r12
    %r14 = add i32 2,0
    %r15 = sub i32 0,%r14
    store i32 %r15, ptr %r13
    %r16 = add i32 4,0
    %r17 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r16
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    %r19 = add i32 5,0
    %r20 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r19
    %r21 = add i32 1,0
    store i32 %r21, ptr %r20
    %r22 = add i32 6,0
    %r23 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r22
    %r24 = add i32 6,0
    %r25 = sub i32 0,%r24
    store i32 %r25, ptr %r23
    %r26 = add i32 7,0
    %r27 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r26
    %r28 = add i32 5,0
    store i32 %r28, ptr %r27
    %r29 = add i32 8,0
    %r30 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r29
    %r31 = add i32 7,0
    store i32 %r31, ptr %r30
    %r32 = add i32 9,0
    %r33 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r32
    %r34 = add i32 8,0
    store i32 %r34, ptr %r33
    %r35 = add i32 10,0
    store i32 %r35, ptr %r0
    %r36 = getelementptr [10 x i32], ptr %r1, i32 0
    %r37 = load i32, ptr %r0
    %r38 = call i32 @lengthOfLastWord(ptr %r36,i32 %r37)
    store i32 %r38, ptr %r0
    %r39 = load i32, ptr %r0
    ret i32 %r39
}
