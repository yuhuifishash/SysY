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
define i32 @maxArea(ptr %r0,i32 %r1)
{
L0:
    %r20 = alloca i32
    %r11 = alloca i32
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
    %r7 = add i32 0,0
    store i32 %r7, ptr %r3
    %r8 = load i32, ptr %r2
    %r9 = add i32 0,1
    %r10 = sub i32 %r8,%r9
    store i32 %r10, ptr %r5
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    %r13 = add i32 0,1
    %r14 = sub i32 0,%r13
    store i32 %r14, ptr %r11
    %r15 = load i32, ptr %r3
    %r16 = load i32, ptr %r5
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L5
L3:
    %r21 = add i32 0,0
    store i32 %r21, ptr %r20
    %r22 = load i32, ptr %r3
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = load i32, ptr %r5
    %r26 = getelementptr i32, ptr %r0, i32 %r25
    %r27 = load i32, ptr %r26
    %r28 = icmp slt i32 %r24,%r27
    br i1 %r28, label %L6, label %L7
L4:
    %r66 = load i32, ptr %r3
    %r67 = load i32, ptr %r5
    %r68 = icmp slt i32 %r66,%r67
    br i1 %r68, label %L3, label %L5
L5:
    %r71 = load i32, ptr %r11
    ret i32 %r71
L6:
    %r31 = load i32, ptr %r5
    %r32 = load i32, ptr %r3
    %r33 = sub i32 %r31,%r32
    %r34 = load i32, ptr %r3
    %r35 = getelementptr i32, ptr %r0, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = mul i32 %r33,%r36
    store i32 %r37, ptr %r20
    br label %L8
L7:
    %r38 = load i32, ptr %r5
    %r39 = load i32, ptr %r3
    %r40 = sub i32 %r38,%r39
    %r41 = load i32, ptr %r5
    %r42 = getelementptr i32, ptr %r0, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = mul i32 %r40,%r43
    store i32 %r44, ptr %r20
    br label %L8
L8:
    %r45 = load i32, ptr %r20
    %r46 = load i32, ptr %r11
    %r47 = icmp sgt i32 %r45,%r46
    br i1 %r47, label %L9, label %L10
L9:
    %r50 = load i32, ptr %r20
    store i32 %r50, ptr %r11
    br label %L10
L10:
    %r51 = load i32, ptr %r3
    %r52 = getelementptr i32, ptr %r0, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = load i32, ptr %r5
    %r55 = getelementptr i32, ptr %r0, i32 %r54
    %r56 = load i32, ptr %r55
    %r57 = icmp sgt i32 %r53,%r56
    br i1 %r57, label %L11, label %L12
L11:
    %r60 = load i32, ptr %r5
    %r61 = add i32 0,1
    %r62 = sub i32 %r60,%r61
    store i32 %r62, ptr %r5
    br label %L13
L12:
    %r63 = load i32, ptr %r3
    %r64 = add i32 0,1
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r3
    br label %L13
L13:
    br label %L4
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
    %r34 = getelementptr i32, ptr %r2, i32 0
    %r35 = load i32, ptr %r0
    %r36 = call i32 @maxArea(ptr %r34,i32 %r35)
    store i32 %r36, ptr %r0
    %r37 = load i32, ptr %r0
    ret i32 %r37
}
