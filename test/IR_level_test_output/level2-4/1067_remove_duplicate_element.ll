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
define i32 @main()
{
L0:
    %r34 = alloca i32
    %r2 = alloca [10 x i32]
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,3
    %r4 = add i32 0,0
    %r5 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r4
    store i32 %r3, ptr %r5
    %r6 = add i32 0,3
    %r7 = add i32 0,1
    %r8 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r7
    store i32 %r6, ptr %r8
    %r9 = add i32 0,9
    %r10 = add i32 0,2
    %r11 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r10
    store i32 %r9, ptr %r11
    %r12 = add i32 0,0
    %r13 = add i32 0,3
    %r14 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r13
    store i32 %r12, ptr %r14
    %r15 = add i32 0,0
    %r16 = add i32 0,4
    %r17 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r16
    store i32 %r15, ptr %r17
    %r18 = add i32 0,1
    %r19 = add i32 0,5
    %r20 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r19
    store i32 %r18, ptr %r20
    %r21 = add i32 0,1
    %r22 = add i32 0,6
    %r23 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r22
    store i32 %r21, ptr %r23
    %r24 = add i32 0,5
    %r25 = add i32 0,7
    %r26 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r25
    store i32 %r24, ptr %r26
    %r27 = add i32 0,7
    %r28 = add i32 0,8
    %r29 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r28
    store i32 %r27, ptr %r29
    %r30 = add i32 0,8
    %r31 = add i32 0,9
    %r32 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r31
    store i32 %r30, ptr %r32
    %r33 = add i32 0,10
    store i32 %r33, ptr %r0
    %r35 = add i32 0,0
    store i32 %r35, ptr %r34
    %r36 = add i32 0,3
    store i32 %r36, ptr %r34
    %r37 = getelementptr i32, ptr %r2, i32 0
    %r38 = load i32, ptr %r0
    %r39 = load i32, ptr %r34
    %r40 = call i32 @removeElement(ptr %r37,i32 %r38,i32 %r39)
    store i32 %r40, ptr %r0
    %r41 = load i32, ptr %r0
    ret i32 %r41
}
define i32 @removeElement(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r5 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = alloca i32
    store i32 %r2, ptr %r4
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 0,0
    store i32 %r7, ptr %r5
    br label %L1
L1:
    %r8 = load i32, ptr %r5
    %r9 = load i32, ptr %r3
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L2, label %L3
L2:
    %r13 = load i32, ptr %r5
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = load i32, ptr %r4
    %r17 = icmp eq i32 %r15,%r16
    br i1 %r17, label %L4, label %L5
L3:
    %r33 = load i32, ptr %r3
    ret i32 %r33
L4:
    %r20 = load i32, ptr %r3
    %r21 = add i32 0,1
    %r22 = sub i32 %r20,%r21
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = load i32, ptr %r5
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    store i32 %r24, ptr %r26
    %r27 = load i32, ptr %r3
    %r28 = add i32 0,1
    %r29 = sub i32 %r27,%r28
    store i32 %r29, ptr %r3
    br label %L6
L5:
    %r30 = load i32, ptr %r5
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r5
    br label %L6
L6:
    br label %L1
}
