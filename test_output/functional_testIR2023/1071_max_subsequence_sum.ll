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
    %r21 = alloca i32
    %r18 = alloca i32
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
L5:
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    %r15 = add i32 0,0
    %r16 = getelementptr i32, ptr %r0, i32 %r15
    %r17 = load i32, ptr %r16
    store i32 %r17, ptr %r13
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr %r13
    store i32 %r20, ptr %r18
    %r22 = add i32 0,0
    store i32 %r22, ptr %r21
    %r23 = add i32 1,0
    store i32 %r23, ptr %r21
    br label %L6
L6:
    %r24 = load i32, ptr %r21
    %r25 = load i32, ptr %r2
    %r26 = icmp slt i32 %r24,%r25
    br i1 %r26, label %L7, label %L8
L7:
    %r27 = load i32, ptr %r13
    %r28 = add i32 0,0
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L9, label %L10
L8:
    %r43 = load i32, ptr %r18
    ret i32 %r43
L9:
    %r30 = add i32 0,0
    store i32 %r30, ptr %r13
    br label %L10
L10:
    %r31 = load i32, ptr %r13
    %r32 = load i32, ptr %r21
    %r33 = getelementptr i32, ptr %r0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = add i32 %r31,%r34
    store i32 %r35, ptr %r13
    %r36 = load i32, ptr %r18
    %r37 = load i32, ptr %r13
    %r38 = icmp slt i32 %r36,%r37
    br i1 %r38, label %L11, label %L12
L11:
    %r39 = load i32, ptr %r13
    store i32 %r39, ptr %r18
    br label %L12
L12:
    %r40 = load i32, ptr %r21
    %r41 = add i32 1,0
    %r42 = add i32 %r40,%r41
    store i32 %r42, ptr %r21
    br label %L6
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
    %r39 = call i32 @maxSubArray(ptr %r37,i32 %r38)
    store i32 %r39, ptr %r0
    %r40 = load i32, ptr %r0
    ret i32 %r40
}
