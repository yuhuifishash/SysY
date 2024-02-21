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
define i32 @exgcd(i32 %r0,i32 %r1,ptr %r2,ptr %r3)
{
L0:  ;
    %r24 = alloca i32
    %r16 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    store i32 %r0, ptr %r4
    store i32 %r1, ptr %r5
    br label %L1
L1:  ;
    %r6 = load i32, ptr %r5
    %r7 = add i32 0,0
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:  ;
    %r9 = add i32 0,0
    %r10 = getelementptr i32, ptr %r2, i32 %r9
    %r11 = add i32 1,0
    store i32 %r11, ptr %r10
    %r12 = add i32 0,0
    %r13 = getelementptr i32, ptr %r3, i32 %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    %r15 = load i32, ptr %r4
    ret i32 %r15
L3:  ;
    %r17 = load i32, ptr %r5
    %r18 = load i32, ptr %r4
    %r19 = load i32, ptr %r5
    %r20 = srem i32 %r18,%r19
    %r21 = getelementptr i32, ptr %r2
    %r22 = getelementptr i32, ptr %r3
    %r23 = call i32 @exgcd(i32 %r17,i32 %r20,ptr %r21,ptr %r22)
    store i32 %r23, ptr %r16
    %r25 = add i32 0,0
    %r26 = getelementptr i32, ptr %r2, i32 %r25
    %r27 = load i32, ptr %r26
<<<<<<< HEAD
    store i32 %r27, ptr %r24
    %r28 = add i32 0,0
    %r29 = getelementptr i32, ptr %r2, i32 %r28
    %r30 = add i32 0,0
    %r31 = getelementptr i32, ptr %r3, i32 %r30
    %r32 = load i32, ptr %r31
    store i32 %r32, ptr %r29
    %r33 = add i32 0,0
    %r34 = getelementptr i32, ptr %r3, i32 %r33
    %r35 = load i32, ptr %r24
    %r36 = load i32, ptr %r4
    %r37 = load i32, ptr %r5
    %r38 = sdiv i32 %r36,%r37
    %r39 = add i32 0,0
    %r40 = getelementptr i32, ptr %r3, i32 %r39
    %r41 = load i32, ptr %r40
    %r42 = mul i32 %r38,%r41
    %r43 = sub i32 %r35,%r42
    store i32 %r43, ptr %r34
    %r44 = load i32, ptr %r16
    ret i32 %r44
=======
    %r31 = getelementptr i32, ptr %r3, i32 0
    %r32 = load i32, ptr %r31
    store i32 %r32, ptr %r26
    %r38 = sdiv i32 %r0,%r1
    %r42 = mul i32 %r38,%r32
    %r43 = sub i32 %r27,%r42
    store i32 %r43, ptr %r31
    ret i32 %r23
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
}
define i32 @main()
{
L0:  ;
    %r7 = alloca [1 x i32]
    %r4 = alloca [1 x i32]
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 7,0
    store i32 %r1, ptr %r0
    %r3 = add i32 15,0
    store i32 %r3, ptr %r2
    call void @llvm.memset.p0.i32(ptr %r4,i8 0,i32 4,i1 0)
    %r5 = add i32 1,0
    %r6 = getelementptr [1 x i32], ptr %r4, i32 0, i32 0
    store i32 %r5, ptr %r6
    call void @llvm.memset.p0.i32(ptr %r7,i8 0,i32 4,i1 0)
    %r8 = add i32 1,0
    %r9 = getelementptr [1 x i32], ptr %r7, i32 0, i32 0
    store i32 %r8, ptr %r9
    %r10 = load i32, ptr %r0
    %r11 = load i32, ptr %r2
    %r12 = getelementptr [1 x i32], ptr %r4, i32 0
    %r13 = getelementptr [1 x i32], ptr %r7, i32 0
<<<<<<< HEAD
    %r14 = call i32 @exgcd(i32 %r10,i32 %r11,ptr %r12,ptr %r13)
    %r15 = add i32 0,0
    %r16 = getelementptr [1 x i32], ptr %r4, i32 0, i32 %r15
    %r17 = add i32 0,0
    %r18 = getelementptr [1 x i32], ptr %r4, i32 0, i32 %r17
    %r19 = load i32, ptr %r18
    %r20 = load i32, ptr %r2
    %r21 = srem i32 %r19,%r20
    %r22 = load i32, ptr %r2
    %r23 = add i32 %r21,%r22
    %r24 = load i32, ptr %r2
    %r25 = srem i32 %r23,%r24
    store i32 %r25, ptr %r16
    %r26 = add i32 0,0
    %r27 = getelementptr [1 x i32], ptr %r4, i32 0, i32 %r26
    %r28 = load i32, ptr %r27
=======
    %r14 = call i32 @exgcd(i32 7,i32 15,ptr %r12,ptr %r13)
    %r19 = load i32, ptr %r6
    %r21 = srem i32 %r19,15
    %r23 = add i32 %r21,15
    %r25 = srem i32 %r23,15
    store i32 %r25, ptr %r6
    %r28 = load i32, ptr %r6
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    call void @putint(i32 %r28)
    %r29 = add i32 0,0
    ret i32 %r29
}
