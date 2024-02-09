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
@__HELLO = global [100 x i32] [i32 87,i32 101,i32 108,i32 99,i32 111,i32 109,i32 101,i32 32,i32 116,i32 111,i32 32,i32 116,i32 104,i32 101,i32 32,i32 74,i32 97,i32 112,i32 97,i32 114,i32 105,i32 32,i32 80,i32 97,i32 114,i32 107,i32 33,i32 10,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0]
@N4__mE___ = global [6 x [50 x i32]] [[50 x i32] [i32 83,i32 97,i32 97,i32 98,i32 97,i32 114,i32 117,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0],[50 x i32] [i32 75,i32 97,i32 98,i32 97,i32 110,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0],[50 x i32] [i32 72,i32 97,i32 115,i32 104,i32 105,i32 98,i32 105,i32 114,i32 111,i32 107,i32 111,i32 117,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0],[50 x i32] [i32 65,i32 114,i32 97,i32 105,i32 103,i32 117,i32 109,i32 97,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0],[50 x i32] [i32 72,i32 117,i32 110,i32 98,i32 111,i32 114,i32 117,i32 116,i32 111,i32 32,i32 80,i32 101,i32 110,i32 103,i32 105,i32 110,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0],[50 x i32] [i32 84,i32 97,i32 105,i32 114,i32 105,i32 107,i32 117,i32 32,i32 79,i32 111,i32 107,i32 97,i32 109,i32 105,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0]]
@saY_HeI10_To = global [40 x i32] [i32 32,i32 115,i32 97,i32 121,i32 115,i32 32,i32 104,i32 101,i32 108,i32 108,i32 111,i32 32,i32 116,i32 111,i32 32,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0,i32 0]
@RET = global [5 x i32] [i32 10,i32 0,i32 0,i32 0,i32 0]
define i32 @putstr(ptr %r0)
{
L0:
    %r1 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r1
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    br label %L2
L2:
    %r3 = load i32, ptr %r1
    %r4 = getelementptr i32, ptr %r0, i32 %r3
    %r5 = load i32, ptr %r4
    %r6 = icmp ne i32 %r5,0
    br i1 %r6, label %L3, label %L4
L3:
    %r7 = load i32, ptr %r1
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = load i32, ptr %r8
    call void @putch(i32 %r9)
    %r10 = load i32, ptr %r1
    %r11 = add i32 1,0
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r1
    br label %L2
L4:
    %r13 = load i32, ptr %r1
    ret i32 %r13
}
define i32 @main()
{
L0:
    %r10 = alloca i32
    %r6 = alloca i32
    %r2 = alloca i32
    br label %L1
L1:
    %r0 = getelementptr [100 x i32], ptr @__HELLO, i32 0
    %r1 = call i32 @putstr(ptr %r0)
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L2
L2:
    %r4 = add i32 1,0
    %r5 = icmp ne i32 %r4,0
    br i1 %r5, label %L3, label %L4
L3:
    %r7 = load i32, ptr %r2
    %r8 = add i32 6,0
    %r9 = sdiv i32 %r7,%r8
    store i32 %r9, ptr %r6
    %r11 = load i32, ptr %r2
    %r12 = add i32 6,0
    %r13 = srem i32 %r11,%r12
    store i32 %r13, ptr %r10
    %r14 = load i32, ptr %r6
    %r15 = load i32, ptr %r10
    %r16 = icmp ne i32 %r14,%r15
    br i1 %r16, label %L5, label %L6
L4:
    %r37 = add i32 0,0
    ret i32 %r37
L5:
    %r17 = load i32, ptr %r6
    %r18 = getelementptr [6 x [50 x i32]], ptr @N4__mE___, i32 0, i32 %r17
    %r19 = call i32 @putstr(ptr %r18)
    %r20 = getelementptr [40 x i32], ptr @saY_HeI10_To, i32 0
    %r21 = call i32 @putstr(ptr %r20)
    %r22 = load i32, ptr %r10
    %r23 = getelementptr [6 x [50 x i32]], ptr @N4__mE___, i32 0, i32 %r22
    %r24 = call i32 @putstr(ptr %r23)
    %r25 = getelementptr [5 x i32], ptr @RET, i32 0
    %r26 = call i32 @putstr(ptr %r25)
    br label %L6
L6:
    %r27 = load i32, ptr %r2
    %r28 = add i32 17,0
    %r29 = mul i32 %r27,%r28
    %r30 = add i32 23,0
    %r31 = add i32 %r29,%r30
    %r32 = add i32 32,0
    %r33 = srem i32 %r31,%r32
    store i32 %r33, ptr %r2
    %r34 = load i32, ptr %r2
    %r35 = add i32 0,0
    %r36 = icmp eq i32 %r34,%r35
    br i1 %r36, label %L7, label %L8
L7:
    br label %L4
L8:
    br label %L2
L9:
    br label %L8
}
