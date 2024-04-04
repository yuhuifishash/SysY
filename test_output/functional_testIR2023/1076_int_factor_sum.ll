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
L0:  ;
    %r4 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = add i32 0,0
    store i32 %r6, ptr %r4
    %r7 = add i32 1,0
    store i32 %r7, ptr %r2
    br label %L2
L2:  ;
    %r8 = load i32, ptr %r2
    %r9 = load i32, ptr %r1
    %r10 = add i32 1,0
    %r11 = add i32 %r9,%r10
    %r12 = icmp slt i32 %r8,%r11
    br i1 %r12, label %L3, label %L4
L3:  ;
    %r13 = load i32, ptr %r1
    %r14 = load i32, ptr %r2
    %r15 = srem i32 %r13,%r14
    %r16 = add i32 0,0
    %r17 = icmp eq i32 %r15,%r16
    br i1 %r17, label %L5, label %L6
L4:  ;
    %r24 = load i32, ptr %r4
    ret i32 %r24
L5:  ;
    %r18 = load i32, ptr %r4
    %r19 = load i32, ptr %r2
    %r20 = add i32 %r18,%r19
    store i32 %r20, ptr %r4
    br label %L6
L6:  ;
    %r21 = load i32, ptr %r2
    %r22 = add i32 1,0
    %r23 = add i32 %r21,%r22
    store i32 %r23, ptr %r2
    br label %L2
}
define i32 @main()
{
L0:  ;
    %r7 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    br label %L1
L1:  ;
    %r0 = add i32 4,0
    store i32 %r0, ptr @N
    %r1 = add i32 10,0
    store i32 %r1, ptr @newline
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r6 = add i32 1478,0
    store i32 %r6, ptr %r4
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r9 = load i32, ptr %r4
    %r10 = call i32 @factor(i32 %r9)
    ret i32 %r10
}
