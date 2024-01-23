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
    br label %L1
L1:
    %r5 = getelementptr i32, ptr %r0, i32 0
    %r6 = load i32, ptr %r5
    %r7 = icmp ne i32 %r6,0
    br i1 %r7, label %L6, label %L5
L3:
    %r19 = phi i32 [%r13,%L4],[0,%L6]
    %r9 = getelementptr i32, ptr %r0, i32 %r19
    %r10 = load i32, ptr %r9
    call void @putch(i32 %r10)
    %r13 = add i32 %r19,1
    br label %L4
L4:
    %r15 = getelementptr i32, ptr %r0, i32 %r13
    %r16 = load i32, ptr %r15
    %r17 = icmp ne i32 %r16,0
    br i1 %r17, label %L3, label %L5
L5:
    %r20 = phi i32 [0,%L1],[%r13,%L4]
    ret i32 %r20
L6:
    br label %L3
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = getelementptr i32, ptr @__HELLO, i32 0
    %r1 = call i32 @putstr(ptr %r0)
    br label %L11
L3:
    %r44 = phi i32 [0,%L11],[%r35,%L4]
    %r9 = sdiv i32 %r44,6
    %r13 = srem i32 %r44,6
    %r16 = icmp ne i32 %r9,%r13
    br i1 %r16, label %L6, label %L7
L4:
    br label %L3
L5:
    ret i32 0
L6:
    %r20 = getelementptr [6 x [50 x i32]], ptr @N4__mE___, i32 0, i32 %r9
    %r21 = call i32 @putstr(ptr %r20)
    %r22 = getelementptr i32, ptr @saY_HeI10_To, i32 0
    %r23 = call i32 @putstr(ptr %r22)
    %r25 = getelementptr [6 x [50 x i32]], ptr @N4__mE___, i32 0, i32 %r13
    %r26 = call i32 @putstr(ptr %r25)
    %r27 = getelementptr i32, ptr @RET, i32 0
    %r28 = call i32 @putstr(ptr %r27)
    br label %L7
L7:
    %r31 = mul i32 %r44,17
    %r33 = add i32 %r31,23
    %r35 = srem i32 %r33,32
    %r38 = icmp eq i32 %r35,0
    br i1 %r38, label %L8, label %L9
L8:
    br label %L5
L9:
    br label %L4
L11:
    br label %L3
}
