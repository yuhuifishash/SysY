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
@ascii_0 = global i32 48
define i32 @my_getint()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 0,1
    %r5 = icmp ne i32 %r4,0
    br i1 %r5, label %L3, label %L5
L3:
    %r6 = call i32 @getch()
    %r7 = load i32, ptr @ascii_0
    %r8 = sub i32 %r6,%r7
    store i32 %r8, ptr %r2
    %r9 = load i32, ptr %r2
    %r10 = add i32 0,0
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L6, label %L9
L4:
    %r22 = add i32 0,1
    %r23 = icmp ne i32 %r22,0
    br i1 %r23, label %L3, label %L5
L5:
    %r24 = load i32, ptr %r2
    store i32 %r24, ptr %r0
    %r25 = add i32 0,1
    %r26 = icmp ne i32 %r25,0
    br i1 %r26, label %L14, label %L16
L6:
    br label %L4
L7:
    br label %L5
L9:
    %r14 = load i32, ptr %r2
    %r15 = add i32 0,9
    %r16 = icmp sgt i32 %r14,%r15
    br i1 %r16, label %L6, label %L7
L14:
    %r27 = call i32 @getch()
    %r28 = load i32, ptr @ascii_0
    %r29 = sub i32 %r27,%r28
    store i32 %r29, ptr %r2
    %r30 = load i32, ptr %r2
    %r31 = add i32 0,0
    %r32 = icmp sge i32 %r30,%r31
    br i1 %r32, label %L20, label %L18
L15:
    %r48 = add i32 0,1
    %r49 = icmp ne i32 %r48,0
    br i1 %r49, label %L14, label %L16
L16:
    %r50 = load i32, ptr %r0
    ret i32 %r50
L17:
    %r43 = load i32, ptr %r0
    %r44 = add i32 0,10
    %r45 = mul i32 %r43,%r44
    %r46 = load i32, ptr %r2
    %r47 = add i32 %r45,%r46
    store i32 %r47, ptr %r0
    br label %L19
L18:
    br label %L16
L19:
    br label %L15
L20:
    %r35 = load i32, ptr %r2
    %r36 = add i32 0,9
    %r37 = icmp sle i32 %r35,%r36
    br i1 %r37, label %L17, label %L18
}
define void @my_putint(i32 %r0)
{
L0:
    %r3 = alloca i32
    %r2 = alloca [16 x i32]
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr %r1
    %r6 = add i32 0,0
    %r7 = icmp sgt i32 %r5,%r6
    br i1 %r7, label %L3, label %L5
L3:
    %r10 = load i32, ptr %r1
    %r11 = add i32 0,10
    %r12 = srem i32 %r10,%r11
    %r13 = load i32, ptr @ascii_0
    %r14 = add i32 %r12,%r13
    %r15 = load i32, ptr %r3
    %r16 = getelementptr [16 x i32], ptr %r2, i32 0, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = load i32, ptr %r1
    %r18 = add i32 0,10
    %r19 = sdiv i32 %r17,%r18
    store i32 %r19, ptr %r1
    %r20 = load i32, ptr %r3
    %r21 = add i32 0,1
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r3
    br label %L4
L4:
    %r23 = load i32, ptr %r1
    %r24 = add i32 0,0
    %r25 = icmp sgt i32 %r23,%r24
    br i1 %r25, label %L3, label %L5
L5:
    %r28 = load i32, ptr %r3
    %r29 = add i32 0,0
    %r30 = icmp sgt i32 %r28,%r29
    br i1 %r30, label %L7, label %L9
L7:
    %r33 = load i32, ptr %r3
    %r34 = add i32 0,1
    %r35 = sub i32 %r33,%r34
    store i32 %r35, ptr %r3
    %r36 = load i32, ptr %r3
    %r37 = getelementptr [16 x i32], ptr %r2, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    call void @putch(i32 %r38)
    br label %L8
L8:
    %r39 = load i32, ptr %r3
    %r40 = add i32 0,0
    %r41 = icmp sgt i32 %r39,%r40
    br i1 %r41, label %L7, label %L9
L9:
    ret void
}
define i32 @main()
{
L0:
    %r7 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @my_getint()
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,0
    %r4 = icmp sgt i32 %r2,%r3
    br i1 %r4, label %L3, label %L5
L3:
    %r8 = call i32 @my_getint()
    store i32 %r8, ptr %r7
    %r9 = load i32, ptr %r7
    call void @my_putint(i32 %r9)
    %r10 = add i32 0,10
    call void @putch(i32 %r10)
    %r11 = load i32, ptr %r0
    %r12 = add i32 0,1
    %r13 = sub i32 %r11,%r12
    store i32 %r13, ptr %r0
    br label %L4
L4:
    %r14 = load i32, ptr %r0
    %r15 = add i32 0,0
    %r16 = icmp sgt i32 %r14,%r15
    br i1 %r16, label %L3, label %L5
L5:
    %r19 = add i32 0,0
    ret i32 %r19
}
