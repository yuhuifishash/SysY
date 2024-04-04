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
L0:  ;
    %r26 = alloca i32
    %r20 = alloca i32
    %r18 = alloca i32
    %r7 = alloca i32
    br label %L1
L1:  ;
    %r0 = add i32 3389,0
    store i32 %r0, ptr @k
    %r1 = load i32, ptr @k
    %r2 = add i32 10000,0
    %r3 = icmp slt i32 %r1,%r2
    br i1 %r3, label %L2, label %L3
L2:  ;
    %r4 = load i32, ptr @k
    %r5 = add i32 1,0
    %r6 = add i32 %r4,%r5
    store i32 %r6, ptr @k
    %r8 = add i32 112,0
    store i32 %r8, ptr %r7
    br label %L4
L3:  ;
    %r34 = load i32, ptr @k
    ret i32 %r34
L4:  ;
    %r9 = load i32, ptr %r7
    %r10 = add i32 10,0
    %r11 = icmp sgt i32 %r9,%r10
    br i1 %r11, label %L5, label %L6
L5:  ;
    %r12 = load i32, ptr %r7
    %r13 = add i32 88,0
    %r14 = sub i32 %r12,%r13
    store i32 %r14, ptr %r7
    %r15 = load i32, ptr %r7
    %r16 = add i32 1000,0
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L7, label %L8
L6:  ;
    %r33 = load i32, ptr %r7
    call void @putint(i32 %r33)
    br label %L3
L7:  ;
    %r19 = add i32 9,0
    store i32 %r19, ptr %r18
    %r21 = add i32 11,0
    store i32 %r21, ptr %r20
    %r22 = add i32 10,0
    store i32 %r22, ptr %r18
    %r23 = load i32, ptr %r7
    %r24 = load i32, ptr %r18
    %r25 = sub i32 %r23,%r24
    store i32 %r25, ptr %r7
    %r27 = add i32 11,0
    store i32 %r27, ptr %r26
    %r28 = load i32, ptr %r7
    %r29 = load i32, ptr %r26
    %r30 = add i32 %r28,%r29
    %r31 = load i32, ptr %r20
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r7
    br label %L8
L8:  ;
    br label %L4
}
