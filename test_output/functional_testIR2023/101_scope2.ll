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
@k = global i32 zeroinitializer
define i32 @main()
{
L0:
    %r32 = alloca i32
    %r26 = alloca i32
    %r24 = alloca i32
    %r9 = alloca i32
    br label %L1
L1:
    %r0 = add i32 0,3389
    store i32 %r0, ptr @k
    %r1 = load i32, ptr @k
    %r2 = add i32 0,10000
    %r3 = icmp slt i32 %r1,%r2
    br i1 %r3, label %L2, label %L3
L2:
    %r6 = load i32, ptr @k
    %r7 = add i32 0,1
    %r8 = add i32 %r6,%r7
    store i32 %r8, ptr @k
    %r10 = add i32 0,112
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r9
    %r12 = add i32 0,10
    %r13 = icmp sgt i32 %r11,%r12
    br i1 %r13, label %L5, label %L7
L3:
    %r45 = load i32, ptr @k
    ret i32 %r45
L5:
    %r16 = load i32, ptr %r9
    %r17 = add i32 0,88
    %r18 = sub i32 %r16,%r17
    store i32 %r18, ptr %r9
    %r19 = load i32, ptr %r9
    %r20 = add i32 0,1000
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L8, label %L9
L6:
    %r39 = load i32, ptr %r9
    %r40 = add i32 0,10
    %r41 = icmp sgt i32 %r39,%r40
    br i1 %r41, label %L5, label %L7
L7:
    %r44 = load i32, ptr %r9
    call void @putint(i32 %r44)
    br label %L3
L8:
    %r25 = add i32 0,9
    store i32 %r25, ptr %r24
    %r27 = add i32 0,11
    store i32 %r27, ptr %r26
    %r28 = add i32 0,10
    store i32 %r28, ptr %r24
    %r29 = load i32, ptr %r9
    %r30 = load i32, ptr %r24
    %r31 = sub i32 %r29,%r30
    store i32 %r31, ptr %r9
    %r33 = add i32 0,11
    store i32 %r33, ptr %r32
    %r34 = load i32, ptr %r9
    %r35 = load i32, ptr %r32
    %r36 = add i32 %r34,%r35
    %r37 = load i32, ptr %r26
    %r38 = add i32 %r36,%r37
    store i32 %r38, ptr %r9
    br label %L9
L9:
    br label %L6
}
