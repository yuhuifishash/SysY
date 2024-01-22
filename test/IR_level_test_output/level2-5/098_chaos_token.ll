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
@__HELLO = global [100 x i32] [i32 87,i32 101,i32 108,i32 99,i32 111,i32 109,i32 101,i32 32,i32 116,i32 111,i32 32,i32 116,i32 104,i32 101,i32 32,i32 74,i32 97,i32 112,i32 97,i32 114,i32 105,i32 32,i32 80,i32 97,i32 114,i32 107,i32 33,i32 10,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0]
@N4__mE___ = global [6 x [50 x i32]] [[50 x i32] [i32 83,i32 97,i32 97,i32 98,i32 97,i32 114,i32 117,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0],[50 x i32] [i32 75,i32 97,i32 98,i32 97,i32 110,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0],[50 x i32] [i32 72,i32 97,i32 115,i32 104,i32 105,i32 98,i32 105,i32 114,i32 111,i32 107,i32 111,i32 117,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0],[50 x i32] [i32 65,i32 114,i32 97,i32 105,i32 103,i32 117,i32 109,i32 97,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0],[50 x i32] [i32 72,i32 117,i32 110,i32 98,i32 111,i32 114,i32 117,i32 116,i32 111,i32 32,i32 80,i32 101,i32 110,i32 103,i32 105,i32 110,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0],[50 x i32] [i32 84,i32 97,i32 105,i32 114,i32 105,i32 107,i32 117,i32 32,i32 79,i32 111,i32 107,i32 97,i32 109,i32 105,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0]]
@saY_HeI10_To = global [40 x i32] [i32 32,i32 115,i32 97,i32 121,i32 115,i32 32,i32 104,i32 101,i32 108,i32 108,i32 111,i32 32,i32 116,i32 111,i32 32,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0]
@RET = global [5 x i32] [i32 10,i32 0,i32 0,i32 0,i32 0]
define i32 @putstr(ptr %r0)
{
L0:
    %r1 = alloca i32
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r3 = add i32 0,0
    store i32 %r3, ptr %r1
    br label %L1
L1:
    %r4 = load i32, ptr %r1
    %r5 = getelementptr i32, ptr %r0, i32 %r4
    %r6 = load i32, ptr %r5
    %r7 = icmp ne i32 %r6,0
    br i1 %r7, label %L2, label %L3
L2:
    %r8 = load i32, ptr %r1
    %r9 = getelementptr i32, ptr %r0, i32 %r8
    %r10 = load i32, ptr %r9
    call void @putch(i32 %r10)
    %r11 = load i32, ptr %r1
    %r12 = add i32 0,1
    %r13 = add i32 %r11,%r12
    store i32 %r13, ptr %r1
    br label %L1
L3:
    %r14 = load i32, ptr %r1
    ret i32 %r14
}
define i32 @main()
{
L0:
    %r10 = alloca i32
    %r6 = alloca i32
    %r2 = alloca i32
    %r0 = getelementptr i32, ptr @__HELLO, i32 0
    %r1 = call i32 @putstr(ptr %r0)
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L1
L1:
    %r4 = add i32 0,1
    %r5 = icmp ne i32 %r4,0
    br i1 %r5, label %L2, label %L3
L2:
    %r7 = load i32, ptr %r2
    %r8 = add i32 0,6
    %r9 = sdiv i32 %r7,%r8
    store i32 %r9, ptr %r6
    %r11 = load i32, ptr %r2
    %r12 = add i32 0,6
    %r13 = srem i32 %r11,%r12
    store i32 %r13, ptr %r10
    %r14 = load i32, ptr %r6
    %r15 = load i32, ptr %r10
    %r16 = icmp ne i32 %r14,%r15
    br i1 %r16, label %L4, label %L5
L3:
    %r41 = add i32 0,0
    ret i32 %r41
L4:
    %r19 = load i32, ptr %r6
    %r20 = getelementptr [6 x [50 x i32]], ptr @N4__mE___, i32 0, i32 %r19
    %r21 = call i32 @putstr(ptr %r20)
    %r22 = getelementptr i32, ptr @saY_HeI10_To, i32 0
    %r23 = call i32 @putstr(ptr %r22)
    %r24 = load i32, ptr %r10
    %r25 = getelementptr [6 x [50 x i32]], ptr @N4__mE___, i32 0, i32 %r24
    %r26 = call i32 @putstr(ptr %r25)
    %r27 = getelementptr i32, ptr @RET, i32 0
    %r28 = call i32 @putstr(ptr %r27)
    br label %L5
L5:
    %r29 = load i32, ptr %r2
    %r30 = add i32 0,17
    %r31 = mul i32 %r29,%r30
    %r32 = add i32 0,23
    %r33 = add i32 %r31,%r32
    %r34 = add i32 0,32
    %r35 = srem i32 %r33,%r34
    store i32 %r35, ptr %r2
    %r36 = load i32, ptr %r2
    %r37 = add i32 0,0
    %r38 = icmp eq i32 %r36,%r37
    br i1 %r38, label %L6, label %L7
L6:
    br label %L3
L7:
    br label %L1
}
