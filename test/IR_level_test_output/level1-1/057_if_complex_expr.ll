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
    %r15 = add i32 0,2
    store i32 %r15, ptr %r8
    %r16 = load i32, ptr %r6
    %r17 = add i32 0,1
    %r18 = mul i32 %r16,%r17
    %r19 = add i32 0,2
    %r20 = sdiv i32 %r18,%r19
    %r21 = add i32 0,0
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L1, label %L3
L1:
    %r47 = load i32, ptr %r8
    call void @putint(i32 %r47)
    br label %L2
L2:
    %r48 = load i32, ptr %r6
    %r49 = add i32 0,2
    %r50 = srem i32 %r48,%r49
    %r51 = add i32 0,67
    %r52 = add i32 %r50,%r51
    %r53 = add i32 0,0
    %r54 = icmp slt i32 %r52,%r53
    br i1 %r54, label %L7, label %L9
L3:
    %r25 = load i32, ptr %r0
    %r26 = load i32, ptr %r2
    %r27 = sub i32 %r25,%r26
    %r28 = add i32 0,0
    %r29 = icmp ne i32 %r27,%r28
    br i1 %r29, label %L5, label %L2
L5:
    %r32 = load i32, ptr %r4
    %r33 = add i32 0,3
    %r34 = add i32 %r32,%r33
    %r35 = add i32 0,2
    %r36 = srem i32 %r34,%r35
    %r37 = add i32 0,0
    %r38 = icmp ne i32 %r36,%r37
    br i1 %r38, label %L1, label %L2
L7:
    %r79 = add i32 0,4
    store i32 %r79, ptr %r8
    %r80 = load i32, ptr %r8
    call void @putint(i32 %r80)
    br label %L8
L8:
    %r81 = add i32 0,0
    ret i32 %r81
L9:
    %r57 = load i32, ptr %r0
    %r58 = load i32, ptr %r2
    %r59 = sub i32 %r57,%r58
    %r60 = add i32 0,0
    %r61 = icmp ne i32 %r59,%r60
    br i1 %r61, label %L11, label %L8
L11:
    %r64 = load i32, ptr %r4
    %r65 = add i32 0,2
    %r66 = add i32 %r64,%r65
    %r67 = add i32 0,2
    %r68 = srem i32 %r66,%r67
    %r69 = add i32 0,0
    %r70 = icmp ne i32 %r68,%r69
    br i1 %r70, label %L7, label %L8
}
