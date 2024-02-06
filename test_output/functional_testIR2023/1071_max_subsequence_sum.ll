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
define i32 @maxSubArray(ptr %r0,i32 %r1)
{
L0:
    %r25 = alloca i32
    %r22 = alloca i32
    %r17 = alloca i32
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
    %r9 = load i32, ptr %r2
    %r10 = add i32 0,1
    %r11 = icmp eq i32 %r9,%r10
    br i1 %r11, label %L4, label %L5
L4:
    %r14 = add i32 0,0
    %r15 = getelementptr i32, ptr %r0, i32 %r14
    %r16 = load i32, ptr %r15
    ret i32 %r16
L5:
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    %r19 = add i32 0,0
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    store i32 %r21, ptr %r17
    %r23 = add i32 0,0
    store i32 %r23, ptr %r22
    %r24 = load i32, ptr %r17
    store i32 %r24, ptr %r22
    %r26 = add i32 0,0
    store i32 %r26, ptr %r25
    %r27 = add i32 0,1
    store i32 %r27, ptr %r25
    %r28 = load i32, ptr %r25
    %r29 = load i32, ptr %r2
    %r30 = icmp slt i32 %r28,%r29
    br i1 %r30, label %L7, label %L9
L7:
    %r33 = load i32, ptr %r17
    %r34 = add i32 0,0
    %r35 = icmp slt i32 %r33,%r34
    br i1 %r35, label %L10, label %L11
L8:
    %r53 = load i32, ptr %r25
    %r54 = load i32, ptr %r2
    %r55 = icmp slt i32 %r53,%r54
    br i1 %r55, label %L7, label %L9
L9:
    %r58 = load i32, ptr %r22
    ret i32 %r58
L10:
    %r38 = add i32 0,0
    store i32 %r38, ptr %r17
    br label %L11
L11:
    %r39 = load i32, ptr %r17
    %r40 = load i32, ptr %r25
    %r41 = getelementptr i32, ptr %r0, i32 %r40
    %r42 = load i32, ptr %r41
    %r43 = add i32 %r39,%r42
    store i32 %r43, ptr %r17
    %r44 = load i32, ptr %r22
    %r45 = load i32, ptr %r17
    %r46 = icmp slt i32 %r44,%r45
    br i1 %r46, label %L12, label %L13
L12:
    %r49 = load i32, ptr %r17
    store i32 %r49, ptr %r22
    br label %L13
L13:
    %r50 = load i32, ptr %r25
    %r51 = add i32 0,1
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r25
    br label %L8
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
    %r39 = call i32 @maxSubArray(ptr %r37,i32 %r38)
    store i32 %r39, ptr %r0
    %r40 = load i32, ptr %r0
    ret i32 %r40
}
