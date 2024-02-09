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
    %r22 = alloca i32
    %r11 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    store i32 0, ptr %r4
    %r5 = load i32, ptr %r2
    %r6 = load i32, ptr %r3
    %r7 = add i32 %r5,%r6
    store i32 %r7, ptr %r4
    br label %L2
L2:
    %r8 = load i32, ptr %r4
    %r9 = add i32 75,0
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L4
L3:
    store i32 0, ptr %r11
    %r12 = add i32 42,0
    store i32 %r12, ptr %r11
    %r13 = load i32, ptr %r4
    %r14 = add i32 100,0
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L5, label %L6
L4:
    %r32 = load i32, ptr %r4
    ret i32 %r32
L5:
    %r16 = load i32, ptr %r4
    %r17 = load i32, ptr %r11
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r4
    %r19 = load i32, ptr %r4
    %r20 = add i32 99,0
    %r21 = icmp sgt i32 %r19,%r20
    br i1 %r21, label %L7, label %L8
L6:
    br label %L2
L7:
    store i32 0, ptr %r22
    %r23 = load i32, ptr %r11
    %r24 = add i32 2,0
    %r25 = mul i32 %r23,%r24
    store i32 %r25, ptr %r22
    %r26 = add i32 1,0
    %r27 = add i32 1,0
    %r28 = icmp eq i32 %r26,%r27
    br i1 %r28, label %L9, label %L10
L8:
    br label %L6
L9:
    %r29 = load i32, ptr %r22
    %r30 = add i32 2,0
    %r31 = mul i32 %r29,%r30
    store i32 %r31, ptr %r4
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
    store i32 0, ptr %r0
    %r1 = add i32 2,0
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr %r0
    %r3 = load i32, ptr %r0
    %r4 = call i32 @deepWhileBr(i32 %r2,i32 %r3)
    ret i32 %r4
}
