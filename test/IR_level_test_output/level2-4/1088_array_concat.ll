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
define i32 @concat(ptr %r0,ptr %r1,ptr %r2)
{
L0:
    %r19 = alloca i32
    %r3 = alloca i32
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r3
    br label %L1
L1:
    %r6 = load i32, ptr %r3
    %r7 = add i32 0,3
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r11 = load i32, ptr %r3
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = load i32, ptr %r3
    %r15 = getelementptr i32, ptr %r2, i32 %r14
    store i32 %r13, ptr %r15
    %r16 = load i32, ptr %r3
    %r17 = add i32 0,1
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r3
    br label %L1
L3:
    %r20 = add i32 0,0
    store i32 %r20, ptr %r19
    %r21 = add i32 0,0
    store i32 %r21, ptr %r19
    br label %L4
L4:
    %r22 = load i32, ptr %r19
    %r23 = add i32 0,3
    %r24 = icmp slt i32 %r22,%r23
    br i1 %r24, label %L5, label %L6
L5:
    %r27 = load i32, ptr %r19
    %r28 = getelementptr i32, ptr %r1, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = load i32, ptr %r3
    %r31 = getelementptr i32, ptr %r2, i32 %r30
    store i32 %r29, ptr %r31
    %r32 = load i32, ptr %r3
    %r33 = add i32 0,1
    %r34 = add i32 %r32,%r33
    store i32 %r34, ptr %r3
    %r35 = load i32, ptr %r19
    %r36 = add i32 0,1
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r19
    br label %L4
L6:
    %r38 = add i32 0,0
    ret i32 %r38
}
define i32 @main()
{
L0:
    %r42 = alloca i32
    %r9 = alloca i32
    %r8 = alloca [3 x i32]
    %r7 = alloca [3 x i32]
    %r6 = alloca [6 x i32]
    %r5 = alloca [3 x i32]
    %r4 = alloca [3 x i32]
    %r3 = alloca [3 x i32]
    %r2 = alloca [3 x i32]
    %r1 = alloca [3 x i32]
    %r0 = alloca [3 x i32]
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    br label %L1
L1:
    %r12 = load i32, ptr %r9
    %r13 = add i32 0,3
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L2, label %L3
L2:
    %r17 = load i32, ptr %r9
    %r18 = load i32, ptr %r9
    %r19 = getelementptr [3 x i32], ptr %r0, i32 0, i32 %r18
    store i32 %r17, ptr %r19
    %r20 = load i32, ptr %r9
    %r21 = load i32, ptr %r9
    %r22 = getelementptr [3 x i32], ptr %r1, i32 0, i32 %r21
    store i32 %r20, ptr %r22
    %r23 = load i32, ptr %r9
    %r24 = load i32, ptr %r9
    %r25 = getelementptr [3 x i32], ptr %r2, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    %r26 = load i32, ptr %r9
    %r27 = load i32, ptr %r9
    %r28 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r27
    store i32 %r26, ptr %r28
    %r29 = load i32, ptr %r9
    %r30 = load i32, ptr %r9
    %r31 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r30
    store i32 %r29, ptr %r31
    %r32 = load i32, ptr %r9
    %r33 = load i32, ptr %r9
    %r34 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r33
    store i32 %r32, ptr %r34
    %r35 = load i32, ptr %r9
    %r36 = add i32 0,1
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r9
    br label %L1
L3:
    %r38 = getelementptr i32, ptr %r0, i32 0
    %r39 = getelementptr i32, ptr %r3, i32 0
    %r40 = getelementptr i32, ptr %r6, i32 0
    %r41 = call i32 @concat(ptr %r38,ptr %r39,ptr %r40)
    store i32 %r41, ptr %r9
    %r43 = add i32 0,0
    store i32 %r43, ptr %r42
    br label %L4
L4:
    %r44 = load i32, ptr %r9
    %r45 = add i32 0,6
    %r46 = icmp slt i32 %r44,%r45
    br i1 %r46, label %L5, label %L6
L5:
    %r49 = load i32, ptr %r9
    %r50 = getelementptr [6 x i32], ptr %r6, i32 0, i32 %r49
    %r51 = load i32, ptr %r50
    store i32 %r51, ptr %r42
    %r52 = load i32, ptr %r42
    call void @putint(i32 %r52)
    %r53 = load i32, ptr %r9
    %r54 = add i32 0,1
    %r55 = add i32 %r53,%r54
    store i32 %r55, ptr %r9
    br label %L4
L6:
    %r56 = add i32 0,10
    store i32 %r56, ptr %r42
    %r57 = load i32, ptr %r42
    call void @putch(i32 %r57)
    %r58 = add i32 0,0
    ret i32 %r58
}
