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
define i32 @func(i32 %r0)
{
L0:  ;
    %r9 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load i32, ptr %r1
    %r3 = add i32 50,0
    %r4 = icmp sle i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:  ;
    %r5 = load i32, ptr %r1
    call void @putint(i32 %r5)
    %r6 = add i32 1,0
    store i32 %r6, ptr %r9
    br label %L5
L3:  ;
    %r7 = load i32, ptr %r1
    call void @putint(i32 %r7)
    %r8 = add i32 0,0
    store i32 %r8, ptr %r9
    br label %L5
L5:  ;
    %r9 = load i32, ptr %r10
    ret i32 %r10
}
define i32 @main()
{
L0:  ;
    %r31 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,0
    %r3 = call i32 @func(i32 %r2)
    %r4 = add i32 1,0
    %r5 = icmp eq i32 %r3,%r4
    br i1 %r5, label %L2, label %L5
L2:  ;
    %r14 = add i32 0,0
    store i32 %r14, ptr %r0
    br label %L4
L3:  ;
    %r15 = add i32 1,0
    store i32 %r15, ptr %r0
    br label %L4
L4:  ;
    %r16 = add i32 50,0
    %r17 = call i32 @func(i32 %r16)
    %r18 = add i32 1,0
    %r19 = icmp eq i32 %r17,%r18
    br i1 %r19, label %L11, label %L10
L5:  ;
    %r6 = add i32 50,0
    %r7 = call i32 @func(i32 %r6)
    %r8 = add i32 1,0
    %r9 = icmp eq i32 %r7,%r8
    br i1 %r9, label %L6, label %L3
L6:  ;
    %r10 = add i32 100,0
    %r11 = call i32 @func(i32 %r10)
    %r12 = add i32 0,0
    %r13 = icmp eq i32 %r11,%r12
    br i1 %r13, label %L2, label %L3
L7:  ;
    %r28 = add i32 0,0
    store i32 %r28, ptr %r0
    br label %L9
L8:  ;
    %r29 = add i32 1,0
    store i32 %r29, ptr %r0
    br label %L9
L9:  ;
    %r30 = add i32 0,0
    store i32 %r30, ptr %r31
    br label %L12
L10:  ;
    %r24 = add i32 1,0
    %r25 = call i32 @func(i32 %r24)
    %r26 = add i32 1,0
    %r27 = icmp eq i32 %r25,%r26
    br i1 %r27, label %L7, label %L8
L11:  ;
    %r20 = add i32 40,0
    %r21 = call i32 @func(i32 %r20)
    %r22 = add i32 1,0
    %r23 = icmp eq i32 %r21,%r22
    br i1 %r23, label %L7, label %L10
L12:  ;
    %r31 = load i32, ptr %r32
    ret i32 %r32
}
