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
declare void @starttime()
declare void @stoptime()
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
@N = global i32 zeroinitializer
@newline = global i32 zeroinitializer
define i32 @split(i32 %r0,ptr %r1)
{
L0:
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr @N
    %r6 = add i32 0,1
    %r7 = sub i32 %r5,%r6
    store i32 %r7, ptr %r3
    br label %L1
L1:
    %r8 = load i32, ptr %r3
    %r9 = add i32 0,1
    %r10 = sub i32 0,%r9
    %r11 = icmp ne i32 %r8,%r10
    br i1 %r11, label %L2, label %L3
L2:
    %r14 = load i32, ptr %r2
    %r15 = add i32 0,10
    %r16 = srem i32 %r14,%r15
    %r17 = load i32, ptr %r3
    %r18 = getelementptr i32, ptr %r1, i32 %r17
    store i32 %r16, ptr %r18
    %r19 = load i32, ptr %r2
    %r20 = add i32 0,10
    %r21 = sdiv i32 %r19,%r20
    store i32 %r21, ptr %r2
    %r22 = load i32, ptr %r3
    %r23 = add i32 0,1
    %r24 = sub i32 %r22,%r23
    store i32 %r24, ptr %r3
    br label %L1
L3:
    %r25 = add i32 0,0
    ret i32 %r25
}
define i32 @main()
{
L0:
    %r11 = alloca i32
    %r6 = alloca [4 x i32]
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = add i32 0,4
    store i32 %r0, ptr @N
    %r1 = add i32 0,10
    store i32 %r1, ptr @newline
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,1478
    store i32 %r7, ptr %r4
    %r8 = load i32, ptr %r4
    %r9 = getelementptr i32, ptr %r6, i32 0
    %r10 = call i32 @split(i32 %r8,ptr %r9)
    store i32 %r10, ptr %r4
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    %r13 = add i32 0,0
    store i32 %r13, ptr %r2
    br label %L1
L1:
    %r14 = load i32, ptr %r2
    %r15 = add i32 0,4
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L2, label %L3
L2:
    %r19 = load i32, ptr %r2
    %r20 = getelementptr [4 x i32], ptr %r6, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    store i32 %r21, ptr %r11
    %r22 = load i32, ptr %r11
    call void @putint(i32 %r22)
    %r23 = load i32, ptr @newline
    call void @putch(i32 %r23)
    %r24 = load i32, ptr %r2
    %r25 = add i32 0,1
    %r26 = add i32 %r24,%r25
    store i32 %r26, ptr %r2
    br label %L1
L3:
    %r27 = add i32 0,0
    ret i32 %r27
}
