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
@n = global i32 zeroinitializer
@a = global [10000000x i32] zeroinitializer
define i32 @meanless_calculation(i32 %r0,i32 %r1)
{
L0:  ;
    %r6 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    br label %L2
L2:  ;
    %r8 = load i32, ptr %r4
    %r9 = load i32, ptr %r2
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L5, label %L4
L3:  ;
    %r14 = load i32, ptr %r4
    %r15 = add i32 1,0
    %r16 = add i32 %r14,%r15
    store i32 %r16, ptr %r4
    %r17 = load i32, ptr %r6
    %r18 = load i32, ptr %r2
    %r19 = add i32 %r17,%r18
    %r20 = load i32, ptr %r4
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r6
    br label %L2
L4:  ;
    %r22 = load i32, ptr %r6
    ret i32 %r22
L5:  ;
    %r11 = load i32, ptr %r4
    %r12 = load i32, ptr %r3
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L4
}
define i32 @swap(ptr %r0,i32 %r1,i32 %r2)
{
L0:  ;
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    store i32 %r2, ptr %r4
    br label %L1
L1:  ;
    %r6 = load i32, ptr %r3
    %r7 = getelementptr i32, ptr %r0, i32 %r6
    %r8 = load i32, ptr %r7
    store i32 %r8, ptr %r5
    %r9 = load i32, ptr %r3
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r4
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    store i32 %r13, ptr %r10
    %r14 = load i32, ptr %r4
    %r15 = getelementptr i32, ptr %r0, i32 %r14
    %r16 = load i32, ptr %r5
    store i32 %r16, ptr %r15
    %r17 = load i32, ptr %r3
    %r18 = load i32, ptr %r4
    %r19 = call i32 @meanless_calculation(i32 %r17,i32 %r18)
    ret i32 %r19
}
define i32 @median(ptr %r0,i32 %r1,i32 %r2,i32 %r3)
{
L0:  ;
    %r17 = alloca i32
    %r13 = alloca i32
    %r11 = alloca i32
    %r7 = alloca i32
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    store i32 %r1, ptr %r4
    store i32 %r2, ptr %r5
    store i32 %r3, ptr %r6
    br label %L1
L1:  ;
    %r8 = load i32, ptr %r4
    %r9 = getelementptr i32, ptr %r0, i32 %r8
    %r10 = load i32, ptr %r9
    store i32 %r10, ptr %r7
    %r12 = load i32, ptr %r4
    store i32 %r12, ptr %r11
    %r14 = load i32, ptr %r5
    %r15 = add i32 1,0
    %r16 = add i32 %r14,%r15
    store i32 %r16, ptr %r13
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    br label %L2
L2:  ;
    %r19 = add i32 1,0
    %r20 = add i32 1,0
    %r21 = icmp eq i32 %r19,%r20
    br i1 %r21, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    %r57 = load i32, ptr %r4
    %r58 = getelementptr i32, ptr %r0, i32 %r57
    %r59 = load i32, ptr %r7
    store i32 %r59, ptr %r58
    %r61 = load i32, ptr %r4
    %r62 = load i32, ptr %r11
    %r63 = call i32 @swap(ptr %r0,i32 %r61,i32 %r62)
    %r64 = load i32, ptr %r11
    %r65 = load i32, ptr %r6
    %r66 = icmp sgt i32 %r64,%r65
    br i1 %r66, label %L21, label %L22
L5:  ;
    %r22 = load i32, ptr %r11
    %r23 = load i32, ptr %r13
    %r24 = icmp slt i32 %r22,%r23
    br i1 %r24, label %L6, label %L7
L6:  ;
    %r25 = load i32, ptr %r13
    %r26 = add i32 1,0
    %r27 = sub i32 %r25,%r26
    store i32 %r27, ptr %r13
    %r28 = load i32, ptr %r13
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = load i32, ptr %r7
    %r32 = icmp slt i32 %r30,%r31
    br i1 %r32, label %L8, label %L9
L7:  ;
    br label %L11
L8:  ;
    br label %L7
L9:  ;
    %r33 = load i32, ptr %r17
    %r34 = add i32 1,0
    %r35 = add i32 %r33,%r34
    store i32 %r35, ptr %r17
    br label %L5
L11:  ;
    %r36 = load i32, ptr %r11
    %r37 = load i32, ptr %r13
    %r38 = icmp slt i32 %r36,%r37
    br i1 %r38, label %L12, label %L13
L12:  ;
    %r39 = load i32, ptr %r11
    %r40 = add i32 1,0
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r11
    %r42 = load i32, ptr %r11
    %r43 = getelementptr i32, ptr %r0, i32 %r42
    %r44 = load i32, ptr %r43
    %r45 = load i32, ptr %r7
    %r46 = icmp sge i32 %r44,%r45
    br i1 %r46, label %L14, label %L15
L13:  ;
    %r50 = load i32, ptr %r11
    %r51 = load i32, ptr %r13
    %r52 = icmp eq i32 %r50,%r51
    br i1 %r52, label %L17, label %L18
L14:  ;
    br label %L13
L15:  ;
    %r47 = load i32, ptr %r17
    %r48 = add i32 1,0
    %r49 = sub i32 %r47,%r48
    store i32 %r49, ptr %r17
    br label %L11
L17:  ;
    br label %L4
L18:  ;
    %r54 = load i32, ptr %r11
    %r55 = load i32, ptr %r13
    %r56 = call i32 @swap(ptr %r0,i32 %r54,i32 %r55)
    br label %L19
L19:  ;
    br label %L2
L21:  ;
    %r68 = load i32, ptr %r4
    %r69 = load i32, ptr %r11
    %r70 = load i32, ptr %r6
    store ptr %r0, ptr %r4
    store i32 %r68, ptr %r5
    store i32 %r69, ptr %r6
    store i32 %r70, ptr %r7
    br label %L1
L22:  ;
    %r72 = load i32, ptr %r11
    %r73 = load i32, ptr %r6
    %r74 = icmp slt i32 %r72,%r73
    br i1 %r74, label %L23, label %L24
L23:  ;
    %r76 = load i32, ptr %r11
    %r77 = add i32 1,0
    %r78 = add i32 %r76,%r77
    %r79 = load i32, ptr %r5
    %r80 = load i32, ptr %r6
    store ptr %r0, ptr %r4
    store i32 %r78, ptr %r5
    store i32 %r79, ptr %r6
    store i32 %r80, ptr %r7
    br label %L1
L24:  ;
    %r82 = load i32, ptr %r17
    ret i32 %r82
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = getelementptr [10000000 x i32], ptr @a, i32 0
    %r1 = call i32 @getarray(ptr %r0)
    store i32 %r1, ptr @n
    %r2 = add i32 59,0
    call void @_sysy_starttime(i32 %r2)
    %r3 = getelementptr [10000000 x i32], ptr @a, i32 0
    %r4 = add i32 0,0
    %r5 = load i32, ptr @n
    %r6 = add i32 1,0
    %r7 = sub i32 %r5,%r6
    %r8 = load i32, ptr @n
    %r9 = add i32 2,0
    %r10 = sdiv i32 %r8,%r9
    %r11 = call i32 @median(ptr %r3,i32 %r4,i32 %r7,i32 %r10)
    %r12 = add i32 61,0
    call void @_sysy_stoptime(i32 %r12)
    %r13 = load i32, ptr @n
    %r14 = getelementptr [10000000 x i32], ptr @a, i32 0
    call void @putarray(i32 %r13,ptr %r14)
    %r15 = load i32, ptr @n
    %r16 = add i32 2,0
    %r17 = sdiv i32 %r15,%r16
    %r18 = getelementptr [10000000 x i32], ptr @a, i32 0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = add i32 256,0
    %r21 = srem i32 %r19,%r20
    ret i32 %r21
}
