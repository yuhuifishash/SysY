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
    store i32 0, ptr %r3
    %r4 = load i32, ptr @N
    %r5 = add i32 1,0
    %r6 = sub i32 %r4,%r5
    store i32 %r6, ptr %r3
    br label %L2
L2:
    %r7 = load i32, ptr %r3
    %r8 = add i32 1,0
    %r9 = sub i32 0,%r8
    %r10 = icmp ne i32 %r7,%r9
    br i1 %r10, label %L3, label %L4
L3:
    %r11 = load i32, ptr %r3
    %r12 = getelementptr i32, ptr %r1, i32 %r11
    %r13 = load i32, ptr %r2
    %r14 = add i32 10,0
    %r15 = srem i32 %r13,%r14
    store i32 %r15, ptr %r12
    %r16 = load i32, ptr %r2
    %r17 = add i32 10,0
    %r18 = sdiv i32 %r16,%r17
    store i32 %r18, ptr %r2
    %r19 = load i32, ptr %r3
    %r20 = add i32 1,0
    %r21 = sub i32 %r19,%r20
    store i32 %r21, ptr %r3
    br label %L2
L4:
    %r22 = add i32 0,0
    ret i32 %r22
}
define i32 @main()
{
L0:
    %r9 = alloca i32
    %r4 = alloca [4 x i32]
    %r3 = alloca i32
    %r2 = alloca i32
    br label %L1
L1:
    %r0 = add i32 4,0
    store i32 %r0, ptr @N
    %r1 = add i32 10,0
    store i32 %r1, ptr @newline
    store i32 0, ptr %r2
    store i32 0, ptr %r3
    %r5 = add i32 1478,0
    store i32 %r5, ptr %r3
    %r6 = load i32, ptr %r3
    %r7 = getelementptr [4 x i32], ptr %r4, i32 0
    %r8 = call i32 @split(i32 %r6,ptr %r7)
    store i32 %r8, ptr %r3
    store i32 0, ptr %r9
    %r10 = add i32 0,0
    store i32 %r10, ptr %r2
    br label %L2
L2:
    %r11 = load i32, ptr %r2
    %r12 = add i32 4,0
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L4
L3:
    %r14 = load i32, ptr %r2
    %r15 = getelementptr [4 x i32], ptr %r4, i32 0, i32 %r14
    %r16 = load i32, ptr %r15
    store i32 %r16, ptr %r9
    %r17 = load i32, ptr %r9
    call void @putint(i32 %r17)
    %r18 = load i32, ptr @newline
    call void @putch(i32 %r18)
    %r19 = load i32, ptr %r2
    %r20 = add i32 1,0
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r2
    br label %L2
L4:
    %r22 = add i32 0,0
    ret i32 %r22
}
