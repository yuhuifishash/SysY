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
define i32 @ifElseIf()
{
L0:
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,5
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,10
    store i32 %r5, ptr %r3
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,6
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L2, label %L5
L2:
    %r19 = load i32, ptr %r0
    ret i32 %r19
L3:
    %r20 = load i32, ptr %r3
    %r21 = add i32 0,10
    %r22 = icmp eq i32 %r20,%r21
    br i1 %r22, label %L10, label %L8
L4:
    %r54 = load i32, ptr %r0
    ret i32 %r54
L5:
    %r11 = load i32, ptr %r3
    %r12 = add i32 0,11
    %r13 = icmp eq i32 %r11,%r12
    br i1 %r13, label %L2, label %L3
L7:
    %r33 = add i32 0,25
    store i32 %r33, ptr %r0
    br label %L9
L8:
    %r34 = load i32, ptr %r3
    %r35 = add i32 0,10
    %r36 = icmp eq i32 %r34,%r35
    br i1 %r36, label %L15, label %L13
L9:
    br label %L4
L10:
    %r25 = load i32, ptr %r0
    %r26 = add i32 0,1
    %r27 = icmp eq i32 %r25,%r26
    br i1 %r27, label %L7, label %L8
L12:
    %r48 = load i32, ptr %r0
    %r49 = add i32 0,15
    %r50 = add i32 %r48,%r49
    store i32 %r50, ptr %r0
    br label %L14
L13:
    %r51 = load i32, ptr %r0
    %r52 = add i32 0,%r51
    %r53 = sub i32 0,%r52
    store i32 %r53, ptr %r0
    br label %L14
L14:
    br label %L9
L15:
    %r39 = load i32, ptr %r0
    %r40 = add i32 0,5
    %r41 = sub i32 0,%r40
    %r42 = icmp eq i32 %r39,%r41
    br i1 %r42, label %L12, label %L13
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @ifElseIf()
    call void @putint(i32 %r0)
    %r1 = add i32 0,0
    ret i32 %r1
}
