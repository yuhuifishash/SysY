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
define i32 @split(i32 %r0,ptr %r1)
{
L0:
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    br label %L1
L1:
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr @N
    %r6 = add i32 1,0
    %r7 = sub i32 %r5,%r6
    store i32 %r7, ptr %r3
    br label %L2
L2:
    %r8 = load i32, ptr %r3
    %r9 = add i32 1,0
    %r10 = sub i32 0,%r9
    %r11 = icmp ne i32 %r8,%r10
    br i1 %r11, label %L3, label %L4
L3:
    %r12 = load i32, ptr %r3
    %r13 = getelementptr i32, ptr %r1, i32 %r12
    %r14 = load i32, ptr %r2
    %r15 = add i32 10,0
    %r16 = srem i32 %r14,%r15
    store i32 %r16, ptr %r13
    %r17 = load i32, ptr %r2
    %r18 = add i32 10,0
    %r19 = sdiv i32 %r17,%r18
    store i32 %r19, ptr %r2
    %r20 = load i32, ptr %r3
    %r21 = add i32 1,0
    %r22 = sub i32 %r20,%r21
    store i32 %r22, ptr %r3
    br label %L2
L4:
    %r23 = add i32 0,0
    ret i32 %r23
}
define i32 @main()
{
L0:
    %r11 = alloca i32
    %r6 = alloca [4 x i32]
    %r4 = alloca i32
    %r2 = alloca i32
    br label %L1
L1:
    %r0 = add i32 4,0
    store i32 %r0, ptr @N
    %r1 = add i32 10,0
    store i32 %r1, ptr @newline
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 1478,0
    store i32 %r7, ptr %r4
    %r8 = load i32, ptr %r4
    %r9 = getelementptr [4 x i32], ptr %r6, i32 0
    %r10 = call i32 @split(i32 %r8,ptr %r9)
    store i32 %r10, ptr %r4
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    %r13 = add i32 0,0
    store i32 %r13, ptr %r2
    br label %L2
L2:
    %r14 = load i32, ptr %r2
    %r15 = add i32 4,0
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L3, label %L4
L3:
    %r17 = load i32, ptr %r2
    %r18 = getelementptr [4 x i32], ptr %r6, i32 0, i32 %r17
    %r19 = load i32, ptr %r18
    store i32 %r19, ptr %r11
    %r20 = load i32, ptr %r11
    call void @putint(i32 %r20)
    %r21 = load i32, ptr @newline
    call void @putch(i32 %r21)
    %r22 = load i32, ptr %r2
    %r23 = add i32 1,0
    %r24 = add i32 %r22,%r23
    store i32 %r24, ptr %r2
    br label %L2
L4:
    %r25 = add i32 0,0
    ret i32 %r25
}
