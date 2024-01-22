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
@A = global [30x [30x i32]] zeroinitializer
define i32 @main()
{
L0:
    %r11 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    br label %L2
L2:
    %r6 = load i32, ptr %r4
    %r7 = add i32 0,30
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L4
L3:
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    br label %L5
L4:
    %r37 = add i32 0,0
    ret i32 %r37
L5:
    %r13 = load i32, ptr %r11
    %r14 = add i32 0,30
    %r15 = icmp slt i32 %r13,%r14
    br i1 %r15, label %L6, label %L7
L6:
    %r18 = load i32, ptr %r4
    %r19 = load i32, ptr %r11
    %r20 = getelementptr [30 x [30 x i32]], ptr @A, i32 0, i32 %r18, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = load i32, ptr %r0
    %r23 = load i32, ptr %r2
    %r24 = mul i32 %r22,%r23
    %r25 = load i32, ptr %r2
    %r26 = mul i32 %r24,%r25
    %r27 = add i32 %r21,%r26
    %r28 = load i32, ptr %r4
    %r29 = load i32, ptr %r11
    %r30 = getelementptr [30 x [30 x i32]], ptr @A, i32 0, i32 %r28, i32 %r29
    store i32 %r27, ptr %r30
    %r31 = load i32, ptr %r11
    %r32 = add i32 0,1
    %r33 = add i32 %r31,%r32
    store i32 %r33, ptr %r11
    br label %L5
L7:
    %r34 = load i32, ptr %r4
    %r35 = add i32 0,1
    %r36 = add i32 %r34,%r35
    store i32 %r36, ptr %r4
    br label %L2
}
