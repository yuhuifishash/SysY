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
    %r3 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    store i32 0, ptr %r2
    store i32 0, ptr %r3
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 1,0
    store i32 %r5, ptr %r2
    br label %L2
L2:
    %r6 = load i32, ptr %r2
    %r7 = load i32, ptr %r1
    %r8 = add i32 1,0
    %r9 = add i32 %r7,%r8
    %r10 = icmp slt i32 %r6,%r9
    br i1 %r10, label %L3, label %L4
L3:
    %r11 = load i32, ptr %r1
    %r12 = load i32, ptr %r2
    %r13 = srem i32 %r11,%r12
    %r14 = add i32 0,0
    %r15 = icmp eq i32 %r13,%r14
    br i1 %r15, label %L5, label %L6
L4:
    %r22 = load i32, ptr %r3
    ret i32 %r22
L5:
    %r16 = load i32, ptr %r3
    %r17 = load i32, ptr %r2
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r3
    br label %L6
L6:
    %r19 = load i32, ptr %r2
    %r20 = add i32 1,0
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r2
    br label %L2
}
define i32 @main()
{
L0:
    %r5 = alloca i32
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
    %r4 = add i32 1478,0
    store i32 %r4, ptr %r3
    store i32 0, ptr %r5
    %r6 = load i32, ptr %r3
    %r7 = call i32 @factor(i32 %r6)
    ret i32 %r7
}
