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
L0:  ;
    %r18 = alloca i32
    %r11 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:  ;
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 0,0
    store i32 %r7, ptr %r3
    %r8 = load i32, ptr %r2
    %r9 = add i32 1,0
    %r10 = sub i32 %r8,%r9
    store i32 %r10, ptr %r5
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    %r13 = add i32 1,0
    %r14 = sub i32 0,%r13
    store i32 %r14, ptr %r11
    br label %L2
L2:  ;
    %r15 = load i32, ptr %r3
    %r16 = load i32, ptr %r5
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L4
L3:  ;
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    %r20 = load i32, ptr %r3
    %r21 = getelementptr i32, ptr %r0, i32 %r20
    %r22 = load i32, ptr %r21
    %r23 = load i32, ptr %r5
    %r24 = getelementptr i32, ptr %r0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = icmp slt i32 %r22,%r25
    br i1 %r26, label %L5, label %L6
L4:  ;
    %r58 = load i32, ptr %r11
    ret i32 %r58
L5:  ;
    %r27 = load i32, ptr %r5
    %r28 = load i32, ptr %r3
    %r29 = sub i32 %r27,%r28
    %r30 = load i32, ptr %r3
    %r31 = getelementptr i32, ptr %r0, i32 %r30
    %r32 = load i32, ptr %r31
    %r33 = mul i32 %r29,%r32
    store i32 %r33, ptr %r18
    br label %L7
L6:  ;
    %r34 = load i32, ptr %r5
    %r35 = load i32, ptr %r3
    %r36 = sub i32 %r34,%r35
    %r37 = load i32, ptr %r5
    %r38 = getelementptr i32, ptr %r0, i32 %r37
    %r39 = load i32, ptr %r38
    %r40 = mul i32 %r36,%r39
    store i32 %r40, ptr %r18
    br label %L7
L7:  ;
    %r41 = load i32, ptr %r18
    %r42 = load i32, ptr %r11
    %r43 = icmp sgt i32 %r41,%r42
    br i1 %r43, label %L8, label %L9
L8:  ;
    %r44 = load i32, ptr %r18
    store i32 %r44, ptr %r11
    br label %L9
L9:  ;
    %r45 = load i32, ptr %r3
    %r46 = getelementptr i32, ptr %r0, i32 %r45
    %r47 = load i32, ptr %r46
    %r48 = load i32, ptr %r5
    %r49 = getelementptr i32, ptr %r0, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = icmp sgt i32 %r47,%r50
    br i1 %r51, label %L10, label %L11
L10:  ;
    %r52 = load i32, ptr %r5
    %r53 = add i32 1,0
    %r54 = sub i32 %r52,%r53
    store i32 %r54, ptr %r5
    br label %L12
L11:  ;
    %r55 = load i32, ptr %r3
    %r56 = add i32 1,0
    %r57 = add i32 %r55,%r56
    store i32 %r57, ptr %r3
    br label %L12
L12:  ;
    br label %L2
}
define i32 @main()
{
L0:  ;
    %r2 = alloca [10 x i32]
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    %r4 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r3
    %r5 = add i32 3,0
    store i32 %r5, ptr %r4
    %r6 = add i32 1,0
    %r7 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r6
    %r8 = add i32 3,0
    store i32 %r8, ptr %r7
    %r9 = add i32 2,0
    %r10 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r9
    %r11 = add i32 9,0
    store i32 %r11, ptr %r10
    %r12 = add i32 3,0
    %r13 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    %r15 = add i32 4,0
    %r16 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r15
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = add i32 5,0
    %r19 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r18
    %r20 = add i32 1,0
    store i32 %r20, ptr %r19
    %r21 = add i32 6,0
    %r22 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r21
    %r23 = add i32 1,0
    store i32 %r23, ptr %r22
    %r24 = add i32 7,0
    %r25 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r24
    %r26 = add i32 5,0
    store i32 %r26, ptr %r25
    %r27 = add i32 8,0
    %r28 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r27
    %r29 = add i32 7,0
    store i32 %r29, ptr %r28
    %r30 = add i32 9,0
    %r31 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r30
    %r32 = add i32 8,0
    store i32 %r32, ptr %r31
    %r33 = add i32 10,0
    store i32 %r33, ptr %r0
    %r34 = getelementptr [10 x i32], ptr %r2, i32 0
    %r35 = load i32, ptr %r0
    %r36 = call i32 @maxArea(ptr %r34,i32 %r35)
    store i32 %r36, ptr %r0
    %r37 = load i32, ptr %r0
    ret i32 %r37
}
