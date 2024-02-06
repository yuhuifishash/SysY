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
@N = global i32 zeroinitializer
@newline = global i32 zeroinitializer
define i32 @factor(i32 %r0)
{
L0:
    %r4 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = add i32 0,0
    store i32 %r6, ptr %r4
    %r7 = add i32 0,1
    store i32 %r7, ptr %r2
    %r8 = load i32, ptr %r2
    %r9 = load i32, ptr %r1
    %r10 = add i32 0,1
    %r11 = add i32 %r9,%r10
    %r12 = icmp slt i32 %r8,%r11
    br i1 %r12, label %L3, label %L5
L3:
    %r15 = load i32, ptr %r1
    %r16 = load i32, ptr %r2
    %r17 = srem i32 %r15,%r16
    %r18 = add i32 0,0
    %r19 = icmp eq i32 %r17,%r18
    br i1 %r19, label %L6, label %L7
L4:
    %r28 = load i32, ptr %r2
    %r29 = load i32, ptr %r1
    %r30 = add i32 0,1
    %r31 = add i32 %r29,%r30
    %r32 = icmp slt i32 %r28,%r31
    br i1 %r32, label %L3, label %L5
L5:
    %r35 = load i32, ptr %r4
    ret i32 %r35
L6:
    %r22 = load i32, ptr %r4
    %r23 = load i32, ptr %r2
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r4
    br label %L7
L7:
    %r25 = load i32, ptr %r2
    %r26 = add i32 0,1
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r2
    br label %L4
}
define i32 @main()
{
L0:
    %r7 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    br label %L1
L1:
    %r0 = add i32 0,4
    store i32 %r0, ptr @N
    %r1 = add i32 0,10
    store i32 %r1, ptr @newline
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = add i32 0,1478
    store i32 %r6, ptr %r4
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r9 = load i32, ptr %r4
    %r10 = call i32 @factor(i32 %r9)
    ret i32 %r10
}
