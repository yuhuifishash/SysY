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
define i32 @whileIf()
{
L0:
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,0
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 0,0
    store i32 %r5, ptr %r3
    %r6 = load i32, ptr %r0
    %r7 = add i32 0,100
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L5
L3:
    %r11 = load i32, ptr %r0
    %r12 = add i32 0,5
    %r13 = icmp eq i32 %r11,%r12
    br i1 %r13, label %L6, label %L7
L4:
    %r29 = load i32, ptr %r0
    %r30 = add i32 0,100
    %r31 = icmp slt i32 %r29,%r30
    br i1 %r31, label %L3, label %L5
L5:
    %r34 = load i32, ptr %r3
    ret i32 %r34
L6:
    %r16 = add i32 0,25
    store i32 %r16, ptr %r3
    br label %L8
L7:
    %r17 = load i32, ptr %r0
    %r18 = add i32 0,10
    %r19 = icmp eq i32 %r17,%r18
    br i1 %r19, label %L9, label %L10
L8:
    %r26 = load i32, ptr %r0
    %r27 = add i32 0,1
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r0
    br label %L4
L9:
    %r22 = add i32 0,42
    store i32 %r22, ptr %r3
    br label %L11
L10:
    %r23 = load i32, ptr %r0
    %r24 = add i32 0,2
    %r25 = mul i32 %r23,%r24
    store i32 %r25, ptr %r3
    br label %L11
L11:
    br label %L8
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @whileIf()
    ret i32 %r0
}
