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
define i32 @ifElseIf()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r1 = add i32 5,0
    store i32 %r1, ptr %r0
    store i32 0, ptr %r2
    %r3 = add i32 10,0
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r0
    %r5 = add i32 6,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L5
L2:
    %r10 = load i32, ptr %r0
    ret i32 %r10
    br label %L4
L3:
    %r11 = load i32, ptr %r2
    %r12 = add i32 10,0
    %r13 = icmp eq i32 %r11,%r12
    br i1 %r13, label %L9, label %L7
L4:
    %r30 = load i32, ptr %r0
    ret i32 %r30
L5:
    %r7 = load i32, ptr %r2
    %r8 = add i32 11,0
    %r9 = icmp eq i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
L6:
    %r17 = add i32 25,0
    store i32 %r17, ptr %r0
    br label %L8
L7:
    %r18 = load i32, ptr %r2
    %r19 = add i32 10,0
    %r20 = icmp eq i32 %r18,%r19
    br i1 %r20, label %L13, label %L11
L8:
    br label %L4
L9:
    %r14 = load i32, ptr %r0
    %r15 = add i32 1,0
    %r16 = icmp eq i32 %r14,%r15
    br i1 %r16, label %L6, label %L7
L10:
    %r25 = load i32, ptr %r0
    %r26 = add i32 15,0
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r0
    br label %L12
L11:
    %r28 = load i32, ptr %r0
    %r29 = sub i32 0,%r28
    store i32 %r29, ptr %r0
    br label %L12
L12:
    br label %L8
L13:
    %r21 = load i32, ptr %r0
    %r22 = add i32 5,0
    %r23 = sub i32 0,%r22
    %r24 = icmp eq i32 %r21,%r23
    br i1 %r24, label %L10, label %L11
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @ifElseIf()
    call void @putint(i32 %r0)
    %r1 = add i32 0,0
    ret i32 %r1
}
