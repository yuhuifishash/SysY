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
    %r6 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r1 = add i32 5,0
    store i32 %r1, ptr %r0
    store i32 0, ptr %r2
    store i32 0, ptr %r3
    %r4 = add i32 6,0
    store i32 %r4, ptr %r2
    %r5 = add i32 7,0
    store i32 %r5, ptr %r3
    store i32 0, ptr %r6
    %r7 = add i32 10,0
    store i32 %r7, ptr %r6
    br label %L2
L2:
    %r8 = load i32, ptr %r0
    %r9 = add i32 20,0
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L4
L3:
    %r11 = load i32, ptr %r0
    %r12 = add i32 3,0
    %r13 = add i32 %r11,%r12
    store i32 %r13, ptr %r0
    br label %L5
L4:
    %r41 = load i32, ptr %r0
    %r42 = load i32, ptr %r2
    %r43 = load i32, ptr %r6
    %r44 = add i32 %r42,%r43
    %r45 = add i32 %r41,%r44
    %r46 = load i32, ptr %r3
    %r47 = add i32 %r45,%r46
    ret i32 %r47
L5:
    %r14 = load i32, ptr %r2
    %r15 = add i32 10,0
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L6, label %L7
L6:
    %r17 = load i32, ptr %r2
    %r18 = add i32 1,0
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r2
    br label %L8
L7:
    %r38 = load i32, ptr %r2
    %r39 = add i32 2,0
    %r40 = sub i32 %r38,%r39
    store i32 %r40, ptr %r2
    br label %L2
L8:
    %r20 = load i32, ptr %r3
    %r21 = add i32 7,0
    %r22 = icmp eq i32 %r20,%r21
    br i1 %r22, label %L9, label %L10
L9:
    %r23 = load i32, ptr %r3
    %r24 = add i32 1,0
    %r25 = sub i32 %r23,%r24
    store i32 %r25, ptr %r3
    br label %L11
L10:
    %r35 = load i32, ptr %r3
    %r36 = add i32 1,0
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r3
    br label %L5
L11:
    %r26 = load i32, ptr %r6
    %r27 = add i32 20,0
    %r28 = icmp slt i32 %r26,%r27
    br i1 %r28, label %L12, label %L13
L12:
    %r29 = load i32, ptr %r6
    %r30 = add i32 3,0
    %r31 = add i32 %r29,%r30
    store i32 %r31, ptr %r6
    br label %L11
L13:
    %r32 = load i32, ptr %r6
    %r33 = add i32 1,0
    %r34 = sub i32 %r32,%r33
    store i32 %r34, ptr %r6
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
