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
    store i32 0, ptr %r0
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr %r0
    %r3 = add i32 10,0
    %r4 = icmp sgt i32 %r2,%r3
    br i1 %r4, label %L5, label %L3
L2:
    %r8 = add i32 1,0
    store i32 %r8, ptr %r0
    br label %L4
L3:
    %r9 = add i32 0,0
    store i32 %r9, ptr %r0
    br label %L4
L4:
    %r10 = call i32 @getint()
    store i32 %r10, ptr %r0
    %r11 = load i32, ptr %r0
    %r12 = add i32 11,0
    %r13 = icmp sgt i32 %r11,%r12
    br i1 %r13, label %L9, label %L7
L5:
    %r5 = load i32, ptr %r0
    %r6 = call i32 @func(i32 %r5)
    %r7 = icmp ne i32 %r6,0
    br i1 %r7, label %L2, label %L3
L6:
    %r17 = add i32 1,0
    store i32 %r17, ptr %r0
    br label %L8
L7:
    %r18 = add i32 0,0
    store i32 %r18, ptr %r0
    br label %L8
L8:
    %r19 = call i32 @getint()
    store i32 %r19, ptr %r0
    %r20 = load i32, ptr %r0
    %r21 = add i32 99,0
    %r22 = icmp sle i32 %r20,%r21
    br i1 %r22, label %L10, label %L13
L9:
    %r14 = load i32, ptr %r0
    %r15 = call i32 @func(i32 %r14)
    %r16 = icmp ne i32 %r15,0
    br i1 %r16, label %L6, label %L7
L10:
    %r26 = add i32 1,0
    store i32 %r26, ptr %r0
    br label %L12
L11:
    %r27 = add i32 0,0
    store i32 %r27, ptr %r0
    br label %L12
L12:
    %r28 = call i32 @getint()
    store i32 %r28, ptr %r0
    %r29 = load i32, ptr %r0
    %r30 = add i32 100,0
    %r31 = icmp sle i32 %r29,%r30
    br i1 %r31, label %L14, label %L17
L13:
    %r23 = load i32, ptr %r0
    %r24 = call i32 @func(i32 %r23)
    %r25 = icmp ne i32 %r24,0
    br i1 %r25, label %L10, label %L11
L14:
    %r35 = add i32 1,0
    store i32 %r35, ptr %r0
    br label %L16
L15:
    %r36 = add i32 0,0
    store i32 %r36, ptr %r0
    br label %L16
L16:
    %r37 = add i32 99,0
    %r38 = call i32 @func(i32 %r37)
    %r39 = icmp eq i32 %r38,0
    br i1 %r39, label %L21, label %L19
L17:
    %r32 = load i32, ptr %r0
    %r33 = call i32 @func(i32 %r32)
    %r34 = icmp ne i32 %r33,0
    br i1 %r34, label %L14, label %L15
L18:
    %r43 = add i32 1,0
    store i32 %r43, ptr %r0
    br label %L20
L19:
    %r44 = add i32 0,0
    store i32 %r44, ptr %r0
    br label %L20
L20:
    %r45 = add i32 0,0
    ret i32 %r45
L21:
    %r40 = add i32 100,0
    %r41 = call i32 @func(i32 %r40)
    %r42 = icmp ne i32 %r41,0
    br i1 %r42, label %L18, label %L19
}
