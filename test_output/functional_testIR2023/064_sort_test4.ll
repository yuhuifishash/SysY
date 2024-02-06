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
define i32 @select_sort(ptr %r0,i32 %r1)
{
L0:
    %r49 = alloca i32
    %r7 = alloca i32
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
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r9 = add i32 0,0
    store i32 %r9, ptr %r3
    %r10 = load i32, ptr %r3
    %r11 = load i32, ptr %r2
    %r12 = add i32 0,1
    %r13 = sub i32 %r11,%r12
    %r14 = icmp slt i32 %r10,%r13
    br i1 %r14, label %L3, label %L5
L3:
    %r17 = load i32, ptr %r3
    store i32 %r17, ptr %r7
    %r18 = load i32, ptr %r3
    %r19 = add i32 0,1
    %r20 = add i32 %r18,%r19
    store i32 %r20, ptr %r5
    %r21 = load i32, ptr %r5
    %r22 = load i32, ptr %r2
    %r23 = icmp slt i32 %r21,%r22
    br i1 %r23, label %L7, label %L9
L4:
    %r65 = load i32, ptr %r3
    %r66 = load i32, ptr %r2
    %r67 = add i32 0,1
    %r68 = sub i32 %r66,%r67
    %r69 = icmp slt i32 %r65,%r68
    br i1 %r69, label %L3, label %L5
L5:
    %r72 = add i32 0,0
    ret i32 %r72
L7:
    %r26 = load i32, ptr %r7
    %r27 = getelementptr i32, ptr %r0, i32 %r26
    %r28 = load i32, ptr %r27
    %r29 = load i32, ptr %r5
    %r30 = getelementptr i32, ptr %r0, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = icmp sgt i32 %r28,%r31
    br i1 %r32, label %L10, label %L11
L8:
    %r39 = load i32, ptr %r5
    %r40 = load i32, ptr %r2
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L7, label %L9
L9:
    %r44 = load i32, ptr %r7
    %r45 = load i32, ptr %r3
    %r46 = icmp ne i32 %r44,%r45
    br i1 %r46, label %L12, label %L13
L10:
    %r35 = load i32, ptr %r5
    store i32 %r35, ptr %r7
    br label %L11
L11:
    %r36 = load i32, ptr %r5
    %r37 = add i32 0,1
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r5
    br label %L8
L12:
    %r50 = add i32 0,0
    store i32 %r50, ptr %r49
    %r51 = load i32, ptr %r7
    %r52 = getelementptr i32, ptr %r0, i32 %r51
    %r53 = load i32, ptr %r52
    store i32 %r53, ptr %r49
    %r54 = load i32, ptr %r3
    %r55 = getelementptr i32, ptr %r0, i32 %r54
    %r56 = load i32, ptr %r55
    %r57 = load i32, ptr %r7
    %r58 = getelementptr i32, ptr %r0, i32 %r57
    store i32 %r56, ptr %r58
    %r59 = load i32, ptr %r49
    %r60 = load i32, ptr %r3
    %r61 = getelementptr i32, ptr %r0, i32 %r60
    store i32 %r59, ptr %r61
    br label %L13
L13:
    %r62 = load i32, ptr %r3
    %r63 = add i32 0,1
    %r64 = add i32 %r62,%r63
    store i32 %r64, ptr %r3
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
    %r37 = call i32 @select_sort(ptr %r35,i32 %r36)
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
