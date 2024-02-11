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
define i32 @concat(ptr %r0,ptr %r1,ptr %r2)
{
L0:
    %r17 = alloca i32
    %r3 = alloca i32
    br label %L1
L1:
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r3
    br label %L2
L2:
    %r6 = load i32, ptr %r3
    %r7 = add i32 3,0
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L4
L3:
    %r9 = load i32, ptr %r3
    %r10 = getelementptr i32, ptr %r2, i32 %r9
    %r11 = load i32, ptr %r3
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    store i32 %r13, ptr %r10
    %r14 = load i32, ptr %r3
    %r15 = add i32 1,0
    %r16 = add i32 %r14,%r15
    store i32 %r16, ptr %r3
    br label %L2
L4:
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    %r19 = add i32 0,0
    store i32 %r19, ptr %r17
    br label %L5
L5:
    %r20 = load i32, ptr %r17
    %r21 = add i32 3,0
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L6, label %L7
L6:
    %r23 = load i32, ptr %r3
    %r24 = getelementptr i32, ptr %r2, i32 %r23
    %r25 = load i32, ptr %r17
    %r26 = getelementptr i32, ptr %r1, i32 %r25
    %r27 = load i32, ptr %r26
    store i32 %r27, ptr %r24
    %r28 = load i32, ptr %r3
    %r29 = add i32 1,0
    %r30 = add i32 %r28,%r29
    store i32 %r30, ptr %r3
    %r31 = load i32, ptr %r17
    %r32 = add i32 1,0
    %r33 = add i32 %r31,%r32
    store i32 %r33, ptr %r17
    br label %L5
L7:
    %r34 = add i32 0,0
    ret i32 %r34
}
define i32 @main()
{
L0:
    %r40 = alloca i32
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
    br label %L1
L1:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,0
    store i32 %r11, ptr %r9
    br label %L2
L2:
    %r12 = load i32, ptr %r9
    %r13 = add i32 3,0
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L3, label %L4
L3:
    %r15 = load i32, ptr %r9
    %r16 = getelementptr [3 x i32], ptr %r0, i32 0, i32 %r15
    %r17 = load i32, ptr %r9
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r9
    %r19 = getelementptr [3 x i32], ptr %r1, i32 0, i32 %r18
    %r20 = load i32, ptr %r9
    store i32 %r20, ptr %r19
    %r21 = load i32, ptr %r9
    %r22 = getelementptr [3 x i32], ptr %r2, i32 0, i32 %r21
    %r23 = load i32, ptr %r9
    store i32 %r23, ptr %r22
    %r24 = load i32, ptr %r9
    %r25 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r24
    %r26 = load i32, ptr %r9
    store i32 %r26, ptr %r25
    %r27 = load i32, ptr %r9
    %r28 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r27
    %r29 = load i32, ptr %r9
    store i32 %r29, ptr %r28
    %r30 = load i32, ptr %r9
    %r31 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r30
    %r32 = load i32, ptr %r9
    store i32 %r32, ptr %r31
    %r33 = load i32, ptr %r9
    %r34 = add i32 1,0
    %r35 = add i32 %r33,%r34
    store i32 %r35, ptr %r9
    br label %L2
L4:
    %r36 = getelementptr [3 x i32], ptr %r0, i32 0
    %r37 = getelementptr [3 x i32], ptr %r3, i32 0
    %r38 = getelementptr [6 x i32], ptr %r6, i32 0
    %r39 = call i32 @concat(ptr %r36,ptr %r37,ptr %r38)
    store i32 %r39, ptr %r9
    %r41 = add i32 0,0
    store i32 %r41, ptr %r40
    br label %L5
L5:
    %r42 = load i32, ptr %r9
    %r43 = add i32 6,0
    %r44 = icmp slt i32 %r42,%r43
    br i1 %r44, label %L6, label %L7
L6:
    %r45 = load i32, ptr %r9
    %r46 = getelementptr [6 x i32], ptr %r6, i32 0, i32 %r45
    %r47 = load i32, ptr %r46
    store i32 %r47, ptr %r40
    %r48 = load i32, ptr %r40
    call void @putint(i32 %r48)
    %r49 = load i32, ptr %r9
    %r50 = add i32 1,0
    %r51 = add i32 %r49,%r50
    store i32 %r51, ptr %r9
    br label %L5
L7:
    %r52 = add i32 10,0
    store i32 %r52, ptr %r40
    %r53 = load i32, ptr %r40
    call void @putch(i32 %r53)
    %r54 = add i32 0,0
    ret i32 %r54
}
