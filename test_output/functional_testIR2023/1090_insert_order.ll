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
@N = global i32 zeroinitializer
define i32 @insert(ptr %r0,i32 %r1)
{
L0:  ;
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
    br label %L2
L2:  ;
    %r8 = load i32, ptr %r2
    %r9 = load i32, ptr %r3
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = icmp sgt i32 %r8,%r11
    br i1 %r12, label %L5, label %L4
L3:  ;
    %r16 = load i32, ptr %r3
    %r17 = add i32 1,0
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r3
    br label %L2
L4:  ;
    %r19 = load i32, ptr @N
    store i32 %r19, ptr %r5
    br label %L6
L5:  ;
    %r13 = load i32, ptr %r3
    %r14 = load i32, ptr @N
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L3, label %L4
L6:  ;
    %r20 = load i32, ptr %r5
    %r21 = load i32, ptr %r3
    %r22 = icmp sgt i32 %r20,%r21
    br i1 %r22, label %L7, label %L8
L7:  ;
    %r23 = load i32, ptr %r5
    %r24 = getelementptr i32, ptr %r0, i32 %r23
    %r25 = load i32, ptr %r5
    %r26 = add i32 1,0
    %r27 = sub i32 %r25,%r26
    %r28 = getelementptr i32, ptr %r0, i32 %r27
    %r29 = load i32, ptr %r28
    store i32 %r29, ptr %r24
    %r30 = load i32, ptr %r3
    %r31 = getelementptr i32, ptr %r0, i32 %r30
    %r32 = load i32, ptr %r2
    store i32 %r32, ptr %r31
    %r33 = load i32, ptr %r5
    %r34 = add i32 1,0
    %r35 = sub i32 %r33,%r34
    store i32 %r35, ptr %r5
    br label %L6
L8:  ;
    %r36 = add i32 0,0
    ret i32 %r36
}
define i32 @main()
{
L0:  ;
    %r34 = alloca i32
    %r32 = alloca i32
    %r1 = alloca [11 x i32]
    br label %L1
L1:  ;
    %r0 = add i32 10,0
    store i32 %r0, ptr @N
    %r2 = add i32 0,0
    %r3 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r2
    %r4 = add i32 1,0
    store i32 %r4, ptr %r3
    %r5 = add i32 1,0
    %r6 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r5
    %r7 = add i32 3,0
    store i32 %r7, ptr %r6
    %r8 = add i32 2,0
    %r9 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r8
    %r10 = add i32 4,0
    store i32 %r10, ptr %r9
    %r11 = add i32 3,0
    %r12 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r11
    %r13 = add i32 7,0
    store i32 %r13, ptr %r12
    %r14 = add i32 4,0
    %r15 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r14
    %r16 = add i32 8,0
    store i32 %r16, ptr %r15
    %r17 = add i32 5,0
    %r18 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r17
    %r19 = add i32 11,0
    store i32 %r19, ptr %r18
    %r20 = add i32 6,0
    %r21 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r20
    %r22 = add i32 13,0
    store i32 %r22, ptr %r21
    %r23 = add i32 7,0
    %r24 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r23
    %r25 = add i32 18,0
    store i32 %r25, ptr %r24
    %r26 = add i32 8,0
    %r27 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r26
    %r28 = add i32 56,0
    store i32 %r28, ptr %r27
    %r29 = add i32 9,0
    %r30 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r29
    %r31 = add i32 78,0
    store i32 %r31, ptr %r30
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r35 = add i32 0,0
    store i32 %r35, ptr %r34
    %r36 = add i32 0,0
    store i32 %r36, ptr %r34
    %r37 = call i32 @getint()
    store i32 %r37, ptr %r32
    %r38 = getelementptr [11 x i32], ptr %r1, i32 0
    %r39 = load i32, ptr %r32
    %r40 = call i32 @insert(ptr %r38,i32 %r39)
    store i32 %r40, ptr %r32
    br label %L2
L2:  ;
    %r41 = load i32, ptr %r34
    %r42 = load i32, ptr @N
    %r43 = icmp slt i32 %r41,%r42
    br i1 %r43, label %L3, label %L4
L3:  ;
    %r44 = load i32, ptr %r34
    %r45 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r44
    %r46 = load i32, ptr %r45
    store i32 %r46, ptr %r32
    %r47 = load i32, ptr %r32
    call void @putint(i32 %r47)
    %r48 = add i32 10,0
    store i32 %r48, ptr %r32
    %r49 = load i32, ptr %r32
    call void @putch(i32 %r49)
    %r50 = load i32, ptr %r34
    %r51 = add i32 1,0
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r34
    br label %L2
L4:  ;
    %r53 = add i32 0,0
    ret i32 %r53
}
