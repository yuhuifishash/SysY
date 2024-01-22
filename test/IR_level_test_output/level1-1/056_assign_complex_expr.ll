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
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r10 = add i32 0,5
    store i32 %r10, ptr %r0
    %r11 = add i32 0,5
    store i32 %r11, ptr %r2
    %r12 = add i32 0,1
    store i32 %r12, ptr %r4
    %r13 = add i32 0,2
    %r14 = sub i32 0,%r13
    store i32 %r14, ptr %r6
    %r15 = load i32, ptr %r6
    %r16 = add i32 0,1
    %r17 = mul i32 %r15,%r16
    %r18 = add i32 0,2
    %r19 = sdiv i32 %r17,%r18
    %r20 = load i32, ptr %r0
    %r21 = load i32, ptr %r2
    %r22 = sub i32 %r20,%r21
    %r23 = add i32 %r19,%r22
    %r24 = load i32, ptr %r4
    %r25 = add i32 0,3
    %r26 = add i32 %r24,%r25
    %r27 = sub i32 0,%r26
    %r28 = add i32 0,2
    %r29 = srem i32 %r27,%r28
    %r30 = sub i32 %r23,%r29
    store i32 %r30, ptr %r8
    %r31 = load i32, ptr %r8
    call void @putint(i32 %r31)
    %r32 = load i32, ptr %r6
    %r33 = add i32 0,2
    %r34 = srem i32 %r32,%r33
    %r35 = add i32 0,67
    %r36 = add i32 %r34,%r35
    %r37 = load i32, ptr %r0
    %r38 = load i32, ptr %r2
    %r39 = sub i32 %r37,%r38
    %r40 = sub i32 0,%r39
    %r41 = add i32 %r36,%r40
    %r42 = load i32, ptr %r4
    %r43 = add i32 0,2
    %r44 = add i32 %r42,%r43
    %r45 = add i32 0,2
    %r46 = srem i32 %r44,%r45
    %r47 = sub i32 0,%r46
    %r48 = sub i32 %r41,%r47
    store i32 %r48, ptr %r8
    %r49 = load i32, ptr %r8
    %r50 = add i32 0,3
    %r51 = add i32 %r49,%r50
    store i32 %r51, ptr %r8
    %r52 = load i32, ptr %r8
    call void @putint(i32 %r52)
    %r53 = add i32 0,0
    ret i32 %r53
}
