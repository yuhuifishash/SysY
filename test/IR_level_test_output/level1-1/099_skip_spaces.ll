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
define i32 @main()
{
L0:
    %r3 = alloca i32
    %r1 = alloca i32
    %r0 = alloca [100 x i32]
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    br label %L1
L1:
    %r5 = call i32 @getint()
    %r6 = icmp ne i32 %r5,0
    br i1 %r6, label %L2, label %L3
L2:
    %r7 = call i32 @getint()
    %r8 = load i32, ptr %r1
    %r9 = getelementptr [100 x i32], ptr %r0, i32 0, i32 %r8
    store i32 %r7, ptr %r9
    %r10 = load i32, ptr %r1
    %r11 = add i32 0,1
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r1
    br label %L1
L3:
    br label %L4
L4:
    %r13 = load i32, ptr %r1
    %r14 = icmp ne i32 %r13,0
    br i1 %r14, label %L5, label %L6
L5:
    %r15 = load i32, ptr %r1
    %r16 = add i32 0,1
    %r17 = sub i32 %r15,%r16
    store i32 %r17, ptr %r1
    %r18 = load i32, ptr %r3
    %r19 = load i32, ptr %r1
    %r20 = getelementptr [100 x i32], ptr %r0, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = add i32 %r18,%r21
    store i32 %r22, ptr %r3
    br label %L4
L6:
    %r23 = load i32, ptr %r3
    %r24 = add i32 0,79
    %r25 = srem i32 %r23,%r24
    ret i32 %r25
}
