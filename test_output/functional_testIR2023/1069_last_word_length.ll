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
    %r29 = alloca i32
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
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r9 = load i32, ptr %r2
    %r10 = add i32 1,0
    %r11 = sub i32 %r9,%r10
    store i32 %r11, ptr %r7
    br label %L4
L4:
    %r12 = load i32, ptr %r7
    %r13 = add i32 1,0
    %r14 = sub i32 0,%r13
    %r15 = icmp sgt i32 %r12,%r14
    br i1 %r15, label %L7, label %L6
L5:
    %r21 = load i32, ptr %r7
    %r22 = add i32 1,0
    %r23 = sub i32 %r21,%r22
    store i32 %r23, ptr %r7
    br label %L4
L6:
    %r24 = load i32, ptr %r7
    %r25 = add i32 1,0
    %r26 = sub i32 0,%r25
    %r27 = icmp eq i32 %r24,%r26
    br i1 %r27, label %L8, label %L9
L7:
    %r16 = load i32, ptr %r7
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    %r18 = load i32, ptr %r17
    %r19 = add i32 0,0
    %r20 = icmp eq i32 %r18,%r19
    br i1 %r20, label %L5, label %L6
L8:
    %r28 = add i32 0,0
    ret i32 %r28
L9:
    %r30 = add i32 0,0
    store i32 %r30, ptr %r29
    %r31 = load i32, ptr %r7
    store i32 %r31, ptr %r29
    br label %L10
L10:
    %r32 = load i32, ptr %r29
    %r33 = add i32 1,0
    %r34 = sub i32 0,%r33
    %r35 = icmp sgt i32 %r32,%r34
    br i1 %r35, label %L11, label %L12
L11:
    %r36 = load i32, ptr %r29
    %r37 = getelementptr i32, ptr %r0, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = add i32 0,0
    %r40 = icmp eq i32 %r38,%r39
    br i1 %r40, label %L13, label %L14
L12:
    %r55 = load i32, ptr %r7
    %r56 = load i32, ptr %r29
    %r57 = sub i32 %r55,%r56
    ret i32 %r57
L13:
    %r41 = load i32, ptr %r2
    %r42 = load i32, ptr %r29
    %r43 = sub i32 %r41,%r42
    %r44 = add i32 1,0
    %r45 = sub i32 %r43,%r44
    %r46 = load i32, ptr %r2
    %r47 = add i32 1,0
    %r48 = sub i32 %r46,%r47
    %r49 = load i32, ptr %r7
    %r50 = sub i32 %r48,%r49
    %r51 = sub i32 %r45,%r50
    ret i32 %r51
L14:
    %r52 = load i32, ptr %r29
    %r53 = add i32 1,0
    %r54 = sub i32 %r52,%r53
    store i32 %r54, ptr %r29
    br label %L10
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
    %r3 = add i32 0,0
    %r4 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r3
    %r5 = add i32 4,0
    %r6 = sub i32 0,%r5
    store i32 %r6, ptr %r4
    %r7 = add i32 1,0
    %r8 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r7
    %r9 = add i32 3,0
    store i32 %r9, ptr %r8
    %r10 = add i32 2,0
    %r11 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r10
    %r12 = add i32 9,0
    store i32 %r12, ptr %r11
    %r13 = add i32 3,0
    %r14 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r13
    %r15 = add i32 2,0
    %r16 = sub i32 0,%r15
    store i32 %r16, ptr %r14
    %r17 = add i32 4,0
    %r18 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r17
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    %r20 = add i32 5,0
    %r21 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r20
    %r22 = add i32 1,0
    store i32 %r22, ptr %r21
    %r23 = add i32 6,0
    %r24 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r23
    %r25 = add i32 6,0
    %r26 = sub i32 0,%r25
    store i32 %r26, ptr %r24
    %r27 = add i32 7,0
    %r28 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r27
    %r29 = add i32 5,0
    store i32 %r29, ptr %r28
    %r30 = add i32 8,0
    %r31 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r30
    %r32 = add i32 7,0
    store i32 %r32, ptr %r31
    %r33 = add i32 9,0
    %r34 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r33
    %r35 = add i32 8,0
    store i32 %r35, ptr %r34
    %r36 = add i32 10,0
    store i32 %r36, ptr %r0
    %r37 = getelementptr [10 x i32], ptr %r2, i32 0
    %r38 = load i32, ptr %r0
    %r39 = call i32 @lengthOfLastWord(ptr %r37,i32 %r38)
    store i32 %r39, ptr %r0
    %r40 = load i32, ptr %r0
    ret i32 %r40
}
