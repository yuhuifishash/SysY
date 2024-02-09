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
define i32 @removeElement(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    store i32 %r2, ptr %r4
    br label %L1
L1:
    store i32 0, ptr %r5
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    br label %L2
L2:
    %r7 = load i32, ptr %r5
    %r8 = load i32, ptr %r3
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L3, label %L4
L3:
    %r10 = load i32, ptr %r5
    %r11 = getelementptr i32, ptr %r0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = load i32, ptr %r4
    %r14 = icmp eq i32 %r12,%r13
    br i1 %r14, label %L5, label %L6
L4:
    %r28 = load i32, ptr %r3
    ret i32 %r28
L5:
    %r15 = load i32, ptr %r5
    %r16 = getelementptr i32, ptr %r0, i32 %r15
    %r17 = load i32, ptr %r3
    %r18 = add i32 1,0
    %r19 = sub i32 %r17,%r18
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    store i32 %r21, ptr %r16
    %r22 = load i32, ptr %r3
    %r23 = add i32 1,0
    %r24 = sub i32 %r22,%r23
    store i32 %r24, ptr %r3
    br label %L7
L6:
    %r25 = load i32, ptr %r5
    %r26 = add i32 1,0
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r5
    br label %L7
L7:
    br label %L2
}
define i32 @main()
{
L0:
    %r33 = alloca i32
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
    store i32 0, ptr %r33
    %r34 = add i32 3,0
    store i32 %r34, ptr %r33
    %r35 = getelementptr [10 x i32], ptr %r1, i32 0
    %r36 = load i32, ptr %r0
    %r37 = load i32, ptr %r33
    %r38 = call i32 @removeElement(ptr %r35,i32 %r36,i32 %r37)
    store i32 %r38, ptr %r0
    %r39 = load i32, ptr %r0
    ret i32 %r39
}
