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
define i32 @insertsort(ptr %r0)
{
L0:
    %r14 = alloca i32
    %r9 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r3 = add i32 0,1
    store i32 %r3, ptr %r1
    %r4 = load i32, ptr %r1
    %r5 = load i32, ptr @n
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L5
L3:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r1
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    store i32 %r13, ptr %r9
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r1
    %r17 = add i32 0,1
    %r18 = sub i32 %r16,%r17
    store i32 %r18, ptr %r14
    %r19 = load i32, ptr %r14
    %r20 = add i32 0,1
    %r21 = sub i32 0,%r20
    %r22 = icmp sgt i32 %r19,%r21
    br i1 %r22, label %L10, label %L9
L4:
    %r69 = load i32, ptr %r1
    %r70 = load i32, ptr @n
    %r71 = icmp slt i32 %r69,%r70
    br i1 %r71, label %L3, label %L5
L5:
    %r74 = add i32 0,0
    ret i32 %r74
L7:
    %r35 = load i32, ptr %r14
    %r36 = getelementptr i32, ptr %r0, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = load i32, ptr %r14
    %r39 = add i32 0,1
    %r40 = add i32 %r38,%r39
    %r41 = getelementptr i32, ptr %r0, i32 %r40
    store i32 %r37, ptr %r41
    %r42 = load i32, ptr %r14
    %r43 = add i32 0,1
    %r44 = sub i32 %r42,%r43
    store i32 %r44, ptr %r14
    br label %L8
L8:
    %r45 = load i32, ptr %r14
    %r46 = add i32 0,1
    %r47 = sub i32 0,%r46
    %r48 = icmp sgt i32 %r45,%r47
    br i1 %r48, label %L12, label %L9
L9:
    %r61 = load i32, ptr %r9
    %r62 = load i32, ptr %r14
    %r63 = add i32 0,1
    %r64 = add i32 %r62,%r63
    %r65 = getelementptr i32, ptr %r0, i32 %r64
    store i32 %r61, ptr %r65
    %r66 = load i32, ptr %r1
    %r67 = add i32 0,1
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr %r1
    br label %L4
L10:
    %r25 = load i32, ptr %r9
    %r26 = load i32, ptr %r14
    %r27 = getelementptr i32, ptr %r0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = icmp slt i32 %r25,%r28
    br i1 %r29, label %L7, label %L9
L12:
    %r51 = load i32, ptr %r9
    %r52 = load i32, ptr %r14
    %r53 = getelementptr i32, ptr %r0, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = icmp slt i32 %r51,%r54
    br i1 %r55, label %L7, label %L9
}
define i32 @main()
{
L0:
    %r41 = alloca i32
    %r32 = alloca i32
    %r1 = alloca [10 x i32]
    br label %L1
L1:
    %r0 = add i32 0,10
    store i32 %r0, ptr @n
    %r2 = add i32 0,4
    %r3 = add i32 0,0
    %r4 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r3
    store i32 %r2, ptr %r4
    %r5 = add i32 0,3
    %r6 = add i32 0,1
    %r7 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r6
    store i32 %r5, ptr %r7
    %r8 = add i32 0,9
    %r9 = add i32 0,2
    %r10 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r9
    store i32 %r8, ptr %r10
    %r11 = add i32 0,2
    %r12 = add i32 0,3
    %r13 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r12
    store i32 %r11, ptr %r13
    %r14 = add i32 0,0
    %r15 = add i32 0,4
    %r16 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = add i32 0,1
    %r18 = add i32 0,5
    %r19 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r18
    store i32 %r17, ptr %r19
    %r20 = add i32 0,6
    %r21 = add i32 0,6
    %r22 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r21
    store i32 %r20, ptr %r22
    %r23 = add i32 0,5
    %r24 = add i32 0,7
    %r25 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    %r26 = add i32 0,7
    %r27 = add i32 0,8
    %r28 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r27
    store i32 %r26, ptr %r28
    %r29 = add i32 0,8
    %r30 = add i32 0,9
    %r31 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r30
    store i32 %r29, ptr %r31
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r34 = getelementptr i32, ptr %r1, i32 0
    %r35 = call i32 @insertsort(ptr %r34)
    store i32 %r35, ptr %r32
    %r36 = load i32, ptr %r32
    %r37 = load i32, ptr @n
    %r38 = icmp slt i32 %r36,%r37
    br i1 %r38, label %L3, label %L5
L3:
    %r42 = add i32 0,0
    store i32 %r42, ptr %r41
    %r43 = load i32, ptr %r32
    %r44 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    store i32 %r45, ptr %r41
    %r46 = load i32, ptr %r41
    call void @putint(i32 %r46)
    %r47 = add i32 0,10
    store i32 %r47, ptr %r41
    %r48 = load i32, ptr %r41
    call void @putch(i32 %r48)
    %r49 = load i32, ptr %r32
    %r50 = add i32 0,1
    %r51 = add i32 %r49,%r50
    store i32 %r51, ptr %r32
    br label %L4
L4:
    %r52 = load i32, ptr %r32
    %r53 = load i32, ptr @n
    %r54 = icmp slt i32 %r52,%r53
    br i1 %r54, label %L3, label %L5
L5:
    %r57 = add i32 0,0
    ret i32 %r57
}
