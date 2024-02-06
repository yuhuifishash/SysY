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
    %r2 = getelementptr i32, ptr %r0, i32 0
    %r3 = call i32 @read_str(ptr %r2)
    %r4 = getelementptr i32, ptr %r1, i32 0
    %r5 = call i32 @read_str(ptr %r4)
    %r6 = getelementptr i32, ptr %r0, i32 0
    %r7 = getelementptr i32, ptr %r1, i32 0
    %r8 = call i32 @KMP(ptr %r6,ptr %r7)
    call void @putint(i32 %r8)
    %r9 = add i32 0,10
    call void @putch(i32 %r9)
    %r10 = add i32 0,0
    ret i32 %r10
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
    %r4 = getelementptr i32, ptr %r2, i32 0
    call void @get_next(ptr %r3,ptr %r4)
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r9 = load i32, ptr %r7
    %r10 = getelementptr i32, ptr %r1, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = icmp ne i32 %r11,0
    br i1 %r12, label %L3, label %L5
L3:
    %r13 = load i32, ptr %r5
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    %r15 = load i32, ptr %r14
    %r16 = load i32, ptr %r7
    %r17 = getelementptr i32, ptr %r1, i32 %r16
    %r18 = load i32, ptr %r17
    %r19 = icmp eq i32 %r15,%r18
    br i1 %r19, label %L6, label %L7
L4:
    %r50 = load i32, ptr %r7
    %r51 = getelementptr i32, ptr %r1, i32 %r50
    %r52 = load i32, ptr %r51
    %r53 = icmp ne i32 %r52,0
    br i1 %r53, label %L3, label %L5
L5:
    %r54 = add i32 0,1
    %r55 = sub i32 0,%r54
    ret i32 %r55
L6:
    %r22 = load i32, ptr %r5
    %r23 = add i32 0,1
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r5
    %r25 = load i32, ptr %r7
    %r26 = add i32 0,1
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r7
    %r28 = load i32, ptr %r5
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = icmp eq i32 %r30,0
    br i1 %r31, label %L9, label %L10
L7:
    %r35 = load i32, ptr %r5
    %r36 = getelementptr [4096 x i32], ptr %r2, i32 0, i32 %r35
    %r37 = load i32, ptr %r36
    store i32 %r37, ptr %r5
    %r38 = load i32, ptr %r5
    %r39 = add i32 0,1
    %r40 = sub i32 0,%r39
    %r41 = icmp eq i32 %r38,%r40
    br i1 %r41, label %L11, label %L12
L8:
    br label %L4
L9:
    %r34 = load i32, ptr %r7
    ret i32 %r34
L10:
    br label %L8
L11:
    %r44 = load i32, ptr %r5
    %r45 = add i32 0,1
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r5
    %r47 = load i32, ptr %r7
    %r48 = add i32 0,1
    %r49 = add i32 %r47,%r48
    store i32 %r49, ptr %r7
    br label %L12
L12:
    br label %L8
}
define void @get_next(ptr %r0,ptr %r1)
{
L0:
    %r8 = alloca i32
    %r6 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,1
    %r3 = sub i32 0,%r2
    %r4 = add i32 0,0
    %r5 = getelementptr i32, ptr %r1, i32 %r4
    store i32 %r3, ptr %r5
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,1
    %r10 = sub i32 0,%r9
    store i32 %r10, ptr %r8
    %r11 = load i32, ptr %r6
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = icmp ne i32 %r13,0
    br i1 %r14, label %L3, label %L5
L3:
    %r15 = load i32, ptr %r8
    %r16 = add i32 0,1
    %r17 = sub i32 0,%r16
    %r18 = icmp eq i32 %r15,%r17
    br i1 %r18, label %L6, label %L9
L4:
    %r45 = load i32, ptr %r6
    %r46 = getelementptr i32, ptr %r0, i32 %r45
    %r47 = load i32, ptr %r46
    %r48 = icmp ne i32 %r47,0
    br i1 %r48, label %L3, label %L5
L5:
    ret void
L6:
    %r33 = load i32, ptr %r8
    %r34 = add i32 0,1
    %r35 = add i32 %r33,%r34
    store i32 %r35, ptr %r8
    %r36 = load i32, ptr %r6
    %r37 = add i32 0,1
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r6
    %r39 = load i32, ptr %r8
    %r40 = load i32, ptr %r6
    %r41 = getelementptr i32, ptr %r1, i32 %r40
    store i32 %r39, ptr %r41
    br label %L8
L7:
    %r42 = load i32, ptr %r8
    %r43 = getelementptr i32, ptr %r1, i32 %r42
    %r44 = load i32, ptr %r43
    store i32 %r44, ptr %r8
    br label %L8
L8:
    br label %L4
L9:
    %r21 = load i32, ptr %r6
    %r22 = getelementptr i32, ptr %r0, i32 %r21
    %r23 = load i32, ptr %r22
    %r24 = load i32, ptr %r8
    %r25 = getelementptr i32, ptr %r0, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = icmp eq i32 %r23,%r26
    br i1 %r27, label %L6, label %L7
}
define i32 @read_str(ptr %r0)
{
L0:
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r3 = add i32 0,1
    %r4 = icmp ne i32 %r3,0
    br i1 %r4, label %L3, label %L5
L3:
    %r5 = call i32 @getch()
    %r6 = load i32, ptr %r1
    %r7 = getelementptr i32, ptr %r0, i32 %r6
    store i32 %r5, ptr %r7
    %r8 = load i32, ptr %r1
    %r9 = getelementptr i32, ptr %r0, i32 %r8
    %r10 = load i32, ptr %r9
    %r11 = add i32 0,10
    %r12 = icmp eq i32 %r10,%r11
    br i1 %r12, label %L6, label %L7
L4:
    %r18 = add i32 0,1
    %r19 = icmp ne i32 %r18,0
    br i1 %r19, label %L3, label %L5
L5:
    %r20 = add i32 0,0
    %r21 = load i32, ptr %r1
    %r22 = getelementptr i32, ptr %r0, i32 %r21
    store i32 %r20, ptr %r22
    %r23 = load i32, ptr %r1
    ret i32 %r23
L6:
    br label %L5
L7:
    %r15 = load i32, ptr %r1
    %r16 = add i32 0,1
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r1
    br label %L4
}
