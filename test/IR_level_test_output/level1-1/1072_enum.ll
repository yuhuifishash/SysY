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
    %r8 = add i32 0,0
    store i32 %r8, ptr %r0
    %r9 = add i32 0,0
    store i32 %r9, ptr %r2
    %r10 = add i32 0,0
    store i32 %r10, ptr %r4
    br label %L1
L1:
    %r11 = load i32, ptr %r0
    %r12 = add i32 0,21
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L2, label %L3
L2:
    br label %L4
L3:
    %r54 = add i32 0,0
    ret i32 %r54
L4:
    %r16 = load i32, ptr %r2
    %r17 = add i32 0,101
    %r18 = load i32, ptr %r0
    %r19 = sub i32 %r17,%r18
    %r20 = icmp slt i32 %r16,%r19
    br i1 %r20, label %L5, label %L6
L5:
    %r23 = add i32 0,100
    %r24 = load i32, ptr %r0
    %r25 = sub i32 %r23,%r24
    %r26 = load i32, ptr %r2
    %r27 = sub i32 %r25,%r26
    store i32 %r27, ptr %r4
    %r28 = add i32 0,5
    %r29 = load i32, ptr %r0
    %r30 = mul i32 %r28,%r29
    %r31 = add i32 0,1
    %r32 = load i32, ptr %r2
    %r33 = mul i32 %r31,%r32
    %r34 = add i32 %r30,%r33
    %r35 = load i32, ptr %r4
    %r36 = add i32 0,2
    %r37 = sdiv i32 %r35,%r36
    %r38 = add i32 %r34,%r37
    %r39 = add i32 0,100
    %r40 = icmp eq i32 %r38,%r39
    br i1 %r40, label %L7, label %L8
L6:
    %r51 = load i32, ptr %r0
    %r52 = add i32 0,1
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr %r0
    br label %L1
L7:
    %r43 = load i32, ptr %r0
    call void @putint(i32 %r43)
    %r44 = load i32, ptr %r2
    call void @putint(i32 %r44)
    %r45 = load i32, ptr %r4
    call void @putint(i32 %r45)
    %r46 = add i32 0,10
    store i32 %r46, ptr %r6
    %r47 = load i32, ptr %r6
    call void @putch(i32 %r47)
    br label %L8
L8:
    %r48 = load i32, ptr %r2
    %r49 = add i32 0,1
    %r50 = add i32 %r48,%r49
    store i32 %r50, ptr %r2
    br label %L4
}
