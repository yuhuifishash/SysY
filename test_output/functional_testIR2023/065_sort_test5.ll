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
define i32 @swap(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r5 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = alloca i32
    store i32 %r2, ptr %r4
    br label %L1
L1:
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = load i32, ptr %r3
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = load i32, ptr %r8
    store i32 %r9, ptr %r5
    %r10 = load i32, ptr %r4
    %r11 = getelementptr i32, ptr %r0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = load i32, ptr %r3
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    store i32 %r12, ptr %r14
    %r15 = load i32, ptr %r5
    %r16 = load i32, ptr %r4
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    store i32 %r15, ptr %r17
    %r18 = add i32 0,0
    ret i32 %r18
}
define i32 @heap_sort(ptr %r0,i32 %r1)
{
L0:
    %r42 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = load i32, ptr %r2
    %r8 = add i32 0,2
    %r9 = sdiv i32 %r7,%r8
    %r10 = add i32 0,1
    %r11 = sub i32 %r9,%r10
    store i32 %r11, ptr %r3
    %r12 = load i32, ptr %r3
    %r13 = add i32 0,1
    %r14 = sub i32 0,%r13
    %r15 = icmp sgt i32 %r12,%r14
    br i1 %r15, label %L3, label %L5
L3:
    %r18 = load i32, ptr %r2
    %r19 = add i32 0,1
    %r20 = sub i32 %r18,%r19
    store i32 %r20, ptr %r5
    %r21 = getelementptr i32, ptr %r0
    %r22 = load i32, ptr %r3
    %r23 = load i32, ptr %r5
    %r24 = call i32 @heap_ajust(ptr %r21,i32 %r22,i32 %r23)
    store i32 %r24, ptr %r5
    %r25 = load i32, ptr %r3
    %r26 = add i32 0,1
    %r27 = sub i32 %r25,%r26
    store i32 %r27, ptr %r3
    br label %L4
L4:
    %r28 = load i32, ptr %r3
    %r29 = add i32 0,1
    %r30 = sub i32 0,%r29
    %r31 = icmp sgt i32 %r28,%r30
    br i1 %r31, label %L3, label %L5
L5:
    %r34 = load i32, ptr %r2
    %r35 = add i32 0,1
    %r36 = sub i32 %r34,%r35
    store i32 %r36, ptr %r3
    %r37 = load i32, ptr %r3
    %r38 = add i32 0,0
    %r39 = icmp sgt i32 %r37,%r38
    br i1 %r39, label %L7, label %L9
L7:
    %r43 = add i32 0,0
    store i32 %r43, ptr %r42
    %r44 = add i32 0,0
    store i32 %r44, ptr %r42
    %r45 = getelementptr i32, ptr %r0
    %r46 = load i32, ptr %r42
    %r47 = load i32, ptr %r3
    %r48 = call i32 @swap(ptr %r45,i32 %r46,i32 %r47)
    store i32 %r48, ptr %r5
    %r49 = load i32, ptr %r3
    %r50 = add i32 0,1
    %r51 = sub i32 %r49,%r50
    store i32 %r51, ptr %r5
    %r52 = getelementptr i32, ptr %r0
    %r53 = load i32, ptr %r42
    %r54 = load i32, ptr %r5
    %r55 = call i32 @heap_ajust(ptr %r52,i32 %r53,i32 %r54)
    store i32 %r55, ptr %r5
    %r56 = load i32, ptr %r3
    %r57 = add i32 0,1
    %r58 = sub i32 %r56,%r57
    store i32 %r58, ptr %r3
    br label %L8
L8:
    %r59 = load i32, ptr %r3
    %r60 = add i32 0,0
    %r61 = icmp sgt i32 %r59,%r60
    br i1 %r61, label %L7, label %L9
L9:
    %r64 = add i32 0,0
    ret i32 %r64
}
define i32 @heap_ajust(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    %r8 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    %r4 = alloca i32
    store i32 %r2, ptr %r4
    br label %L1
L1:
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = load i32, ptr %r3
    store i32 %r7, ptr %r5
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r10 = load i32, ptr %r5
    %r11 = add i32 0,2
    %r12 = mul i32 %r10,%r11
    %r13 = add i32 0,1
    %r14 = add i32 %r12,%r13
    store i32 %r14, ptr %r8
    %r15 = load i32, ptr %r8
    %r16 = load i32, ptr %r4
    %r17 = add i32 0,1
    %r18 = add i32 %r16,%r17
    %r19 = icmp slt i32 %r15,%r18
    br i1 %r19, label %L3, label %L5
L3:
    %r22 = load i32, ptr %r8
    %r23 = load i32, ptr %r4
    %r24 = icmp slt i32 %r22,%r23
    br i1 %r24, label %L8, label %L7
L4:
    %r64 = load i32, ptr %r8
    %r65 = load i32, ptr %r4
    %r66 = add i32 0,1
    %r67 = add i32 %r65,%r66
    %r68 = icmp slt i32 %r64,%r67
    br i1 %r68, label %L3, label %L5
L5:
    %r71 = add i32 0,0
    ret i32 %r71
L6:
    %r41 = load i32, ptr %r8
    %r42 = add i32 0,1
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r8
    br label %L7
L7:
    %r44 = load i32, ptr %r5
    %r45 = getelementptr i32, ptr %r0, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = load i32, ptr %r8
    %r48 = getelementptr i32, ptr %r0, i32 %r47
    %r49 = load i32, ptr %r48
    %r50 = icmp sgt i32 %r46,%r49
    br i1 %r50, label %L10, label %L11
L8:
    %r27 = load i32, ptr %r8
    %r28 = getelementptr i32, ptr %r0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = load i32, ptr %r8
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    %r33 = getelementptr i32, ptr %r0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = icmp slt i32 %r29,%r34
    br i1 %r35, label %L6, label %L7
L10:
    %r53 = add i32 0,0
    ret i32 %r53
L11:
    %r54 = getelementptr i32, ptr %r0
    %r55 = load i32, ptr %r5
    %r56 = load i32, ptr %r8
    %r57 = call i32 @swap(ptr %r54,i32 %r55,i32 %r56)
    store i32 %r57, ptr %r5
    %r58 = load i32, ptr %r8
    store i32 %r58, ptr %r5
    %r59 = load i32, ptr %r5
    %r60 = add i32 0,2
    %r61 = mul i32 %r59,%r60
    %r62 = add i32 0,1
    %r63 = add i32 %r61,%r62
    store i32 %r63, ptr %r8
    br label %L12
L12:
    br label %L4
}
define i32 @main()
{
L0:
    %r43 = alloca i32
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
    %r34 = add i32 0,0
    store i32 %r34, ptr %r32
    %r35 = getelementptr i32, ptr %r1, i32 0
    %r36 = load i32, ptr @n
    %r37 = call i32 @heap_sort(ptr %r35,i32 %r36)
    store i32 %r37, ptr %r32
    %r38 = load i32, ptr %r32
    %r39 = load i32, ptr @n
    %r40 = icmp slt i32 %r38,%r39
    br i1 %r40, label %L3, label %L5
L3:
    %r44 = add i32 0,0
    store i32 %r44, ptr %r43
    %r45 = load i32, ptr %r32
    %r46 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r45
    %r47 = load i32, ptr %r46
    store i32 %r47, ptr %r43
    %r48 = load i32, ptr %r43
    call void @putint(i32 %r48)
    %r49 = add i32 0,10
    store i32 %r49, ptr %r43
    %r50 = load i32, ptr %r43
    call void @putch(i32 %r50)
    %r51 = load i32, ptr %r32
    %r52 = add i32 0,1
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr %r32
    br label %L4
L4:
    %r54 = load i32, ptr %r32
    %r55 = load i32, ptr @n
    %r56 = icmp slt i32 %r54,%r55
    br i1 %r56, label %L3, label %L5
L5:
    %r59 = add i32 0,0
    ret i32 %r59
}
