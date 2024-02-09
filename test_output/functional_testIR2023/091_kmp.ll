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
define i32 @main()
{
L0:
    %r1 = alloca [4096 x i32]
    %r0 = alloca [4096 x i32]
    br label %L1
L1:
    %r2 = getelementptr [4096 x i32], ptr %r0, i32 0
    %r3 = call i32 @read_str(ptr %r2)
    %r4 = getelementptr [4096 x i32], ptr %r1, i32 0
    %r5 = call i32 @read_str(ptr %r4)
    %r6 = getelementptr [4096 x i32], ptr %r0, i32 0
    %r7 = getelementptr [4096 x i32], ptr %r1, i32 0
    %r8 = call i32 @KMP(ptr %r6,ptr %r7)
    call void @putint(i32 %r8)
    %r9 = add i32 10,0
    call void @putch(i32 %r9)
    %r10 = add i32 0,0
    ret i32 %r10
}
define void @get_next(ptr %r0,ptr %r1)
{
L0:
    %r8 = alloca i32
    %r6 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    %r3 = getelementptr i32, ptr %r1, i32 %r2
    %r4 = add i32 1,0
    %r5 = sub i32 0,%r4
    store i32 %r5, ptr %r3
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 1,0
    %r10 = sub i32 0,%r9
    store i32 %r10, ptr %r8
    br label %L2
L2:
    %r11 = load i32, ptr %r6
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = icmp ne i32 %r13,0
    br i1 %r14, label %L3, label %L4
L3:
    %r15 = load i32, ptr %r8
    %r16 = add i32 1,0
    %r17 = sub i32 0,%r16
    %r18 = icmp eq i32 %r15,%r17
    br i1 %r18, label %L5, label %L8
L4:
    ret void
L5:
    %r26 = load i32, ptr %r8
    %r27 = add i32 1,0
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r8
    %r29 = load i32, ptr %r6
    %r30 = add i32 1,0
    %r31 = add i32 %r29,%r30
    store i32 %r31, ptr %r6
    %r32 = load i32, ptr %r6
    %r33 = getelementptr i32, ptr %r1, i32 %r32
    %r34 = load i32, ptr %r8
    store i32 %r34, ptr %r33
    br label %L7
L6:
    %r35 = load i32, ptr %r8
    %r36 = getelementptr i32, ptr %r1, i32 %r35
    %r37 = load i32, ptr %r36
    store i32 %r37, ptr %r8
    br label %L7
L7:
    br label %L2
L8:
    %r19 = load i32, ptr %r6
    %r20 = getelementptr i32, ptr %r0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r8
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = icmp eq i32 %r21,%r24
    br i1 %r25, label %L5, label %L6
}
define i32 @KMP(ptr %r0,ptr %r1)
{
L0:
    %r7 = alloca i32
    %r5 = alloca i32
    %r2 = alloca [4096 x i32]
    br label %L1
L1:
    %r3 = getelementptr i32, ptr %r0
    %r4 = getelementptr [4096 x i32], ptr %r2, i32 0
    call void @get_next(ptr %r3,ptr %r4)
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    br label %L2
L2:
    %r9 = load i32, ptr %r7
    %r10 = getelementptr i32, ptr %r1, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = icmp ne i32 %r11,0
    br i1 %r12, label %L3, label %L4
L3:
    %r13 = load i32, ptr %r5
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = load i32, ptr %r7
    %r17 = getelementptr i32, ptr %r1, i32 %r16
    %r18 = load i32, ptr %r17
    %r19 = icmp eq i32 %r15,%r18
    br i1 %r19, label %L5, label %L6
L4:
    %r44 = add i32 1,0
    %r45 = sub i32 0,%r44
    ret i32 %r45
L5:
    %r20 = load i32, ptr %r5
    %r21 = add i32 1,0
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r5
    %r23 = load i32, ptr %r7
    %r24 = add i32 1,0
    %r25 = add i32 %r23,%r24
    store i32 %r25, ptr %r7
    %r26 = load i32, ptr %r5
    %r27 = getelementptr i32, ptr %r0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = icmp eq i32 %r28,0
    br i1 %r29, label %L8, label %L9
L6:
    %r31 = load i32, ptr %r5
    %r32 = getelementptr [4096 x i32], ptr %r2, i32 0, i32 %r31
    %r33 = load i32, ptr %r32
    store i32 %r33, ptr %r5
    %r34 = load i32, ptr %r5
    %r35 = add i32 1,0
    %r36 = sub i32 0,%r35
    %r37 = icmp eq i32 %r34,%r36
    br i1 %r37, label %L10, label %L11
L7:
    br label %L2
L8:
    %r30 = load i32, ptr %r7
    ret i32 %r30
    br label %L9
L9:
    br label %L7
L10:
    %r38 = load i32, ptr %r5
    %r39 = add i32 1,0
    %r40 = add i32 %r38,%r39
    store i32 %r40, ptr %r5
    %r41 = load i32, ptr %r7
    %r42 = add i32 1,0
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r7
    br label %L11
L11:
    br label %L7
}
define i32 @read_str(ptr %r0)
{
L0:
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    br label %L2
L2:
    %r3 = add i32 1,0
    %r4 = icmp ne i32 %r3,0
    br i1 %r4, label %L3, label %L4
L3:
    %r5 = load i32, ptr %r1
    %r6 = getelementptr i32, ptr %r0, i32 %r5
    %r7 = call i32 @getch()
    store i32 %r7, ptr %r6
    %r8 = load i32, ptr %r1
    %r9 = getelementptr i32, ptr %r0, i32 %r8
    %r10 = load i32, ptr %r9
    %r11 = add i32 10,0
    %r12 = icmp eq i32 %r10,%r11
    br i1 %r12, label %L5, label %L6
L4:
    %r16 = load i32, ptr %r1
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    %r19 = load i32, ptr %r1
    ret i32 %r19
L5:
    br label %L4
L6:
    %r13 = load i32, ptr %r1
    %r14 = add i32 1,0
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr %r1
    br label %L2
L7:
    br label %L6
}
