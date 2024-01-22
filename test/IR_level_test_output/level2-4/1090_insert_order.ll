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
@N = global i32 zeroinitializer
define i32 @insert(ptr %r0,i32 %r1)
{
L0:
    %r5 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 0,0
    store i32 %r7, ptr %r3
    br label %L1
L1:
    %r8 = load i32, ptr %r2
    %r9 = load i32, ptr %r3
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = icmp sgt i32 %r8,%r11
    br i1 %r12, label %L4, label %L3
L2:
    %r23 = load i32, ptr %r3
    %r24 = add i32 0,1
    %r25 = add i32 %r23,%r24
    store i32 %r25, ptr %r3
    br label %L1
L3:
    %r26 = load i32, ptr @N
    store i32 %r26, ptr %r5
    br label %L6
L4:
    %r15 = load i32, ptr %r3
    %r16 = load i32, ptr @N
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L2, label %L3
L6:
    %r27 = load i32, ptr %r5
    %r28 = load i32, ptr %r3
    %r29 = icmp sgt i32 %r27,%r28
    br i1 %r29, label %L7, label %L8
L7:
    %r32 = load i32, ptr %r5
    %r33 = add i32 0,1
    %r34 = sub i32 %r32,%r33
    %r35 = getelementptr i32, ptr %r0, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = load i32, ptr %r5
    %r38 = getelementptr i32, ptr %r0, i32 %r37
    store i32 %r36, ptr %r38
    %r39 = load i32, ptr %r2
    %r40 = load i32, ptr %r3
    %r41 = getelementptr i32, ptr %r0, i32 %r40
    store i32 %r39, ptr %r41
    %r42 = load i32, ptr %r5
    %r43 = add i32 0,1
    %r44 = sub i32 %r42,%r43
    store i32 %r44, ptr %r5
    br label %L6
L8:
    %r45 = add i32 0,0
    ret i32 %r45
}
define i32 @main()
{
L0:
    %r34 = alloca i32
    %r32 = alloca i32
    %r1 = alloca [11 x i32]
    %r0 = add i32 0,10
    store i32 %r0, ptr @N
    %r2 = add i32 0,1
    %r3 = add i32 0,0
    %r4 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r3
    store i32 %r2, ptr %r4
    %r5 = add i32 0,3
    %r6 = add i32 0,1
    %r7 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r6
    store i32 %r5, ptr %r7
    %r8 = add i32 0,4
    %r9 = add i32 0,2
    %r10 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r9
    store i32 %r8, ptr %r10
    %r11 = add i32 0,7
    %r12 = add i32 0,3
    %r13 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r12
    store i32 %r11, ptr %r13
    %r14 = add i32 0,8
    %r15 = add i32 0,4
    %r16 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = add i32 0,11
    %r18 = add i32 0,5
    %r19 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r18
    store i32 %r17, ptr %r19
    %r20 = add i32 0,13
    %r21 = add i32 0,6
    %r22 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r21
    store i32 %r20, ptr %r22
    %r23 = add i32 0,18
    %r24 = add i32 0,7
    %r25 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r24
    store i32 %r23, ptr %r25
    %r26 = add i32 0,56
    %r27 = add i32 0,8
    %r28 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r27
    store i32 %r26, ptr %r28
    %r29 = add i32 0,78
    %r30 = add i32 0,9
    %r31 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r30
    store i32 %r29, ptr %r31
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r35 = add i32 0,0
    store i32 %r35, ptr %r34
    %r36 = add i32 0,0
    store i32 %r36, ptr %r34
    %r37 = call i32 @getint()
    store i32 %r37, ptr %r32
    %r38 = getelementptr i32, ptr %r1, i32 0
    %r39 = load i32, ptr %r32
    %r40 = call i32 @insert(ptr %r38,i32 %r39)
    store i32 %r40, ptr %r32
    br label %L1
L1:
    %r41 = load i32, ptr %r34
    %r42 = load i32, ptr @N
    %r43 = icmp slt i32 %r41,%r42
    br i1 %r43, label %L2, label %L3
L2:
    %r46 = load i32, ptr %r34
    %r47 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r46
    %r48 = load i32, ptr %r47
    store i32 %r48, ptr %r32
    %r49 = load i32, ptr %r32
    call void @putint(i32 %r49)
    %r50 = add i32 0,10
    store i32 %r50, ptr %r32
    %r51 = load i32, ptr %r32
    call void @putch(i32 %r51)
    %r52 = load i32, ptr %r34
    %r53 = add i32 0,1
    %r54 = add i32 %r52,%r53
    store i32 %r54, ptr %r34
    br label %L1
L3:
    %r55 = add i32 0,0
    ret i32 %r55
}
