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
define i32 @FourWhile()
{
L0:
    %r9 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 5,0
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 6,0
    store i32 %r7, ptr %r3
    %r8 = add i32 7,0
    store i32 %r8, ptr %r5
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 10,0
    store i32 %r11, ptr %r9
    br label %L2
L2:
    %r12 = load i32, ptr %r0
    %r13 = add i32 20,0
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L3, label %L4
L3:
    %r15 = load i32, ptr %r0
    %r16 = add i32 3,0
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r0
    br label %L5
L4:
    %r45 = load i32, ptr %r0
    %r46 = load i32, ptr %r3
    %r47 = load i32, ptr %r9
    %r48 = add i32 %r46,%r47
    %r49 = add i32 %r45,%r48
    %r50 = load i32, ptr %r5
    %r51 = add i32 %r49,%r50
    ret i32 %r51
L5:
    %r18 = load i32, ptr %r3
    %r19 = add i32 10,0
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L6, label %L7
L6:
    %r21 = load i32, ptr %r3
    %r22 = add i32 1,0
    %r23 = add i32 %r21,%r22
    store i32 %r23, ptr %r3
    br label %L8
L7:
    %r42 = load i32, ptr %r3
    %r43 = add i32 2,0
    %r44 = sub i32 %r42,%r43
    store i32 %r44, ptr %r3
    br label %L2
L8:
    %r24 = load i32, ptr %r5
    %r25 = add i32 7,0
    %r26 = icmp eq i32 %r24,%r25
    br i1 %r26, label %L9, label %L10
L9:
    %r27 = load i32, ptr %r5
    %r28 = add i32 1,0
    %r29 = sub i32 %r27,%r28
    store i32 %r29, ptr %r5
    br label %L11
L10:
    %r39 = load i32, ptr %r5
    %r40 = add i32 1,0
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r5
    br label %L5
L11:
    %r30 = load i32, ptr %r9
    %r31 = add i32 20,0
    %r32 = icmp slt i32 %r30,%r31
    br i1 %r32, label %L12, label %L13
L12:
    %r33 = load i32, ptr %r9
    %r34 = add i32 3,0
    %r35 = add i32 %r33,%r34
    store i32 %r35, ptr %r9
    br label %L11
L13:
    %r36 = load i32, ptr %r9
    %r37 = add i32 1,0
    %r38 = sub i32 %r36,%r37
    store i32 %r38, ptr %r9
    br label %L8
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @FourWhile()
    ret i32 %r0
}
