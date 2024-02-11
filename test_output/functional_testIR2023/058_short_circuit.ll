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
@g = global i32 0
define i32 @func(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr @g
    %r3 = load i32, ptr %r1
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr @g
    %r5 = load i32, ptr @g
    call void @putint(i32 %r5)
    %r6 = load i32, ptr @g
    ret i32 %r6
}
define i32 @main()
{
L0:
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = call i32 @getint()
    store i32 %r2, ptr %r0
    %r3 = load i32, ptr %r0
    %r4 = add i32 10,0
    %r5 = icmp sgt i32 %r3,%r4
    br i1 %r5, label %L5, label %L3
L2:
    %r9 = add i32 1,0
    store i32 %r9, ptr %r0
    br label %L4
L3:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r0
    br label %L4
L4:
    %r11 = call i32 @getint()
    store i32 %r11, ptr %r0
    %r12 = load i32, ptr %r0
    %r13 = add i32 11,0
    %r14 = icmp sgt i32 %r12,%r13
    br i1 %r14, label %L9, label %L7
L5:
    %r6 = load i32, ptr %r0
    %r7 = call i32 @func(i32 %r6)
    %r8 = icmp ne i32 %r7,0
    br i1 %r8, label %L2, label %L3
L6:
    %r18 = add i32 1,0
    store i32 %r18, ptr %r0
    br label %L8
L7:
    %r19 = add i32 0,0
    store i32 %r19, ptr %r0
    br label %L8
L8:
    %r20 = call i32 @getint()
    store i32 %r20, ptr %r0
    %r21 = load i32, ptr %r0
    %r22 = add i32 99,0
    %r23 = icmp sle i32 %r21,%r22
    br i1 %r23, label %L10, label %L13
L9:
    %r15 = load i32, ptr %r0
    %r16 = call i32 @func(i32 %r15)
    %r17 = icmp ne i32 %r16,0
    br i1 %r17, label %L6, label %L7
L10:
    %r27 = add i32 1,0
    store i32 %r27, ptr %r0
    br label %L12
L11:
    %r28 = add i32 0,0
    store i32 %r28, ptr %r0
    br label %L12
L12:
    %r29 = call i32 @getint()
    store i32 %r29, ptr %r0
    %r30 = load i32, ptr %r0
    %r31 = add i32 100,0
    %r32 = icmp sle i32 %r30,%r31
    br i1 %r32, label %L14, label %L17
L13:
    %r24 = load i32, ptr %r0
    %r25 = call i32 @func(i32 %r24)
    %r26 = icmp ne i32 %r25,0
    br i1 %r26, label %L10, label %L11
L14:
    %r36 = add i32 1,0
    store i32 %r36, ptr %r0
    br label %L16
L15:
    %r37 = add i32 0,0
    store i32 %r37, ptr %r0
    br label %L16
L16:
    %r38 = add i32 99,0
    %r39 = call i32 @func(i32 %r38)
    %r40 = icmp eq i32 %r39,0
    br i1 %r40, label %L21, label %L19
L17:
    %r33 = load i32, ptr %r0
    %r34 = call i32 @func(i32 %r33)
    %r35 = icmp ne i32 %r34,0
    br i1 %r35, label %L14, label %L15
L18:
    %r44 = add i32 1,0
    store i32 %r44, ptr %r0
    br label %L20
L19:
    %r45 = add i32 0,0
    store i32 %r45, ptr %r0
    br label %L20
L20:
    %r46 = add i32 0,0
    ret i32 %r46
L21:
    %r41 = add i32 100,0
    %r42 = call i32 @func(i32 %r41)
    %r43 = icmp ne i32 %r42,0
    br i1 %r43, label %L18, label %L19
}
