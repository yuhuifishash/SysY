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
    %r5 = add i32 10,0
    store i32 %r5, ptr %r3
    %r6 = load i32, ptr %r0
    %r7 = add i32 6,0
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L2, label %L5
L2:
    %r12 = load i32, ptr %r0
    ret i32 %r12
L3:
    %r13 = load i32, ptr %r3
    %r14 = add i32 10,0
    %r15 = icmp eq i32 %r13,%r14
    br i1 %r15, label %L9, label %L7
L4:
    %r32 = load i32, ptr %r0
    ret i32 %r32
L5:
    %r9 = load i32, ptr %r3
    %r10 = add i32 11,0
    %r11 = icmp eq i32 %r9,%r10
    br i1 %r11, label %L2, label %L3
L6:
    %r19 = add i32 25,0
    store i32 %r19, ptr %r0
    br label %L8
L7:
    %r20 = load i32, ptr %r3
    %r21 = add i32 10,0
    %r22 = icmp eq i32 %r20,%r21
    br i1 %r22, label %L13, label %L11
L8:
    br label %L4
L9:
    %r16 = load i32, ptr %r0
    %r17 = add i32 1,0
    %r18 = icmp eq i32 %r16,%r17
    br i1 %r18, label %L6, label %L7
L10:
    %r27 = load i32, ptr %r0
    %r28 = add i32 15,0
    %r29 = add i32 %r27,%r28
    store i32 %r29, ptr %r0
    br label %L12
L11:
    %r30 = load i32, ptr %r0
    %r31 = sub i32 0,%r30
    store i32 %r31, ptr %r0
    br label %L12
L12:
    br label %L8
L13:
    %r23 = load i32, ptr %r0
    %r24 = add i32 5,0
    %r25 = sub i32 0,%r24
    %r26 = icmp eq i32 %r23,%r25
    br i1 %r26, label %L10, label %L11
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
