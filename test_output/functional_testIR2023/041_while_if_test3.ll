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
define i32 @deepWhileBr(i32 %r0,i32 %r1)
{
L0:
    %r24 = alloca i32
    %r12 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = load i32, ptr %r2
    %r7 = load i32, ptr %r3
    %r8 = add i32 %r6,%r7
    store i32 %r8, ptr %r4
    br label %L2
L2:
    %r9 = load i32, ptr %r4
    %r10 = add i32 75,0
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L3, label %L4
L3:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = add i32 42,0
    store i32 %r14, ptr %r12
    %r15 = load i32, ptr %r4
    %r16 = add i32 100,0
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L5, label %L6
L4:
    %r35 = load i32, ptr %r4
    ret i32 %r35
L5:
    %r18 = load i32, ptr %r4
    %r19 = load i32, ptr %r12
    %r20 = add i32 %r18,%r19
    store i32 %r20, ptr %r4
    %r21 = load i32, ptr %r4
    %r22 = add i32 99,0
    %r23 = icmp sgt i32 %r21,%r22
    br i1 %r23, label %L7, label %L8
L6:
    br label %L2
L7:
    %r25 = add i32 0,0
    store i32 %r25, ptr %r24
    %r26 = load i32, ptr %r12
    %r27 = add i32 2,0
    %r28 = mul i32 %r26,%r27
    store i32 %r28, ptr %r24
    %r29 = add i32 1,0
    %r30 = add i32 1,0
    %r31 = icmp eq i32 %r29,%r30
    br i1 %r31, label %L9, label %L10
L8:
    br label %L6
L9:
    %r32 = load i32, ptr %r24
    %r33 = add i32 2,0
    %r34 = mul i32 %r32,%r33
    store i32 %r34, ptr %r4
    br label %L10
L10:
    br label %L8
}
define i32 @main()
{
L0:
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 2,0
    store i32 %r2, ptr %r0
    %r3 = load i32, ptr %r0
    %r4 = load i32, ptr %r0
    %r5 = call i32 @deepWhileBr(i32 %r3,i32 %r4)
    ret i32 %r5
}
