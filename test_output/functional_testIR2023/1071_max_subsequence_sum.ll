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
    %r19 = alloca i32
    %r17 = alloca i32
    %r13 = alloca i32
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
    br label %L3
L3:
    %r7 = load i32, ptr %r2
    %r8 = add i32 1,0
    %r9 = icmp eq i32 %r7,%r8
    br i1 %r9, label %L4, label %L5
L4:
    %r10 = add i32 0,0
    %r11 = getelementptr i32, ptr %r0, i32 %r10
    %r12 = load i32, ptr %r11
    ret i32 %r12
    br label %L5
L5:
    store i32 0, ptr %r13
    %r14 = add i32 0,0
    %r15 = getelementptr i32, ptr %r0, i32 %r14
    %r16 = load i32, ptr %r15
    store i32 %r16, ptr %r13
    store i32 0, ptr %r17
    %r18 = load i32, ptr %r13
    store i32 %r18, ptr %r17
    store i32 0, ptr %r19
    %r20 = add i32 1,0
    store i32 %r20, ptr %r19
    br label %L6
L6:
    %r21 = load i32, ptr %r19
    %r22 = load i32, ptr %r2
    %r23 = icmp slt i32 %r21,%r22
    br i1 %r23, label %L7, label %L8
L7:
    %r24 = load i32, ptr %r13
    %r25 = add i32 0,0
    %r26 = icmp slt i32 %r24,%r25
    br i1 %r26, label %L9, label %L10
L8:
    %r40 = load i32, ptr %r17
    ret i32 %r40
L9:
    %r27 = add i32 0,0
    store i32 %r27, ptr %r13
    br label %L10
L10:
    %r28 = load i32, ptr %r13
    %r29 = load i32, ptr %r19
    %r30 = getelementptr i32, ptr %r0, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = add i32 %r28,%r31
    store i32 %r32, ptr %r13
    %r33 = load i32, ptr %r17
    %r34 = load i32, ptr %r13
    %r35 = icmp slt i32 %r33,%r34
    br i1 %r35, label %L11, label %L12
L11:
    %r36 = load i32, ptr %r13
    store i32 %r36, ptr %r17
    br label %L12
L12:
    %r37 = load i32, ptr %r19
    %r38 = add i32 1,0
    %r39 = add i32 %r37,%r38
    store i32 %r39, ptr %r19
    br label %L6
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
    %r38 = call i32 @maxSubArray(ptr %r36,i32 %r37)
    store i32 %r38, ptr %r0
    %r39 = load i32, ptr %r0
    ret i32 %r39
}
